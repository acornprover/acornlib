# Disjoint Residue Classes, Erdos #202

Source: aimath `Number theory-49`, 23 Apr 2026. https://www.erdosproblems.com/202
Status: resolved. Verification: community checked, formal artifact reported but not confirmed here.
Value: feasibility medium-high, uncertainty medium, importance high.

Claim: for `n_1 < ... < n_r <= N` with pairwise disjoint residue classes `a_i mod n_i`, the maximal
`r` is bounded as a function of `N`. The resolution supplies that bound.

`src/number_theory/covering_system.ac` already represents a system as `List[Pair[Nat, Nat]]` with
`congruence_class_contains` and `covers_all_int`. Disjointness is the dual notion to covering and
should reuse the same representation.

## Todo

- [ ] Read the problem page and forum thread and record the exact bound claimed.
- [ ] Define pairwise disjointness for a residue-class system, alongside the existing covering predicate.
- [ ] Prove the two-class case: `a mod m` and `b mod n` are disjoint iff `gcd(m, n)` does not divide `a - b`.
- [ ] Define the moduli-distinct, bounded-by-`N` condition on a system.
- [ ] State the extremal quantity: the largest `r` admitting such a system.
- [ ] Prove the easy direction, an explicit construction attaining the claimed size.
- [ ] Attempt the upper bound; if out of reach, put the statement in `hard_problems/`.
- [ ] Record the outcome.

## Library demand

Feeds [residue-class-systems](../../translate-mathlib/baseline/residue-class-systems/todo.md).

- [ ] Pairwise disjointness of residue classes, with the gcd criterion.
- [ ] Distinctness and bounding conditions on the moduli of a system.
- [ ] Density of a residue-class system, as the natural counting tool for both directions.
