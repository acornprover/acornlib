# Morphism Classes and Homomorphism Extensionality

Goal: make structure-preserving maps a first-class part of the algebraic hierarchy instead of scattered ad hoc records.

- [x] Add bundled semiring homomorphisms (SemiringHom: preserves + and *, identities; sits below RingHom in the hierarchy)
- [x] Add bundled additive commutative monoid/group homomorphisms reusing the existing AddMonoidHom and AddGroupHom infrastructure
- [x] Relate RingHom to AddGroupHom and MonoidHom: derive instances or provide bridges in both directions
- [ ] Unify notation and field names across bundled morphism structures after the coercion convention is settled

Status:

- `src/submonoid.ac`, `src/subgroup.ac`, `src/add_subgroup.ac`, and `src/subring.ac` now have preimage constructions for bundled homomorphisms; the monoid, group, and additive group cases also expose kernel subobjects.
- `src/add_comm_monoid.ac` and `src/add_comm_group.ac` now have bundled homomorphism wrappers reusing the existing additive monoid/group homomorphism infrastructure.
- `src/ring_hom.ac` now bridges `RingHom` to `AddGroupHom`, `MonoidHom`, and `SemiringHom`, and has the predicate-level reverse bridge from compatible additive and multiplicative homomorphisms.
- `src/quotient_algebra.ac` now uses bundled `RingHom` directly for ring-kernel congruence lemmas instead of paired additive/multiplicative homomorphisms.
- `src/set.ac` now has a stable image/preimage Galois-style API: image-subset/preimage-subset equivalence, image-preimage closures, preimage-image kernels, monotonicity, idempotence, and injective/surjective triviality lemmas.
- `src/add_monoid_hom_set.ac`, `src/monoid_hom_set.ac`, `src/group_hom_set.ac`, `src/add_group_hom_set.ac`, `src/semiring_hom_set.ac`, `src/ring_hom_set.ac`, `src/add_comm_monoid_hom_set.ac`, and `src/add_comm_group_hom_set.ac` now lift the stable set image/preimage closure-kernel API to bundled homomorphisms, including witness, image/preimage composition, Galois-style containment, and closure/kernel idempotence lemmas.
- Remaining items are deferred from the active execution frontier: notation unification is a design cleanup.
