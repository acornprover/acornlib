# Erdos 396

Goal: formalize library infrastructure around Erdos problem 396 without treating the project as an attempt to solve the open problem.

Problem 396 asks whether for every `k` there exists `n` such that `prod_{0 <= i <= k} (n - i)` divides `binom(2n, n)`.

## Blockers

No current blockers.

## Roadmap

- [ ] Add the basic problem-facing definitions in `src/number_theory/erdos396.ac`: `central_binom(n)`, `falling_product(n, k)`, and `erdos396_witness(k, n)`.
- [ ] Prove the basic falling-product API: `falling_product_zero`, `falling_product_suc`, and `falling_product_nonzero`.
- [ ] Prove prefix and divisibility facts for falling products, including `falling_product_prefix_divides` and `erdos396_witness_prefix`.
- [ ] Prove the valuation bridge `erdos396_witness_of_prime_valuation_bounds` using `divides_iff_count_prime_factor_le`.
- [ ] Specialize Legendre's binomial valuation to central binomial coefficients as `central_binom_legendre`.
- [ ] Specialize the Kummer digit-sum identity to central binomial coefficients as `central_binom_kummer_digit_sum`.
- [ ] Prove the product valuation formula `count_prime_factor_falling_product`.
- [ ] Add base-shift digit-sum support such as `digit_sum_mul_base` and the binary specialization needed to simplify the Kummer central-binomial identity.
- [ ] Add small checked witness examples for low `k` once the witness predicate and falling-product API are in place.
- [ ] Keep problem-specific definitions in a narrow module and move only reusable facts, such as falling-product or central-binomial API, into broader files when downstream use justifies it.
