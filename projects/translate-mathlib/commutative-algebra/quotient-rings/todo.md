# Quotient Rings

Build the quotient ring `R/I` for an ideal `I` of a commutative ring `R`,
mirroring the existing add-subgroup quotient infrastructure in
`add_subgroup.ac`. Operations live on `QuotientOver[R]` indexed by the
ideal-quotient `QuotientRelation`.

## Roadmap

- [ ] Add `ideal_quotient_relation` (a `QuotientRelation[R]` for an `Ideal[R]`)
      with `ideal_quotient_relation_rel` identity lemma
- [ ] Prove `ideal_quotient_rel_respects_neg` and the
      `quotient_unary_respects`/`quotient_binary_respects` versions for
      `add`, `neg`, and `mul`
- [ ] Define `ideal_quotient_add`, `ideal_quotient_neg`,
      `ideal_quotient_zero`, `ideal_quotient_mul`, `ideal_quotient_one`
- [ ] Add projection lemmas (`*_projection`, left/right compatibility,
      unary compatibility) for the quotient operations
- [ ] Prove ring axioms on the ideal quotient (assoc, comm of `+`,
      identity, inverse, distributivity) using projections
- [ ] Package the ideal quotient as a `CommRing` instance `QuotientRing[R, i]`
- [ ] Define the canonical projection `R -> R/I` and prove it is a `RingHom`
- [ ] State and prove the universal property: any ring hom vanishing on `I`
      factors uniquely through `R/I`
- [ ] First isomorphism theorem for rings: `R/ker(f) ≃ image(f)`
