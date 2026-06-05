# Finitely Generated Algebraic Structures

Goal: support finite-generation statements that appear throughout algebra, number theory, and geometry.

No active finite-generation todos remain for the first Erdos cluster.

## Deferred Work

- [ ] Add closure lemmas for images and quotients of finitely generated objects when a concrete proof needs them
- [ ] Record later links to Noetherianity and finite-dimensionality
- [ ] Refactor representative finite-generation arguments to the shared API after downstream examples exist
- [ ] Add finite-generation predicates for future bundled subobjects once their closure APIs exist

Status:

- Ideals, subsemigroups, submonoids, subgroups, additive submonoids, additive subgroups, subrings, and submodules now have finite-generation predicates, finite-closure constructors, and finite-generator witness extractors; all except submodule also have same-carrier equality transport, and submodule already had carrier-aware equality transport.
- `src/finite_group/base.ac` already connects finite groups and finite subgroups to finite generation, including finite subsemigroup/submonoid/subgroup generation and cyclic finite subgroup membership/generation helpers.
