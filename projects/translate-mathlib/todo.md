# Acornlib Math Roadmap

Goal: over time, give Acornlib a reasonable analogue of each major area of mathematics covered in Lean Mathlib, with work ordered roughly by dependency.

## Blockers

- [ ] prover-limitation: topology/todo.md (connectedness, `via_clopen_imp_connected` reverse direction) - extracting a single conjunct from a disconnection over a higher-order openness predicate times out. Even the isolated minimal-premise lemma `is_disconnection[T](open, u, v) implies open(u)` (rewrite by `is_disconnection_iff`, take one conjunct) does not verify, because matching the higher-order application `open(u)` where `open` is a free `Set[T] -> Bool` parameter blows up proof search. The supporting set lemmas (`compl_eq_of_disjoint_cover` etc.) and the clopen-side construction are ready. Next action: revisit once Acorn handles applications of free higher-order predicate parameters more cheaply.

- [ ] prover-limitation: topology/todo.md (product map continuity, `fan_out_preimage_box_open`) - the box step of fan-out continuity reduces to the basic fact `is_continuous(f) and Y.is_open(v) implies X.is_open(set_preimage(f, v))`, but its only proof route is the `is_continuous` define-unfold forall-instantiation, which times out (5s) when used outside `topological_space.ac`. Factoring it into a general lemma `continuous_open_preimage` beside the definition poisons the premise pool and breaks the previously-cached `continuous_imp_continuous_at` proof. The verified pieces (`fan_out_preimage_box`, projection-recovery, `open_inter`) are ready. Next action: revisit once Acorn instantiates a definitional `forall` (or exposes a cheap continuous-preimage-open lemma) without premise-pool blowup.

## Foundational And Core Infrastructure

- [ ] [Foundations and set-theoretic infrastructure](foundations/todo.md)
  Note: strengthen sets, relations, functions, quotients, finite/infinite constructions, and reusable proof infrastructure.

- [ ] [Order theory and lattices](order-theory/todo.md)
  Note: complete the general API for partial orders, linear orders, lattices, complete lattices, monotone maps, and Galois connections.

- [ ] [Algebraic hierarchy](algebraic-hierarchy/todo.md)
  Note: continue building semigroups, monoids, groups, rings, fields, morphisms, subobjects, quotients, and canonical instances.

- [ ] [Linear algebra](linear-algebra/todo.md)
  Note: add modules, vector spaces, linear maps, bases, dimension theory, duality, matrices, determinants, and bilinear forms.

- [ ] [Category theory](category-theory/todo.md)
  Note: introduce categories, functors, natural transformations, limits, adjunctions, monads, and standard categorical abstractions used across Mathlib.

## Algebra And Number Systems

- [ ] [Commutative algebra](commutative-algebra/todo.md)
  Note: add ideals, quotient rings, localization, Noetherianity, integral extensions, tensor products, and spectra-oriented infrastructure.

- [ ] [Field theory and Galois theory](field-theory-and-galois-theory/todo.md)
  Note: cover algebraic extensions, splitting fields, algebraic closures, finite fields, separability, and Galois correspondences.

- [ ] [Representation theory and Lie algebra basics](representation-theory-and-lie-algebra/todo.md)
  Note: support group representations, characters, module decompositions, Lie algebras, and basic Lie-theoretic constructions.

- [ ] [Number theory](number-theory/todo.md)
  Note: expand elementary and algebraic number theory, including arithmetic functions, Diophantine results, local fields, and reciprocity-style theorems.

- [ ] [Special number systems](special-number-systems/todo.md)
  Note: extend support for complex numbers, extended reals, p-adics, and other standard completions and enriched scalar systems.

## Topology, Analysis, And Measure

- [ ] [Topology](topology/todo.md)
  Note: add topological spaces, continuity, compactness, connectedness, separation axioms, product and quotient topologies, and dense embeddings.

