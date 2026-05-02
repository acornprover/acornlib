# Lattices

Goal: provide finite-infimum and finite-supremum structure for ordered objects.

- [ ] Support lattices arising from sets, ideals, and subobjects
- [ ] Refactor `min`/`max`-based proofs toward lattice language where appropriate

Status:

- `src/lattice.ac` now has theorem wrappers for the left distributivity laws, right-sided distributivity lemmas, left-sided absorption variants, one-sided monotonicity lemmas, basic meet/join equality iff aliases, and Mathlib-style `inf`/`sup` theorem aliases.
- `Nat`, `Int`, `Rat`, and `Real` now instantiate `DistribLattice` using their `min` and `max` operations.
- `src/list/list_lattice.ac` now has non-empty list meet/join constructions, list lower/upper bound predicates, pointwise element-bound theorems, and universal-property characterizations of list meet/join as greatest lower bounds and least upper bounds.
