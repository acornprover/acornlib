# Order Isomorphisms

Goal: make equivalent ordered structures interchangeable without ad hoc transport code.

Status:

- `src/order_iso.ac` now defines order-isomorphism pairs and bundled `OrderIso` values, with projection, extensionality, inverse-law, embedding, bijection, order-reflection, and identity-isomorphism lemmas.
- `src/order_iso.ac` now has inverse and composition order isomorphisms, strict and reverse-order projection lemmas, interval membership transport, and binary `min`/`max` transport.
- `src/order_iso.ac` now has image and preimage predicate wrappers plus lower-bound, upper-bound, interval-bound, bounded-below, bounded-above, and boundedness transport lemmas for order isomorphisms.
- `src/order_iso.ac` now has meet/join and inf/sup transport lemmas for `MeetSemilattice` and `JoinSemilattice`, including inverse-map versions.
- `src/order_iso.ac` now has `order_iso_apply` / `order_iso_unapply` function wrappers, identity/inverse/composition application laws, and wrapper comparison-reflection lemmas.
- `src/pair_order.ac` now gives an unbundled componentwise product-order API for `Pair[A, B]`: component projections, reflexivity, transitivity, antisymmetry, `is_partial_order_relation(pair_lte[A, B])`, new-pair iff lemmas, swap preservation/reflection, and componentwise map preservation/reflection for monotone, antitone, and order-embedding maps.
- `src/pair_order.ac` now also has the strict componentwise order `pair_lt`, its irreflexivity/transitivity/asymmetry facts, mixed strict/non-strict transitivity, strict component constructors, strict swap transport, and strict preservation/reflection for componentwise order-embedding maps.
- `src/order_iso.ac` now has unbundled function-space order-isomorphism support: pointwise `<=` / `<` predicates, codomain transport through an `OrderIso`, domain reindexing through an `OrderIso`, inverse laws, and preservation/reflection iff lemmas for pointwise non-strict and strict order.
- Function-space order-isomorphism support now includes pointwise projection and strict-transitivity lemmas, wrapper facts for `order_iso_apply` / `order_iso_unapply` across all four comparison forms, and identity/inverse/composition laws for pointwise codomain transport and domain reindexing.
- `src/order_iso.ac` now has order-duality as a standard isomorphism pattern through mutually inverse antitone maps, bundled `OrderDualIso` values, strict and non-strict reflection/preservation lemmas, inverse dual isomorphisms, and composition of two dual isomorphisms into an ordinary `OrderIso` pair.
- `src/order_iso.ac` now has `OrderDualIso` image/preimage predicate wrappers plus reversed interval, bound, boundedness, and binary `min`/`max` transport lemmas.
- `src/add_ordered_group.ac` now connects ordered additive groups with the order-isomorphism API: left and right translations are bundled `OrderIso` values, and negation is a bundled `OrderDualIso`.
- `src/ordered_group.ac` now connects ordered multiplicative groups with the order-isomorphism API: left and right multiplication by a fixed element are bundled `OrderIso` values with inverse-map projection lemmas.
- `src/ordered_field.ac` now has unbundled positive-scalar order-isomorphism support: left/right scalar multiplication reflect non-strict order under explicit inverse-nonnegativity, are order embeddings, have inverse laws, form `is_order_iso_pair`s when the scalar and its inverse are positive, and expose direct strict and non-strict comparison-iff wrappers.
- `src/ordered_field.ac` now also has unbundled negative-scalar order-dual-isomorphism support: left/right scalar multiplication and inverse multiplication form `is_order_dual_iso_pair`s under explicit inverse-negativity, with non-strict and strict comparison-reflection wrappers.

- [ ] Decide the proof-carrying API for bundled positive-scalar `OrderIso`s in ordered fields
- [ ] Continue ordered-algebra `OrderIso` coverage for bundled or transported scalar-map targets
- [ ] Blocked: add bundled product order isomorphisms once generic `Pair[A, B]: PartialOrder` instances render correctly
- [ ] Refactor representative transport-heavy proofs to use the new API
