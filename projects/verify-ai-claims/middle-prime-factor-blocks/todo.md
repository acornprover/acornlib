# Blocks Avoiding Middle-Sized Prime Factors, Erdos #451

Source: aimath `Number theory-06`, 18 Jun 2026. https://arxiv.org/abs/2606.19863
Status: partial. Verification: human-checked arXiv proof. No formal certificate.
Value: feasibility medium-high, uncertainty medium, importance medium.

Claim: for `n_k` the least integer above `2k` such that the falling product `(n_k - 1)...(n_k - k)`
has no prime factor in the open interval `(k, 2k)`, the paper establishes growth bounds on `n_k`.

This is the best-supported target in the queue on the library side. `src/number_theory/` already has
`falling_product.ac`, `falling_product_interval.ac`, and `falling_product_divisibility.ac`, which
were built for the retired `erdos396` project and apply directly here.

## Todo

- [ ] Define "has no prime factor in the interval `(k, 2k)`" for a natural number.
- [ ] Express the block `(n - 1)...(n - k)` using the existing falling-product API.
- [ ] Prove a prime in `(k, 2k)` divides the block iff it divides one of the `k` consecutive terms.
- [ ] Define `n_k` as the least integer above `2k` with the avoidance property.
- [ ] Prove `n_k` exists, so the definition is total.
- [ ] Record the exact growth bound claimed by the paper.
- [ ] State that bound; attempt the easier direction first.
- [ ] Record the outcome, noting which direction is proved and which remains open.

## Library demand

Feeds [binomial-and-falling-products](../../translate-mathlib/baseline/binomial-and-falling-products/todo.md)
and [multiplicative-predicates](../../translate-mathlib/baseline/multiplicative-predicates/todo.md).

- [ ] Prime factors of a falling product, in terms of the individual factors.
- [ ] Restriction of the prime factors of a number to an interval.
- [ ] Bertrand-style existence of a prime in `(k, 2k)`, which the avoidance condition makes nontrivial.
