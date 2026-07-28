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
- [x] Prove every vertex set has a maximal independent subset, and hence an independent dominating
      set. Done without a greedy construction: `src/simple_graph_max_independent.ac` defines the
      independence number as the largest size of an independent subset, using `has_max` from
      `src/nat_bounded_max.ac`, and a subset of that size is automatically maximal.

      The witness the maximisation needs is that the empty set is independent, which is vacuously
      true and which the verifier at first refuses — it reports inconsistent assumptions for any
      proof that assumes the false antecedent. The idiom that works is to rewrite the antecedent to
      `false` and cite `false_implies` from `src/logic.ac`, never assuming it. Note that this does
      not rescue every vacuous case: it fails for `empty_graph.adj`, whose falsity is definitional,
      so the context is inconsistent before the rewrite can apply.

- [x] Define the independent domination number as the least `fs_card` over independent dominating
      sets, and prove the classical chain `gamma(G) <= i(G) <= alpha(G)` relating it to the
      domination and independence numbers.
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

No Mathlib counterpart, so all of this is original. `src/simple_graph_zero_forcing_rule.ac` has the
colour-change rule, `src/simple_graph_zero_forcing_closure.ac` the iteration and zero forcing sets,
`src/simple_graph_zero_forcing_mono.ac` monotonicity, and `src/simple_graph_zero_forcing_number.ac`
the invariant itself.

The rule is stated through `is_white_neighbor` and a uniqueness clause: a blue vertex forces its
only white neighbor. Each round colours every forceable vertex at once, which loses nothing against
the one-at-a-time reading and makes the round a function of the current colouring alone. A set is
zero forcing when some stage of the iteration reaches the whole vertex set, which needs no bound on
the number of rounds.

Monotonicity is the one part that is not routine. Colouring more vertices blue removes white
neighbors, so a force blocked by two white neighbors can become available; it never goes the other
way, so starting from more blue vertices never reaches fewer.

- [x] Define the zero forcing colour-change rule on a vertex subset.
- [x] Define the iteration of the rule, and prove each stage stays inside the ambient set, grows,
      and repeats itself once closed.
- [x] Define zero forcing sets and the zero forcing number, with minimum zero forcing sets.
- [x] Prove a superset of a zero forcing set is a zero forcing set.

Remaining:

- [x] Prove the iteration reaches a fixed point at or before round `fs_card(s)`. A round that changes
      anything is a proper enlargement of the blue set, hence strictly larger, so more changing
      rounds than there are vertices is impossible. `forcing_iterate_fixed_point_exists` is the
      usable form: the search for a fixed point never has to look past `fs_card(s)` steps.
- [ ] Define the diamond graph and the diamond-free condition via induced subgraphs. Superseded by
      the forbidden induced subgraph section above; what remains is building the diamond as an
      actual four-vertex graph.
- [ ] Compute the zero forcing number for paths, cycles, and complete graphs. Complete graphs need
      only cardinality reasoning; paths and cycles wait on those graphs existing.
- [ ] Relate the zero forcing number to the maximum nullity, which is the reason the invariant was
      introduced.
