# Morphism Classes and Homomorphism Extensionality

Goal: make structure-preserving maps a first-class part of the algebraic hierarchy instead of scattered ad hoc records.

- [x] Add bundled semiring homomorphisms (SemiringHom: preserves + and *, identities; sits below RingHom in the hierarchy)
- [x] Add bundled additive commutative monoid/group homomorphisms reusing the existing AddMonoidHom and AddGroupHom infrastructure
- [ ] Add theorem libraries for kernel-like and image-like constructions once subobjects are available
- [ ] Unify notation and field names across bundled morphism structures (consider a shared coercion convention)
- [ ] Refactor one existing algebra file to use the shared morphism API
- [x] Relate RingHom to AddGroupHom and MonoidHom: derive instances or provide bridges in both directions

Status:

- `src/add_comm_monoid.ac` and `src/add_comm_group.ac` now have bundled homomorphism wrappers reusing the existing additive monoid/group homomorphism infrastructure.
- `src/ring_hom.ac` now bridges `RingHom` to `AddGroupHom`, `MonoidHom`, and `SemiringHom`, and has the predicate-level reverse bridge from compatible additive and multiplicative homomorphisms.
- `src/quotient_algebra.ac` now uses bundled `RingHom` directly for ring-kernel congruence lemmas instead of paired additive/multiplicative homomorphisms.
