# Graph Theory

Goal: add the standard discrete graph library used in combinatorics, linear algebra, and algorithms.

- [ ] Add walks, paths, cycles, and connectedness
- [ ] Develop trees, forests, and spanning-tree theory
- [ ] Support matchings and Hall-style theorems
- [ ] Add colorings and chromatic invariants
- [ ] Develop planarity and embedding preliminaries
- [ ] Support flows, cuts, and network-style theorems
- [ ] Add adjacency matrices, Laplacians, and graph operators
- [ ] Develop spectral graph theory basics
- [ ] Add random-graph and extremal-graph preliminaries
- [ ] Build image-subgraph isomorphism: package the induced-to-image embedding as a `SimpleGraphIso` when its inverse is available

Status: `src/simple_graph.ac` now has induced subgraphs, homomorphic image and preimage vertex sets and graphs, adjacency characterizations, induced-to-image and preimage-to-induced homomorphism lemmas, and bundled existence theorems for those restricted homomorphisms. It also has bundled-composition existence for embeddings (`simple_graph_embedding_compose_exists`) and isomorphisms (`simple_graph_iso_compose_exists`), backed by `are_inverse_vertex_maps_compose`, `is_graph_iso_pair_compose`, `reflects_graph_adj_compose`, and `is_graph_embedding_compose`. Embeddings now expose their own image/preimage vertex sets and graphs along with adjacency equations, induced-to-image and preimage-to-induced homomorphism lemmas, the matching reflection lemmas (`simple_graph_embedding_reflects_induced_to_image`, `simple_graph_embedding_reflects_preimage_to_induced`), bundled `is_graph_embedding_induced_to_image` and `is_graph_embedding_preimage_to_induced`, and `SimpleGraphEmbedding` existence theorems for both restrictions.
