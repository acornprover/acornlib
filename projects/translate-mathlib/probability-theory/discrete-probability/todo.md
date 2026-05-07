# Discrete Probability

Probability on a finite sample space, ahead of the general measure-theoretic API. Useful as a self-contained layer and a sanity check on later definitions.

Prerequisite: a finite-sum-over-`FiniteSet[T]` of reals helper. None currently exists in `acornlib`; only `sum_set` (disjoint union of sets) is in tree.

- [ ] Add `finite_set_sum: FiniteSet[T] -> (T -> Real) -> Real` and basic linearity, monotonicity, and split-by-membership lemmas.
- [ ] Define `DiscretePMF[T]` as a `FiniteSet[T]` together with a nonnegative `T -> Real` function whose `finite_set_sum` is `Real.1`.
- [ ] Define probability of an event as the sum of pmf values over the event subset.
- [ ] Add complement, union, and inclusion-exclusion for discrete probability.
- [ ] Define expectation `discrete_expectation(pmf, X)` for a `T -> Real` random variable.
- [ ] Add linearity and monotonicity of discrete expectation.
- [ ] Define variance and prove `Var(X) = E(X^2) - E(X)^2`.
- [ ] Define independence of two discrete events and of two discrete random variables.
- [ ] Show `E(X * Y) = E(X) * E(Y)` for independent discrete random variables.
- [ ] Define the uniform pmf on a nonempty `FiniteSet[T]`.
- [ ] Define the Bernoulli pmf on `Bool` with parameter `p` and compute its expectation and variance.
