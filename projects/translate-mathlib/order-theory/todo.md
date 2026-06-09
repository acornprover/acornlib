# Order Theory and Lattices

Goal: provide a broad order-theoretic language that later algebra, topology, and analysis can share.

## First Erdos Cluster Baseline

The order-theory baseline for the first Erdos cluster is in place: generic comparison aliases, min/max and interval manipulation, finite-range membership bridges, concrete `Nat` arithmetic monotonicity, and least `Nat` witness/counterexample helpers are available.

Resume order-theory work only when a downstream binomial, divisibility, prime-factor, finite-range, or base-representation proof exposes a missing concrete lemma. The remaining broad order work is deferred below.

## Deferred Work

- [ ] [Implement semilattices, lattices, and distributive lattices](lattices/todo.md)
  Note: not needed for the first binomial/divisibility cluster except for min and max facts already covered by the current order baseline.

- [ ] [Add complete lattices with `sup`, `inf`, `sSup`, and `sInf`](complete-lattices/todo.md)
  Note: useful for topology, fixed points, and abstract order theory, but not for the first elementary number-theory cluster.

- [ ] [Complete the broad monotone, antitone, and order-embedding APIs](monotone-maps/todo.md)
  Note: keep the reusable abstract API deferred after the concrete arithmetic monotonicity lemmas are available.

- [ ] [Add order isomorphisms and transport lemmas](order-isomorphisms/todo.md)
  Note: transport-heavy order infrastructure is not on the critical path for binomial, divisibility, or base-representation problems.

- [ ] [Support Galois connections, insertions, and coinsertions](galois-connections/todo.md)
  Note: this is lattice-facing infrastructure and should wait until a later abstraction-heavy cluster needs it.

- [ ] [Complete the broad well-founded order transfer API](well-founded-orders/todo.md)
  Note: keep generalized transfer, product, lexicographic, and no-chain results behind the narrow Nat witness work already available.

- [ ] [Build order-theoretic fixed point results](fixed-point-theory/todo.md)
  Note: fixed point theorems depend on complete-lattice style APIs and are not useful for the first Erdos cluster.

- [ ] [Connect order theory cleanly with algebraic and topological structures](ordered-algebra-and-topology/todo.md)
  Note: add these bridges only when number theory, analysis, or topology creates a specific downstream need.

## Current Focus

For the first Erdos cluster, leave broad order theory deferred and move on to the next Erdos-facing infrastructure area unless a concrete proof attempt shows otherwise.

The broader order-theory library remains useful for later mathlib parity, but it should not block the first Erdos push. Product-order groundwork now exists as an unbundled `Pair` relation API with strict-order transport; bundled product `OrderIso` support remains deferred. Ordered group translation `OrderIso`s now exist; positive scalar `OrderIso`s still need a proof-carrying API choice. Galois insertion semilattice transport is available. Well-founded transfer now covers injective pushforwards, surjective pullback reflection, pushforward reflection, intersection/mutual-inclusion no-chain inheritance, and product/lexicographic no-chain wrappers; remaining well-founded transfer should be driven by a downstream consumer.
