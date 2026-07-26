# Koch-Narayan Conjecture 1

Source: aimath `Combinatorics-36`, resolved **as a refutation**. Extremal graph theory.
Document: explicit graph certificates, two clean-room checkers, exhaustive filter, mutation tests.
Verification: dual independent checkers; **not externally refereed, and no proof assistant involved**.

Conjecture 1 asked whether, for a bipartite graph without isolated vertices and with a unique minimum
dominating set, a proposed function `m(n, gamma)` upper-bounds the edge count whenever `gamma >= 2`
and `n >= 3 * gamma`. The claim is that this is **false**, witnessed by an explicit graph.

Deliverable: the counterexample, machine-checked. Construct the graph, prove it satisfies every
hypothesis, and prove its edge count exceeds `m(n, gamma)`.

The scope note is unusually informative about where doubt remains: the concrete witness has
independent checks, but *the claimed smallest-order classification rests on a single exhaustive C
implementation*, and the `gamma = 3` strip is not refuted at all. So the witness is the solid part
and the minimality is the soft part. Verify the witness; do not restate the minimality claim as
though it carried the same evidence.

## Todo

- [ ] Read the write-up and record the counterexample graph explicitly, along with `n`, `gamma`, and the edge count.
- [ ] Record `m(n, gamma)` exactly, and note that the minimality claim is out of scope here.
- [ ] Define edges and the edge count of a finite graph.
- [ ] Define bipartiteness, and the no-isolated-vertices condition.
- [ ] Define dominating sets, the domination number, and uniqueness of a minimum dominating set.
- [ ] Define `m(n, gamma)` as stated.
- [ ] Construct the counterexample graph as a concrete finite graph.
- [ ] Prove it is bipartite with no isolated vertices.
- [ ] Prove its minimum dominating set is unique, and compute `gamma`.
- [ ] Prove `gamma >= 2` and `n >= 3 * gamma` hold for it.
- [ ] Prove its edge count exceeds `m(n, gamma)`, refuting the conjecture.
- [ ] Record the outcome.

## Library demand

Feeds [graph-theory-core](../../translate-mathlib/baseline/graph-theory-core/todo.md).

- [ ] Edges and the edge count of a finite graph.
- [ ] Bipartiteness, and the no-isolated-vertices condition.
- [ ] Dominating sets, the domination number, and uniqueness of a minimum dominating set.
- [ ] Concrete finite graphs given by an explicit vertex and edge list.
