# Agent Notes

## Commands
- In this workspace, prefer `../acorn-0.1.84-linux-x64` over a global `acorn` binary.
- From `acornlib/`, verify a changed module with `../acorn-0.1.84-linux-x64 verify --lib . src/path/to/module.ac --timeout 20 --fail-fast`.
- MiniF2F benchmark translations are project files; verify them with `../acorn-0.1.84-linux-x64 verify --lib . projects/minif2f/valid/algebra.ac --timeout 20 --fail-fast`.
- For reproducible work, run `../acorn-0.1.84-linux-x64 check --lib . --strict src/path/to/module.ac`; CI runs `acorn check --strict` over the library.
- Do not run certificate-writing Acorn commands in parallel in one worktree; they can race on `build/manifest.json`.

## Build Cache
- Never delete or clean `build/`; it is the expensive verifier cache and contains certificates.
- `verify` may run proof search and write `build/**/*.jsonl` plus `build/manifest.json` for `src/`; project files may get sidecar `.jsonl` certificates next to the `.ac` file.
- If committing verified library work, include the changed `.ac` files, matching certificates, and relevant `build/manifest.json` entries.

## Library Placement
- Put reusable definitions and lemmas in the general `src` module where users would search, not in project-specific directories.
- `projects/minif2f/{valid,test}/` is for MiniF2F problem translations; source statements live in `../miniF2F/lean/src/valid.lean` and `../miniF2F/lean/src/test.lean`.
- Keep helpers beside a theorem only when they are genuinely problem-specific; otherwise give them reusable mathematical names and move them to the library layer.
- Put true but currently unproved library statements in `pending/`, not as unverified theorem claims under `src/`.

## Acorn Style
- New types, typeclasses, attributes, global `define`s, and global `let`s need `///` comments in mathematical language, not "returns" or "checks" prose.
- Variable names are lowercase; numeric literals need explicit types such as `Nat.0` and `Real.0`; check for an existing `numerals` declaration before adding one.
- Avoid inline lambdas and large inline quantifiers in theorem statements when a named helper definition would make proofs or search simpler.
- When proof search fails, first check whether the statement is false or mistranslated, then add true intermediate algebra or order steps.
- For bounded induction with external constraints, induct on the distance to the bound rather than the raw variable.

## PR Notes
- `CONTRIBUTING.md` allows AI work in `src`, `build`, `projects`, and `pending`; touching other top-level areas can require human review.
- Keep PR-sized additions below about 2000 lines of Acorn code and call out tricky definition choices.
