# Category Theory

Goal: provide the categorical abstractions that Mathlib uses to organize large mathematical theories.

## Functors and Natural Transformations

Status: `src/functor.ac` now has `functor_ext`, plus identity-composition laws `compose_functor_identity_left`/`_right`, and the constant functor `constant_functor` (with helpers `constant_obj_map`/`constant_mor_map`, the `constant_is_functor` lemma, accessors `constant_functor_src_cat`/`_dst_cat`/`_obj_map`/`_mor_map`, pointwise lemmas `constant_functor_obj_eq`/`constant_functor_mor_eq`, and the composition law `compose_functor_constant_right`); `src/natural_transformation.ac` has verified vertical composition (with `nat_trans_ext` and the unit laws `vertical_compose_id_left`/`vertical_compose_id_right` and their pointwise variants), plus horizontal composition with component formula, endpoint lemmas, naturality (`hc_naturality_axiom`), `hc_is_natural_transformation`, and `horizontal_compose_nat_trans_some`; `src/category_equivalence.ac` now packages the identity functor with identity unit/counit natural isomorphisms as `identity_category_equivalence` (with `_forward`/`_backward`/`_unit_fwd`/`_unit_bwd`/`_counit_fwd`/`_counit_bwd` accessors), and provides `swap_category_equivalence` (with `_forward`/`_backward`/`_unit_fwd`/`_unit_bwd`/`_counit_fwd`/`_counit_bwd` accessors) via the helper axioms `swap_category_equivalence_cats_axiom`, `_unit_axiom`, `_counit_axiom`, and `_axiom`, plus `category_equivalence_new_unit_fwd`/`_unit_bwd`/`_counit_fwd`/`_counit_bwd`; `src/opposite_category.ac` has `opposite_category_involutive`; `src/terminal_category.ac` has `opposite_terminal_category`; `src/category_iso.ac` now has `is_iso_pair_compose` (with helpers `is_iso_pair_compose_back_helper` and `is_iso_pair_compose_fwd_helper`), `inverse_iso_involutive`, and the bundled composition `iso_compose` (with composability predicate `iso_composable`, existence theorem `iso_compose_some`, accessors `iso_compose_cat`/`iso_compose_hom`/`iso_compose_inv`, unit laws `iso_compose_identity_left`/`iso_compose_identity_right`, `inverse_identity_iso`, and `inverse_iso_compose`); and `src/natural_isomorphism.ac` now has `is_natural_isomorphism_pair_swap`, plus transitivity (`is_natural_isomorphism_pair_compose`) via `nat_iso_components_inverse_compose_at` and the helpers from `is_natural_isomorphism_pair_swap`, and a packaged `NaturalIsomorphism` structure (with `nat_iso_new_forward`/`_backward`/`_self`, `nat_iso_some_injective`, `nat_iso_ext`, `nat_iso_is_pair`, `nat_iso_src_eq`/`_dst_eq`/`_components`, `identity_natural_isomorphism` with accessors, `inverse_natural_isomorphism` with accessors (including functor endpoints `inverse_natural_isomorphism_forward_src_functor`/`_forward_dst_functor`/`_backward_src_functor`/`_backward_dst_functor`), `inverse_natural_isomorphism_involutive`, and `inverse_identity_natural_isomorphism`), plus the pointwise-iso bridge `nat_iso_at_iso_pair`/`nat_iso_to_iso` (with `_cat`/`_hom`/`_inv` accessors), `inverse_natural_isomorphism_to_iso`, and `identity_natural_isomorphism_to_iso`.

## Universal Constructions

- [ ] Implement limits and colimits
- [ ] Add adjunctions and universal constructions
- [ ] Support monads and comonads
- [ ] Build Yoneda, representability, and presheaf basics
- [ ] Add functor categories and standard categorical constructions

## Specialized Categories

- [ ] Introduce monoidal categories and related structure
- [ ] Add abelian-category infrastructure for later homological algebra
