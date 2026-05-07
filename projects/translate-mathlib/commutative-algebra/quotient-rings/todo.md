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
