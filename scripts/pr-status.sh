#!/usr/bin/env bash
set -euo pipefail

default_repo() {
    local remote_url

    if remote_url="$(git remote get-url upstream 2>/dev/null)"; then
        parse_github_repo "$remote_url"
        return
    fi

    printf '%s\n' 'acornprover/acornlib'
}

parse_github_repo() {
    local remote_url="$1"
    local repo_path

    repo_path="${remote_url%.git}"
    case "$repo_path" in
        git@github.com:*)
            repo_path="${repo_path#git@github.com:}"
            ;;
        https://github.com/*)
            repo_path="${repo_path#https://github.com/}"
            ;;
        http://github.com/*)
            repo_path="${repo_path#http://github.com/}"
            ;;
        ssh://git@github.com/*)
            repo_path="${repo_path#ssh://git@github.com/}"
            ;;
        *)
            printf 'Could not parse a GitHub repository from remote URL: %s\n' "$remote_url" >&2
            return 1
            ;;
    esac

    printf '%s\n' "$repo_path"
}

repo="${1:-${GITHUB_REPO:-$(default_repo)}}"
api_url="${GITHUB_API_URL:-https://api.github.com}"
per_page=100
page=1
token="${GITHUB_TOKEN:-${GH_TOKEN:-}}"

headers=(
    -H "Accept: application/vnd.github+json"
    -H "X-GitHub-Api-Version: 2022-11-28"
)

if [[ -n "$token" ]]; then
    headers+=(-H "Authorization: Bearer $token")
fi

status_for_pr() {
    local pr_json="$1"
    local reviews_json="$2"

    PR_JSON="$pr_json" REVIEWS_JSON="$reviews_json" python3 -c '
import json
import os

pr = json.loads(os.environ["PR_JSON"])
reviews = json.loads(os.environ["REVIEWS_JSON"])

bot_display = "AcornLibrarian"
human_reviewers = {"lacker"}
actionable_review_states = {"APPROVED", "CHANGES_REQUESTED", "DISMISSED"}

def is_human_reviewer(login):
    return login.lower() in human_reviewers

def join_names(names):
    return ", ".join(names)

latest_reviews = {}
for review in reviews:
    user = review.get("user") or {}
    login = user.get("login")
    state = review.get("state")
    if not login or not state:
        continue
    if state not in actionable_review_states:
        continue
    latest_reviews[login] = state

changes_requested = [
    login for login, state in latest_reviews.items()
    if state == "CHANGES_REQUESTED"
]
approved_by = [
    login for login, state in latest_reviews.items()
    if state == "APPROVED"
]

author = pr["user"]["login"]
assignees = [assignee["login"] for assignee in pr.get("assignees", [])]
human_assignees = [login for login in assignees if is_human_reviewer(login)]
default_branch = pr.get("base", {}).get("repo", {}).get("default_branch", "master")
base_ref = pr.get("base", {}).get("ref", default_branch)

if pr.get("draft"):
    status = "draft"
    next_step = f"{author} marks ready"
elif changes_requested:
    status = "changes requested"
    next_step = f"{author} updates"
elif approved_by:
    status = "approved"
    if base_ref == default_branch:
        next_step = f"{bot_display} merges"
    else:
        next_step = f"{bot_display} waits for base branch"
elif human_assignees:
    status = "human review"
    next_step = f"{join_names(human_assignees)} reviews"
else:
    status = "needs triage"
    next_step = f"{bot_display} reviews"

print("#{number}: status: {status}. next step: {next_step}. {title}".format(
    number=pr["number"],
    status=status,
    next_step=next_step,
    title=pr["title"],
))
'
}

printf 'Open PR status for %s\n' "$repo"

while true; do
    response="$(
        curl --fail --silent --show-error --location \
            "${headers[@]}" \
            "${api_url}/repos/${repo}/pulls?state=open&per_page=${per_page}&page=${page}"
    )"

    count="$(
        printf '%s' "$response" | python3 -c 'import json, sys; print(len(json.load(sys.stdin)))'
    )"

    if [[ "$count" -eq 0 ]]; then
        break
    fi

    while IFS= read -r pr_json; do
        pr_number="$(
            printf '%s' "$pr_json" | python3 -c 'import json, sys; print(json.load(sys.stdin)["number"])'
        )"
        reviews="$(
            curl --fail --silent --show-error --location \
                "${headers[@]}" \
                "${api_url}/repos/${repo}/pulls/${pr_number}/reviews?per_page=${per_page}"
        )"
        status_for_pr "$pr_json" "$reviews"
    done < <(
        printf '%s' "$response" | python3 -c '
import json
import sys

for pr in json.load(sys.stdin):
    print(json.dumps(pr, separators=(",", ":")))
'
    )

    if [[ "$count" -lt "$per_page" ]]; then
        break
    fi

    page=$((page + 1))
done
