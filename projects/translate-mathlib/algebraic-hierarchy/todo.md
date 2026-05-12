# Algebraic Hierarchy

Goal: make the algebraic core broad enough that later domain libraries reuse structure instead of re-proving it ad hoc.

- [ ] [Expand morphism classes and homomorphism extensionality lemmas](morphisms/todo.md)
- [ ] [Add subsemigroups, submonoids, subgroups, subrings, and related subobjects](subobjects/todo.md)
- [ ] [Support quotients by congruences, normal subgroups, and ideals](quotients/todo.md)
- [ ] [Improve product, opposite, and unit constructions](product-opposite-and-units/todo.md)
- [ ] [Add a robust library for group actions](group-actions/todo.md)
- [ ] [Strengthen the semiring, ring, and field instance hierarchy](instance-hierarchy/todo.md)
- [ ] [Add free constructions where they are standard and reusable](free-constructions/todo.md)
- [ ] [Prove the standard isomorphism theorems uniformly across structures](isomorphism-theorems/todo.md)
- [ ] [Support finitely generated algebraic structures](finitely-generated-structures/todo.md)
- [ ] [Improve coercions and notation between bundled and unbundled structure](coercions-and-notation/todo.md)

## Current Focus

The remaining morphism and subobject items are deferred design cleanups. Product work is kept unbundled until the generic `Pair[A, B]` typeclass receiver blocker is resolved. The next non-design execution frontier is [quotients](quotients/todo.md), where representative-level monoid/group quotient laws are being rounded out before bundled instances or universal properties.
