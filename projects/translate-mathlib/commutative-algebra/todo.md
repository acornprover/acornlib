# Commutative Algebra

Goal: cover the ring-theoretic infrastructure that underlies algebraic geometry and modern number theory.

## Design Choice

`Ideal` is represented as a predicate `is_ideal[R: CommRing](contains: R -> Bool) -> Bool`
in `src/ideal.ac`, split into three named sub-constraints
(`ideal_zero_constraint`, `ideal_add_constraint`, `ideal_absorb_constraint`).
No bundled `Ideal[R]` structure is introduced yet — bundle later if a use site
requires it. Prototype includes `zero_ideal`, `unit_ideal`, `principal_ideal`,
their `is_ideal` proofs, plus `principal_ideal_zero_eq_zero_ideal` and
`principal_ideal_one_eq_unit_ideal`. The lattice API uses `ideal_subset`,
`ideal_inter` (meet), `ideal_sum` (join), with `zero_ideal` as bottom and
`unit_ideal` as top. It includes GLB/LUB iff lemmas, commutativity,
associativity, idempotence, absorption under inclusion, zero/unit identities,
plus the helper `is_ideal_unfold` and `is_ideal_from_constraints` for
assembling `is_ideal` from its sub-constraints.

## Roadmap

- [ ] Add `Ideal[R].indexed_intersection` attribute (or polymorphic helper) and connect `ideal_indexed_inter(family).as_set` to `Set.indexed_intersection`
- [ ] Add quotient rings and their universal properties
- [ ] Support prime ideals, maximal ideals, and local rings
- [ ] Add localization at submonoids and prime ideals
- [ ] Develop Noetherian rings and modules
- [ ] Support integral elements and integral extensions
- [ ] Add fraction fields and localization-based field-of-fractions constructions
- [ ] Build tensor products and base-change lemmas
- [ ] Add radicals, nilradicals, and Jacobson radicals
- [ ] Develop PID, UFD, and related standard commutative-algebra classes
