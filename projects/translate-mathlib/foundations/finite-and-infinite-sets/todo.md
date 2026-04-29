# Finite and Infinite Set Infrastructure

Goal: make finiteness a reusable notion across sets, algebra, and combinatorics.

Summary: list-backed finite sets, finite images, list-filter/list-set extraction lemmas, finite subset extraction from list-backed and existential finite witnesses, basic cardinality-at-most transfer, exact-cardinality transfer for injective images, disjoint finite-set unions, remove/intersection/difference cancellation cases, intersection/difference partition additivity, pigeonhole-style collision lemmas for finite sets and lists, the infinite-set predicate API, and injective preimage lemmas for list-finite codomains are now available.

- [ ] Finish direct subtraction-form exact-cardinality cancellation lemmas for finite-set intersection and difference; additive partition lemmas are available, but direct subtraction conclusions currently need a proof strategy that avoids verifier timeout
- [ ] Add finiteness transfer lemmas for substructures such as subgroups
- [ ] Replace ad hoc finite witnesses in existing proofs with the central API
