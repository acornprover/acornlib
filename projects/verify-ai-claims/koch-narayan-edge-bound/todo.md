# Koch-Narayan Conjecture 1

Source: aimath `Combinatorics-36`, resolved. Extremal graph theory.
Document: public certificates, checkers, source snapshot, and write-up.
Verification: dual independent checkers; **not externally refereed**.

Claim: for a bipartite graph without isolated vertices and with a unique minimum dominating set, the
proposed function `m(n, gamma)` upper-bounds the number of edges whenever `gamma >= 2` and
`n >= 3 * gamma`.

Deliverable: the bound for all qualifying graphs. This is a single universally quantified inequality
rather than a two-sided characterization, which makes it the cleanest graph target: there is no easy
half to hide behind.

## Todo

- [ ] Read the write-up and record `m(n, gamma)` exactly, along with the checkers' scope.
- [ ] Note which cases the checkers covered exhaustively; those are the cases most likely to be right, and the rest is where an error would live.
- [ ] Define bipartite graphs, and the no-isolated-vertices condition.
- [ ] Define dominating sets and the domination number.
- [ ] Define uniqueness of a minimum dominating set.
- [ ] Define the edge count of a finite graph.
- [ ] Define `m(n, gamma)` as stated.
- [ ] Prove the bound under the stated hypotheses.
- [ ] Check the bound against the published certificates on small cases.
- [ ] Record the outcome, including whether the hypotheses as published are enough.

## Library demand

Feeds [graph-theory-core](../../translate-mathlib/baseline/graph-theory-core/todo.md).

- [ ] Edges and the edge count of a finite graph.
- [ ] Bipartiteness, and the no-isolated-vertices condition.
- [ ] Dominating sets, the domination number, and uniqueness of a minimum dominating set.
