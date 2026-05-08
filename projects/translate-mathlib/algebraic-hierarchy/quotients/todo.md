# Algebraic Quotients

Goal: make quotient constructions systematic across groups, rings, and later modules.

- [ ] Define congruence relations for the remaining algebraic structures
- [ ] Add bundled quotient monoid and quotient group instances after the representative-level APIs are complete
- [ ] Support normal subgroups as quotient data
- [ ] Package quotient rings by ideals using the verified ideal quotient relation
- [ ] Add canonical projection morphisms and universal properties
- [ ] Support kernels and quotients-by-kernel constructions
- [ ] Connect quotients to the first isomorphism theorem
- [ ] Add simplification lemmas for quotient representatives
- [ ] Support transport of finiteness and order structure through quotients where natural
- [ ] Record migration targets where current code hand-simulates quotient reasoning

Status:

- Kernel quotient APIs now include commutativity lemmas for commutative monoid, additive commutative monoid, and additive commutative group homomorphism quotients.
- Normal-subgroup quotient APIs now include quotient multiplication commutativity for commutative groups.
