# Well-Founded Orders

Goal: give order theory access to induction and recursion principles beyond the concrete naturals.

- [ ] Add recursion principles on well-founded relations
- [ ] Connect well-foundedness with `Nat`-based structural recursion
- [ ] Prove full well-foundedness for lexicographic product relations
- [ ] Add well-foundedness transfer lemmas across embeddings and order-like maps
- [ ] Support Noetherian-style arguments via well-foundedness
- [ ] Connect well-founded order tools to termination arguments in definitions
- [ ] Refactor one existing induction-heavy development to use the generalized API

Status:

- `src/well_founded.ac` defines `is_well_founded` via the minimal-element formulation, proves that well-founded relations are irreflexive, proves that pullback along any function preserves well-foundedness, and now includes subset/intersection preservation, well-founded induction, induction-at, and a `Nat`-indexed descending-chain exclusion theorem.
- The descending-chain API now has existence and nonexistence predicates, well-foundedness contradiction lemmas, subrelation transfer, and pullback-chain mapping lemmas.
- `src/well_founded.ac` now defines lexicographic and coordinate product relations on pairs, proves the coordinate product relations embed into the lexicographic relation, and proves first- and second-coordinate product relations are well-founded by pullback. Full lexicographic well-foundedness remains to be proved.
