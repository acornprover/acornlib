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
- `src/ordered_field.ac` now also has unbundled negative-scalar order-dual-isomorphism support: left/right scalar multiplication and inverse multiplication form `is_order_dual_iso_pair`s under explicit inverse-negativity, with non-strict, strict, and reverse-comparison reflection wrappers.
- Representative ordered-additive-group and ordered-group comparison-iff proofs now route through the bundled translation `OrderIso` API instead of reusing the underlying order-embedding facts directly.
- `src/pair_order.ac` now has diagonal-pair order embedding lemmas: the diagonal map `a |-> Pair.new(a, a)` preserves and reflects both non-strict and strict componentwise order on `Pair[A, A]`, with iff aliases.
- `src/pair_order.ac` now has strict-component decomposition lemmas: strict pair order forces some component to be strictly below, decomposes (forward direction) into a single-strict-component disjunction, and is implied by either single-strict-component case.
- `src/pair_order.ac` now has the iff form `pair_lt_iff_lte_and_some_strict_component` characterizing strict pair order as non-strict pair order together with at least one strictly-below component.
- `src/pair_order.ac` now has order-embedding reflection and iff lemmas for `pair_map_first` and `pair_map_second`: each single-component order embedding both preserves and reflects componentwise non-strict order.
- `src/pair_order.ac` now has antitone and mixed-variance `pair_map` lemmas: componentwise pair-order preservation under a monotone first map with an antitone second map, the symmetric variant, and reversed strict pair order under componentwise antitone order embeddings.
- `src/pair_order.ac` now has one-sided swap rearrangements for pair meet and join: swapping a single argument equals swapping the whole binary operation after swapping the other argument.
- `src/pair_order.ac` now has mixed diagonal-pair meet and join lemmas: the componentwise meet or join of a diagonal pair with an arbitrary pair simplifies componentwise, on either the left or the right.

- `src/pair_order.ac` now has bundled product order isomorphisms: `pair_map_is_order_embedding` (componentwise pair map of two embeddings is an embedding for the `Pair` componentwise order), `pair_map_is_order_iso_pair`, and the bundled `pair_order_iso` value combining two `OrderIso`s into an `OrderIso[Pair[A, B], Pair[C, D]]`, with `pair_order_iso_map` / `pair_order_iso_inv` projection lemmas. Depends on the new bundled `Pair` `PartialOrder`/lattice instances.
- `src/pair_order.ac` now has product order-isomorphism functoriality: `pair_map_identity_fn` and `pair_map_compose_fn` (componentwise pair map respects identity and composition as functions), and the bundled `pair_order_iso_identity`, `pair_order_iso_inverse`, and `pair_order_iso_compose` laws showing the product order isomorphism preserves identities, inverses, and composition.
- `src/pair_order.ac` now has product order-isomorphism application laws: `pair_order_iso_apply`, `pair_order_iso_unapply`, and `pair_order_iso_apply_new` evaluate the bundled `order_iso_apply` / `order_iso_unapply` of a product isomorphism componentwise, including on a constructed `Pair.new` input.

- [ ] Decide the proof-carrying API for bundled positive-scalar `OrderIso`s in ordered fields
- [ ] Add bundled ordered-field scalar-map `OrderDualIso` values once the positive-scalar bundling API is settled
