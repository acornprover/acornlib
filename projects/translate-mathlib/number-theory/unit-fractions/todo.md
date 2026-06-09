# Unit Fractions

Goal: build finite sums of distinct reciprocals and enough denominator-control
infrastructure to support Egyptian-fraction arguments.

- [ ] Lift the raw numerator bounds through rational reduction to prove actual
  numerator descent for nonterminal canonical greedy remainders.
- [ ] Prove denominator freshness or monotonicity for iterated greedy steps.
- [ ] Use the descent and freshness lemmas to prove bounded finite
  Egyptian-fraction existence results.

Status:

- `src/number_theory/unit_fraction.ac` defines `unit_fraction`, `unit_fraction_sum`,
  `positive_denominator_list`, `egyptian_denominator_list`, and
  `is_egyptian_fraction`, with constructors for the empty sum and singleton
  positive denominator lists.
- `positive_denominator_list_head` and `positive_denominator_list_tail` provide
  nonempty-list elimination for the recursive positive-denominator predicate.
- `positive_denominator_list_lower_bound_one` proves that positive denominator
  lists have lower bound one, and `positive_denominator_list_contains_positive`
  derives membership positivity through the generic lower-bound membership API.
- `unit_fraction_sum_nonnegative` proves nonnegativity of sums over positive
  denominator lists, and `unit_fraction_sum_cons_positive` gives positivity for
  nonempty sums built by consing a positive denominator.
- `unit_fraction_lte_of_lte` proves denominator monotonicity: if `0 < m <= n`,
  then `unit_fraction(n) <= unit_fraction(m)`.
- `unit_fraction_one` and `unit_fraction_mul_denominator` give the basic
  algebra of positive unit fractions.
- `real_unit_fraction` and `real_unit_fraction_sum` give the real-valued
  analogues, with `unit_fraction_to_real` and `unit_fraction_sum_to_real`
  bridging positive rational unit-fraction sums to real sums.
- `unit_fraction_greedy_step` and `unit_fraction_greedy_step_exists` prove that
  a positive rational below one admits a positive unit-fraction subtraction step
  whose remainder is strictly smaller than the original rational.
- `unit_fraction_bounded_step` and `unit_fraction_bounded_step_exists` strengthen
  this by recording `unit_fraction(n) <= q` and positivity of the remainder.
  `unit_fraction_bounded_step_denominator_positive` exposes the denominator
  positivity component for downstream closure proofs.
- `unit_fraction_bounded_denominator` records positive denominators whose unit
  fraction is at most a rational, and `unit_fraction_ceiling_step` defines the
  canonical greedy denominator as the least such denominator.
- `unit_fraction_ceiling_step_exists`,
  `unit_fraction_ceiling_step_bounded_denominator`,
  `unit_fraction_ceiling_step_minimal`, and
  `unit_fraction_ceiling_step_pred_lt` prove existence, validity, minimality,
  and the predecessor lower-bound property of the canonical ceiling step.
- `unit_fraction_ceiling_step_terminal_or_bounded` proves that a canonical
  ceiling step is either exact or gives a proper bounded subtraction step.
- `unit_fraction_remainder_raw_num` and
  `unit_fraction_remainder_raw_denom` name the unreduced remainder numerator and
  denominator for subtracting `1/n` from a rational. The raw denominator is
  positive for positive `n`, and a bounded denominator gives a nonnegative raw
  numerator (`unit_fraction_bounded_denominator_raw_num_nonnegative`).
- `unit_fraction_ceiling_step_gt_one_of_lt_one` proves that below-one canonical
  steps have denominator greater than one, and
  `unit_fraction_ceiling_step_raw_num_lt_num` proves the strict raw numerator
  descent `q.num * n - q.denom < q.num` for canonical ceiling steps below one.
- `egyptian_fraction_of_bounded_step_remainder` connects bounded-step induction
  to the existing fresh-denominator closure theorem: a fresh Egyptian
  representation of the remainder gives one for the original rational.
- `denominator_list_lower_bound` and `denominator_list_upper_bound` define
  recursive lower/upper bounds for denominator lists, with nil, cons, head, and
  tail lemmas for both predicates.
- `denominator_list_lower_bound_append`, `denominator_list_upper_bound_append`,
  `denominator_list_lower_bound_filter`, and `denominator_list_upper_bound_filter`
  prove that denominator bounds are preserved by append and filtering.
- `egyptian_denominator_list_cons` proves that consing a fresh positive
  denominator preserves Egyptian denominator lists, and
  `egyptian_fraction_add_fresh_unit` turns that into an Egyptian-fraction
  closure theorem for a represented rational.
- `egyptian_denominator_list_append` proves that disjoint Egyptian denominator
  lists append to an Egyptian denominator list, and
  `egyptian_fraction_add_disjoint` gives the corresponding closure theorem for
  adding two represented rational sums.
