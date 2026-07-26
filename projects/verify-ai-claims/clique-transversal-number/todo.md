# Clique Transversal Number, Erdos #610

Source: aimath `Combinatorics-53`, resolved. https://www.erdosproblems.com/610
Status: resolved. Verification: published theorem plus expert site record. No formal certificate.
Value: importance high, uncertainty medium, feasibility blocked on a short library gap.

Claim: bounds on how large the clique-transversal number `tau(G)` can be for an `n`-vertex graph; in
particular whether `tau(G) <= n - omega(n) * sqrt(n)`, or even `n - c * sqrt(n * log n)`.

Nearest of the graph targets. `src/simple_graph.ac` already has `is_clique` and `is_independent_set`,
and `src/simple_graph_clique_transport.ac` exists, so the missing piece is the transversal itself
rather than the underlying clique language.

## Todo

- [ ] Define a clique transversal: a vertex set meeting every maximal clique.
- [ ] Prove the whole vertex set is a clique transversal, so the notion is nonempty.
- [ ] Define `tau(G)` as the least size of a clique transversal on a finite graph.
- [ ] Prove `tau(G) <= n`, and compute it for complete and empty graphs.
- [ ] Define the clique number `omega(G)` from the existing clique predicate.
- [ ] Record the exact bound claimed on the problem page.
- [ ] State the bound; attempt the construction direction first.
- [ ] Record the outcome.

## Library demand

Feeds [graph-theory-core](../../translate-mathlib/baseline/graph-theory-core/todo.md).

- [ ] Maximal cliques, and the clique number of a finite graph.
- [ ] Transversals of a set family, specialized to the maximal cliques.
- [ ] Minimum size over a family of qualifying vertex sets.
