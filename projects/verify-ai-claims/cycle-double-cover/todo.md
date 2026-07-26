# Cycle Double Cover Conjecture

Source: aimath `Combinatorics-43`, resolved. Verification: independent expert expositions.
Status: resolved as recorded. This is a famous long-open conjecture, so a recorded resolution with no
formal certificate is exactly the case this project exists to check.
Value: importance very high, uncertainty high, feasibility blocked on cycles and bridges.

Claim: every finite bridgeless graph has a collection of cycles in which every edge appears exactly
twice.

The statement needs no numeric invariants at all — no degree, no spectrum, no chromatic number — only
cycles, bridges, and a multiplicity count over edges. That makes it unusually statable for its fame,
and it is the strongest reason to build the cycle layer of the graph baseline early.

## Todo

- [ ] Define an edge of a simple graph as an unordered adjacent pair.
- [ ] Define a cycle from the existing closed-walk predicate, requiring distinct interior vertices.
- [ ] Define the edges traversed by a cycle.
- [ ] Define a bridge, and the bridgeless condition.
- [ ] Prove a bridge is not contained in any cycle, the standard sanity check on both definitions.
- [ ] Define the multiplicity of an edge in a list of cycles.
- [ ] State the conjecture: for a finite bridgeless graph there is a cycle list giving every edge multiplicity exactly two.
- [ ] Check the statement on a small case, for example a single cycle or the complete graph on four vertices.
- [ ] Put the statement in `hard_problems/`; do not expect a proof.
- [ ] Read the recorded expositions and record what they actually establish.
- [ ] Record the outcome, in particular whether the recorded resolution matches the classical statement.

## Library demand

Feeds [graph-theory-core](../../translate-mathlib/baseline/graph-theory-core/todo.md).

- [ ] Edges as first-class objects, with an edge set for a finite graph.
- [ ] Cycles, distinguished from closed walks.
- [ ] Bridges and the bridgeless condition, connected to the existing component API.
- [ ] Edge multiplicity across a list of subgraphs.
