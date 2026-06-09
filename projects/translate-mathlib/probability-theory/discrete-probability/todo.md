# Discrete Probability

Probability on a finite sample space, ahead of the general measure-theoretic API. Useful as a self-contained layer and a sanity check on later definitions.

Finite-set sums over `FiniteSet[T]` are available in `src/finite_set_sum.ac`; active work here should build on that layer.

- [ ] Finish `finite_set_sum_le` over `Real` by reindexing list sums as Nat partial sums, then route the inequality through `partial_seq_lte`.
- [ ] Add monotonicity of discrete expectation: `X(x) <= Y(x)` on the support implies `E(X) <= E(Y)`. Depends on finishing `finite_set_sum_le`.
- [ ] Define independence of two discrete random variables (requires a joint pmf / product pmf API).
- [ ] Show `E(X * Y) = E(X) * E(Y)` for independent discrete random variables.
- [ ] Define the uniform pmf on a nonempty `FiniteSet[T]`.
- [ ] Finish the Bernoulli pmf on `Bool`: wrap `bernoulli_is_pmf` as a `DiscretePMF[Bool]`, then prove `E(indicator) = p` and `Var(indicator) = p * (1 - p)`.
