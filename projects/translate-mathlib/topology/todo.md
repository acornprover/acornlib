# Topology

Goal: provide the general topological language that analysis, geometry, and probability need.

- [ ] Add the big-union axiom for the subspace topology: introduce the `lifted_open(a, d)` ambient family and prove `is_open_in_subspace(a, big_union(d))` whenever every `d(u)` is subspace-open. The two-direction trace identity proof timed out; needs further factoring
- [ ] Add the binary-intersection and big-union axioms for `is_open_in_product`: the proofs unfold to `generated_open_inter`/`generated_open_big_union` applied to `is_box[X, Y]` (which has been shown to be a topological basis), but the conclusion-matching step timed out the prover
- [ ] Add the binary-intersection and big-union axioms for `is_quotient_open`: each piece (open part, saturation under `r`) verifies in isolation, but stitching them together for the full conclusion timed out the prover
- [ ] Add the binary-intersection and big-union axioms for `is_open_in_sum`: the preimage commutation lemmas verify, but stitching them together via the `is_open_in_sum_iff` definition timed out the prover
- [ ] Define separability (existence of a countable dense subset) — needs a countability predicate
- [ ] Add the dense-iff-every-nonempty-open-meets characterization: the obvious proof shape (witness an open's point and apply closure_iff_every_neighborhood_meets) caused a "shallow explosion" timeout in the prover. Needs a structurally different proof or stronger prover hints
- [ ] Develop compactness and local compactness
- [ ] Prove equivalence of `is_connected` and `is_connected_via_clopen`
- [ ] Add path connectedness (needs the unit interval and continuous paths)
- [ ] Build continuity in terms of closed-set preimages and filter convergence (the pointwise neighborhood-based variant `is_continuous_at` and the global ⇒ pointwise direction are in place; the converse direction and the closed-preimage and filter-convergence equivalences remain)
- [ ] Prove the standard implications between separation axioms (Hausdorff ⇒ T1 ⇒ T0). Witness-extraction proofs timed out the prover; needs further factoring or a different proof shape
- [ ] Prove `homeomorphism_inverse` (swapping the maps of a homeomorphism gives another); the proof is logically trivial but the prover timed out matching the conjunction order across the X→Y vs Y→X orientations
- [ ] Prove that the composition of two homeomorphisms is a homeomorphism
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
