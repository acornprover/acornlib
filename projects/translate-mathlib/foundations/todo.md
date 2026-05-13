# Foundations and Set-Theoretic Infrastructure

Goal: make core definitions and proof patterns stable enough that later libraries can build on them without constant local patching.

- [ ] [Relation algebra for reflexive, symmetric, transitive, and equivalence relations](relation-algebra/todo.md)
- [ ] [Canonical APIs for products, sums, options, and dependent pairs](core-type-constructions/todo.md)

The [quotients](quotients/todo.md) branch is at a stable state — kernel relations, group/ring/module quotients, full algebraic axiom sets, quotient-migration notes, and the per-`qrel` vs typeclass design decision are all settled and recorded under that subtree.

## Current Focus

Both remaining branches are deferred design questions awaiting a downstream consumer to force the call: relation-algebra's open question is whether explicit finite-path/walk objects belong on top of `relation_power`; core-type-constructions' open question is whether dependent pairs and the pair/sum/option family share a constrained-structure toolkit.
