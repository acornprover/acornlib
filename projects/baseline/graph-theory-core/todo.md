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

The handshake lemma is proved in `src/simple_graph_handshake.ac`: the degree sum equals the number
of ordered adjacent pairs. Getting there required finite-set induction, which did not exist; see
`src/finite_set_induction_principle.ac` and `src/finite_set_unique_induction.ac`.

Everything numeric depends on degree, so this comes first.

`src/finite_set_card.ac` now supplies `fs_card`, the `Nat`-valued cardinality of a finite set, with
`fs_card_eq_of_cardinality_is` for converting from the `cardinality_is` predicate. Before it there
was no numeric cardinality at all, only the predicate, so nothing countable could be defined. Every
counting item below builds on it.

- [ ] Prove the handshake lemma: the degree sum equals the directed edge count.
      `src/simple_graph_edges_from_card.ac` proves the per-vertex half: a vertex has exactly as many
      outgoing directed edges as neighbors. What remains is summing that over the vertex set, which
      needs a sum-over-fibers lemma. `src/finite_set_induction.ac` now supplies the transfer
      principle - a property holding of every unique-list representation holds of every finite set.
      `src/finite_set_induction_principle.ac` now supplies induction on finite sets. What remains for
      the handshake is a sum-over-fibers lemma built with it: partition the directed edges by first
      component and sum the per-vertex counts. `src/finite_set_unique_induction.ac` supplies
      `finite_set_strong_induction`, whose step may assume the inserted element is new, which is the
      form a counting argument needs. Note that induction on the
      vertex set directly is invalid here: `degree` is relative to the ambient set, so inserting a
      vertex changes the degrees of the vertices already counted.

- [ ] Prove degree is invariant under graph isomorphism. `src/simple_graph_iso_degree.ac` has the
      forward and backward adjacency lemmas; the neighborhood-image equality times out on term size,
      not on missing facts, so name the two sets as definitions before retrying.

## Domination

No Mathlib counterpart. `src/simple_graph_domination.ac` has `is_dominated`, `is_dominating_set`,
their `_apply`/`_intro` lemmas, the witness lemmas for `has_neighbor_in`, and monotonicity in both
the dominating set and the ambient set.

- [ ] Define the domination number `gamma(G)` as the least `fs_card` over dominating subsets.
- [ ] Define uniqueness of a minimum dominating set.
- [ ] Compute `gamma` for complete, empty, path, and cycle graphs.

## Bipartite structure

Done in `src/simple_graph_bipartite.ac`: `is_bipartition` (a predicate two-colouring, so the sides
are the predicate and its complement), `is_bipartite`, and `has_no_isolated_vertices`, each with
`_apply`/`_intro`, plus restriction to subsets.

## Triangle-freeness

Done in `src/simple_graph_triangle_free.ac`. The three-variable form does not verify; naming the
innermost variable as `has_no_common_neighbor` reduces both outer statements to two variables, and
the classical no-three-mutually-adjacent reading is recovered from it.

## Zero forcing

No Mathlib counterpart, and the most definitional work in this branch. Do it last, and settle the
colour-change rule carefully before building on it.

- [ ] Define the diamond graph and the diamond-free condition via induced subgraphs.
- [ ] Add forbidden induced subgraph conditions, stated once and reused.
- [ ] Define the zero forcing colour-change rule on a vertex subset.
- [ ] Define the closure of a subset under repeated forcing, and prove it terminates on a finite graph.
- [ ] Define zero forcing sets and the zero forcing number `Z(G)`.
