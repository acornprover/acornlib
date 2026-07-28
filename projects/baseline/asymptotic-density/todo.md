# Asymptotic Density

`src/real/` already has limits, series, `log.ac`, `harmonic.ac`, and `supremum.ac`. The gap is the
vocabulary that asymptotic claims are stated in: density, almost-all quantification, and an explicit
epsilon form standing in for `o(1)`.

`src/nat_counting_function.ac` has the counting function of a predicate on the naturals, and
`src/nat_density.ac` the natural density built on it, together with eventual quantification.

Two lemmas about the embedding of the naturals into the reals had to be proved here because nothing
in the library supplies them: `from_nat` is nonnegative and order preserving. `src/nat/interface.ac`
has `from_nat_zero`, `from_nat_one`, `from_nat_add`, and `from_nat_mul`, but nothing about order.
They belong in the ordered-semiring layer rather than in a density file, and moving them there would
be worth doing. `div_le_div_pos` is in the same position: `src/real/interface.ac` has
`mul_le_mul_pos_right` and `div_le_of_mul_le` but not the division form.

- [x] Define the counting function of a set of naturals, with monotonicity in both the range and the
      predicate, the bound by the range size, and the complement identity.
- [x] Define the natural density of a set of naturals as the limit of the counting ratio, and prove
      it is unique where it exists.
- [x] Prove the density sequence lies between zero and one and is monotone in the predicate.
- [x] Define almost-all quantification over the naturals. Two readings are given: having density
      one, and holding from some point on. The second is strictly stronger, since a predicate can
      fail infinitely often and still have density one so long as its failures thin out.

Remaining:

- [ ] Prove a predicate holding from some point on has density one. This needs the limit of `N / n`
      as `n` grows, which is the first genuinely analytic step in this branch.
- [ ] Prove the complement of a set of density `d` has density `1 - d`. Everything but the last
      step is now in `src/nat_density_complement.ac`: the counting identity
      `count_upto_complement`, the term-by-term reflection `density_seq_complement`, and
      `density_seq_complement_is_close`, which says the same tail bound serves both sequences.

      What remains is assembling those into `converges_to`. The obstruction turned out not to be
      limit arithmetic at all. `src/real/` reads tail bounds out of `converges_to` but never
      builds one, so `src/real_converges_to_intro.ac` adds `converges_to_intro`; that verifies on
      its own but will not instantiate at the partially applied `density_seq(not_pred(p))`, even
      with the hypothesis stated in exactly the form the theorem takes it. Two shapes that did
      matter along the way: `if` over a large `forall` hypothesis does not verify where stating
      the definitional equation alone does, and the commutativity rearrangement inside the
      reflection identity needs `add_swap_inner` cited rather than left to search.
- [ ] Add limsup and liminf APIs for sequences and series, so that upper and lower density can be
      defined when the density itself does not exist.
- [ ] Add asymptotic notation and asymptotic comparison lemmas.
- [ ] Define logarithmic density, and relate it to natural density where both exist.
- [ ] Add comparison tests for series convergence against a geometric series.
- [ ] Add the base-`b` digit expansion of a real number in the unit interval, and prove it agrees
      with the natural-number base-`b` API.
