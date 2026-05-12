# Monotone, Antitone, and Embedded Maps

Goal: give order-preserving maps a reusable interface.

- [ ] Decide the exact preimage API for plain monotone maps; order-embedding interval preimages are in place

Status:

- `src/real/rectangular_sum.ac`, `src/real/triangular_sum.ac`, and `src/real/double_sum.ac` now expose named sequence helpers plus shared `is_monotone` wrappers for rectangular row/column bounds, triangular truncation bounds, row/column partial sums, and square partial sums.
- `src/real/real_series.ac` now has reverse bridges from local increasing/decreasing sequence predicates to shared `is_monotone`/`is_antitone`, iff characterizations, distant-index aliases, first-term bound aliases, and monotone partial sums for nonnegative sequences.
- `src/real/limits.ac` now exposes `k.mul` and `k.add` as shared monotone maps and routes every-kth/tail convergence through the monotone-unbounded composition theorem.
- `src/real/double_limit.ac` now exposes row, column, flipped-column, and iterated row/column limit monotonicity through the shared `is_monotone` interface, with convergence aliases using the shared monotone bounded convergence theorem.
- `src/real/limits.ac` now bridges shared `is_monotone` maps into the local nondecreasing `Nat -> Nat` predicate and exposes monotone/unbounded subsequence convergence aliases.
- `src/real/supremum.ac` now bridges shared `is_monotone` maps into the local real-function nondecreasing predicate and exposes a monotone image-supremum bound alias through the existing nondecreasing theorem.
- `src/real/real_series.ac` now bridges the shared `order_maps` API into sequence convergence: monotone maps from `Nat` to `Real` imply the local increasing-sequence predicate, antitone maps imply the local decreasing-sequence predicate, and the monotone/antitone bounded convergence and limit-bound aliases are available without unpacking the local adjacent-step definitions.
- `src/ordered_field.ac` now has generic strict and reverse-order scalar multiplication aliases for positive, negative, nonnegative, and nonpositive scalars; `src/real/real_field.ac` now keeps its Real-specific scalar monotonicity wrappers by calling the shared ordered-field API.
- `src/order_maps.ac` now defines `is_order_surjection`, projection lemmas, identity order surjection, and composition of order-preserving surjections.
- `src/order_maps.ac` now has strict-order preservation and reflection for order embeddings, interval image lemmas for order embeddings, and antitone interval image lemmas with reversed endpoints.
- `src/order_maps.ac` now has strict monotone/antitone composition variants, function-level injectivity for order embeddings, reversed-order reflection aliases, and binary `min`/`max` image bounds for monotone, antitone, and order-embedding maps.
- `src/order_maps.ac` now packages image/preimage pairs as interval membership equivalences for order embeddings and proves that order embeddings preserve clamping.
- `src/add_ordered_group.ac` and `src/ordered_group.ac` now expose fixed-translation maps as monotone strict order embeddings, with preservation and reflection lemmas for non-strict and strict comparisons. Additive negation is now a shared strict antitone API.
- `src/ordered_field.ac` now exposes right and left scalar multiplication maps, proves they are monotone for nonnegative scalars and antitone for nonpositive scalars, and adds direct `mul_le_mul_of_nonneg_*` / `mul_le_mul_of_nonpos_*` comparison lemmas.
