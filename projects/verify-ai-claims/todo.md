# Verify AI Claims

Goal: pick published AI-assisted mathematical claims that nobody has machine-checked, state them in Acorn, and check them. Each target names the general mathematics it needs; that demand is what drives
[the translate-mathlib baseline](../translate-mathlib/baseline/todo.md).

Note the axis: this project ranks *existing claims* by how much a machine check would be worth, not open problems by how attackable they are.

## Blockers

No current blockers.

## Survey

Source: `https://aimath.robertj1.com/`, read 26 July 2026. 239 claims.

- By status: 121 resolved, 60 formalized, 44 partial, 11 variant, 3 retracted.
- By field: number theory 85, combinatorics 67, geometry/topology 33, analysis 25, algorithms 11, probability 10, algebra 7, theoretical CS 1.
- 138 record some Lean checking; **101 do not**. The 101 are this project's pool.

Ranking combines three factors: how open the truth of the claim still is, how plausibly Acorn can state and check it today, and how much the result matters.

One slice of the pool is excluded outright: algebraic geometry, knot theory, moduli spaces, PDE,
stochastic analysis, and profinite Galois claims are far outside current `src/` reach.

Graph-theoretic claims are roughly 20 of the 101, and they are *deferred, not excluded*. `src/` has
about 4,400 lines of graph theory already — `SimpleGraph[V]`, cliques, independent sets, induced
subgraphs, homomorphisms, embeddings, isomorphisms, walks, paths, reachability, and components. What
blocks these claims is a short list of missing invariants, headed by vertex degree. Three of them sit
at the end of the queue below precisely to drive
[baseline/graph-theory-core](../translate-mathlib/baseline/graph-theory-core/todo.md).

## Queue

Ordered by value. Work top to bottom.

- [ ] [Parametric families for two Diophantine equations](diophantine-parametric-families/todo.md)
  Note: reduces to a polynomial identity over the integers; the fastest end-to-end check available, chosen to open the pipeline.

- [ ] [Divisibility set for a generalized Euler totient](generalized-totient-divisibility/todo.md)
  Note: elementary and finite-flavoured, and `src/number_theory/totient.ac` already carries most of the API.

- [ ] [Kurkov's Fubini-number sum identity](fubini-number-sum/todo.md)
  Note: a finite-sum identity with no asymptotics; not externally refereed.

- [ ] [Disjoint residue classes, Erdos #202](disjoint-residue-classes/todo.md)
  Note: `src/number_theory/covering_system.ac` already models residue-class systems.

- [ ] [Odd covering systems, Erdos #7](odd-covering-systems/todo.md)
  Note: a retracted formalization that left sieve steps as axioms; the deliverable is a faithful statement and an audit, not a proof.

- [ ] [Least non-divisor of a central binomial coefficient, Erdos #731](binomial-least-nondivisor/todo.md)

- [ ] [Blocks avoiding middle-sized prime factors, Erdos #451](middle-prime-factor-blocks/todo.md)
  Note: absorbs the falling-product work formerly tracked as the `erdos396` project.

- [ ] [Quadruples with square product, Erdos #888](square-product-quadruples/todo.md)

- [ ] [Primitive sets and reciprocal sums, Erdos #1196](primitive-set-reciprocal-sum/todo.md)

- [ ] [Binary digits of the Erdos-Borwein constant](erdos-borwein-binary-digits/todo.md)

- [ ] [Totient preimages and least primes, Erdos #456](totient-preimage-least-prime/todo.md)

- [ ] [Distinct distances with no four concyclic, Erdos #654](distinct-distances-no-four-concyclic/todo.md)

Deferred: the graph-theoretic targets below are blocked on
[baseline/graph-theory-core](../translate-mathlib/baseline/graph-theory-core/todo.md). They are kept
in the queue because they are what makes that baseline branch demand-driven rather than speculative,
and they are ordered by how much library each one needs.

- [ ] [Clique transversal number, Erdos #610](clique-transversal-number/todo.md)
  Note: nearest to reach; `src/simple_graph.ac` already has cliques and `simple_graph_clique_transport.ac` exists.

- [ ] [Cycle double cover conjecture](cycle-double-cover/todo.md)
  Note: needs cycles and bridges but no numeric invariants, and it is the most important open problem in the pool.

- [ ] [Zero forcing and domination, TxGraffiti-Davila 9](zero-forcing-domination/todo.md)
  Note: furthest out; needs two invariants that Mathlib does not have either, so this is original work.

## Conventions

- `src/` gets general mathematics only. No predicate, theorem name, or example may be specific to a claim being checked. These files are where the motivation lives.
- When a statement is writable but the proof is out of reach, put the goal in `hard_problems/` and say so in the target's todo.
- Record the outcome honestly in the target's todo: checked, refuted, or statement not faithfully expressible.
- A claim that cannot be stated without inventing mathematics the source left implicit is itself a finding. Record what was ambiguous.
