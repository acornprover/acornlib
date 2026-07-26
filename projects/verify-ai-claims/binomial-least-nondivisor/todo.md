# Least Non-Divisor of a Central Binomial Coefficient, Erdos #731

Source: aimath `Number theory-38`, 27 Jun 2026. https://arxiv.org/abs/2606.29062
Status: variant. Verification: public proof; no independent review and no formal certificate located.
Value: uncertainty high, feasibility medium, importance medium.

Claim: for `A(n)` the least positive integer not dividing `binom(2n, n)`, there is a reasonable `f`
with `A(n) ~ f(n)` for almost all `n`. The recorded result proves this under a dyadic regularity
hypothesis, so it answers a variant rather than the original question.

`A(n)` itself is completely elementary and `src/combinatorics/binomial.ac` supplies `binom`. The
asymptotic conclusion is much harder than the definition, so the near-term value is a faithful
statement plus the elementary structure lemmas.

## Todo

- [ ] Define `A(n)` as the least positive integer not dividing `binom(2n, n)`.
- [ ] Prove `A(n)` is well defined, using a divisor that must fail.
- [ ] Prove `A(n)` is always a prime power, the standard first observation.
- [ ] Compute `A(n)` for small `n` and check against the published table.
- [ ] Record the exact dyadic regularity hypothesis the paper assumes.
- [ ] State the variant conclusion under that hypothesis, keeping the hypothesis explicit.
- [ ] State the original unconditional question separately and put it in `hard_problems/`.
- [ ] Record the outcome, in particular whether the paper's statement matches the problem as posed.

## Library demand

Feeds [binomial-and-falling-products](../../translate-mathlib/baseline/binomial-and-falling-products/todo.md).

- [ ] Prime-power valuation of `binom(2n, n)` via Kummer's theorem, building on `src/number_theory/kummer.ac`.
- [ ] A least-witness API for "smallest natural failing a decidable predicate".
- [ ] Almost-all quantification over the naturals, in terms of natural density.
