# Algebraic Quotients

Goal: make quotient constructions systematic across groups, rings, and later modules.

- [ ] Define congruence relations for the remaining algebraic structures
- [ ] Add bundled quotient monoid and quotient group instances after the representative-level APIs are complete
- [ ] Support normal subgroups as quotient data
- [ ] Package quotient rings by ideals using the verified ideal quotient relation
- [ ] Add canonical projection morphisms and universal properties
- [ ] Support kernels and quotients-by-kernel constructions
- [ ] Connect quotients to the first isomorphism theorem
- [ ] Add remaining simplification lemmas for quotient representatives beyond the verified ideal-quotient subtraction distribution/cancellation and negation/zero/product laws
- [ ] Blocked: prove the normal-subgroup quotient projected-power all-power law after the induction timeout is resolved
- [ ] Support transport of finiteness and order structure through quotients where natural
- [ ] Record migration targets where current code hand-simulates quotient reasoning

Status:

- Kernel quotient APIs now include commutativity lemmas for commutative monoid, additive commutative monoid, and additive commutative group homomorphism quotients.
- Kernel quotient APIs now include primitive monoid/group power operations and zero/successor/projection identity lemmas.
- Kernel quotient APIs now prove that powers of projected monoid and group representatives agree with projected powers.
- Normal-subgroup quotient APIs now include quotient multiplication commutativity for commutative groups and primitive power operations.
- Normal-subgroup quotient APIs now include the projected-power successor step for representatives and the first-power representative law.
- Group-kernel and normal-subgroup quotient APIs now include representative-level inverse-involution laws.
- Normal-subgroup quotient APIs now include the representative-level inverse-of-product law.
- Ideal quotient APIs now include representative-level negation/zero/product/subtraction simplification laws for projected representatives.
- Ideal quotient APIs now include representative-level subtraction distribution, reassociation, and cancellation simplification laws.
- `src/normal_subgroup.ac` now has the named `normal_subgroup_quotient_projected_power_law` predicate for the blocked all-power induction target.
