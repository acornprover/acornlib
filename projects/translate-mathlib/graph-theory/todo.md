# Graph Theory

Goal: add the standard discrete graph library used in combinatorics, linear algebra, and algorithms.

- [ ] Add safe bundled composition for graph homomorphisms, embeddings, and isomorphisms with explicit middle-graph equality
- [ ] Add image, preimage, and induced-subgraph lemmas for graph homomorphisms
- [ ] Add walks, paths, cycles, and connectedness
- [ ] Develop trees, forests, and spanning-tree theory
- [ ] Support matchings and Hall-style theorems
- [ ] Add colorings and chromatic invariants
- [ ] Develop planarity and embedding preliminaries
- [ ] Support flows, cuts, and network-style theorems
- [ ] Add adjacency matrices, Laplacians, and graph operators
- [ ] Develop spectral graph theory basics
- [ ] Add random-graph and extremal-graph preliminaries

Status: `src/simple_graph.ac` now has `simple_graph_iso_refl` and `simple_graph_iso_symm`, with constructor field accessors and verified map/inverse projection aliases for the identity and inverse graph isomorphisms.
