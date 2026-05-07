# Category Theory

Goal: provide the categorical abstractions that Mathlib uses to organize large mathematical theories.

## Functors and Natural Transformations

Status: `src/functor.ac` now has `functor_ext`; `src/natural_transformation.ac` has verified vertical composition, plus horizontal composition with component formula, endpoint lemmas, naturality (`hc_naturality_axiom`), `hc_is_natural_transformation`, and `horizontal_compose_nat_trans_some`; `src/category_equivalence.ac` now packages the identity functor with identity unit/counit natural isomorphisms as `identity_category_equivalence`; `src/category_iso.ac` now has `is_iso_pair_compose` (with helpers `is_iso_pair_compose_back_helper` and `is_iso_pair_compose_fwd_helper`); and `src/natural_isomorphism.ac` now has `is_natural_isomorphism_pair_swap`, plus transitivity (`is_natural_isomorphism_pair_compose`) via `nat_iso_components_inverse_compose_at` and the helpers from `is_natural_isomorphism_pair_swap`.

## Universal Constructions

- [ ] Implement limits and colimits
- [ ] Add adjunctions and universal constructions
- [ ] Support monads and comonads
- [ ] Build Yoneda, representability, and presheaf basics
- [ ] Add functor categories and standard categorical constructions

## Specialized Categories

- [ ] Introduce monoidal categories and related structure
- [ ] Add abelian-category infrastructure for later homological algebra
