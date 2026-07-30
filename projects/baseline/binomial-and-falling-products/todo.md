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
- [x] Relate the `p`-adic valuation of `binom(2n, n)` to carries. The note about the exported
      surface was wrong: every theorem in `kummer_carry.ac` is already exported, and
      `central_binom_valuation_eq_addition_carry_count` is exactly the statement wanted. Only the
      internal algebra helpers in `kummer.ac` are unexported, which is right.
- [x] Relate falling-product divisibility to central-binomial divisibility, in
      `src/nat_prime_central_binom.ac`. A prime with `n < p <= 2n` is one of the factors of the
      falling product `2n * (2n - 1) * ... * (n + 1)`, and that product is the central binomial
      coefficient times `n!`. The prime cannot come from the factorial, so it divides the
      binomial coefficient.

      Separating the two halves needed `prime_divides_factorial_imp_lte`, which nothing in
      `src/number_theory/` supplied. `falling_product_eq_binom_mul_factorial` existed but was
      unexported, and is now.
- [ ] Strengthen finite interval sums and products, including partial sums over residue classes.

      The residue-class half is in `src/nat_residue_range_sum.ac`, over any commutative additive
      monoid. `residue_range_sum` is the partial sum of a summand masked to one class, and
      `range_sum_eq_residue_class_sums` decomposes a range sum into the sum of its class partial
      sums: every index below the limit lies in exactly one class, so summing the classes recovers
      the whole.

      The induction is on the limit, where the new index lands in a single class. What makes that
      step cheap is `point_fn`, the summand supported at one index: the increments the classes
      receive are exactly the point summand at the residue of the new index, so summing them
      collapses to one term. `range_sum_point_fn` needs no fresh induction — the range splits at
      the point and just past it, the two outer parts vanish termwise, and the middle is a single
      term.

      Two conditionals appear, in `point_fn` and `residue_summand`, and each is confined to its
      own definition with an in-case and an out-of-case lemma. Nothing downstream unfolds either,
      which is what keeps a conditional summand from sending proof search into a blowup.

      The products half is in `src/nat_range_prod.ac`. Nothing in `src/` had a product of values
      over a range or over a finite set — only the Cartesian `finite_set_product` — so
      `range_prod` is new, stated over any commutative monoid, with the recurrence, congruence,
      the split at a midpoint, the pointwise product, and the one factor.

      Two statements are specific to the naturals and are what a divisibility argument over an
      interval runs on: every factor divides the product, and a product of positive factors is
      positive. The first is the entry point for the Bertrand target, where the primes in
      `(n, 2n]` each have to divide the central binomial coefficient and then so does their
      product — though that step still needs their distinctness turned into coprimality.

      `shift_fn` in `src/nat_range_sum.ac` is pure reindexing but carries an `AddCommMonoid`
      constraint it never uses, so the multiplicative split needs its own `prod_shift_fn`.
      Relaxing the constraint on `shift_fn` would remove the duplication and is worth doing, but
      it touches a definition other modules already use.
- [ ] Prove Bertrand's postulate, or the existence of a prime in `(k, 2k)`. The entry point is now
      available as `prime_in_interval_divides_central_binom`. What remains is the product bound:
      the primes in `(n, 2n]` are distinct and each divides the central binomial coefficient, so
      their product does, which needs products over a set of primes and a size estimate for the
      central binomial coefficient.

      The product bound itself is done, in `src/nat_pairwise_coprime_divides.ac`, in both a list
      and a range form: a product of pairwise coprime divisors is a divisor. Distinctness alone
      says nothing about a product, and `coprime_of_distinct_primes` is what turns distinct primes
      into coprime ones, so this is the missing link rather than the size estimate.

      Everything it needs existed inside `src/number_theory/` and none of it was exported:
      `coprime_mul`, `coprime_comm`, `coprime_one_right`, `pairwise_coprime_cons_imp`, and
      `coprime_with_all_imp_coprime_product`. `coprime_divisors_product_divides` in
      `src/nat_least_non_divisor.ac` is the two-factor case and was already reachable.

      `all_divide` is written as a quantifier over membership, not as a recursion returning
      `Bool`: the recursion whose cons case is a conjunction times out when unfolded, the same
      shape the residue-class systems ran into.

      The list of primes in an interval turns out not to be needed. `src/nat_prime_interval_product.ac`
      takes the product over the whole interval of `prime_or_one`, which is a natural at a prime
      position and one elsewhere. A factor of one is coprime to everything and divides everything,
      so composite positions ride along at no cost, and the product over `[a, a + n)` divides
      anything every prime in that interval divides. No list has to be built and no primality
      test has to be decided.

      `central_binom_prime_interval_product_divides` is that at the interval Bertrand uses: the
      product of the primes above `n` and at most `2n` divides `central_binom(n)`.

      So the divisibility half of Bertrand is complete, and the upper bound on the central
      binomial coefficient is in `src/nat_central_binom_bound.ac`:
      `central_binom(n) <= 4^n`.

      That goes by the recursion `central_binom(n + 1) <= 4 * central_binom(n)` rather than
      through the binomial theorem, so no sum over a row is needed. Pascal twice and the symmetry
      of an odd row reduce it to the one piece of unimodality required, that the coefficient just
      past the middle of an even row is no larger than the central one, and
      `binom_complement_absorption` gives that: `n` times the central coefficient is `n + 1` times
      the next one.

      Cancelling a positive factor from an inequality has to go through the strict version by
      contradiction — `src/nat/` has `lte_mul_both` and `lt_mul_both` but no cancellation
      direction for `<=`.

      What remains is the *lower* bound on the product side: a bound on the primorial or on the
      prime-power contributions large enough that assuming the interval empty contradicts
      `4^n`.

      The entry point for the primorial bound is in `src/nat_binom_row_bound.ac`: every binomial
      coefficient is at most two to its row index, since it is one term of a row summing to a
      power of two. That needed the binomial theorem at one and one, where every power collapses,
      and the fact that a term of a natural-number sum never exceeds the sum — which nothing
      states, though every bound of one term by a total needs it.

      `src/nat_odd_binom_bound.ac` sharpens that to the bound the argument actually uses:
      `binom(2m + 1, m) <= 4^m`. The two middle coefficients of an odd row are equal, so together
      they are twice one of them, and together they are at most the row total of `2 * 4^m`. That
      needed the two-term version of the same sum bound.

      The odd analogue is in `src/nat_odd_prime_product.ac`, and with it the step a primorial
      induction turns on: the product of the primes above `m + 1` and at most `2m + 1` is at most
      `4^m`. It divides the middle coefficient of that row, and that coefficient is bounded.

      The divisibility mirrors `prime_in_interval_divides_central_binom` — such a prime is a
      factor of the falling product, which is the coefficient times `(m + 1)!`, and the prime is
      too large to have come from the factorial. Symmetry then moves it from index `m + 1` to the
      middle index `m`.

      The primorial itself is in `src/nat_primorial.ac`, again over the whole range with
      `prime_or_one` contributing one at composite positions, so nothing is enumerated. It has the
      two steps the induction needs: `primorial_odd_split` cuts the primes up to `2m + 1` into
      those up to `m + 1` and the interval above it, which is exactly what the odd bound covers;
      and `primorial_composite_step` says a composite position does not grow the product, with
      `double_is_composite` supplying the even case.

      Both are stated at a successor rather than through a predecessor, since `Nat` has none.

      What is still missing is only the strong induction that assembles them: at `0` and `1` the
      primorial is one, an even position above two drops to the one below, and an odd position
      splits.
- [ ] Add valuation sums over residue classes, the tool shared by these two targets.
