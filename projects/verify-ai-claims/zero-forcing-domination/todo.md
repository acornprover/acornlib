# Zero Forcing and Domination, TxGraffiti-Davila 9

Source: aimath `Combinatorics-34`, resolved. Graph domination and zero forcing.
Document: public certificate, checkers, frozen source, and write-up.
Verification: dual independent checkers; **not externally refereed**.

Claim: if `G` is connected, cubic, and diamond-free, then `Z(G) <= gamma(G) + 2`, where `Z` is the
zero forcing number and `gamma` the domination number.

Deliverable: the inequality for all connected cubic diamond-free graphs. A single universally
quantified bound, so there is no partial credit available.

Both invariants are absent from Mathlib as well as from `src/`, so there is no translation to lean
on: this is original formalization either way. Zero forcing is defined by a colour-change closure
process, which makes it the most work of any target here. It is last in the queue for that reason,
not because the claim is weak; its evidence is as thin as anything in the pool.

## Todo

- [ ] Define vertex degree, and the cubic condition.
- [ ] Define the diamond graph and the diamond-free condition via induced subgraphs.
- [ ] Define a dominating set and the domination number `gamma(G)`.
- [ ] Prove the vertex set is dominating, so `gamma` is well defined.
- [ ] Define the zero forcing colour-change rule on a vertex subset.
- [ ] Define the closure of a subset under repeated forcing, and prove it terminates on a finite graph.
- [ ] Define a zero forcing set and the number `Z(G)`.
- [ ] Compute both invariants on small cubic graphs and check against the published certificates.
- [ ] Prove the inequality under the stated hypotheses.
- [ ] Record the outcome.

## Library demand

Feeds [graph-theory-core](../../translate-mathlib/baseline/graph-theory-core/todo.md).

- [ ] Vertex degree, and regularity conditions such as cubic.
- [ ] Dominating sets and the domination number.
- [ ] Iterated closure of a vertex set under a monotone rule, with termination on finite graphs.
- [ ] Forbidden induced subgraph conditions, stated once and reused.
