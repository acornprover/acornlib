# Graph Theory Core

Claimants: [clique transversal number](../../../verify-ai-claims/clique-transversal-number/todo.md),
[cycle double cover](../../../verify-ai-claims/cycle-double-cover/todo.md),
[zero forcing and domination](../../../verify-ai-claims/zero-forcing-domination/todo.md).

`src/` already has about 4,400 lines: `simple_graph.ac` (the `SimpleGraph[V]` structure, empty and
complete graphs, complement, union, intersection, cliques, independent sets, induced subgraphs,
homomorphisms, embeddings, isomorphisms), plus `simple_graph_walks.ac`, `simple_graph_connectivity.ac`,
`simple_graph_boolean_algebra.ac`, and `simple_graph_clique_transport.ac`. `fin_matrix.ac` and
`fin_matrix_det.ac` supply matrices.

The gap is not the graph type. It is that almost no *invariant* exists yet — there is no vertex
degree, and everything numeric depends on it. Order the work accordingly: degree and edges first,
since every claimant needs them; spectra last, since only the deferred Graffiti claims do.

Coverage note: Mathlib has most of the first three groups below (`DegreeSum`, `Coloring`, `Girth`,
`Acyclic`, `Matching`, `Extremal.Turan`, `AdjMatrix`, `LapMatrix`), so those are genuine translation
targets. It has no domination number and no zero forcing number, and its spectral graph theory stops
at the adjacency and Laplacian matrices themselves. Those parts are original work, not translation.

## Degree and edges

- [ ] Define an edge as an unordered adjacent pair, and the edge set of a finite graph.
- [ ] Define vertex degree, and prove it is the size of the neighbourhood.
- [ ] Prove the handshake lemma: the degree sum is twice the edge count.
- [ ] Define minimum and maximum degree, and the regular and cubic conditions.
- [ ] Prove degree is invariant under graph isomorphism.

## Cycles and structure

- [ ] Define cycles, distinguished from the existing closed walks by requiring distinct interior vertices.
- [ ] Define girth, and prove it is infinite exactly for acyclic graphs.
- [ ] Define bridges and the bridgeless condition, connecting to the existing component API.
- [ ] Prove a bridge lies on no cycle.
- [ ] Add walks, paths, cycles, and connectedness beyond the current predicates.
- [ ] Develop trees, forests, and spanning-tree theory.
- [ ] Add edge multiplicity across a list of subgraphs.

## Vertex-set invariants

- [ ] Define maximal cliques and the clique number.
- [ ] Define the independence number from the existing independent-set predicate.
- [ ] Define dominating sets and the domination number.
- [ ] Define clique transversals and the clique transversal number.
- [ ] Define vertex covers, and relate them to independent sets.
- [ ] Add iterated closure of a vertex set under a monotone rule, with termination on finite graphs.
- [ ] Define zero forcing sets and the zero forcing number.
- [ ] Add forbidden induced subgraph conditions, stated once and reused.

## Colourings and extremal functions

- [ ] Add colorings and chromatic invariants.
- [ ] Support matchings and Hall-style theorems.
- [ ] Add extremal graph functions and Turan-style preliminaries.
- [ ] Add Ramsey numbers as a defined function.

## Matrices and spectra

Deferred until a claimant needs it; only the Graffiti-style conjectures do.

- [ ] Add adjacency matrices, Laplacians, and graph operators.
- [ ] Add the distance matrix, building on graph distance.
- [ ] Develop spectral graph theory basics, including eigenvalues of the adjacency matrix.
- [ ] Add random-graph and extremal-graph preliminaries.
