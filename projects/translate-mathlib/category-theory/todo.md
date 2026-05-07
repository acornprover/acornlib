# Category Theory

Goal: provide the categorical abstractions that Mathlib uses to organize large mathematical theories.

## Functors and Natural Transformations

- [ ] Add transitivity (composition) of natural-isomorphism pairs: from `is_natural_isomorphism_pair(f, g)` and `is_natural_isomorphism_pair(g, h)`, conclude an inverse pair built via vertical composition

Status: `src/functor.ac` now has `functor_ext`; `src/natural_transformation.ac` has verified vertical composition, plus horizontal composition with component formula, endpoint lemmas, naturality (`hc_naturality_axiom`), `hc_is_natural_transformation`, and `horizontal_compose_nat_trans_some`; `src/category_equivalence.ac` now packages the identity functor with identity unit/counit natural isomorphisms as `identity_category_equivalence`; and `src/natural_isomorphism.ac` now has `is_natural_isomorphism_pair_swap` (with helpers `nat_iso_components_inverse_swap_at`, `nat_iso_components_inverse_swap`, and `is_natural_isomorphism_pair_pack`).

## Universal Constructions

- [ ] Implement limits and colimits
- [ ] Add adjunctions and universal constructions
- [ ] Support monads and comonads
- [ ] Build Yoneda, representability, and presheaf basics
- [ ] Add functor categories and standard categorical constructions

## Specialized Categories

- [ ] Introduce monoidal categories and related structure
- [ ] Add abelian-category infrastructure for later homological algebra
