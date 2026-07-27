# Multiplicative Predicates

`src/nat_square.ac` has the perfect-square predicate and `src/nat_squarefree.ac` the squarefree one,
both stated through divisibility. `src/nat_multiplicative.ac` has multiplicative and completely
multiplicative arithmetic functions. `src/nat_smooth.ac` has smooth and rough numbers, and
`src/nat_prime_interval.ac` restricts attention to prime factors lying in an interval.
`src/number_theory/factorisation.ac`, `arithmetic_functions.ac`, and `divisor_sum.ac` cover the
multiplicative core.

- [x] Define the perfect-square predicate and prove a product of squares is a square.
- [x] Define the squarefree predicate through divisibility and prove it passes to divisors.
- [x] Define multiplicative and completely multiplicative arithmetic functions, and prove the
      pointwise product of two of them is again one.
- [x] Define smooth and rough numbers relative to a bound, and prove a nonzero smooth number is
      coprime to every rough number at the same bound.
- [x] Define the prime factors of a natural lying in a given interval, in both the existential form
      and the universal one.

Remaining:

- [ ] Prove the converse for coprime squares: if a product of coprime numbers is a square then each
      factor is. The divisibility statement of `is_square` gives no way to split a root across
      coprime factors, so this needs the factorisation machinery.
- [ ] Define the squarefree part and the square part of a natural.
- [ ] Prove every natural factors uniquely as a square times a squarefree number.
- [ ] Prove a product is a square iff the squarefree parts multiply to a square.
- [ ] Relate `is_squarefree` to the prime valuation being at most one. The predicate is defined
      through divisibility in `src/nat_squarefree.ac`; connecting it to valuations needs the
      factorisation machinery.
- [ ] Prove `all_prime_factors_in` is multiplicative over coprime factors. One direction follows
      from `all_prime_factors_in_of_divides`; the converse needs a prime dividing a product to
      divide one of the factors.
- [ ] Add the greatest prime factor function and its basic properties. This needs a maximum over
      the prime factors, so it waits on those being available as a `FiniteSet`.
