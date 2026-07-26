# Zero Forcing and Domination, TxGraffiti-Davila 9

Source: aimath `Combinatorics-34`, resolved **as a refutation**. Graph domination and zero forcing.
Document: explicit graph certificate, independent Python and Rust checkers, frozen source, write-up.
Verification: dual independent checkers; **not externally refereed, and no proof assistant involved**.

Conjecture 9 asked whether every connected cubic diamond-free `G` satisfies `Z(G) <= gamma(G) + 2`,
where `Z` is the zero forcing number and `gamma` the domination number. The claim is that this is
**false**, witnessed by one explicit graph.

Deliverable: the counterexample, machine-checked. Construct that graph in Acorn, prove it is
connected, cubic, and diamond-free, compute both invariants, and prove `Z(G) > gamma(G) + 2`.

This is certificate checking rather than theorem proving, which makes it far more tractable than a
universal bound: every obligation is a finite computation on one fixed graph. What stands behind the
claim today is two hand-written programs that agree. That is exactly the kind of evidence a kernel
check can upgrade, and exactly the kind that can hide a shared modelling error — if both checkers
encode the same wrong definition of zero forcing, agreement proves nothing.

The scope note also records that the stronger claim of an unbounded gap on a chain family is *not*
proved. Do not accidentally verify the strong claim; the target is the single counterexample.

## Todo

- [ ] Read the write-up and record the counterexample graph explicitly, vertex by vertex.
- [ ] Record both checkers' definitions of zero forcing and compare them; a shared error is the main risk.
- [ ] Define vertex degree, and the cubic condition.
- [ ] Define the diamond graph and the diamond-free condition via induced subgraphs.
- [ ] Define dominating sets and the domination number `gamma(G)`.
- [ ] Define the zero forcing colour-change rule on a vertex subset.
- [ ] Define the closure of a subset under repeated forcing, and prove it terminates on a finite graph.
- [ ] Define zero forcing sets and the number `Z(G)`.
- [ ] Construct the counterexample graph as a concrete finite graph.
- [ ] Prove it is connected, cubic, and diamond-free.
- [ ] Compute `gamma(G)` for it, both the bound and its optimality.
- [ ] Compute `Z(G)` for it, both the bound and its optimality.
- [ ] Prove `Z(G) > gamma(G) + 2`, refuting the conjecture.
- [ ] Record the outcome, including whether our definitions match the checkers'.

## Library demand

Feeds [graph-theory-core](../../translate-mathlib/baseline/graph-theory-core/todo.md).

- [ ] Vertex degree, and regularity conditions such as cubic.
- [ ] Dominating sets and the domination number.
- [ ] Iterated closure of a vertex set under a monotone rule, with termination on finite graphs.
- [ ] Concrete finite graphs given by an explicit vertex and edge list.
