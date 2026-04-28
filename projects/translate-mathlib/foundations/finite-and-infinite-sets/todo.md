# Finite and Infinite Set Infrastructure

Goal: make finiteness a reusable notion across sets, algebra, and combinatorics.

Summary: list-backed finite sets, finite images, basic cardinality-at-most transfer, and the infinite-set predicate API are now available. The remaining preimage-under-injective-map lemmas are ordinary follow-up work: first add finite witness-selection APIs, then use them to choose preimages from a finite codomain list.

- [ ] Add finite witness-selection APIs for choosing preimages from finite codomain lists
- [ ] Add preimage-under-injective-map lemmas using finite witness selection
- [ ] Add exact-cardinality transfer lemmas for injective images and finite-set operations
- [ ] Expand list-to-finite-set APIs with subset/filter extraction lemmas
- [ ] Add finite subset extraction lemmas from existential definitions
- [ ] Add a reusable pigeonhole-style interface for finite sets and lists
- [ ] Add finiteness transfer lemmas for substructures such as subgroups
- [ ] Replace ad hoc finite witnesses in existing proofs with the central API
