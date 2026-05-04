# Topology

Goal: provide the general topological language that analysis, geometry, and probability need.

- [ ] Generate topologies from a basis or a subbasis
- [ ] Add the discrete and indiscrete topology instances on common types
- [ ] Define neighborhoods of a point and the neighborhood filter
- [ ] Define density, separability, and the closure-via-limit-point characterization
- [ ] Support product, sum, subspace, and quotient topologies
- [ ] Develop compactness and local compactness
- [ ] Add connectedness and path connectedness
- [ ] Support the standard separation axioms
- [ ] Build continuity in terms of closed-set preimages, neighborhoods, and filters
- [ ] Define embeddings and homeomorphisms
- [ ] Add topological groups, rings, and modules
- [ ] Prove foundational results such as Baire-category style theorems

Note: a workaround is in place to avoid `Set[Set[T]]` in typeclass axioms because
`acorn check` fails to certify code that constructs the empty `Set[Set[T]]` or
calls `Set[Set[T]].new` with a partially applied predicate. Families of sets are
modelled as `Set[T] -> Bool` predicates and consumed via `big_union` /
`big_intersection`. If the certificate generator is fixed upstream, this layer
can be replaced by direct `Set[Set[T]]` collections.
