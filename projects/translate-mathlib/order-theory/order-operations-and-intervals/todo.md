# Order Operations and Intervals

Goal: make elementwise order manipulation routine rather than bespoke.

- [ ] Decide the exact interval preimage API for plain monotone maps; order-embedding interval preimages are in place

Status:

- `src/order_iso.ac` now factors order-isomorphism and order-dual interval membership transport through the shared order-embedding and antitone interval image/preimage lemmas from `src/order_maps.ac`.
- Downstream `min`/`max` users in the numeric lattice instances, real construction helpers, list order/lattice code, and analysis files were reviewed against the central `src/order.ac` API. The remaining uses are either thin instance wrappers over the generic facts or domain-specific uses of selected bounds, so no migration patch is needed.
- `src/order_cases.ac` now includes `>=` and `>` oriented aliases for the existing `min`/`max` lower-bound and upper-bound characterizations.
- `src/order.ac` now has central `min`/`max` commutativity aliases, associativity variants, right-commutativity, absorption variants, and two-sided plus one-sided monotonicity lemmas.
- `src/order.ac` now has central `le`/`ge` aliases for `min`/`max` endpoint bounds, selector iff lemmas, bound characterizations, one-sided strict constructors, one-sided non-strict constructors, and common two-/three-element bound existence lemmas.
- `src/order_interval.ac` now has endpoint consequences, endpoint membership, interval-subset, interval-bound monotonicity, and bounded-below / bounded-above projection lemmas.
- `src/order_interval.ac` now has endpoint iff/nonmembership facts, interval emptiness and nonemptiness facts, same-shape interval subset aliases, and boundedness facts for closed, open, and half-open intervals.
- `src/order_interval.ac` now has the core clamp API: endpoint selectors, fixed points, idempotence, element and endpoint monotonicity, and the closed-interval fixed-point characterization.
- `src/list/list_order.ac` now connects non-empty list minima and maxima to `closed_interval` and the predicate-boundedness API via interval-bound predicates and existence theorems.
- `src/list/list_order.ac` now has universal-property, concatenation, append, and membership-predicate bridge lemmas for non-empty list minima and maxima; `src/order_interval.ac` has closed-interval intersection lemmas using `max` and `min` endpoints.
