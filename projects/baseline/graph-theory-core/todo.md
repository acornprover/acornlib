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

- [x] Prove the handshake lemma: the degree sum equals the directed edge count. Done in
      `src/simple_graph_handshake.ac`. Getting there needed finite-set induction, which did not
      exist; see `src/finite_set_induction_principle.ac` and `src/finite_set_unique_induction.ac`.
      Note that induction on the vertex set directly is invalid: `degree` is relative to the ambient
      set, so inserting a vertex changes the degrees of the vertices already counted. The induction
      runs over a subset with the ambient set held fixed.

- [x] Prove degree is invariant under graph isomorphism. Done in `src/simple_graph_iso_degree.ac`.
      What made the neighborhood-image set equality go through was isolating the pointwise
      biconditional as its own theorem, so it is a small standalone goal rather than a step inside a
      quantified block.

## Domination

No Mathlib counterpart. `src/simple_graph_domination.ac` has `is_dominated`, `is_dominating_set`,
their `_apply`/`_intro` lemmas, the witness lemmas for `has_neighbor_in`, and monotonicity in both
the dominating set and the ambient set. `src/simple_graph_domination_number.ac` defines the
domination number as the least `fs_card` over dominating subsets, well defined because the ambient
set dominates itself. `src/simple_graph_minimum_dominating.ac` has minimum dominating sets and the
uniqueness condition, `src/simple_graph_domination_extremes.ac` the extremal graphs,
`src/simple_graph_independent_domination.ac` the link to independence, and
`src/simple_graph_domination_monotone.ac` the behaviour under adding edges.

- [x] Define the domination number as the least `fs_card` over dominating subsets.
- [x] Define minimum dominating sets and uniqueness of one.
- [x] Compute the domination number for the complete and empty graphs: every vertex is needed when
      there are no edges, and one suffices when all edges are present.
- [x] Prove a maximal independent set is dominating, so the domination number is at most the size of
      any independent dominating set.
- [x] Prove the domination number cannot rise when edges are added, and that the complete graph
      minimises it.

Remaining:

- [ ] Compute the domination number for path and cycle graphs. This waits on those graphs existing
      as finite graphs; `src/simple_graph.ac` has only the empty, complete, and induced
      constructions.
- [ ] Define the independent domination number as the least `fs_card` over independent dominating
      sets, and prove it is at least the domination number.
- [ ] Prove a minimal dominating set of a graph without isolated vertices has a dominating
      complement, which gives the classical bound of half the vertices.

## Bipartite structure

Done in `src/simple_graph_bipartite.ac`: `is_bipartition` (a predicate two-colouring, so the sides
are the predicate and its complement), `is_bipartite`, and `has_no_isolated_vertices`, each with
`_apply`/`_intro`, plus restriction to subsets.

## Triangle-freeness

Done in `src/simple_graph_triangle_free.ac`. The three-variable form does not verify; naming the
innermost variable as `has_no_common_neighbor` reduces both outer statements to two variables, and
the classical no-three-mutually-adjacent reading is recovered from it.

## Forbidden induced subgraphs

`src/simple_graph_forbidden.ac` has the general layer: `contains_induced` and `is_free_of`, stated
through `is_graph_embedding`, which is already the induced notion since it both preserves and
reflects adjacency. Composition of embeddings gives transport, so freeness passes to anything
embedded in a free graph and across isomorphisms.

The concrete conditions are stated combinatorially rather than through a four-vertex graph object,
following `src/simple_graph_triangle_free.ac`: the innermost quantifier is named, which brings the
outer statement down to a depth the restriction lemmas can handle. `src/simple_graph_diamond.ac`
has the diamond, `src/simple_graph_claw.ac` the claw.

- [x] Define containment of an induced copy and freeness from one, stated once and reused.
- [x] Prove freeness transports along embeddings and across isomorphisms.
- [x] Define the diamond configuration and diamond-free graphs, and prove a triangle-free graph is
      diamond-free.
- [x] Define the claw configuration and claw-free graphs.
- [x] Prove both conditions pass to subsets of the vertex set, and that the complete graph satisfies
      both.

Remaining:

- [ ] Build the diamond and the claw as actual four-vertex graphs, so that `is_free_of` applies to
      them directly and the combinatorial conditions can be proved equivalent to it. This needs a
      four-element vertex type; `Pair[Bool, Bool]` would serve.
- [ ] Prove a diamond-free graph has every edge in at most one maximal clique.

## Zero forcing

No Mathlib counterpart, and the most definitional work in this branch. Do it last, and settle the
colour-change rule carefully before building on it.

- [ ] Define the diamond graph and the diamond-free condition via induced subgraphs.
- [ ] Add forbidden induced subgraph conditions, stated once and reused.
- [ ] Define the zero forcing colour-change rule on a vertex subset.
- [ ] Define the closure of a subset under repeated forcing, and prove it terminates on a finite graph.
- [ ] Define zero forcing sets and the zero forcing number `Z(G)`.
