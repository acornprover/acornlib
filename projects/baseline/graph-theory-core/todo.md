# Graph Theory Core

`src/` already has about 4,400 lines: `simple_graph.ac` (the `SimpleGraph[V]` structure, empty and
complete graphs, complement, union, intersection, cliques, independent sets, induced subgraphs,
homomorphisms, embeddings, isomorphisms), plus `simple_graph_walks.ac`, `simple_graph_connectivity.ac`,
`simple_graph_boolean_algebra.ac`, and `simple_graph_clique_transport.ac`.

The gap is not the graph type. It is that almost no *invariant* exists yet — there is no vertex
degree, and everything numeric depends on it. Cycles, colourings, matchings, and spectra stay in
[the translate-mathlib graph theory topic](../../translate-mathlib/graph-theory/todo.md); this branch
is the invariant layer underneath them.

Mathlib coverage: it has degree (`DegreeSum`) and the surrounding standard material, so that part is
translation. It has **no domination number and no zero forcing number**, so those are original work.

## Degree and edges

Everything numeric depends on degree, so this comes first.

- [ ] Define an edge as an unordered adjacent pair, and the edge set of a finite graph.
- [ ] Define the edge count of a finite graph.
- [ ] Define vertex degree, and prove it is the size of the neighbourhood.
- [ ] Prove the handshake lemma: the degree sum is twice the edge count.
- [ ] Define minimum and maximum degree, and the regular and cubic conditions.
- [ ] Prove degree is invariant under graph isomorphism.

## Domination

No Mathlib counterpart.

- [ ] Define dominating sets.
- [ ] Prove the whole vertex set is dominating, so the domination number is well defined.
- [ ] Define the domination number `gamma(G)`.
- [ ] Define uniqueness of a minimum dominating set.
- [ ] Compute `gamma` for complete, empty, path, and cycle graphs.

## Bipartite structure

- [ ] Define bipartiteness, and the no-isolated-vertices condition.
- [ ] Prove bipartiteness passes to induced subgraphs.

## Zero forcing

No Mathlib counterpart, and the most definitional work in this branch. Do it last, and settle the
colour-change rule carefully before building on it.

- [ ] Define the diamond graph and the diamond-free condition via induced subgraphs.
- [ ] Add forbidden induced subgraph conditions, stated once and reused.
- [ ] Define the zero forcing colour-change rule on a vertex subset.
- [ ] Define the closure of a subset under repeated forcing, and prove it terminates on a finite graph.
- [ ] Define zero forcing sets and the zero forcing number `Z(G)`.
