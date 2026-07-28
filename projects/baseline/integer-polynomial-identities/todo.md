# Integer Polynomial Identities

`src/polynomial/` has `base.ac`, `eval.ac`, `eval_mul.ac`, `eval_hom.ac`, `map.ac`, `root_bound.ac`,
and `global_factor.ac`, all single-variable. Checking a claimed parametric solution family needs
multivariate evaluation and a way to conclude that a family is infinite.

`src/parametric_solutions.ac` supplies the second half, in a form that needs no polynomials at all.

- [x] Add the parametric-solution pattern: a family of candidates indexed by a parameter, all of
      which satisfy a condition, together with injectivity of the indexing. Stated abstractly over
      any parameter and solution type, so it covers a polynomial identity, a recurrence, or any
      other rule producing solutions from a parameter. Weakening the condition and reindexing along
      an injection both preserve it.

Remaining, with what each actually needs:

- [x] Prove a `Nat`-indexed embedding of solutions makes the solution set infinite. The missing
      criterion is now `set_infinite_of_injection` in `src/set_infinite.ac`: a covering list would
      have to hold one more distinct value than its own length. `infinitely_many_solutions` is the
      form a downstream claim states.
- [x] Prove a nonzero integer polynomial supported below `n` has fewer than `n` distinct integer
      roots, and hence takes each value finitely often. `src/polynomial/root_bound.ac` is stated
      over a `Field` throughout and the integers are not one; `src/polynomial_int_roots.ac`
      transports the bound along `int_to_rat_hom`. The rationalised polynomial is nonzero because
      the embedding is injective on coefficients, keeps the same support bound, and carries a
      distinct root list to a distinct one.

- [ ] Prove a nonconstant integer polynomial has infinite image. The value bound above is the input:
      each value has finitely many preimages, so an infinite domain forces an infinite image. Making
      that precise needs the image as a `Set` and a counting argument against
      `set_infinite_of_injection`.

- [x] Add a support bound for a difference of polynomials, in `src/polynomial_sub_support.ac`.
      Getting there needed `polynomial_support_bounded_by_intro` as well: the interface reads a
      support bound but had no way to build one from the pointwise vanishing condition, which is
      what a bound on a combination of polynomials has to do.
- [ ] Add multivariate polynomial evaluation over a commutative ring, prove evaluation is a ring
      homomorphism in each argument, add substitution, and prove substitution commutes with
      evaluation at a point. This is the largest single construction left in the baseline project.
      It is also a genuine design decision — exponent tuples, finitely supported maps, or iterated
      univariate polynomials all work and behave differently downstream — so it should be settled
      with a maintainer before being built rather than after.
- [x] Add a normal form for integer polynomials sufficient to decide identity, in
      `src/polynomial_int_identity.ac`. Two forms, both stated as decision procedures.

      In coefficient form, two polynomials supported below `n` are equal exactly when their
      first `n` coefficients agree: above the bound both vanish, so the finite initial segment
      carries everything.

      In evaluation form, two integer polynomials supported below `n` agreeing at `n` distinct
      points are equal. The difference is supported below `n` by the new subtraction bound, so
      were it nonzero it would have fewer than `n` distinct roots, and `n` points of agreement
      is already too many. This is the statement that `n` evaluations decide an identity between
      polynomials of degree below `n`, with no bound on the size of the coefficients.
- [ ] Support integer-root and rational-root tests. Note that CONTRIBUTING forbids extending these
      as a family indexed by degree; a general statement is wanted, not cases through degree three.
