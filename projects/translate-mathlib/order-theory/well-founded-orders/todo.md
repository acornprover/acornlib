# Well-Founded Orders

Goal: give order theory access to induction and recursion principles beyond the concrete naturals.

- [ ] Prove actual existence principles for recursive definitions on well-founded relations, beyond uniqueness and choice once existence is supplied
- [ ] Add chain-level forward transfer for injective pushforwards only when a downstream proof needs it
- [ ] Add order-like map transfer lemmas beyond pullback/pushforward only when a concrete order API consumer appears
- [ ] Add Noetherian-style induction principles from converse well-foundedness without prover timeouts
- [ ] Connect well-founded order tools to termination arguments in definitions
- [ ] Refactor one existing induction-heavy development to use the generalized API

Status:

- `src/well_founded.ac` defines `is_well_founded` via the minimal-element formulation, proves that well-founded relations are irreflexive, proves that pullback along any function and pushforward along a bijection preserve well-foundedness, includes descending-chain exclusion consequences for bijective pushforwards, and now includes subset/intersection preservation, well-founded induction, induction-at, and a `Nat`-indexed descending-chain exclusion theorem.
- The descending-chain API now has existence and nonexistence predicates, well-foundedness contradiction lemmas, subrelation transfer, and pullback-chain mapping lemmas.
- `src/well_founded.ac` now includes the strict natural order as a relation, proves the least-element principle for nonempty predicates on naturals, and adds pullback-controlled well-foundedness and descending-chain transfer lemmas for relations contained in pullbacks.
- `src/well_founded.ac` now defines lexicographic and coordinate product relations on pairs, proves the coordinate product relations embed into the lexicographic relation, proves first- and second-coordinate product relations are well-founded by pullback, and proves that lexicographic product relations are well-founded when both component relations are well-founded. The descending-chain projection lemmas (first-coordinate non-strict descent, second-coordinate descent under irreflexive `r` on shared-first steps) remain in place for downstream chain arguments.
- `src/well_founded.ac` now has `relation_pushforward_is_well_founded_of_injection` and the matching `relation_pushforward_has_no_descending_chain_of_injection`, generalizing the existing bijection-based pushforward transfer lemmas to arbitrary injections.
- The transfer API now reflects well-foundedness from pushforwards back to the source relation, proves surjective pullback well-foundedness iff the target relation is well-founded, and adds no-descending-chain inheritance for intersections, mutual inclusion, pushforward reflection, coordinate product relations, and lexicographic products under well-founded components.
- The recursion API now has a predecessor-agreement predicate, a predecessor-extensionality predicate for recursive steps, a solution predicate for recursive equations, pointwise and function-level uniqueness of solutions over a well-founded relation, uniqueness of solutions when one exists, and `choose_or_default`-based chosen-solution wrappers that recover a solution and its step equation whenever existence is supplied.
- The Noetherian relation API now names converse well-foundedness, provides ascending-chain predicates plus equivalence with descending chains for the converse relation, proves a maximal-element principle for nonempty predicates, and derives no-ascending-chain and ascending-chain contradiction lemmas. A direct Noetherian induction wrapper was attempted but deferred because the converse-step conversion timed out.
- The strict-natural-order recursion API now has Nat-specialized solution predicates, pointwise and function-level uniqueness, unique-existence wrappers, and chosen-solution lemmas that recover any supplied solution, ignore the default when a solution exists, and satisfy the recursive equation pointwise.
