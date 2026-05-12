# Order Theory and Lattices

Goal: provide a broad order-theoretic language that later algebra, topology, and analysis can share.

- [ ] [Complete the preorder, partial order, and linear order APIs](basic-orders/todo.md)
- [ ] [Add a strong library for `<`, `<=`, `min`, `max`, and interval manipulations](order-operations-and-intervals/todo.md)
- [ ] [Implement semilattices, lattices, and distributive lattices](lattices/todo.md)
- [ ] [Add complete lattices with `sup`, `inf`, `sSup`, and `sInf`](complete-lattices/todo.md)
- [ ] [Develop monotone, antitone, and order-embedding APIs](monotone-maps/todo.md)
- [ ] [Add order isomorphisms and transport lemmas](order-isomorphisms/todo.md)
- [ ] [Support Galois connections, insertions, and coinsertions](galois-connections/todo.md)
- [ ] [Add well-founded orders and induction/recursion principles](well-founded-orders/todo.md)
- [ ] [Build order-theoretic fixed point results](fixed-point-theory/todo.md)
- [ ] [Connect order theory cleanly with algebraic and topological structures](ordered-algebra-and-topology/todo.md)

## Current Focus

The earliest basic-orders, lattice submodule, and interval-preimage frontiers are definition choices. The concrete list/interval lattice migration pass is complete. Product-order groundwork now exists as an unbundled `Pair` relation API with strict-order transport, but bundled product `OrderIso` support is blocked on generic `Pair[A, B]` typeclass receiver rendering. Ordered group translation `OrderIso`s now exist; positive scalar `OrderIso`s still need a proof-carrying API choice. Galois insertion semilattice transport is available. Well-founded transfer now covers injective pushforwards, surjective pullback reflection, pushforward reflection, intersection/mutual-inclusion no-chain inheritance, and product/lexicographic no-chain wrappers; remaining well-founded transfer should be driven by a downstream consumer.
