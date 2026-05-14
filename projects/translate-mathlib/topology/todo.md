# Topology

Goal: provide the general topological language that analysis, geometry, and probability need.

- [ ] Migrate the existing `is_open_in_subspace` / `is_closed_in_subspace` predicate-style API and its lemmas onto the new `Subspace[T, a]: TopologicalSpace` carrier (now in `src/topological_space.ac`), then delete the predicates. Keep subspace migration proofs small and cache-stable.
- [ ] Add the binary-intersection and big-union axioms for `is_open_in_product`: the proofs unfold to `generated_open_inter`/`generated_open_big_union` applied to `is_box[X, Y]` (which has been shown to be a topological basis); split out the conclusion-matching steps
- [ ] Add the binary-intersection and big-union axioms for `is_open_in_sum`: the preimage commutation lemmas verify; add stitching lemmas through the `is_open_in_sum_iff` definition
- [ ] Define separability (existence of a countable dense subset) — needs a countability predicate
- [ ] Develop the compactness API (universal-set is compact, finite-union of compacts is compact, image of compact under continuous is compact, closed subset of compact is compact). The per-cover lemma `singleton_open_cover_imp_finite_subcover` is in place; add a decomposed wrapper for `singleton_is_compact` matching the unfolded `is_compact`
- [ ] Prove equivalence of `is_connected` and `is_connected_via_clopen`
- [ ] Add path connectedness (needs the unit interval and continuous paths)
- [ ] Build continuity in terms of closed-set preimages and filter convergence (the pointwise neighborhood-based variant `is_continuous_at` and the equivalence `continuous_iff_continuous_at` are in place; the closed-preimage and filter-convergence equivalences remain)
- [ ] Prove the standard implications between separation axioms (Hausdorff ⇒ T1 ⇒ T0). Witness-extraction proofs timed out the prover; needs further factoring or a different proof shape
- [ ] Prove `homeomorphism_inverse` (swapping the maps of a homeomorphism gives another); add orientation-specific conjunction lemmas across the X→Y vs Y→X directions. The proof is logically trivial, but even with per-field accessors `is_homeomorphism_continuous_fwd` / `_continuous_inv` / `_left_inv` / `_right_inv`, stitching them back into `is_homeomorphism[Y, X](g, f)` still times out the prover
- [ ] Prove that the composition of two homeomorphisms is a homeomorphism. The continuity halves (`continuous_compose`) and the pointwise inverse halves (`homeomorphism_compose_left_inv` / `_right_inv`) are now in place; assembling the four pieces back into `is_homeomorphism[X, Z](compose(f2, f1), compose(g1, g2))` still times out the prover
- [ ] Define embeddings (an injective continuous map that is a homeomorphism onto its image; needs the subspace topology big-union axiom)
- [ ] Add topological groups, rings, and modules
- [ ] Prove foundational results such as Baire-category style theorems
- [ ] Add an indiscrete-topology instance: prove the `big_union` axiom on `s = empty or s = universal`. Helpers `big_union_of_empty_family` and `big_union_with_universal_member` are in place; combine them via case split on whether any family member is universal
- [ ] Generate a topology from a subbasis: finite intersections of subbasis members form a basis. A `List[Set[T]]`-based `list_inter` attempt needs a different inductive structure or explicit helper lemmas for `all_in_subbasis_concat` and `list_inter_concat`

Note: families of sets are still modelled as `Set[T] -> Bool` predicates and consumed
via `big_union` / `big_intersection`; revisit direct `Set[Set[T]]` collections
only when a migration has a concrete payoff.
