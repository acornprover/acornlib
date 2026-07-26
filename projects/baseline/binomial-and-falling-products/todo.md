# Binomial Coefficients and Falling Products

`src/combinatorics/binomial.ac` defines `binom`, and `src/number_theory/` has `falling_product.ac`,
`falling_product_interval.ac`, `falling_product_binomial.ac`, `falling_product_divisibility.ac`,
`kummer.ac`, `kummer_carry.ac`, and `legendre.ac`. This subtopic absorbs the general mathematics
formerly tracked by the retired `erdos396` project, which needed exactly this cluster.

- [ ] Prove the prime factors of a falling product are the union of those of its factors.
- [ ] Relate the `p`-adic valuation of `binom(2n, n)` to carries, completing the Kummer bridge.
- [ ] Prove `binom(2n, n)` is divisible by every prime in the interval `(n, 2n]`.
- [ ] Add a least-witness API for the smallest natural failing a decidable predicate.
- [ ] Prove the least non-divisor of any natural is a prime power.
- [ ] Relate falling-product divisibility to central-binomial divisibility.
- [ ] Strengthen finite interval sums and products, including partial sums over residue classes.
- [ ] Add smooth-number definitions and closure facts for divisors, products, and cofactors.
- [ ] Prove Bertrand's postulate, or the existence of a prime in `(k, 2k)`.
- [ ] Add valuation sums over residue classes, the tool shared by these two targets.
