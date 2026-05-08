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
- [ ] Prove normal-subgroup quotient projected-power successor/all-power laws without triggering the current timeout
- [ ] Support transport of finiteness and order structure through quotients where natural
- [ ] Record migration targets where current code hand-simulates quotient reasoning

Status:

- Kernel quotient APIs now include commutativity lemmas for commutative monoid, additive commutative monoid, and additive commutative group homomorphism quotients.
- Kernel quotient APIs now include primitive monoid/group power operations and zero/successor/projection identity lemmas.
- Kernel quotient APIs now prove that powers of projected monoid and group representatives agree with projected powers.
- Normal-subgroup quotient APIs now include quotient multiplication commutativity for commutative groups and primitive power operations.
