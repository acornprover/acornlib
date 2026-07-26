# Asymptotic Density

Claimant: [Erdos-Borwein binary digits](../../../verify-ai-claims/erdos-borwein-binary-digits/todo.md).

`src/real/` already has limits, series, `log.ac`, `harmonic.ac`, and `supremum.ac`. The gap is the
vocabulary that asymptotic claims are stated in: density, almost-all quantification, and an explicit
epsilon form standing in for `o(1)`.

- [ ] Add limsup and liminf APIs for sequences and series.
- [ ] Add asymptotic notation and asymptotic comparison lemmas.
- [ ] Define the natural density of a set of naturals.
- [ ] Define logarithmic density, and relate it to natural density where both exist.
- [ ] Define almost-all quantification over the naturals in terms of density.
- [ ] Prove convergence of `sum 1 / (2^n - 1)` by geometric comparison.
- [ ] Add the base-`b` digit expansion of a real number in the unit interval.
- [ ] Prove the real digit expansion agrees with the natural-number base-`b` API.
- [ ] Add analytic-number-theory preliminaries where they naturally fit.
