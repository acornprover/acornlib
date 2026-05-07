# Real Analysis

Goal: extend the current real library into the standard theorem toolkit used across undergraduate and graduate analysis.

- [ ] Add limsup/liminf APIs for sequences and series
- [ ] Extend the Cauchy criterion: series version (partial sums Cauchy iff series converges)
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
