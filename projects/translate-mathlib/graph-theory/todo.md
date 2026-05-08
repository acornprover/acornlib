# Graph Theory

Goal: add the standard discrete graph library used in combinatorics, linear algebra, and algorithms.

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

Status: `src/simple_graph.ac` now also has bundled-composition existence for embeddings (`simple_graph_embedding_compose_exists`) and isomorphisms (`simple_graph_iso_compose_exists`), backed by `are_inverse_vertex_maps_compose`, `is_graph_iso_pair_compose`, `reflects_graph_adj_compose`, and `is_graph_embedding_compose`.
