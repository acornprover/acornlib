# Erdos 396

Goal: formalize library infrastructure around Erdos problem 396 without treating the project as an attempt to solve the open problem.

Problem 396 asks whether for every `k` there exists `n` such that `prod_{0 <= i <= k} (n - i)` divides `binom(2n, n)`.

## Blockers

No current blockers.

## Roadmap

- [ ] Prove additional checked witness examples beyond `erdos396_witness_zero_one`, starting with the `k = 1` case.
- [ ] Add concrete central-binomial values for small `n`, especially `central_binom(Nat.2)`, to support checked witness examples.
- [ ] Develop odd-prime consequences of `central_binom_kummer_digit_sum`, analogous to the binary valuation bound.
- [ ] Formalize the carry-count interpretation of Kummer's theorem when the needed digit/carry API is available.
- [ ] Strengthen the falling-product list API if downstream work needs permutation, prefix-list, or interval-list variants.
- [ ] Move reusable facts out of `src/number_theory/erdos396.ac` only when another module has a concrete use for them.
