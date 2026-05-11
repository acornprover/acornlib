# Quotient Rings

Build the quotient ring `R/I` for an ideal `I` of a commutative ring `R`,
mirroring the existing add-subgroup quotient infrastructure in
`add_subgroup.ac`. Operations live on `QuotientOver[R]` indexed by the
ideal-quotient `QuotientRelation`.

## Roadmap

- [ ] Package the ideal quotient as a `CommRing` instance `QuotientRing[R, i]`
- [ ] Define the canonical projection `R -> R/I` and prove it is a `RingHom`
- [ ] State and prove the universal property: any ring hom vanishing on `I`
      factors uniquely through `R/I`
- [ ] First isomorphism theorem for rings: `R/ker(f) ≃ image(f)`

Status:

- The representative-level ideal quotient API now includes subtraction:
  relation compatibility, projection lemmas, left/right compatibility, zero/one
  projection aliases, and basic identities with zero, self-subtraction, and
  addition of the quotient negation.
- Canonical projection support now includes projection-equality/reflection lemmas
  for related representatives and aliases for zero/one/zero-multiplication and
  subtraction identities stated directly on projected representatives.
