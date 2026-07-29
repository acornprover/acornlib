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

- [ ] Compute the domination number for path and cycle graphs. The graphs now exist:
      `src/simple_graph_path.ac` and `src/simple_graph_cycle.ac`.

      The lower bound for the path is done, in `src/simple_graph_path_domination.ac`:
      `n <= 3 * domination_number(path_graph, range_set(n))`, which is the classical
      `gamma >= n / 3` written without division.

      The counting goes through a covering rather than an injection. `src/finite_set_cover_card.ac`
      states that a finite set every member of which is a value of a map on another finite set is
      no larger than that set — no injectivity is needed, since a map can identify members but
      never create new ones. The map here sends a pair of a dominating vertex `w` and an offset
      `j` in `{0, 1, 2}` to `w + j - 1`, so the three vertices `w` can dominate are one expression
      indexed by a three-element set, and the product cardinality supplies the factor of three.
      Every offset stays a natural and every truncated subtraction that arises is exact.

      Two things cost time. The covering condition is an existential under a universal, which
      proof search does not assemble; the inner existential has to be named, exactly as
      `head_disjoint_from` does in the residue-class work. And comparisons between numerals are
      not free, so `0 < 3`, `1 < 3`, and `2 < 3` need the successor ladder stated once.

      The cycle lower bound is done the same way, in `src/simple_graph_cycle_domination.ac`.
      The offset map is `(w + n + j - 1) mod n`: adding a whole turn *before* subtracting one
      keeps every intermediate value a natural, so the truncated subtraction is exact at every
      offset, including the wrap where the dominator is zero and the dominated vertex is
      `n - 1`. Writing it as `(w + j + n - 1) mod n` instead would not have this property.

      The modular arithmetic it needs is in `src/nat_mod_period.ac`: adding the modulus leaves
      the remainder unchanged, which nothing in `src/nat/` states, and the two cases of a
      successor reduced modulo the modulus — either the successor outright, or zero at the wrap.
      Stating the wrap case through the successor rather than through a subtraction is what
      keeps it free of truncation.

      Truncated subtraction is where the time goes. Each rearrangement of the form
      `w + n + 2 - 1 = (w + 1) + n` has to be split into the additive identity and the
      cancellation, since neither half is found on its own.

      What remains is the matching upper bound for both, which needs an explicit dominating set
      of size `ceil(n / 3)` and its cardinality.
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
- [x] Prove a minimal dominating set of a graph without isolated vertices has a dominating
      complement, which gives the classical bound of half the vertices. Both are in
      `src/simple_graph_minimal_dominating.ac`, which also adds inclusion-minimality: a minimal
      dominating set need not be a minimum one, and minimality is the weaker hypothesis the
      theorem actually needs.

      The argument is that minimality names, for each `v` in the set, a vertex `u` that only `v`
      was dominating. Either `u` is `v` itself, and then `v` has no neighbour left inside the set,
      so the neighbour it has by non-isolation lies outside; or `u` is elsewhere, and then `u`
      itself is outside and adjacent to `v`.

      For the bound, a minimum dominating set is minimal, so it and its complement are both
      dominating and partition the vertex set, giving `2 * gamma(G) <= |V|`.

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

- [x] Build the diamond and the claw as actual four-vertex graphs, in
      `src/simple_graph_four_vertex.ac`. No new vertex type was needed: the naturals with the
      four-element set cut out by `range_set` is the same arrangement the path and cycle use.

      Each graph is proved to violate its own combinatorial condition, which is what shows the
      conditions of `src/simple_graph_diamond.ac` and `src/simple_graph_claw.ac` are not vacuous.
      The claw is also proved triangle free, so triangle-freeness does not imply claw-freeness and
      the two forbidden-subgraph conditions are genuinely independent.
      Comparisons between numerals are not free, so the ordering and distinctness of the four
      labels is packaged into `four_labels_ordered` and read off rather than rederived at each
      use.
- [ ] Prove the combinatorial conditions equivalent to `is_free_of` at these two graphs. This does
      need a four-element vertex type after all, contrary to the note above: `contains_induced`
      and `is_free_of` take no vertex set, so an embedding of `claw_graph` into a graph has to
      embed the whole infinite star on the naturals, not the four-vertex claw. Cutting the vertex
      set out with `range_set` is enough to state the combinatorial conditions and show they are
      not vacuous, which is what `src/simple_graph_four_vertex.ac` does, but it is not enough
      here. Either a four-element type or an induced-subgraph-on-a-finite-set construction is
      required.
- [x] Prove a diamond-free graph has every edge in at most one maximal clique, in
      `src/simple_graph_maximal_clique.ac`. This needed maximal cliques, which the library did not
      have: `is_clique_in` existed but nothing about inclusion-maximality.

      The union of two cliques through a shared edge is again a clique. Vertices in the same
      clique are adjacent outright; a vertex of one clique and a vertex of the other are both
      common neighbours of the shared edge, since neither is one of its ends, and
      diamond-freeness forbids two common neighbours of an edge from being non-adjacent.
      Maximality then forces each clique to equal the union.

      The cross case is symmetric in the two cliques and has to be applied in both orientations,
      so it is factored out as `diamond_free_cross_adj` rather than written twice.

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
- [x] Define the diamond graph and the diamond-free condition via induced subgraphs. Superseded by
      the forbidden induced subgraph section above; the diamond now exists as an actual
      four-vertex graph in `src/simple_graph_four_vertex.ac`.
