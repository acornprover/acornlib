---
name: refactor
description: Refactor Acornlib modules without changing the mathematics, especially moving definitions/theorems between files or packages. Use this when imports, package interfaces, file paths, or certificates need to be updated while preserving existing proofs; prefer `acorn check` over `acorn verify` and repair stale certificate references directly.
---

# Refactor

Use this skill for Acornlib refactors whose intent is to move or reorganize existing definitions, theorems, imports, certificates, or packages without changing mathematical content.

## Core Rule

For a pure refactor, run `acorn check`, not `acorn verify`.

`acorn check` verifies existing certificates without doing proof search. If a certificate fails after a move-only refactor, treat that as useful information: a proof step probably lost a path, import, or interface exposure. Do not regenerate certificates with proof search unless the user explicitly asks for that.

## Workflow

1. Start with `git status --short --branch` and identify unrelated local changes. Do not overwrite them.

2. Read the relevant old and new files before editing. For package refactors, inspect existing package examples and `interface.ac` files.

3. Move files conservatively. Prefer `git mv` when practical so Git can detect renames. Update matching cert paths together with source paths.

4. Update imports and package interfaces.

- Downstream code should import from the package interface when a theorem or definition is meant to be public.
- If `acorn check` fails because a moved theorem is no longer visible, add it to the relevant `interface.ac` rather than importing a package-internal module from downstream code.
- Include `hard_problems/` import-path updates when the refactor changes public paths; `acorn check` elaborates hard problem files.

5. Run targeted checks while iterating.

```bash
acorn check <module-or-package>
```

6. Before finishing, run the full check.

```bash
acorn check
```

The final output should say `0 searches performed`.

## Repairing Check Failures

When `acorn check` fails, inspect the exact source line and certificate entry.

```bash
nl -ba src/path/file.ac | sed -n '<start>,<end>p'
rg -n '"goal":"<goal text>"' src/**/certs/*.jsonl src/certs/*.jsonl
```

Common failure modes:

- **`Claim at step N is not obviously true`**: the certificate cites a fact that is no longer in scope or has the wrong package path. Add the missing import/interface exposure or replace the stale proof clause with the public theorem statement now available.
- **`false certificate failed to verify`**: the contradiction proof often depended on an old internal theorem path. Make the proof clause cite the package-interface theorem directly.
- **Duplicate package declaration / duplicate binding**: an import now brings in something that is already in scope. Remove the redundant import rather than changing definitions.

Do not respond by running `acorn verify`. The goal is to keep the old proof structure checking, not to rediscover proofs.

## Useful Certificate Repairs

For Nat order facts that used generic `relation_basic` clauses before a package boundary, prefer public Nat interface facts.

Import as needed:

```acorn
from nat import lte_ref, lte_trans, lte_antisymm
```

Then use direct clauses:

```jsonl
"function(x0: Nat) { x0 <= x0 }(n)"
"function(x0: Nat, x1: Nat, x2: Nat) { not x0 <= x1 or not x1 <= x2 or x0 <= x2 }(a, b, c)"
"function(x0: Nat, x1: Nat) { not x0 <= x1 or not x1 <= x0 or x0 = x1 }(a, b)"
```

For small Nat numeral certificates, import explicit arithmetic facts rather than relying on internal simplification paths:

```acorn
from nat import add_one_right, add_suc_right, add_zero_left, add_zero_right
from nat import only_zero_lte_zero, alt_suc_ne_zero
```

Examples:

```jsonl
"function(x0: Nat) { x0 + Nat.1 = x0.suc }(Nat.2)"
"function(x0: Nat, x1: Nat) { x0 + x1.suc = (x0 + x1).suc }(Nat.3, Nat.1)"
"function(x0: Nat) { not x0 <= Nat.0 or Nat.0 = x0 }(Nat.1)"
"function(x0: Nat) { x0.suc != Nat.0 }(Nat.0)"
```

For join witnesses, expose/import the package facts rather than using an unqualified old path:

```acorn
from nat import nat_lte_join_left, nat_lte_join_right, nat_join_lte_of_bounds
```

Use exact, targeted cert edits. Avoid broad rewrites unless the old and new paths are mechanically identical and you have checked the affected files with `rg`.

## Package-Move Tips

- Rename files to names natural inside the new package. For example, `nat_wilson.ac` can become `number_theory/wilson.ac`; users importing `number_theory` do not need the old `nat_` prefix.
- Update cert `lib(...)` paths only where the referenced theorem moved. Examples from prior refactors: `lib(nat.nat_base)` to `lib(nat)`, `lib(nat.nat_combo)` to `lib(combinatorics)`.
- Interface files add real lines to the diff. Use `git diff HEAD --summary` and `git diff HEAD --shortstat` after staging/amending to understand move-heavy diffs; plain `git diff` can be misleading when deletions are staged and additions are unstaged.
- If many similar check failures appear, patch the repeated stale pattern as a batch, then rerun `acorn check`.

## PR Hygiene

Before opening a PR:

- Read `CONTRIBUTING.md`.
- Run full `acorn check` and report the `0 searches performed` result.
- Ensure unrelated local changes are either intentionally included or left out. For path refactors, hard problem import updates usually should be included.
- Set `maintainerCanModify` to true. If the GitHub connector or CLI does not stick, use the GitHub API directly.
