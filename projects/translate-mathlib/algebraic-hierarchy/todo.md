# Algebraic Hierarchy

Goal: make the algebraic core broad enough that later domain libraries reuse structure instead of re-proving it ad hoc.

## Group A: Needed For First Erdos Cluster

- [ ] [Strengthen only the semiring, ring, and field instances needed by first-cluster number theory](instance-hierarchy/todo.md)
  Note: prioritize `Nat`, `Int`, `Rat`, and `Real` inheritance, numerals, cancellation, powers, units/nonzero facts, and ordered-algebra bridges that binomial, divisibility, congruence, and asymptotic arguments actually use.

- [ ] [Finish quotient and kernel facts that support concrete congruence arguments](quotients/todo.md)
  Note: prioritize quotient-by-kernel projection facts, modular arithmetic style congruences, ideal-quotient zero/equality criteria, and first-isomorphism-core lemmas; defer bundled universal properties unless a proof needs them.

- [ ] [Add subobject and ideal lemmas only when they feed divisibility, finite groups, or congruences](subobjects/todo.md)
  Note: use principal ideals, kernels, finite subgroups, finitely generated predicates, and closure/membership helpers as needed; defer bundled lattice design and broad refactors.

- [ ] [Keep units, powers, and finite-support product helpers strong enough for arithmetic proofs](product-opposite-and-units/todo.md)
  Note: prioritize unit cancellation, nonzero/unit equivalences, quotient powers, and finite-support wrappers that occur in number-theory or combinatorial algebra; defer bundled products, opposites, and higher-arity product APIs.

- [ ] [Support finite-generation statements only where they encode finite algebraic data](finitely-generated-structures/todo.md)
  Note: prioritize finite groups, finite ideals/subobjects, and finite generator extraction if needed by a target; defer Noetherian and module-theoretic breadth.

## Group B: Deferred Until Later Clusters

- [ ] [Expand morphism classes and homomorphism extensionality lemmas](morphisms/todo.md)
  Note: existing bundled morphisms and kernel/image set APIs are enough for the first cluster; remaining notation and field-name unification is design cleanup.

- [ ] [Add a robust library for group actions](group-actions/todo.md)
  Note: useful for later symmetry, finite group, geometry, and representation-style problems, but not on the first elementary number-theory path.

- [ ] [Add free constructions where they are standard and reusable](free-constructions/todo.md)
  Note: free objects and presentation-style universal properties should wait until quotient infrastructure is driven by a concrete downstream theorem.

- [ ] [Prove the standard isomorphism theorems uniformly across structures](isomorphism-theorems/todo.md)
  Note: the first-isomorphism core facts can stay in Group A via quotients; fully bundled group/ring theorem families are broader algebra parity work.

- [ ] [Improve coercions and notation between bundled and unbundled structure](coercions-and-notation/todo.md)
  Note: defer broad style migration until quotient, subobject, and module APIs have stabilized.

- [ ] [Complete broad product, opposite, unit, subobject, quotient, finite-generation, and instance-hierarchy parity](product-opposite-and-units/todo.md)
  Note: Group A may add concrete lemmas in these areas, but bundled products, full quotient packages, algebraic lattice structure, Noetherian/module breadth, and hierarchy refactors should wait for later clusters.

## Current Focus

For the first Erdos cluster, work only from Group A until a concrete proof attempt shows otherwise. The active frontier should be driven by number-theory consumers: quotient/kernel congruence facts, principal/finite subobject helpers, unit and power simplifications, and minimal instance-hierarchy repairs.

Group B remains useful for mathlib parity, but it should not block the first Erdos push. Avoid broad definition or notation migrations unless a first-cluster proof exposes a specific missing API.
