# Combinatorics

Goal: cover the finite and enumerative mathematics that Mathlib collects under combinatorics.

- [ ] Add counting principles and bijective-combinatorics lemmas
  - [x] Positivity of binomial coefficients (`binom_pos`)
  - [x] Pascal's identity in successor form (`pascal_suc`)
  - [x] Sum of a row of binomials equals `2.pow(n)` (`binom_row_sum`)
  - [ ] Vandermonde's identity (definitions, m=0 base case, and inductive step `vandermonde_step` are in place; final assembly via induction on m is open)
- [ ] Develop binomial identities and basic generating-function tools
  - [x] Absorption identity `k * binom(n,k) = n * binom(n-1, k-1)` (`binom_absorption`)
  - [x] Successor-form absorption `(k+1) * binom(n+1, k+1) = (n+1) * binom(n, k)` (`binom_absorption_suc`)
  - [x] Complementary absorption `(n - k) * binom(n, k) = (k + 1) * binom(n, k + 1)` (`binom_complement_absorption`)
  - [x] Subset selection identity `binom(n,k) * binom(k,j) = binom(n,j) * binom(n-j, k-j)` (`binom_subset_product`)
  - [x] Near-top value `n.binom(n - 1) = n` (`binom_n_minus_one`)
  - [x] Closed form `2 * n.binom(2) = n * (n - 1)` (`binom_two_double`)
  - [x] Closed form `6 * n.binom(3) = n * (n - 1) * (n - 2)` (`binom_three_factor`)
  - [x] Monotonicity in the left half `n.binom(k) <= n.binom(k + 1)` when `2 * (k + 1) <= n` (`binom_le_binom_suc`)
  - [x] Monotonicity in the right half `n.binom(k + 1) <= n.binom(k)` when `n <= 2 * k` (`binom_suc_le_binom`)
- [ ] Support inclusion-exclusion and Mobius inversion
- [ ] Add partitions, compositions, and Ferrers-diagram style objects
- [ ] Develop posets, chains, and antichain theorems
- [ ] Add Ramsey-theoretic basics
- [ ] Support extremal set theory
- [ ] Add incidence structures and block designs
- [ ] Develop matroids and their basic API
- [ ] Add recurrence solving and other enumerative-combinatorics tools
