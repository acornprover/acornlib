# Discrete Probability

Probability on a finite sample space, ahead of the general measure-theoretic API. Useful as a self-contained layer and a sanity check on later definitions.

Prerequisite: a finite-sum-over-`FiniteSet[T]` of reals helper. None currently exists in `acornlib`; only `sum_set` (disjoint union of sets) is in tree.

- [x] Stepping stone: `sum_remove_one` and `permutation_preserves_sum` for any `AddCommMonoid` in `list_permutation.ac`.
- [x] Add `finite_set_sum: FiniteSet[T] -> (T -> A) -> A` (generic over `AddCommMonoid`) in `finite_set_sum.ac`. Includes `finite_set_sum_eq_list_sum`, `finite_set_sum_empty`, and `finite_set_sum_add` (linearity in the function argument). Built via the unique-list strategy using `unique_same_contains_map_sum_eq` rather than the map-permutation lemma.
- [x] Add `finite_set_sum_insert`: inserting a fresh element adds its value to the sum.
- [x] Add `finite_set_sum_disjoint_union`: sum over `fs_union(a, b)` equals the sum of parts when `a` and `b` are disjoint.
- [x] Define `DiscretePMF[T]` as a `FiniteSet[T]` together with a nonnegative `T -> Real` function whose `finite_set_sum` is `Real.1`. Lives in `discrete_pmf.ac` with `is_pmf`, `discrete_pmf_mass_nonneg`, `discrete_pmf_total_mass`, and `discrete_pmf_ext`.
- [x] Define probability of an event as the sum of pmf values over the event subset. `pmf_event_prob` plus empty/support/disjoint-union laws live in `discrete_pmf.ac`.
- [x] Inclusion-exclusion for two discrete events: `pmf_event_prob_inclusion_exclusion` in `discrete_pmf.ac`, derived from disjoint-union additivity and the `B = (A ∩ B) ⊔ (B \ A)` decomposition.
- [x] Add general (not necessarily disjoint) union `pmf_event_prob_union` and the support-split identity `pmf_event_prob_support_split` (in `discrete_pmf.ac`), giving the complement law `P(A ∩ support) + P(support \ A) = 1`.
- [x] Add `pmf_event_prob_complement`: `P(support \ A) = 1 - P(support ∩ A)`, a direct corollary of the support-split identity.
- [x] Define expectation `discrete_expectation(pmf, X)` for a `T -> Real` random variable. Lives in `discrete_pmf.ac` as `finite_set_sum(pmf.support, mass_weighted_value(pmf.mass, X))`, where `mass_weighted_value(mass, rv, x) = mass(x) * rv(x)`.
- [x] Additivity of discrete expectation: `discrete_expectation_add` in `discrete_pmf.ac` proves `E(X + Y) = E(X) + E(Y)` via `finite_set_sum_add` plus pointwise `mass_weighted_value` decomposition and `function_extensionality`.
- [x] Add scalar scaling `E(c * X) = c * E(X)` for discrete expectation. `finite_set_sum_scalar_mul` (generic over `Semiring`) lives in `finite_set_sum.ac` and `discrete_expectation_scalar_mul` in `discrete_pmf.ac`.
- [ ] Add monotonicity of discrete expectation: `X(x) <= Y(x)` on the support implies `E(X) <= E(Y)`. Depends on finishing `finite_set_sum_le`.
- [x] Define `discrete_variance(pmf, x) = E((x - E(x))^2)` in `discrete_pmf.ac`, with pointwise helpers `square_fn` and `square_dev`.
- [x] Define `const_real_fn` and prove `discrete_expectation_const`: `E(const c) = c` for any discrete pmf.
- [x] Add `discrete_expectation_zero`: `E(0) = 0`, a direct corollary of `discrete_expectation_const`.
- [x] Add `discrete_expectation_neg`: `E(-X) = -E(X)`, via `discrete_expectation_scalar_mul` with scalar `-Real.1`.
- [x] Add `discrete_expectation_sub`: `E(X + (-1) * Y) = E(X) - E(Y)`, via `discrete_expectation_add` and `discrete_expectation_neg`. Stated through the existing `add_fn`/`mul_fn` combinators because `acornlib` has no `sub_fn` yet.
- [x] Add `discrete_variance_const`: the variance of a constant random variable is zero, via `discrete_variance_formula` and `discrete_expectation_const`.
- [x] Add `discrete_variance_neg`: variance is invariant under negation of the random variable, via `discrete_variance_formula`, `mul_neg_neg`, and `discrete_expectation_neg`.
- [x] Add `discrete_variance_scalar_mul`: `Var(c * X) = c^2 * Var(X)`, via `discrete_variance_formula` and `discrete_expectation_scalar_mul`.
- [x] Add `discrete_expectation_add_const`: `E(X + c) = E(X) + c`, via `discrete_expectation_add` and `discrete_expectation_const`.
- [x] Add `discrete_expectation_sub_const`: `E(X + (-c)) = E(X) - c`, a direct corollary of `discrete_expectation_add_const` with constant `-c`.
- [x] Add `discrete_variance_add_const`: `Var(X + c) = Var(X)`, via pointwise equality of `square_dev` since `(X(t) + c) - (mu + c) = X(t) - mu`.
- [x] Add `discrete_variance_sub_const`: `Var(X + (-c)) = Var(X)`, a direct corollary of `discrete_variance_add_const` with constant `-c`.
- [x] Prove the computational variance formula `Var(X) = E(X^2) - E(X)^2` (`discrete_variance_formula` in `discrete_pmf.ac`). Decomposes `square_dev(x, mu)` pointwise into `square_fn(x) + (-(mu+mu))*x + mu*mu` and finishes via linearity (`discrete_expectation_add`, `discrete_expectation_scalar_mul`, `discrete_expectation_const`). Uses `mu + mu` rather than a literal `Real.2` because the latter is not defined.
- [x] Define independence of two discrete events: `discrete_events_independent` in `discrete_pmf.ac`, with `discrete_events_independent_comm` and the union law `P(A ∪ B) = P(A) + P(B) - P(A) P(B)` (`discrete_events_independent_union`).
- [ ] Define independence of two discrete random variables (requires a joint pmf / product pmf API).
- [ ] Show `E(X * Y) = E(X) * E(Y)` for independent discrete random variables.
- [ ] Define the uniform pmf on a nonempty `FiniteSet[T]`.
- [ ] Define the Bernoulli pmf on `Bool` with parameter `p` and compute its expectation and variance. Done in `bernoulli_pmf.ac`: `bernoulli_mass`, `bernoulli_support` (a two-element `FiniteSet[Bool]`), `bernoulli_support_contains_all`, `bernoulli_support_sum = 1`, `bernoulli_mass_nonneg`, `one_sub_nonneg`, and `bernoulli_is_pmf` (via the helper `cond_zero_from_full` that handles the vacuous outside-support clause). Still to do: wrap as a `DiscretePMF[Bool]` (the no-arg `let satisfy` form times out during auto-search; needs a parametric form with a fallback for `p` outside `[0, 1]`), and prove `E(indicator) = p` and `Var(indicator) = p * (1 - p)`.
- [ ] Finish monotonicity of `finite_set_sum` over `Real`. In `finite_set_sum_real.ac` the helpers `pointwise_le`, `pointwise_le_at` (instantiate the pointwise hypothesis via the asserted def-equality `pointwise_le(f, g) = forall(s) { f(s) <= g(s) }`), and the cons step `list_map_sum_le_cons` all verify, and the base case and inductive step of `list_map_sum_le` verify. The only gap is the induction *closure*: deriving `p(list)` from `forall(l) { p(l) }` times out at 5s for a Real-inequality predicate over `List` (List-structural closure, unlike the working Nat closure in `partial_seq_lte`). Next: reindex `sum(map(l, f))` as a Nat `partial` over `l.length` via an equality list induction (equality closures verify), then route the inequality through `partial_seq_lte`. After that, prove `finite_set_sum_le` and the monotonicity of `discrete_expectation`.
