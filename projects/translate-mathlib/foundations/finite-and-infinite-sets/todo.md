# Finite and Infinite Set Infrastructure

Goal: make finiteness a reusable notion across sets, algebra, and combinatorics.

Summary: list-backed finite sets, finite images, basic cardinality-at-most transfer, exact-cardinality transfer for injective images, the infinite-set predicate API, and injective preimage lemmas for list-finite codomains are now available.

- [ ] Add exact-cardinality lemmas for finite-set insert, remove, union, intersection, and difference operations
- [ ] Expand list-to-finite-set APIs with subset/filter extraction lemmas
- [ ] Add finite subset extraction lemmas from existential definitions
- [ ] Add a reusable pigeonhole-style interface for finite sets and lists
- [ ] Add finiteness transfer lemmas for substructures such as subgroups
- [ ] Replace ad hoc finite witnesses in existing proofs with the central API
