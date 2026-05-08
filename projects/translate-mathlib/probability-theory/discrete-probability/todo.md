# Discrete Probability

Probability on a finite sample space, ahead of the general measure-theoretic API. Useful as a self-contained layer and a sanity check on later definitions.

Prerequisite: a finite-sum-over-`FiniteSet[T]` of reals helper. None currently exists in `acornlib`; only `sum_set` (disjoint union of sets) is in tree.

- [x] Stepping stone: `sum_remove_one` and `permutation_preserves_sum` for any `AddCommMonoid` in `list_permutation.ac`.
- [x] Add `finite_set_sum: FiniteSet[T] -> (T -> A) -> A` (generic over `AddCommMonoid`) in `finite_set_sum.ac`. Includes `finite_set_sum_eq_list_sum`, `finite_set_sum_empty`, and `finite_set_sum_add` (linearity in the function argument). Built via the unique-list strategy using `unique_same_contains_map_sum_eq` rather than the map-permutation lemma.
- [x] Add `finite_set_sum_insert`: inserting a fresh element adds its value to the sum.
- [x] Add `finite_set_sum_disjoint_union`: sum over `fs_union(a, b)` equals the sum of parts when `a` and `b` are disjoint.
- [x] Define `DiscretePMF[T]` as a `FiniteSet[T]` together with a nonnegative `T -> Real` function whose `finite_set_sum` is `Real.1`. Lives in `discrete_pmf.ac` with `is_pmf`, `discrete_pmf_mass_nonneg`, `discrete_pmf_total_mass`, and `discrete_pmf_ext`.
- [x] Define probability of an event as the sum of pmf values over the event subset. `pmf_event_prob` plus empty/support/disjoint-union laws live in `discrete_pmf.ac`.
- [ ] Finish monotonicity of `finite_set_sum` over `Real`. The cons-step helper `list_map_sum_le_cons` lands in `finite_set_sum_real.ac`; the wrap-up theorems `list_map_sum_le` and `finite_set_sum_le` time out under direct list induction with a `forall+implies` predicate. Even an explicit `List.induction(function(l) { p(l) })` followed by `forall(l) p(l); p(left)` (the same shape that works in `count_append`) times out for predicates whose body uses `Real`-valued `sum[Real](map(l, f))`. Try inducting on list length (Nat induction) instead, or rephrasing the predicate so the hypothesis sits outside.
- [ ] Add complement, union, and inclusion-exclusion for discrete probability.
- [ ] Define expectation `discrete_expectation(pmf, X)` for a `T -> Real` random variable.
- [ ] Add linearity and monotonicity of discrete expectation.
- [ ] Define variance and prove `Var(X) = E(X^2) - E(X)^2`.
- [ ] Define independence of two discrete events and of two discrete random variables.
- [ ] Show `E(X * Y) = E(X) * E(Y)` for independent discrete random variables.
- [ ] Define the uniform pmf on a nonempty `FiniteSet[T]`.
- [ ] Define the Bernoulli pmf on `Bool` with parameter `p` and compute its expectation and variance.
