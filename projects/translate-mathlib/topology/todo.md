# Topology

Goal: provide the general topological language that analysis, geometry, and probability need.

- [ ] Migrate the existing `is_open_in_subspace` / `is_closed_in_subspace` predicate-style API and its lemmas onto the new `Subspace[T, a]: TopologicalSpace` carrier (now in `src/topological_space.ac`), then delete the predicates. The carrier and its `TopologicalSpace` instance verify; the four `open_*` axioms discharge via `subspace_open_empty_helper` / `_universal_helper` / `_inter_helper` / `_big_union_helper`. Note: `acorn check` currently rejects one cert (`subspace_open_empty_helper`, "Subspace[T0, x1] vs Subspace[T0, x0]") — bugged upstream as a strict-cert generator issue, but the verifier is happy
- [ ] Add the binary-intersection and big-union axioms for `is_open_in_product`: the proofs unfold to `generated_open_inter`/`generated_open_big_union` applied to `is_box[X, Y]` (which has been shown to be a topological basis), but the conclusion-matching step timed out the prover
- [ ] Add the binary-intersection and big-union axioms for `is_quotient_open`: each piece (open part, saturation under `r`) verifies in isolation, but stitching them together for the full conclusion timed out the prover
- [ ] Add the binary-intersection and big-union axioms for `is_open_in_sum`: the preimage commutation lemmas verify, but stitching them together via the `is_open_in_sum_iff` definition timed out the prover
- [ ] Define separability (existence of a countable dense subset) — needs a countability predicate
- [ ] Add the dense-iff-every-nonempty-open-meets characterization: the obvious proof shape (witness an open's point and apply closure_iff_every_neighborhood_meets) caused a "shallow explosion" timeout in the prover. Needs a structurally different proof or stronger prover hints
- [ ] Develop the compactness API (universal-set is compact, finite-union of compacts is compact, image of compact under continuous is compact, closed subset of compact is compact). The per-cover lemma `singleton_open_cover_imp_finite_subcover` is in place; the obvious wrapper `singleton_is_compact` (a `forall c. ...` matching the unfolded `is_compact`) timed out the prover
- [ ] Prove equivalence of `is_connected` and `is_connected_via_clopen`
- [ ] Prove that the clopen sets of a topological space form a Boolean subalgebra (closed under complement, binary intersection, binary union). The introducer/projector lemmas `is_clopen_intro`/`is_clopen_imp_open` are in place; the binary-op proofs themselves repeatedly time out the prover
- [ ] Add path connectedness (needs the unit interval and continuous paths)
- [ ] Build continuity in terms of closed-set preimages and filter convergence (the pointwise neighborhood-based variant `is_continuous_at` and the global ⇒ pointwise direction are in place; the converse direction and the closed-preimage and filter-convergence equivalences remain)
- [ ] Prove the standard implications between separation axioms (Hausdorff ⇒ T1 ⇒ T0). Witness-extraction proofs timed out the prover; needs further factoring or a different proof shape
- [ ] Prove `homeomorphism_inverse` (swapping the maps of a homeomorphism gives another); the proof is logically trivial but the prover timed out matching the conjunction order across the X→Y vs Y→X orientations. Per-field accessors `is_homeomorphism_continuous_fwd` / `_continuous_inv` / `_left_inv` / `_right_inv` are now in place, but stitching them back into `is_homeomorphism[Y, X](g, f)` (in either orientation, with or without `let`/Bool bindings) still times out the prover
- [ ] Prove that the composition of two homeomorphisms is a homeomorphism. The continuity halves (`continuous_compose`) and the pointwise inverse halves (`homeomorphism_compose_left_inv` / `_right_inv`) are now in place; assembling the four pieces back into `is_homeomorphism[X, Z](compose(f2, f1), compose(g1, g2))` still times out the prover (same conjunction-matching limitation as `homeomorphism_inverse`)
- [ ] Define embeddings (an injective continuous map that is a homeomorphism onto its image; needs the subspace topology big-union axiom)
- [ ] Add topological groups, rings, and modules
- [ ] Prove foundational results such as Baire-category style theorems
- [ ] Add an indiscrete-topology instance: the `big_union` axiom on `s = empty or s = universal` opens currently times out the prover; needs helper lemmas about `big_union` of an everywhere-empty family
- [ ] Generate a topology from a subbasis: finite intersections of subbasis members form a basis. Attempted with `List[Set[T]]`-based `list_inter`; the auto-induction over `List[Set[T]]` could produce the inductive step but the prover timed out on `all_in_subbasis_concat` and `list_inter_concat`. Needs a different inductive structure or stronger prover hints

Note: a workaround is in place to avoid `Set[Set[T]]` in typeclass axioms because
`acorn check` fails to certify code that constructs the empty `Set[Set[T]]` or
calls `Set[Set[T]].new` with a partially applied predicate. Families of sets are
modelled as `Set[T] -> Bool` predicates and consumed via `big_union` /
`big_intersection`. If the certificate generator is fixed upstream, this layer
can be replaced by direct `Set[Set[T]]` collections.
