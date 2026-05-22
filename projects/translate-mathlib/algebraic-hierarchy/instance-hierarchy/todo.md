# Semiring, Ring, and Field Instance Hierarchy

Goal: keep algebraic instances coherent so downstream code can rely on predictable inheritance.

- [ ] Review the current semigroup-to-field inheritance chain
- [ ] Remove duplicated theorem proofs that should follow from parent instances
- [ ] Standardize additive and multiplicative parallel hierarchies
- [ ] Add missing intermediate classes where they reduce duplication
- [ ] Ensure `Nat`, `Int`, `Rat`, `Real`, and `Complex` expose the intended instances
- [ ] Add ordered variants cleanly on top of algebraic classes
- [ ] Add canonical numerals/coercions behavior throughout the hierarchy
- [ ] Centralize theorem naming for inherited structure lemmas
- [ ] Record known pain points in instance search or coercion behavior
- [ ] Refactor one representative tower end-to-end after the hierarchy review
