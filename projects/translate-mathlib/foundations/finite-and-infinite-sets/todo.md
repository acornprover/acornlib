# Finite and Infinite Set Infrastructure

Goal: make finiteness a reusable notion across sets, algebra, and combinatorics.

Summary: list-backed finite sets, finite images, list-filter/list-set extraction lemmas, finite subset extraction from list-backed sets, basic cardinality-at-most transfer, exact-cardinality transfer for injective images, disjoint finite-set unions, remove/intersection/difference cancellation cases, the infinite-set predicate API, and injective preimage lemmas for list-finite codomains are now available.

- [ ] Add subtraction-form exact-cardinality cancellation lemmas for finite-set intersection and difference when the needed Nat subtraction API is available
- [ ] Expand list-to-finite-set APIs with finite subset extraction lemmas from existential finite witnesses
- [ ] Add finite subset extraction lemmas from existential definitions
- [ ] Add a reusable pigeonhole-style interface for finite sets and lists
- [ ] Add finiteness transfer lemmas for substructures such as subgroups
- [ ] Replace ad hoc finite witnesses in existing proofs with the central API
