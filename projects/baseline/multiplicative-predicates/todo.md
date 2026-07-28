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
- [x] Define the squarefree part and the square part of a natural, in `src/nat_square_part.ac`.
      Defined by maximisation rather than through prime valuations: the square part is the largest
      `d` with `d * d` dividing `n`, which `has_max` from `src/nat_bounded_max.ac` supplies since
      the family contains one and is bounded by `n`. No factorisation machinery is needed.

      At `n = 0` every square divides, so the maximum does not exist and every statement here
      carries `1 <= n`. The squarefree part is written with `div` rather than as a chosen cofactor
      so that the function is total even though its defining equation is not.
- [x] Prove every positive natural factors as a square times a squarefree number. Maximality of
      the square part is exactly what makes the cofactor squarefree: a square `c * c` dividing it
      would make `square_part(n) * c` a larger square divisor.
- [x] Characterise squarefreeness through the square part: a positive number is squarefree exactly
      when its largest square divisor is one, equivalently when it is its own squarefree part.
      This is the decision form of the decomposition.
- [x] Characterise the two extremes: a squarefree number is its own squarefree part with trivial
      square part, a positive square has its root as square part, and a positive number is a square
      exactly when its squarefree part is one.
- [ ] Prove the factorisation is unique. Existence is above, but uniqueness needs that `d * d`
      dividing `a * a * b` with `b` squarefree forces `d` to divide `a`, which is a statement about
      prime valuations and does not follow from the divisibility-only API used here.
- [ ] Prove a product is a square iff the squarefree parts multiply to a square.
- [ ] Relate `is_squarefree` to the prime valuation being at most one. The predicate is defined
      through divisibility in `src/nat_squarefree.ac`; connecting it to valuations needs the
      factorisation machinery.
- [x] Prove the interval condition passes from factors to product. Coprimality turns out not to be
      needed in either direction: a prime dividing a product divides one of the factors, which is
      Euclid's lemma, now exported from `number_theory` as `prime_divides_mul`.
- [x] Add the greatest prime factor and its basic properties. No `FiniteSet` of prime factors is
      needed after all: `has_max` from `src/nat_bounded_max.ac` applies directly to the predicate
      "is a prime dividing `n`", whose witness is `has_prime_divisor` and whose bound is `n` itself.
      Stated as a predicate rather than a function, since a natural below two has no prime factor and
      a total function would have nothing to return.