- [x] Bound the zero forcing number of the complete graph. All but one vertex is a zero forcing set:
      the single white vertex is adjacent to every blue one, so each of them sees it as its only
      white neighbour and one round finishes. Hence the invariant is strictly below the vertex
      count. The matching lower bound, that no smaller set works, is separate.

- [x] Prove the matching lower bound: a zero forcing set of the complete graph leaves at most one
      vertex uncoloured. Two white vertices leave every blue vertex with two white neighbours, so
      the colouring is closed from the start and never reaches the whole set. Producing the second
      white vertex needed `fs_two_distinct_members`, which reads two entries off a duplicate-free
      list representation and is general finite-set API.

- [x] Compute the zero forcing number for the path: it is exactly one. A single endpoint forces
      everything, since at each stage the last blue vertex has exactly one white neighbour, the
      next one along. `src/simple_graph_path_zf.ac` has the induction and
      `src/nat_range_set.ac` the vertex set `{0, ..., n - 1}` it runs over.

      The matching lower bound is general rather than path-specific and lives in
      `src/simple_graph_zero_forcing_lower.ac`: with no blue vertex nothing is forceable, so the
      colouring is closed from the start and never reaches a nonempty vertex set. Proving the
      empty blue set is a subset of the ambient set through `fs_subset_eq_intro` runs into the
      inconsistent-assumptions refusal, since the antecedent `b.contains(z)` is false in context
      and the `false_implies` rewrite does not rescue it here; identifying `b` with
      `FiniteSet.empty` and citing `finite_set_empty_subset` avoids the implication entirely.
- [x] Bound the zero forcing number of the cycle by two, in `src/simple_graph_cycle_zf.ac`. Two
      adjacent seeds suffice.

      The prefix invariant that works for the path is false here. On a cycle the vertex `0` also
      has a single white neighbour, `n - 1` across the wrap-around edge, so the blue set grows at
      both ends and one round is not `range_set(k + 2)` but strictly more. Restating the step as a
      containment rather than an equality fixes it, and `derived_set_mono` carries the containment
      through each round. The wrap-around edge is also why the forcing lemma needs `1 <= k`: at
      `k = 0` the vertex has two white neighbours, which is the real reason a cycle needs two
      seeds where a path needs one.
- [x] Prove the matching lower bound for the cycle, that one seed never suffices. A single blue
      vertex has two distinct in-range neighbours, both different from it and so both white, and
      the uniqueness clause of the rule fails. With the construction above, the zero forcing
      number of a cycle of length at least three is exactly two.

      The obstruction is general and is stated once, as `two_white_neighbors_blocks_forcing` in
      `src/simple_graph_zero_forcing_lower.ac`; it is the same one that stops two white vertices
      on a complete graph.

      Two statements had to be reshaped before they would verify. The blocking hypothesis, written
      with its existential inline, is too deep for proof search: naming it
      `has_two_white_neighbors` brings it down to a two-variable statement. The same applies to
      the pair of cycle neighbours, whose seven conjuncts proof search will not instantiate
      directly. Truncated subtraction was also avoidable throughout by writing the length as
      `p + 1` and matching the vertex as zero or a successor.
- [ ] Relate the zero forcing number to the maximum nullity, which is the reason the invariant was
      introduced.

## Paths and cycles

`src/simple_graph_path.ac` has the path and `src/simple_graph_cycle.ac` the cycle. Both are defined
on all of the naturals, with the finite `P_n` and `C_n` cut out by the vertex set that every graph
predicate already carries; that keeps one relation serving every length at once and avoids needing
a bounded vertex type.

Adjacency on the path is consecutiveness, `x + 1 = y or y + 1 = x`. On the cycle it is
consecutiveness modulo `n`, with an explicit distinctness clause: at `n = 1` every vertex is its
own successor modulo `n`, and a simple graph has no loops.

Outside `{0, ..., n - 1}` the cycle relation is not the intended one. That costs nothing, since the
vertex set is always supplied, but it does mean statements have to carry range hypotheses; the
first version of a `C_1`-has-no-edges lemma was false for exactly that reason.

The `let ... satisfy` form for a nullary constant takes no `by` block, so the existence obligation
for the path graph is discharged by a preceding `path_graph_exists` theorem. The parameterized
form, which the cycle uses, does take one.

- [x] Define the path graph and prove its adjacency characterisation.
- [x] Prove the two neighbours of a path vertex differ by two, and hence that every finite path is
      triangle free.
- [x] Define the cycle graph, prove its adjacency characterisation, and prove both the in-range
      successor edges and the wrap-around edge that closes the cycle.

## Complement duality

`src/simple_graph_complement_duality.ac`. Cliques of a graph are exactly independent sets of its
complement, and independent sets exactly cliques of the complement. The complement joins the
distinct non-adjacent pairs, so the two conditions say the same thing about a distinct pair; the
equal pair is handled by irreflexivity on one side and by the distinctness clause on the other,
which is the only asymmetry between the two statements.

- [x] Prove both halves of the clique-independence duality under complementation.
- [x] Compute the two invariants for the complete graph, in
      `src/simple_graph_clique_extremes.ac`: its clique number is the number of vertices and its
      independence number is at most one. This is the duality made concrete, since the complement
      of the complete graph is the empty graph.
- [x] Relate the independence number and the clique number of complementary graphs, in
      `src/simple_graph_clique_number.ac`. The clique number is defined by the same maximisation
      the independence number uses, and its well-definedness comes free: the duality already
      shows the independence number of the complement is a maximum of the clique sizes, so no
      separate witness and bound are needed.

      Both directions are proved separately rather than one from the other, since the library
      has no involution law for the complement.
