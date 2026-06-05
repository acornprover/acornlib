# Algebraic Hierarchy

Goal: make the algebraic core broad enough that later domain libraries reuse structure instead of re-proving it ad hoc.

## Current Erdos Baseline

No active algebraic-hierarchy todos remain for the first Erdos cluster.

The current baseline now covers the needed `Nat`/`Int`/`Rat`/`Real` instance smoke checks, zero-product and nonzero-power bridges, field unit/nonzero bridges, ordered-field multiplication/power/inverse smoke checks, quotient projection and first-isomorphism-core facts, principal-ideal and subobject finite-generation helpers, pair/function unit cancellation, and finite-support product wrappers.

Add new algebra work only when an active number-theory, combinatorics, or Erdos-target proof exposes a concrete missing API.

## Deferred Work

- [ ] [Expand morphism classes and homomorphism extensionality lemmas](morphisms/todo.md)
  Note: existing bundled morphisms and kernel/image set APIs are enough for the first cluster; remaining notation and field-name unification is design cleanup.

- [ ] [Add a robust library for group actions](group-actions/todo.md)
  Note: useful for later symmetry, finite group, geometry, and representation-style problems, but not on the first elementary number-theory path.

- [ ] [Add free constructions where they are standard and reusable](free-constructions/todo.md)
  Note: free objects and presentation-style universal properties should wait until quotient infrastructure is driven by a concrete downstream theorem.

- [ ] [Prove the standard isomorphism theorems uniformly across structures](isomorphism-theorems/todo.md)
  Note: the first-isomorphism core facts already exist through quotient APIs; fully bundled group/ring theorem families are broader algebra parity work.

- [ ] [Improve coercions and notation between bundled and unbundled structure](coercions-and-notation/todo.md)
  Note: defer broad style migration until quotient, subobject, and module APIs have stabilized.

- [ ] [Complete broad product, opposite, unit, subobject, quotient, finite-generation, and instance-hierarchy parity](product-opposite-and-units/todo.md)
  Note: add concrete lemmas in these areas only when downstream proofs need them; bundled products, full quotient packages, algebraic lattice structure, Noetherian/module breadth, and hierarchy refactors should wait for later clusters.

## Current Focus

For the first Erdos cluster, the algebraic baseline is ready enough to move into downstream number-theory and combinatorics attempts. Resume algebra only for concrete gaps found there: quotient/kernel congruence facts, principal/finite subobject helpers, unit and power simplifications, or minimal instance-hierarchy repairs.

The deferred algebra work remains useful for mathlib parity, but it should not block the first Erdos push. Avoid broad definition or notation migrations unless a first-cluster proof exposes a specific missing API.
