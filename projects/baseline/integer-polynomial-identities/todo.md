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
- [ ] Prove a nonconstant integer polynomial takes each value finitely often, and has infinite
      image. The root bound `polynomial_root_list_length_lt_support_bound` already says a nonzero
      polynomial supported below `n` has fewer than `n` distinct roots, but the whole of
      `src/polynomial/root_bound.ac` is stated over a `Field`, and the integers are not one. Two
      routes: state the root bound over an integral domain, or build the `SemiringHom` from `Int` to
      `Rat` and transfer along it. `Rat.from_int` exists and `from_int_cancel` gives injectivity,
      but its additivity and multiplicativity are not stated anywhere, so either route starts with
      real work.
- [ ] Add multivariate polynomial evaluation over a commutative ring, prove evaluation is a ring
      homomorphism in each argument, add substitution, and prove substitution commutes with
      evaluation at a point. This is the largest single construction left in the baseline project.
      It is also a genuine design decision — exponent tuples, finitely supported maps, or iterated
      univariate polynomials all work and behave differently downstream — so it should be settled
      with a maintainer before being built rather than after.
- [ ] Add a normal form for integer polynomials sufficient to decide identity.
- [ ] Support integer-root and rational-root tests. Note that CONTRIBUTING forbids extending these
      as a family indexed by degree; a general statement is wanted, not cases through degree three.
