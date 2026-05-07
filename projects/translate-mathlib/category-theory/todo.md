# Category Theory

Goal: provide the categorical abstractions that Mathlib uses to organize large mathematical theories.

## Functors and Natural Transformations

- [ ] Add `swap` and `is_iso_pair` propagation theorems for natural-isomorphism pairs (deferred: per-x swap proof times out; symmetry of `is_iso_pair` chains through `nat_trans_dst_cat_eq` resists factoring)

Status: `src/functor.ac` now has `functor_ext`; `src/natural_transformation.ac` has verified vertical composition, plus horizontal composition with component formula, endpoint lemmas, naturality (`hc_naturality_axiom`), `hc_is_natural_transformation`, and `horizontal_compose_nat_trans_some`; and `src/category_equivalence.ac` now packages the identity functor with identity unit/counit natural isomorphisms as `identity_category_equivalence`.

## Universal Constructions

- [ ] Implement limits and colimits
- [ ] Add adjunctions and universal constructions
- [ ] Support monads and comonads
- [ ] Build Yoneda, representability, and presheaf basics
- [ ] Add functor categories and standard categorical constructions

## Specialized Categories

- [ ] Introduce monoidal categories and related structure
- [ ] Add abelian-category infrastructure for later homological algebra
