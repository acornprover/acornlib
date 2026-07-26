# Asymptotic Density

Claimants: [primitive sets](../../../verify-ai-claims/primitive-set-reciprocal-sum/todo.md),
[Erdos-Borwein binary digits](../../../verify-ai-claims/erdos-borwein-binary-digits/todo.md),
[totient preimages](../../../verify-ai-claims/totient-preimage-least-prime/todo.md).

`src/real/` already has limits, series, `log.ac`, `harmonic.ac`, and `supremum.ac`. The gap is the
vocabulary that asymptotic claims are stated in: density, almost-all quantification, and an explicit
epsilon form standing in for `o(1)`.

- [ ] Add limsup and liminf APIs for sequences and series.
- [ ] Add asymptotic notation and asymptotic comparison lemmas.
- [ ] Define the natural density of a set of naturals.
- [ ] Define logarithmic density, and relate it to natural density where both exist.
- [ ] Define almost-all quantification over the naturals in terms of density.
- [ ] Add an explicit epsilon form for `1 + o(1)` bounds, so statements avoid asymptotic notation.
- [ ] Prove convergence of `sum 1 / (2^n - 1)` by geometric comparison.
- [ ] Add sums of `1 / (a * log a)` over a finite set of naturals.
- [ ] Prove monotonicity of such sums under inclusion.
- [ ] Add suprema over a family of finite sets, for stating extremal sums.
- [ ] Add the base-`b` digit expansion of a real number in the unit interval.
- [ ] Prove the real digit expansion agrees with the natural-number base-`b` API.
- [ ] Add analytic-number-theory preliminaries where they naturally fit.
