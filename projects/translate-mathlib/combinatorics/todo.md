# Combinatorics

Goal: cover the finite and enumerative mathematics that Mathlib collects under combinatorics.

- [ ] Add counting principles and bijective-combinatorics lemmas
  - [x] Positivity of binomial coefficients (`binom_pos`)
  - [x] Pascal's identity in successor form (`pascal_suc`)
  - [x] Sum of a row of binomials equals `2.pow(n)` (`binom_row_sum`)
  - [ ] Vandermonde's identity
- [ ] Develop binomial identities and basic generating-function tools
  - [x] Absorption identity `k * binom(n,k) = n * binom(n-1, k-1)` (`binom_absorption`)
  - [x] Subset selection identity `binom(n,k) * binom(k,j) = binom(n,j) * binom(n-j, k-j)` (`binom_subset_product`)
- [ ] Support inclusion-exclusion and Mobius inversion
- [ ] Add partitions, compositions, and Ferrers-diagram style objects
- [ ] Develop posets, chains, and antichain theorems
- [ ] Add Ramsey-theoretic basics
- [ ] Support extremal set theory
- [ ] Add incidence structures and block designs
- [ ] Develop matroids and their basic API
- [ ] Add recurrence solving and other enumerative-combinatorics tools
