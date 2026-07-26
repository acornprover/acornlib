---
name: fix-merge-conflict
description: 'Fix Acornlib pull request merge conflicts, especially conflicts only in generated `build/` files. Use when the user gives a PR id or URL, or asks to resolve merge conflicts in this repo: take conflicted build files from `master`, run `acorn verify` from the repo root to regenerate/update build artifacts, then commit and push the resolved PR branch when appropriate.'
---

# Fix Merge Conflict

## Scope

Use this skill for merge conflicts in the Acornlib repository, especially PRs whose conflicts are only in generated `build/` files. The `build/` files are generated from `.ac` sources, but they should not be deleted wholesale or recreated from a clean state. The usual repair is to start from the version on `master` and let `acorn verify` update the generated files in place.

## Rules

- Start with `git status --short` and identify unmerged paths before changing anything.
- Do not clean the build directory. Do not run `git clean`, delete `build/`, or remove generated files just to force regeneration.
- Do not overwrite unrelated user changes. If the worktree has unrelated local edits, leave them alone and keep the merge-conflict fix scoped to the PR branch.
- Default to `origin/master` as the source of truth for conflicted `build/` files unless the PR explicitly targets another base branch.
- Do not push to `master`. When fixing a PR, commit and push only to the PR head branch if you have permission.
- Run `acorn verify` from the repository root after each resolution attempt and before reporting completion.

## Workflow

1. If the user gave a PR number or URL, use `gh` to find the PR head branch, head repository, and base branch. Fetch the base branch, then check out the PR head branch with push rights.

```bash
git fetch origin master
gh pr checkout <pr-number-or-url>
```

If the branch is already checked out and in a conflicted state, continue from that state.

2. If the PR branch has not yet been updated with `master`, merge the current base branch into it.

```bash
git merge origin/master
```

If the merge succeeds without conflicts, still run `acorn verify`; it may update generated files.

3. List conflicts.

```bash
git status --short
git diff --name-only --diff-filter=U
```

4. For each conflicted path under `build/`, take the file from `master`, then stage it as resolved.

```bash
git restore --source=origin/master --staged --worktree -- build/path/to/file
git add build/path/to/file
```

If a conflicted generated file does not exist on `master`, remove that path and stage the removal.

```bash
git rm -- build/path/to/file
```

5. Run the verifier from the repository root.

```bash
acorn verify
```

If verification succeeds, inspect the resulting generated-file changes. Stage the updated files produced by `acorn verify`.

6. If `acorn verify` fails, inspect the first real error and `git status --short`.

- If more `build/` conflicts remain, resolve those from `master` and rerun `acorn verify`.
- If conflicts include `.ac` files or other source files, resolve them according to the source semantics, then rerun `acorn verify`.
- If the failure is not clearly related to the merge conflict, stop and report the command, error, and current git status instead of guessing.

7. Before committing, check that conflict markers are gone.

```bash
rg -n '^(<<<<<<<|=======|>>>>>>>)' .
```

8. Commit and push when the user asked you to fix a PR and the branch is ready.

```bash
git commit -m "Resolve merge conflicts"
git push
```

## Completion Report

Report:

- the PR or branch fixed
- whether conflicts were only in `build/` or also touched source files
- the final `acorn verify` result
- the commit SHA and push status, if committed
- any remaining blocker with the exact failing command and git status
