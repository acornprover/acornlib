# Graph Theory

Goal: add the standard discrete graph library used in combinatorics, linear algebra, and algorithms.

- [ ] Add bundled-composition existence for graph embeddings and isomorphisms with explicit middle-graph equality (hom case landed via `simple_graph_hom_compose_exists`; iso pair / `are_inverse_vertex_maps` composition lemma still needed)
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

Status: `src/simple_graph.ac` now also has `SimpleGraphHom.new` and `SimpleGraphEmbedding.new` field accessors, `empty_graph_any_fn_is_graph_hom`, `simple_graph_hom_compose_exists` (bundled hom composition with explicit middle-graph equality), and `inverse_vertex_maps_compose_left`/`_right` helpers toward iso composition.
