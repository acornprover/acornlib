# Preorders, Partial Orders, and Linear Orders

Goal: stabilize the base order hierarchy so later order-theoretic and ordered-algebraic code can depend on one standard API.

- [ ] Decide whether Acornlib needs a `Preorder` layer below `PartialOrder`

Status:

- `src/order.ac` now has central partial-order equivalences for two-sided bounds, disequality as failure of a comparison, strict comparisons as non-equal non-strict comparisons, and equality/strict disjunction variants.
- Linear-order trichotomy-style case splits are expanded in `src/order_cases.ac`, including equality-first trichotomy variants, reordered strict/non-strict disjunctions, and equality as the case where neither strict comparison holds.
- The generic comparison-case API now includes equality-last trichotomy variants matching the order used by existing numeric construction proofs.
- Asymmetric characterizations `lt_iff_lte_not_lte_swap` and `gt_iff_lte_swap_not_lte` are in `src/order.ac`.
- Unbundled order-data predicates and equality transport/extensionality lemmas now live in `src/order_relation.ac`, including strict-part and converse transport for partial-order and linear-order relations.
- The basic comparison pass now includes Mathlib-style implication aliases in `src/order.ac` and linear-order negation aliases in `src/order_cases.ac`.
- The central `src/order.ac` API now includes strict and non-strict `min`/`max` selector aliases plus lower-bound and upper-bound characterizations; `src/real/real_base.ac` imports its basic `min`/`max` facts from `order.ac`.
- The `order.ac` naming pass now includes central `le`/`ge` aliases for reflexivity, transitivity, antisymmetry, equality-to-bound lemmas, strict-to-nonstrict lemmas, negation lemmas, strict/equality decompositions, totality disjunctions, and failed-comparison consequences.
- The central `src/order.ac` API now includes `le`/`ge` aliases for equality substitution, mixed strict/non-strict transitivity, non-strict consequences of strict chains, flipped disequality hypotheses, and `not_eq` names for strict comparisons.
- `src/order_cases.ac` now has `le`/`ge` aliases for linear-order comparison-vs-negation equivalences.
- The central `src/order.ac` API now includes numeric-file-compatible aliases for strict irreflexivity, swapped strict-exclusion, mixed strict/non-strict transitivity, swapped totality disjunctions, strict `min`/`max` comparison facts, and `min`/`max` monotonicity in both `le` and `ge` forms.
- The central `src/order.ac` API now includes raw totality aliases such as `le_total` and `linear_order_total`, covering the generic content of existing numeric `*_total` facts.
- The generic order API now includes literal swapped `le`/`lt` disjunction aliases and Nat-style literal trichotomy aliases in `src/order.ac` and `src/order_cases.ac`.
- `src/order_interval.ac` now has Mathlib-style `le`/`lt` aliases for interval introduction/projection and clamp monotonicity, so downstream files can avoid choosing between construction-local endpoint names.
- `src/order_maps.ac` now has `apply`, `le`/`lt`/`ge`/`gt` embedding, identity, and composition aliases for monotone, antitone, strict monotone, strict antitone, order embedding, and order surjection facts.
- Numeric construction-local order names have been reviewed against the generic `PartialOrder` / `LinearOrder` API. The remaining unreplaced Nat names are genuinely successor- or arithmetic-specific rather than generic order facts.
