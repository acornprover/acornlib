# Binomial Coefficients and Falling Products

`src/combinatorics/binomial.ac` defines `binom`, and `src/number_theory/` has `falling_product.ac`,
`falling_product_interval.ac`, `falling_product_binomial.ac`, `falling_product_divisibility.ac`,
`kummer.ac`, `kummer_carry.ac`, and `legendre.ac`. This subtopic absorbs the general mathematics
formerly tracked by the retired `erdos396` project, which needed exactly this cluster.

`src/nat_least_failure.ac` has the least-witness API and `src/nat_least_non_divisor.ac` its first
application. `src/nat_central_binom_prime.ac` has the central binomial divisibility.

A note for anyone working here: the `number_theory` package exposes a curated interface, and much of
what looks available is not. `falling_product_eq_binom_mul_factorial` and the
`count_prime_factor`/`divides` bridge in `factorisation.ac` are both package-private. What is
exported and does the work is `central_binom_legendre`, `prime_factor_count_upto_step`, and
`prime_divides_iff_count_ne_zero`. Route arguments through those rather than through the falling
product.

- [x] Add a least-witness API for the smallest natural failing a decidable predicate. Built on the
      existing `is_min`, so the two notions share their minimality reasoning.
- [x] Prove `binom(2n, n)` is divisible by every prime in the interval `(n, 2n]`. Legendre's
      identity puts the valuation at the coefficient alongside two copies of the running total up
      to `n`; a prime above `n` contributes nothing to those, and the total up to `2n` is nonzero
      because the prime is one of the naturals it counts.
- [x] Prove the least non-divisor of any natural admits no splitting into coprime factors above
      one. That is the whole content of it being a prime power, since a number with two distinct
      prime factors splits exactly that way.

Remaining:

- [ ] Finish the prime power statement: a natural above one with no coprime splitting is a prime
      power. This is the factorisation half, and needs the canonical factorisation rather than
      divisibility alone.
- [x] Prove the prime factors of a falling product are exactly those of its factors. The valuation
      form `count_prime_factor_falling_product` adds up multiplicities but says nothing about which
      factor a prime came from; `prime_divides_falling_product_iff` supplies that, by Euclid's lemma
      applied along the product. Unblocked by exporting `prime_divides_mul` in an earlier pass.
- [ ] Relate the `p`-adic valuation of `binom(2n, n)` to carries, completing the Kummer bridge.
      Much of this is present in `kummer_carry.ac`; the gap is the exported surface.
- [ ] Relate falling-product divisibility to central-binomial divisibility.
- [ ] Strengthen finite interval sums and products, including partial sums over residue classes.
- [ ] Prove Bertrand's postulate, or the existence of a prime in `(k, 2k)`. The divisibility result
      above is the standard entry point: it bounds the product of the primes in the interval below
      by the central binomial coefficient divided by the contribution of the small primes.
- [ ] Add valuation sums over residue classes, the tool shared by these two targets.
