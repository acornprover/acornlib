# Finite Sum Indexing

Claimants: [Fubini-number sum identity](../../../verify-ai-claims/fubini-number-sum/todo.md),
[square-product quadruples](../../../verify-ai-claims/square-product-quadruples/todo.md).

`src/finite_set/sum.ac` and `src/real/rectangular_sum.ac` cover sums over finite sets. Identities
indexed by a binary range need range splitting and digit-indexed summands.

- [ ] Add sums over an initial range of the naturals, with the standard recurrence.
- [ ] Prove a range split at an arbitrary midpoint.
- [ ] Prove reindexing a range sum by an offset.
- [ ] Add binary-expansion predicates on naturals usable inside a summand.
- [ ] Prove the range `0` to `2^n - 1` splits into low and high halves matching the top bit.
- [ ] Finish counting principles and bijective-combinatorics lemmas.
  - [ ] Vandermonde's identity; definitions, the `m = 0` base case, and `vandermonde_step` are in place, and the assembly by induction on `m` is open.
- [ ] Develop more binomial identities and basic generating-function tools.
- [ ] Support inclusion-exclusion and Mobius inversion.
- [ ] Add partitions, compositions, and Ferrers-diagram style objects.
- [ ] Add ordered set partitions and the surjection count defining the Fubini numbers.
- [ ] Add maximum size over the qualifying subsets of a finite interval.
