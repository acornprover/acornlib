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
- `src/real/continuity_quartic.ac` defines `quartic_real(x) = square_real(x) * square_real(x)`, identifies it with `pointwise_mul(square_real, square_real)`, and proves it is continuous at each point and globally.
- `src/real/continuity_quintic.ac` defines `quintic_real(x) = quartic_real(x) * x`, identifies it with `pointwise_mul(quartic_real, identity_fn)`, and proves it is continuous at each point and globally.
- `src/real/continuity_sextic.ac` defines `sextic_real(x) = cube_real(x) * cube_real(x)`, identifies it with `pointwise_mul(cube_real, cube_real)`, and proves it is continuous at each point and globally.
