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
- [x] Prove the complement of a set of density `d` has density `1 - d`, in
      `src/nat_density_complement_extremes.ac`. Stated as `upper_density(not p) = 1 -
      lower_density(p)`, which needs no `converges_to` construction and so is not blocked the way
      the natural-density form was.

      The route is `src/real_one_minus_seq.ac`: the tail supremum of a reflected sequence is the
      reflection of its tail infimum, proved at the level of the tails where it needs no limits
      at all, since reflection simply exchanges the two characterising properties. Only lifting
      that to the limit superior needs the limit machinery, and there it is a constant shift, so
      `limit_add_seq` against a constant sequence does it.

      The dual, `lower_density(not p) = 1 - upper_density(p)`, is in
      `src/nat_density_complement_lower.ac`, with `liminf_one_minus` in
      `src/real_liminf_one_minus.ac`. It is not proved again from the tails: reflection in one
      is an involution, so applying the limit-superior statement at the reflected sequence gives
      the limit-inferior one. Between the two, both one-sided densities of a complement are
      determined by those of the predicate with the roles exchanged, which is what gives the two
      equivalences between density one and complementary density zero.

      Complementing twice restoring the predicate needs both truth values written out by hand,
      and so does the shape of the statement: `not x = y` parses as `not (x = y)`, so the
      double-negation step has to be phrased through the complement itself rather than through a
      bare `not`.
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

      The digits and their range are in `src/real_base_digits.ac`: `real_digit(b, x, k)` is the
      scaled floor at one more power less `b` times the scaled floor at this one, and it always
      lies between zero and the base. The base is taken as a positive *integer* rather than a
      natural, since `floor` already lands in the integers and no embedding is then needed. No
      restriction to the unit interval is required for the range — it is only the reconstruction
      of `x` from its digits that wants it.

      Everything rests on one lemma, `floor_scale_bounds`: scaling by a positive integer moves
      the floor by that factor, up to a remainder below it. That remainder is the digit.

      Three gaps in the existing order API had to be filled. `src/real/` has no monotonicity or
      multiplicativity for `Real.from_int`, only the cancelling directions, so both are proved here
      through `Rat`. And `src/int/` has no discreteness: nothing turns `a < b` into
      `a + 1 <= b`, which every floor argument needs, so `int_lt_imp_add_one_lte` is proved from
      the definition of the order.

      The bridge to natural division is in `src/real_floor_div.ac`: the floor of a quotient of
      naturals is their quotient. That is what carries a statement about real digits to the
      natural-number base-`b` API, since a digit there is a division and a remainder. The division
      algorithm puts the quotient below the ratio and its successor above, which is exactly the
      characterisation of the floor.

      Four more order lemmas were missing and are proved there. `src/real/` has `div_le_of_mul_le`
      but not the strict mirror, and no strict order preservation for `Real.from_int`. Over the
      integers, `a < b + 1 implies a <= b` is the other half of discreteness, which needs the
      order unfolded rather than any existing lemma.

      The natural-number side is in `src/nat_div_div.ac`. `nat_digit(b, n, k)` shifts past the
      lower places and takes the remainder, with its range and the recursion the agreement will
      run on.

      That needed the iterated division law, `n.div(a * b) = (n.div(a)).div(b)`, which `src/nat/`
      does not state — a surprising gap, since it is what says a base expansion can be read one
      place at a time. It goes by writing each division through its decomposition: the two-step
      quotient becomes a single one, and the combined remainder is below the product because the
      inner remainder is below its own modulus by at least one step. `nat_mod_mul` records the
      matching remainder.

      What remains is the agreement statement itself, which now has both sides available, and the
      reconstruction of a real in the unit interval from its digit series.

## Monotonicity

`src/nat_density_mono.ac`. Both one-sided densities are monotone in the predicate, via monotonicity
of the tail supremum and infimum and then of the limit superior and inferior.

The tail-level halves need no limits at all — each is one application of a characterising
property, the same pattern the reflection lemmas use. Lifting to the invariants needs
`seq_lte_preserves_limit`, which was proved in `src/real/real_series.ac` and unexported.

- [x] Prove both one-sided densities monotone in the predicate.
- [x] Prove the upper density subadditive over a disjunction, in
      `src/nat_density_subadditive.ac`, with the limit superior half in `src/real_limsup_add.ac`.

      The tail-level half is again the cheap one: the tail supremum of a sum is at most the sum of
      the tail suprema, by one application of each characterising property. Lifting it needs the
      limit of a sum and `seq_lte_preserves_limit`, both now available.

      On the counting side, `or_pred` and the bound `count(p or r) <= count(p) + count(r)` did not
      exist and are added here.

## Superadditivity

`src/nat_density_disjoint.ac`, with the limit inferior half in `src/real_liminf_add.ac`. The
lower density is superadditive over a disjoint union, mirroring the subadditivity of the upper
density over an arbitrary one.

Disjointness turns the counting inequality into an equality, which is what makes the density
fractions add exactly rather than only bound each other.

- [x] Prove the lower density superadditive over a disjoint union.
