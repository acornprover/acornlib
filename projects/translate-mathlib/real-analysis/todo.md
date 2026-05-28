# Real Analysis

Goal: extend the current real library into the standard theorem toolkit used across undergraduate and graduate analysis.

- [ ] Add limsup/liminf APIs for sequences and series
- [ ] Add continuity theorems on intervals and subsets
- [ ] Develop one-variable differentiation
- [ ] Prove the mean value theorem and Taylor-style results
- [ ] Add Riemann integration and comparisons with measure-theoretic integration
- [ ] Develop the standard special functions `exp`, `log`, `sin`, and `cos`
- [ ] Support convex functions and standard analytic inequalities
- [ ] Add asymptotic notation and asymptotic comparison lemmas
- [ ] Develop power series and Fourier-analysis preliminaries
- [ ] Add multivariable calculus on Euclidean spaces

Status:

- `src/real/limits.ac` now has a reusable subsequence API for monotone unbounded index maps, including preservation of convergence, same-limit lemmas, and standard tail/every-`k`th/even/successor subsequence aliases.
- `src/real/bounded_seq.ac` introduces `is_bounded_seq`, a finite-prefix bound by induction, and proves convergent real sequences are bounded.
- `src/real/cauchy_criterion.ac` exposes `is_cauchy_seq` with the explicit ε-N form and proves the Cauchy criterion: a real sequence is Cauchy exactly when it converges to a real limit.
- `src/real/series_cauchy.ac` introduces `is_cauchy_series` (windowed ε-N form on finite blocks `a(k) + ... + a(m - 1)`) and proves the series Cauchy criterion: partial sums converge iff the series is Cauchy in the windowed sense; also proves the absolute form `is_cauchy_series(abs_fn(a)) implies is_cauchy_series(a)`.
- `src/real/continuity_algebra.ac` introduces a `continuous_condition_imp_continuous_at` helper and proves that composition and pointwise sum preserve continuity at a point and globally (`compose_continuous_at`, `compose_continuous`, `add_fns_continuous_at`, `add_fns_continuous`).
- `src/real/continuity_const_mul.ac` defines `const_mul_left`/`const_mul_right` (multiplication of a function by a fixed real constant on either side) and proves they preserve continuity at a point and globally; also proves agreement with `pointwise_mul(constant(c), f)` and `pointwise_mul(f, constant(c))`.
- `src/real/continuity_pointwise_mul.ac` proves that pointwise multiplication of real functions preserves continuity at a point (`continuous_at_pointwise_mul`) and globally (`continuous_pointwise_mul`), using the local absolute bound on a continuous function and `mul_close_from_close`.
- `src/real/continuity_pointwise_abs.ac` defines `pointwise_abs(f)(x) = f(x).abs` and proves it preserves continuity at a point and globally, using `abs_close_of_close`.
- `src/real/continuity_square.ac` defines `square_real(x) = x * x`, identifies it with `pointwise_mul(identity_fn, identity_fn)`, and proves it is continuous at each point and globally.
- `src/real/continuity_cube.ac` defines `cube_real(x) = x * x * x`, identifies it with `pointwise_mul(square_real, identity_fn)`, and proves it is continuous at each point and globally.
- `src/real/continuity_quartic.ac` defines `quartic_real(x) = x * x * x * x`, identifies it with `pointwise_mul(cube_real, identity_fn)`, and proves it is continuous at each point and globally.
- `src/real/continuity_sub_fns.ac` defines `sub_fns(f, g)(x) = f(x) - g(x)` directly on real-valued functions, identifies it with `add_fns(f, pointwise_neg(g))`, and proves it preserves continuity at a point and globally.
- `src/real/continuity_const_add.ac` defines `const_add_left(c, f)(x) = c + f(x)` and `const_add_right(f, c)(x) = f(x) + c` and proves they preserve continuity at a point and globally; also proves agreement with `add_fns(constant(c), f)` and `add_fns(f, constant(c))`.
- `src/real/continuity_const_sub.ac` defines `const_sub_left(c, f)(x) = c - f(x)` and `const_sub_right(f, c)(x) = f(x) - c` and proves they preserve continuity at a point and globally, via reduction to `const_add_left` of `pointwise_neg(f)` and `const_add_right(f, -c)`.
- `src/real/continuity_affine.ac` defines `affine_real(a, b)(x) = a * x + b`, identifies it with `const_add_right(const_mul_left(a, identity_fn), b)`, and proves it is continuous at each point and globally.
- `src/real/continuity_const_div.ac` defines `const_div_right(f, c)(x) = f(x) / c`, identifies it with `const_mul_right(f, c.inverse)`, and proves it preserves continuity at a point and globally.
- `src/real/continuity_pow.ac` defines `pow_real_fn(n)(x) = x.pow(n)`, identifies the zeroth power with the constant one and the successor power with `pointwise_mul(identity_fn, pow_real_fn(n))`, and proves every natural-number power function on the reals is continuous by induction.
- `src/real/continuity_monomial.ac` defines `monomial_real_fn(c, n)(x) = c * x.pow(n)`, identifies it with `const_mul_left(c, pow_real_fn(n))`, and proves every monomial function on the reals is continuous.
- `src/real/continuity_pointwise_pow.ac` defines `pointwise_pow(f, n)(x) = f(x).pow(n)`, identifies the zeroth power with the constant one and the successor power with `pointwise_mul(f, pointwise_pow(f, n))`, and proves that a natural-number power of a continuous real function is continuous.
- `src/real/continuity_general_monomial.ac` defines `general_monomial_fn(c, f, n)(x) = c * f(x).pow(n)`, identifies it with `const_mul_left(c, pointwise_pow(f, n))`, and proves that a constant times a natural-number power of a continuous real function is continuous.
