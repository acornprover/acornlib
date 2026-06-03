#!/usr/bin/env bash
set -euo pipefail

remote="upstream"
base_branch="master"
stale_days=30
batch_size=20

git rev-parse --git-dir >/dev/null 2>&1

printf 'Fetching and pruning %s...\n' "$remote"
git fetch --prune "$remote"

base_ref="refs/remotes/${remote}/${base_branch}"
base_oid="$(git rev-parse "$base_ref")"
now="$(date +%s)"
cutoff=$((now - stale_days * 24 * 60 * 60))

branches=()
reasons=()
dates=()
subjects=()

while IFS=$'\t' read -r branch oid timestamp date subject; do
    [[ "$branch" == "HEAD" ]] && continue
    [[ "$branch" == "$base_branch" ]] && continue

    branch_reasons=()
    if git merge-base --is-ancestor "$oid" "$base_oid"; then
        branch_reasons+=("merged")
    fi
    if (( timestamp < cutoff )); then
        age_days=$(((now - timestamp) / 86400))
        branch_reasons+=("stale ${age_days}d")
    fi

    [[ "${#branch_reasons[@]}" -gt 0 ]] || continue

    reason="${branch_reasons[0]}"
    for extra_reason in "${branch_reasons[@]:1}"; do
        reason+=", ${extra_reason}"
    done

    branches+=("$branch")
    reasons+=("$reason")
    dates+=("$date")
    subjects+=("$subject")
done < <(
    git for-each-ref \
        --sort=committerdate \
        --format="%(refname:lstrip=3)%09%(objectname)%09%(committerdate:unix)%09%(committerdate:short)%09%(subject)" \
        "refs/remotes/${remote}"
)

total="${#branches[@]}"
if [[ "$total" -eq 0 ]]; then
    printf 'No merged or stale branches found on %s.\n' "$remote"
    exit 0
fi

printf 'Found %d merged or stale branch(es) on %s.\n' "$total" "$remote"

for ((start = 0; start < total; start += batch_size)); do
    end=$((start + batch_size))
    ((end <= total)) || end="$total"

    printf '\nBranches %d-%d of %d:\n' "$((start + 1))" "$end" "$total"
    printf '%-4s %-44s %-18s %-12s %s\n' '#' 'branch' 'reason' 'last commit' 'subject'
    printf '%-4s %-44s %-18s %-12s %s\n' '----' '--------------------------------------------' '------------------' '------------' '-------'

    for ((i = start; i < end; i++)); do
        printf '%-4d %-44s %-18s %-12s %s\n' \
            "$((i + 1))" \
            "${branches[$i]}" \
            "${reasons[$i]}" \
            "${dates[$i]}" \
            "${subjects[$i]}"
    done

    while true; do
        printf 'Delete these branches from %s? [y/N/q] ' "$remote"
        IFS= read -r answer
        case "${answer,,}" in
            y|yes)
                for ((i = start; i < end; i++)); do
                    branch="${branches[$i]}"
                    printf 'Deleting %s/%s...\n' "$remote" "$branch"
                    git push "$remote" --delete "$branch"
                    git update-ref -d "refs/remotes/${remote}/${branch}" || true
                done
                break
                ;;
            n|no|'')
                printf 'Skipped this batch.\n'
                break
                ;;
            q|quit)
                printf 'Stopping.\n'
                exit 0
                ;;
            *)
                printf 'Please answer y, n, or q.\n'
                ;;
        esac
    done
done
