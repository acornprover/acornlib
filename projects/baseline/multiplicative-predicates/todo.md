# Multiplicative Predicates

`src/nat_square.ac` has the perfect-square predicate and `src/nat_squarefree.ac` the squarefree one,
both stated through divisibility. `src/number_theory/factorisation.ac`, `arithmetic_functions.ac`, and `divisor_sum.ac` cover the
multiplicative core. Missing are the square and squarefree predicates, and the ability to restrict
attention to prime factors lying in an interval.

- [ ] Prove a product of coprime squares is a square, and the converse.
- [ ] Define the squarefree part and the square part of a natural.
- [ ] Prove every natural factors uniquely as a square times a squarefree number.
- [ ] Prove a product is a square iff the squarefree parts multiply to a square.
- [ ] Relate `is_squarefree` to the prime valuation being at most one. The predicate is defined
      through divisibility in `src/nat_squarefree.ac`; connecting it to valuations needs the
      factorisation machinery.
- [ ] Define the set of prime factors of a natural lying in a given interval.
- [ ] Prove that predicate is multiplicative over coprime factors.
- [ ] Define smooth and rough numbers relative to a bound.
- [ ] Add the greatest prime factor function and its basic properties.