- [ ] [Uniform spaces and metric spaces](uniform-and-metric-spaces/todo.md)
  Note: add filters or a comparable abstraction for limits, uniform continuity, completions, and metric-space constructions.

- [ ] [Measure theory](measure-theory/todo.md)
  Note: develop sigma-algebras, measurable functions, measures, integration, product measures, and convergence theorems.

- [ ] [Probability theory](probability-theory/todo.md)
  Note: build probability measures, random variables, independence, expectation, convergence in law/probability, and core limit theorems.

- [ ] [Real analysis](real-analysis/todo.md)
  Note: keep extending sequences, series, continuity, differentiability, integration, asymptotics, and classical theorems on real functions.

- [ ] [Functional analysis](functional-analysis/todo.md)
  Note: add normed spaces, Banach and Hilbert spaces, bounded linear maps, operator theory, and dual spaces.

- [ ] [Complex analysis](complex-analysis/todo.md)
  Note: add holomorphic functions, power series, contour integration, residue theory, and complex-analytic standard library theorems.

## Geometry And Higher Structure

- [ ] [Affine, Euclidean, and convex geometry](affine-euclidean-and-convex-geometry/todo.md)
  Note: support affine spaces, subspaces, spans, inner product spaces, orthogonality, angles, convexity, and polytopal constructions.

- [ ] [Differential geometry and manifolds](differential-geometry-and-manifolds/todo.md)
  Note: add smooth manifolds, tangent bundles, smooth maps, differential forms, Riemannian structures, and Lie groups.

- [ ] [Algebraic geometry](algebraic-geometry/todo.md)
  Note: develop prime spectra, Zariski topology, sheaves, locally ringed spaces, schemes, and standard scheme-theoretic constructions.

## Discrete Mathematics And Dynamical Systems

- [ ] [Combinatorics](combinatorics/todo.md)
  Note: cover counting arguments, extremal combinatorics, finite set systems, partitions, generating functions, and incidence structures.

- [ ] [Graph theory](graph-theory/todo.md)
  Note: add simple graphs, walks, connectivity, coloring, matchings, flows, adjacency matrices, and spectral graph basics.

- [ ] [Dynamical systems and ergodic ideas](dynamical-systems-and-ergodic-ideas/todo.md)
  Note: support iterative dynamics, fixed and periodic points, omega-limit sets, invariant measures, and basic ergodic statements.

## Suggested Execution Order

1. [Foundations and set-theoretic infrastructure](foundations/todo.md)
2. [Order theory and lattices](order-theory/todo.md)
3. [Algebraic hierarchy](algebraic-hierarchy/todo.md)
4. [Linear algebra](linear-algebra/todo.md)
5. [Topology](topology/todo.md)
6. [Uniform spaces and metric spaces](uniform-and-metric-spaces/todo.md)
7. [Real analysis](real-analysis/todo.md)
8. [Measure theory](measure-theory/todo.md)
9. [Probability theory](probability-theory/todo.md)
10. [Commutative algebra](commutative-algebra/todo.md)
11. [Field theory and Galois theory](field-theory-and-galois-theory/todo.md)
12. [Category theory](category-theory/todo.md)
13. [Functional analysis](functional-analysis/todo.md)
14. [Complex analysis](complex-analysis/todo.md)
15. [Number theory](number-theory/todo.md)
16. [Special number systems](special-number-systems/todo.md)
17. [Affine, Euclidean, and convex geometry](affine-euclidean-and-convex-geometry/todo.md)
18. [Differential geometry and manifolds](differential-geometry-and-manifolds/todo.md)
19. [Representation theory and Lie algebra basics](representation-theory-and-lie-algebra/todo.md)
20. [Algebraic geometry](algebraic-geometry/todo.md)
21. [Combinatorics](combinatorics/todo.md)
22. [Graph theory](graph-theory/todo.md)
23. [Dynamical systems and ergodic ideas](dynamical-systems-and-ergodic-ideas/todo.md)
