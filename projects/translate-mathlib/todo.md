# Acornlib Math Roadmap

Goal: over time, give Acornlib a reasonable analogue of each major area of mathematics covered in Lean Mathlib, with the active priority optimized for attacking Erdos problems by AI-assisted formalization and proof grinding.

## Blockers

- [ ] prover-limitation: topology/todo.md (connectedness, `via_clopen_imp_connected` reverse direction) - extracting a single conjunct from a disconnection over a higher-order openness predicate times out. Even the isolated minimal-premise lemma `is_disconnection[T](open, u, v) implies open(u)` (rewrite by `is_disconnection_iff`, take one conjunct) does not verify, because matching the higher-order application `open(u)` where `open` is a free `Set[T] -> Bool` parameter blows up proof search. The supporting set lemmas (`compl_eq_of_disjoint_cover` etc.) and the clopen-side construction are ready. Next action: revisit once Acorn handles applications of free higher-order predicate parameters more cheaply.

- [ ] prover-limitation: topology/todo.md (product map continuity, `fan_out_preimage_box_open`) - the box step of fan-out continuity reduces to the basic fact `is_continuous(f) and Y.is_open(v) implies X.is_open(set_preimage(f, v))`, but its only proof route is the `is_continuous` define-unfold forall-instantiation, which times out (5s) when used outside `topological_space.ac`. Factoring it into a general lemma `continuous_open_preimage` beside the definition poisons the premise pool and breaks the previously-cached `continuous_imp_continuous_at` proof. The verified pieces (`fan_out_preimage_box`, projection-recovery, `open_inter`) are ready. Next action: revisit once Acorn instantiates a definitional `forall` (or exposes a cheap continuous-preimage-open lemma) without premise-pool blowup.

## Foundational And Core Infrastructure

- [ ] [Foundations and set-theoretic infrastructure](foundations/todo.md)
  Note: strengthen finite sets, relations, functions, quotients, finite/infinite constructions, and reusable proof infrastructure needed by discrete Erdos problems.

- [ ] [Order theory and lattices](order-theory/todo.md)
  Note: complete the reusable order API for extremal functions, intervals, monotone maps, lattices, and finite-search arguments.

- [ ] [Algebraic hierarchy](algebraic-hierarchy/todo.md)
  Note: keep rings, semirings, groups, morphisms, products, quotients, and canonical instances strong enough for number theory and combinatorics.

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

1. [Foundations and set-theoretic infrastructure](foundations/todo.md)
2. [Order theory and lattices](order-theory/todo.md)
3. [Algebraic hierarchy](algebraic-hierarchy/todo.md)
4. [Number theory](number-theory/todo.md)
5. [Combinatorics](combinatorics/todo.md)
6. [Graph theory](graph-theory/todo.md)
7. [Affine, Euclidean, and convex geometry](affine-euclidean-and-convex-geometry/todo.md)
8. [Linear algebra](linear-algebra/todo.md)
9. [Real analysis](real-analysis/todo.md)
10. [Uniform spaces and metric spaces](uniform-and-metric-spaces/todo.md)
11. [Topology](topology/todo.md)
12. [Special number systems](special-number-systems/todo.md)
13. [Probability theory](probability-theory/todo.md)
14. [Measure theory](measure-theory/todo.md)
15. [Commutative algebra](commutative-algebra/todo.md)
16. [Field theory and Galois theory](field-theory-and-galois-theory/todo.md)
17. [Category theory](category-theory/todo.md)
18. [Complex analysis](complex-analysis/todo.md)
19. [Functional analysis](functional-analysis/todo.md)
20. [Dynamical systems and ergodic ideas](dynamical-systems-and-ergodic-ideas/todo.md)
21. [Differential geometry and manifolds](differential-geometry-and-manifolds/todo.md)
22. [Representation theory and Lie algebra basics](representation-theory-and-lie-algebra/todo.md)
23. [Algebraic geometry](algebraic-geometry/todo.md)
