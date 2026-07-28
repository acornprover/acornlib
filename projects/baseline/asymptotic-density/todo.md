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

- [x] Prove a predicate holding from some point on has density one, in
      `src/nat_density_eventually.ac`. Stated as upper and lower density both being one, which is
      the strongest form reachable without building a `converges_to`.

      The Archimedean property is what makes it go: for each size it gives a range long enough
      that the threshold is below that fraction of it, and from there on the density fraction is
      within that size of one, so the tail infimum is and so is the limit inferior.

      The counting bound is written `n <= count + threshold` rather than with a subtraction, so
      the induction step needs no case analysis on which side is larger.

      With `eventually_all_and` this gives that two predicates of density one hold together on a
      set of density one, which is what makes density one behave like a notion of almost-all.
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
- [x] Add the limit superior for bounded sequences, in `src/real_tail_supremum.ac` and
      `src/real_limsup.ac`. The tail supremum is the least bound on the values from an index
      onward, which completeness supplies since the tail is nonempty and inherits any bound on the
      sequence; it bounds every term from that index, nothing smaller does, and it does not
      increase as the index grows.

      The limit superior is where the tail suprema settle. It is built through the *negated*
      sequence of tail suprema, because `src/real/` has no dual of the monotone convergence
      principle and no existence theorem for infima, and negating turns the antitone sequence
      into the increasing one that principle is stated for. Two theorems already in
      `src/real/real_series.ac` had to be exported to reach it.

      `neg_reverses_lte` is proved locally: `src/real/` has additive monotonicity but does not
      state that negation reverses order, which every step of this construction needs.
- [x] Add the limit inferior, in `src/real_liminf.ac`. Obtained as the reflection of the limit
      superior of the negated sequence rather than by repeating the tail construction with
      infima, so the tail infimum and every property of it transfer along that reflection instead
      of being reproved.

      The classical comparison `liminf <= limsup` is proved. It does not follow from the two
      one-sided bounds directly: every tail infimum lies below every tail supremum, since the two
      tails overlap from the later of their indices onward, so a tail supremum bounds the whole
      sequence of tail infima and hence their limit. That step needed `ub_imp_limit_lte`
      exported.
- [x] Define upper and lower density from the limit superior and inferior of the density
      sequence, in `src/nat_density_extremes.ac`. Unlike the natural density these always exist,
      since the density sequence lies in the unit interval and so is bounded on both sides.
      Proved: both lie in the unit interval and the lower never exceeds the upper.
- [x] Prove upper and lower density agree with the natural density when it exists, in
      `src/nat_density_agrees.ac`. The two one-sided densities always exist, so this is what says
      they carry no more information than the natural density wherever that exists.

      The limit superior and inferior of a convergent sequence are proved equal to its limit, in
      `src/real_limsup_converges.ac` and `src/real_liminf_converges.ac`. Both go by an epsilon
      argument, closed with `lte_of_lte_add_eps`, which `src/real/` does not state though it
      supplies the ingredient.

      The liminf half is proved directly rather than by reflecting the limsup half, because
      reflecting would require *building* `converges_to(neg_seq(a), -l)`, and constructing a
      `converges_to` for a compound sequence expression from outside `src/real/` does not go
      through — the same obstruction recorded for the complement density below. Going through the
      tail infima needs no such construction.
- [x] Add asymptotic notation and asymptotic comparison lemmas, in `src/real_asymptotic.ac`.
      Big-O, little-o, and the fact that negligible implies boundedly dominated, with
      reflexivity, transitivity, closure under sums, and closure under positive scaling.

      Three shape decisions. The inner condition is named `dominated_from` so that no definition
      is more than one quantifier deep, which is the same move the graph conditions needed. The
      big-O constant is required positive, which loses nothing and keeps transitivity from
      needing a sign analysis. Two thresholds are combined by adding them rather than by taking a
      maximum, which avoids the typeclass `max` entirely; the small lemma `lte_of_add_lte` is
      what makes that work, and it is stated locally because `lte_trans` on the naturals is
      shadowed by the one on the reals in any module importing both.

      The sum lemma reuses `abs_add_le` from `src/fin_sum_abs.ac`, which is the only place the
      triangle inequality for `abs` is available. The product lemma needs the four-factor
      rearrangement, which existed only for the naturals; `src/comm_monoid_rearrange.ac` states
      it over a commutative monoid.
- [ ] Define logarithmic density, and relate it to natural density where both exist.
- [x] Add comparison tests for series convergence against a geometric series, in
      `src/real_geometric_comparison.ac`. Both ingredients turned out to exist already and only
      to be unexported: `comparison_test` and `geom_converges` in `src/real/real_series.ac`,
      along with `converges_mul_seq`. What was missing is the statement that ties them together,
      that a nonnegative series dominated termwise by a constant times a geometric sequence
      converges, and `partial_mul_seq`, which says the partial sums of a scaled sequence are the
      scaled partial sums.
- [ ] Add the base-`b` digit expansion of a real number in the unit interval, and prove it agrees
      with the natural-number base-`b` API.
