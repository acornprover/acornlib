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
Status: `src/simple_graph.ac` now has induced subgraphs, homomorphic image and preimage vertex sets and graphs, adjacency characterizations, induced-to-image and preimage-to-induced homomorphism lemmas, and bundled existence theorems for those restricted homomorphisms. It also has bundled-composition existence for embeddings (`simple_graph_embedding_compose_exists`) and isomorphisms (`simple_graph_iso_compose_exists`), backed by `are_inverse_vertex_maps_compose`, `is_graph_iso_pair_compose`, `reflects_graph_adj_compose`, and `is_graph_embedding_compose`. Embeddings expose their own image/preimage vertex sets and graphs along with adjacency equations, induced-to-image and preimage-to-induced homomorphism lemmas, the matching reflection lemmas (`simple_graph_embedding_reflects_induced_to_image`, `simple_graph_embedding_reflects_preimage_to_induced`), bundled `is_graph_embedding_induced_to_image` and `is_graph_embedding_preimage_to_induced`, and `SimpleGraphEmbedding` existence theorems for both restrictions. Isomorphisms now expose their own image and preimage vertex sets and graphs (`simple_graph_iso_image_set`, `simple_graph_iso_image`, `simple_graph_iso_preimage_set`, `simple_graph_iso_preimage`) along with adjacency characterizations, forward/inverse homomorphism lemmas for induced-to-image and preimage-to-induced, iso-pair packaging (`is_graph_iso_pair_induced_to_image`, `is_graph_iso_pair_preimage_to_induced`), and bundled `SimpleGraphIso` existence theorems for both restrictions. Identity vertex maps are now packaged as graph embeddings (`identity_fn_reflects_graph_adj`, `identity_fn_is_injective`, `identity_fn_is_graph_embedding`) with a reflexive `simple_graph_embedding_refl` and its `map` accessor. Every iso forward map is bundled as an embedding via `is_graph_iso_pair_reflects_adj`, `is_graph_iso_pair_map_is_injective`, and `is_graph_iso_pair_is_graph_embedding`, with `simple_graph_embedding_of_iso` packaging the corresponding `SimpleGraphEmbedding`.
