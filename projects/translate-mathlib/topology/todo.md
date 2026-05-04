# Topology

Goal: provide the general topological language that analysis, geometry, and probability need.

- [ ] Support the product topology on a binary product type
- [ ] Add the big-union axiom for the subspace topology: introduce the `lifted_open(a, d)` ambient family and prove `is_open_in_subspace(a, big_union(d))` whenever every `d(u)` is subspace-open. The two-direction trace identity proof timed out; needs further factoring
- [ ] Support the sum topology on a binary sum type
- [ ] Support the quotient topology relative to an equivalence relation
- [ ] Define separability (existence of a countable dense subset) — needs a countability predicate
- [ ] Add the dense-iff-every-nonempty-open-meets characterization: the obvious proof shape (witness an open's point and apply closure_iff_every_neighborhood_meets) caused a "shallow explosion" timeout in the prover. Needs a structurally different proof or stronger prover hints
- [ ] Develop compactness and local compactness
- [ ] Add connectedness and path connectedness
- [ ] Support the standard separation axioms
- [ ] Build continuity in terms of closed-set preimages, neighborhoods, and filters
- [ ] Define embeddings and homeomorphisms
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
