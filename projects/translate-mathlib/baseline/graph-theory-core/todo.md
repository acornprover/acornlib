# Graph Theory Core

Claimants: [Koch-Narayan Conjecture 1](../../../verify-ai-claims/koch-narayan-edge-bound/todo.md),
[zero forcing and domination](../../../verify-ai-claims/zero-forcing-domination/todo.md).

`src/` already has about 4,400 lines: `simple_graph.ac` (the `SimpleGraph[V]` structure, empty and
complete graphs, complement, union, intersection, cliques, independent sets, induced subgraphs,
homomorphisms, embeddings, isomorphisms), plus `simple_graph_walks.ac`, `simple_graph_connectivity.ac`,
`simple_graph_boolean_algebra.ac`, and `simple_graph_clique_transport.ac`.

The gap is not the graph type. It is that almost no *invariant* exists yet — there is no vertex
degree, and everything numeric depends on it. Both claimants need degree and domination; only one
needs zero forcing. Nothing here needs cycles, colourings, or spectra, so those stayed in
[the graph theory topic](../../graph-theory/todo.md) rather than moving into the baseline.

Coverage note: Mathlib has degree (`DegreeSum`) and the surrounding standard material, so that part
is translation. Mathlib has **no domination number and no zero forcing number**, so those are
original work either way.

## Degree and edges

Both claimants need all of this.

- [ ] Define an edge as an unordered adjacent pair, and the edge set of a finite graph.
- [ ] Define the edge count of a finite graph.
- [ ] Define vertex degree, and prove it is the size of the neighbourhood.
- [ ] Prove the handshake lemma: the degree sum is twice the edge count.
- [ ] Define minimum and maximum degree, and the regular and cubic conditions.
- [ ] Prove degree is invariant under graph isomorphism.

## Domination

Both claimants need all of this.

- [ ] Define dominating sets.
- [ ] Prove the whole vertex set is dominating, so the domination number is well defined.
- [ ] Define the domination number `gamma(G)`.
- [ ] Define uniqueness of a minimum dominating set.
- [ ] Compute `gamma` for complete, empty, and small cubic graphs.

## Bipartite structure

Claimed by Koch-Narayan only.

- [ ] Define bipartiteness, and the no-isolated-vertices condition.
- [ ] Prove bipartiteness passes to induced subgraphs.

## Zero forcing

Claimed by TxGraffiti-Davila 9 only. The most speculative part of this branch; do it last.

- [ ] Define the diamond graph and the diamond-free condition via induced subgraphs.
- [ ] Add forbidden induced subgraph conditions, stated once and reused.
- [ ] Define the zero forcing colour-change rule on a vertex subset.
- [ ] Define the closure of a subset under repeated forcing, and prove it terminates on a finite graph.
- [ ] Define zero forcing sets and the zero forcing number `Z(G)`.
