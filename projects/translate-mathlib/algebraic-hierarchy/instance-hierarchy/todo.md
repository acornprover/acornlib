# Semiring, Ring, and Field Instance Hierarchy

Goal: keep algebraic instances coherent so downstream code can rely on predictable inheritance.

## Group A: First Erdos Numeric Instance Pass

- [ ] Add concrete inherited-instance smoke lemmas for `Nat`, `Int`, `Rat`, and `Real` where first-cluster number theory needs a shared algebraic hypothesis.
- [ ] Add power, cancellation, unit/nonzero, and zero-product bridges that arithmetic proofs can cite uniformly across semirings, rings, fields, and integral domains.
- [ ] Add ordered-algebra aliases for nonnegative multiplication, division, and powers only when a binomial, divisibility, congruence, or asymptotic proof needs them.
- [ ] Add numeral/coercion bridges among `Nat`, `Int`, `Rat`, and `Real` only where first-cluster statements currently need manual conversions.
- [ ] Record instance-search or inherited-theorem pain points found during the first concrete number-theory target.

## Group B: Deferred Hierarchy Cleanup

- [ ] Review the current semigroup-to-field inheritance chain.
- [ ] Remove duplicated theorem proofs that should follow from parent instances.
- [ ] Standardize additive and multiplicative parallel hierarchies.
- [ ] Add missing intermediate classes where they reduce duplication.
- [ ] Add ordered variants cleanly on top of algebraic classes.
- [ ] Centralize theorem naming for inherited structure lemmas.
- [ ] Refactor one representative tower end-to-end after the hierarchy review.

Status:

- `src/algebraic_instance_smoke.ac` now gives concrete inherited-instance smoke lemmas for `Nat`, `Int`, `Rat`, and `Real`, covering semiring zero powers, ring negation multiplication, field zero-product facts, unit/nonzero facts, nonzero powers, and ordered-field nonnegative multiplication.
- `src/comm_ring_unit.ac` no longer defines duplicate `Field.is_unit` / `Field.is_non_unit` attributes; fields now use the inherited `CommRing` unit predicate, which removes concrete `Rat`/`Real` attribute ambiguity.
- `src/comm_ring_unit.ac` now has the field-specific unit/nonzero bridge for the commutative-ring unit predicate: `field_unit_is_nonzero`, `field_is_unit_iff_nonzero`, and `field_zero_is_non_unit`.
- `src/units.ac` and `src/comm_ring_unit.ac` now have power/unit bridges: monoid-unit multiplication and natural-power closure, commutative-ring `is_unit` natural-power closure, and `field_nonzero_pow_is_unit`.
- `src/field.ac` now has zero-product bridge lemmas matching the integral-domain API: `field_mul_eq_zero` and `field_mul_eq_zero_of_factor`.
- `src/integral_domain.ac` now has verified zero-product and nonzero-power bridges: `integral_domain_mul_eq_zero`, `integral_domain_mul_eq_zero_of_factor`, `integral_domain_mul_nonzero`, `integral_domain_pow_suc_nonzero`, and `integral_domain_pow_nonzero`.
