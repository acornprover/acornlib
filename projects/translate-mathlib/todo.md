# Acornlib Math Roadmap

Goal: over time, give Acornlib a reasonable analogue of each major area of mathematics covered in Lean Mathlib, with the active priority optimized for attacking Erdos problems by AI-assisted formalization and proof grinding.

## Blockers

(none currently)

## Core Infrastructure

- [ ] [Algebraic hierarchy](algebraic-hierarchy/todo.md)
  Note: keep rings, semirings, groups, morphisms, products, quotients, and canonical instances strong enough for number theory and combinatorics.

- [ ] [Order theory and lattices](order-theory/todo.md)
  Note: the first-cluster comparison, interval/range, monotonicity, and least-witness baseline is in place; resume broad order theory only when a downstream proof exposes a concrete gap.

## Erdos-Facing Discrete And Elementary Mathematics

- [ ] [Number theory](number-theory/todo.md)
  Note: prioritize elementary and computational number theory for Erdos targets: divisibility, valuations, binomial coefficients, congruences, prime-factor counts, divisor functions, unit fractions, covering systems, and finite interval problems.

- [ ] [Combinatorics](combinatorics/todo.md)
  Note: prioritize finite combinatorics that unlocks Erdos clusters: counting principles, finite set systems, sumsets/difference sets, Sidon predicates, additive bases, extremal set theory, inclusion-exclusion, and Ramsey basics.

- [ ] [Graph theory](graph-theory/todo.md)
  Note: prioritize graph APIs needed by Erdos graph problems: colorings and chromatic number, cliques and independent sets, walks/cycles/girth, induced subgraphs, extremal graph functions, Turan/Ramsey preliminaries, and hypergraph basics.

- [ ] [Affine, Euclidean, and convex geometry](affine-euclidean-and-convex-geometry/todo.md)
  Note: build finite point-configuration infrastructure for distance problems: Euclidean distance, lines, circles, general position, convex position, isometries, and finite-dimensional coordinate arguments.

## Supporting Analysis, Algebra, And Number Systems

- [ ] [Linear algebra](linear-algebra/todo.md)
  Note: develop only the linear algebra needed by geometry and graph methods first: finite-dimensional vector spaces, coordinates, matrices, bilinear/inner-product language, and basic dimension arguments.

- [ ] [Real analysis](real-analysis/todo.md)
  Note: prioritize asymptotics, sequences, limits, density, and sufficiently-large/eventual reasoning used in Erdos statements.

- [ ] [Uniform spaces and metric spaces](uniform-and-metric-spaces/todo.md)
  Note: add metric-space language only as needed for finite Euclidean distance and limit/asymptotic statements.

- [ ] [Topology](topology/todo.md)
  Note: keep topology behind the discrete/Erdos queue except where density, compactness, connectedness, or continuity is directly needed by a target.

- [ ] [Special number systems](special-number-systems/todo.md)
  Note: extend complex numbers, extended reals, p-adics, and other completions when they support asymptotic, analytic, or modular Erdos targets.

## General Mathlib Breadth

- [ ] [Probability theory](probability-theory/todo.md)
  Note: build probability only after the finite combinatorial core is usable; random graph and probabilistic-method lemmas should feed back into graph/combinatorics targets.

- [ ] [Measure theory](measure-theory/todo.md)
  Note: develop sigma-algebras, measurable functions, measures, integration, product measures, and convergence theorems after probability needs force them.

- [ ] [Commutative algebra](commutative-algebra/todo.md)
  Note: defer broad commutative algebra unless a number-theory target needs ideals, quotient rings, localization, Noetherianity, or integral extensions.

- [ ] [Field theory and Galois theory](field-theory-and-galois-theory/todo.md)
  Note: defer broad field theory unless finite fields, algebraic extensions, or Galois arguments are needed by an active Erdos target.

- [ ] [Category theory](category-theory/todo.md)
  Note: keep category theory low priority for the Erdos push; add categorical abstractions only when they simplify active library work.

- [ ] [Complex analysis](complex-analysis/todo.md)
  Note: defer broad complex analysis except for specific analytic-number-theory or approximation targets.

- [ ] [Functional analysis](functional-analysis/todo.md)
  Note: defer broad functional analysis except for specific analysis targets that survive the Erdos triage.

- [ ] [Dynamical systems and ergodic ideas](dynamical-systems-and-ergodic-ideas/todo.md)
  Note: support iterative dynamics and ergodic ideas after the discrete, number-theoretic, graph, and geometry clusters have usable baselines.

- [ ] [Differential geometry and manifolds](differential-geometry-and-manifolds/todo.md)
  Note: defer smooth manifolds and Riemannian structures; finite Euclidean geometry is the relevant Erdos-facing subset.

- [ ] [Representation theory and Lie algebra basics](representation-theory-and-lie-algebra/todo.md)
  Note: defer representation theory unless a specific graph, additive-combinatorics, or algebraic target requires it.

- [ ] [Algebraic geometry](algebraic-geometry/todo.md)
  Note: keep algebraic geometry at the end of this roadmap; it has little near-term leverage on the current Erdos target ranking.

## Suggested Execution Order

1. [Algebraic hierarchy](algebraic-hierarchy/todo.md)
2. [Number theory](number-theory/todo.md)
3. [Combinatorics](combinatorics/todo.md)
4. [Graph theory](graph-theory/todo.md)
5. [Affine, Euclidean, and convex geometry](affine-euclidean-and-convex-geometry/todo.md)
6. [Linear algebra](linear-algebra/todo.md)
7. [Real analysis](real-analysis/todo.md)
8. [Uniform spaces and metric spaces](uniform-and-metric-spaces/todo.md)
9. [Topology](topology/todo.md)
10. [Special number systems](special-number-systems/todo.md)
11. [Order theory and lattices](order-theory/todo.md)
12. [Probability theory](probability-theory/todo.md)
13. [Measure theory](measure-theory/todo.md)
14. [Commutative algebra](commutative-algebra/todo.md)
15. [Field theory and Galois theory](field-theory-and-galois-theory/todo.md)
16. [Category theory](category-theory/todo.md)
17. [Complex analysis](complex-analysis/todo.md)
18. [Functional analysis](functional-analysis/todo.md)
19. [Dynamical systems and ergodic ideas](dynamical-systems-and-ergodic-ideas/todo.md)
20. [Differential geometry and manifolds](differential-geometry-and-manifolds/todo.md)
21. [Representation theory and Lie algebra basics](representation-theory-and-lie-algebra/todo.md)
22. [Algebraic geometry](algebraic-geometry/todo.md)
