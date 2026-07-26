# Integer Polynomial Identities

`src/polynomial/` has `base.ac`, `eval.ac`, `eval_mul.ac`, `eval_hom.ac`, and `global_factor.ac`, all
single-variable. Checking a claimed parametric solution family needs multivariate evaluation and a
way to conclude that a family is infinite.

- [ ] Add multivariate polynomial evaluation over a commutative ring.
- [ ] Prove evaluation is a ring homomorphism in each argument.
- [ ] Add substitution: evaluating at a tuple of polynomials yields a polynomial.
- [ ] Prove substitution commutes with evaluation at a point.
- [ ] Add a normal form for integer polynomials sufficient to decide identity.
- [ ] Prove a nonconstant integer polynomial in one variable has infinite image.
- [ ] Prove a nonconstant integer polynomial takes each value finitely often.
- [ ] Add the parametric-solution pattern: a tuple of polynomials satisfying an equation identically gives infinitely many solutions.
- [ ] Support integer-root and rational-root tests for small-degree cases.
