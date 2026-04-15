---
name: remove-citations
description: Remove explicit theorem citations from Acorn proofs by replacing each citation with local proof steps while keeping `acorn verify` passing after every attempted change. Use when the user asks to inline cited theorems, reduce `acorn citations` output, or improve proof style without changing the theorem being proved.
---

# Remove Citations

## Overview

Use this skill when an Acorn proof contains explicit theorem citations such as `foo(a)` and the goal is to replace them with ordinary proof lines. Work one citation at a time, keep the repository verifying after every attempted edit, and skip any citation whose obvious expansion does not verify cleanly.

## Workflow

1. List the current citations.

```bash
acorn citations
```

This prints entries of the form `path:line: theorem(args)`.

2. Pick one citation. Read:
- the local proof around that line
- the cited theorem statement

Use `rg -n` to find the theorem definition and `sed -n` to inspect the relevant proof block.

3. Replace the citation with the smallest local expansion that should supply the same fact downstream.
- If the cited theorem concludes the needed statement directly, try that conclusion first.
- If that is too large a leap, insert the instantiated intermediate statements from the theorem body.
- Prefer ordinary proof lines that fit the local argument. Do not keep the citation in a disguised form.
- Stop there. Do not switch into broader proof repair, explication, or theorem restructuring just to remove one citation.

Example:

```acorn
theorem foo(x) {
    bar(x) and qux(x) implies zap(x)
}
```

If the proof currently says:

```acorn
foo(a)
```

first try:

```acorn
zap(a)
```

If that does not verify, try:

```acorn
bar(a)
qux(a)
zap(a)
```

4. After each attempted replacement, verify immediately.

```bash
acorn verify
```

5. If verification fails, you may try the obvious instantiated premises and conclusions of the cited theorem. If that still fails, revert that replacement completely and continue to the next citation.

6. Never leave the repository in a non-verifying state. The fallback is always "restore the last working version, then move on", not "repair the proof in some fancier way".

7. Repeat until you have replaced as many citations as you can. Run `acorn citations` again at the end to see what remains.

## Heuristics

- Expand the theorem statement, not the theorem name.
- Try the strongest useful conclusion first; only add premises when the prover needs them.
- Keep replacements local. If removing one citation requires a broader rewrite, skip it unless the user asked for that.
- If the direct conclusion and the theorem's obvious instantiated premises still do not verify, stop and revert. Do not explicate surrounding proofs or add unrelated helper steps.
- Existential and induction theorems often expand into bulky proof state. Remove those citations only when the replacement stays clear and short.
- Do not change the theorem being proved just to eliminate a citation.

## Success Criteria

The task is complete when:
- `acorn verify` passes
- the number of `acorn citations` entries has been reduced as much as practical
- every failed attempt has been reverted cleanly

## Output

Report:
- which citations were removed
- which citations were skipped because the inline replacement did not verify
- the final `acorn citations` status, if checked
