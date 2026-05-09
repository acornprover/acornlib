# Algebraic Quotients

Goal: make quotient constructions systematic across groups, rings, and later modules.

- [ ] Define congruence relations for the remaining algebraic structures
- [ ] Add bundled quotient monoid and quotient group instances after the representative-level APIs are complete
- [ ] Support normal subgroups as quotient data
- [ ] Package quotient rings by ideals using the verified ideal quotient relation
- [ ] Add bundled canonical projection morphisms and universal properties once quotient structures are packaged
- [ ] Support kernels and quotients-by-kernel constructions
- [ ] Connect quotients to the first isomorphism theorem
- [ ] Audit remaining representative-level quotient simplification gaps before bundled quotient instances, excluding the verified ideal-quotient projection-facing associativity, distributivity, reassociation, cancellation, unary/binary, relation/zero-membership, projected-difference, and power aliases; the verified group/ring/monoid/additive-monoid/additive-group/semiring/linear-map kernel projection aliases and projection-equality iff lemmas; the verified semiring-kernel representative-respecting, identity, zero, associativity, commutativity, distributivity, and natural-power aliases; the verified monoid/group/ring kernel quotient natural-power addition, power-of-power, and one-power aliases; the verified group-kernel projected multiplication-cancellation aliases; the verified additive-group-kernel subtraction/cancellation and negation-involution aliases; the verified normal-subgroup inverse-cancellation, projection-identity/zero-fiber, projected multiplication-cancellation, left projected-difference relation/membership aliases, and right projected-difference membership aliases; and the verified ring-kernel subtraction/negation/product simplification, representative addition/subtraction cancellation, and projection-facing cancellation aliases
- [ ] Blocked: prove the normal-subgroup quotient projected-power all-power law after the induction timeout is resolved
- [ ] Support transport of finiteness and order structure through quotients where natural
- [ ] Record migration targets where current code hand-simulates quotient reasoning

Status:

- Kernel quotient APIs now include commutativity lemmas for commutative monoid, additive commutative monoid, and additive commutative group homomorphism quotients.
- Kernel quotient APIs now include primitive monoid/group power operations and zero/successor/projection identity lemmas.
- Kernel quotient APIs now prove that powers of projected monoid and group representatives agree with projected powers.
- Normal-subgroup quotient APIs now include quotient multiplication commutativity for commutative groups and primitive power operations.
- Normal-subgroup quotient APIs now include a canonical projection wrapper, equality/reflection with the normal-subgroup relation, and projection preservation for one, multiplication, inversion, zeroth powers, and first powers.
- Normal-subgroup quotient APIs now include the projected-power successor step for representatives and the first-power representative law.
- Group-kernel and normal-subgroup quotient APIs now include representative-level inverse-involution laws.
- Normal-subgroup quotient APIs now include projected representative identity, inverse, inverse-of-product, associativity, and commutativity laws.
- Ideal quotient APIs now include representative-level negation/zero/product/subtraction simplification laws for projected representatives.
- Ideal quotient APIs now include representative-level subtraction distribution, reassociation, and cancellation simplification laws.
- Ideal quotient APIs now include a canonical projection wrapper with preservation lemmas for zero, one, addition, multiplication, negation, subtraction, and natural powers.
- Ideal quotient APIs now include primitive natural-power operations and projected power laws (`0`, successor, first power, one power, power addition, and power-of-power).
- Ideal quotient APIs now include projection-facing aliases for quotient addition/multiplication commutativity, negation identities, negation over addition/subtraction, subtraction of negation, and negated-factor products.
- Ideal quotient APIs now include projection-facing aliases for quotient addition/multiplication associativity, distributivity over addition/subtraction, subtraction reassociation/cancellation, and natural-power simplification laws.
- Ideal quotient APIs now identify projection equality with ideal membership of representative differences, characterize the quotient-zero fiber by ideal membership, and provide forward/backward aliases relating projected representative differences, projection equality, quotient relations, and ideal membership.
- `src/normal_subgroup.ac` now has the named `normal_subgroup_quotient_projected_power_law` predicate for the blocked all-power induction target.
- Kernel quotient APIs now include canonical projection wrappers and projection-facing preservation/simplification aliases for group, ring, monoid, and additive-group homomorphism quotients.
- Additive-monoid kernel quotient APIs now include a canonical projection wrapper and projection-facing aliases for zero, addition, associativity, left/right zero identities, and commutativity in the commutative case.
- Monoid-kernel and group-kernel quotient APIs now include representative-level and projection-facing natural-power laws for exponent addition, iterated powers, and powers of quotient one.
- Group-kernel quotient APIs now include representative-level and projection-facing inverse-cancellation simplification laws.
- Group-kernel quotient APIs now include projection-facing cancellation lemmas and iff wrappers for cancelling common left or right projected factors.
- Additive-group-kernel quotient APIs now include representative-level and projection-facing subtraction/negation cancellation simplification laws, including left subtraction cancellation, quotient-zero negation, and negation involution.
- Normal-subgroup quotient APIs now include representative-level and projection-facing inverse-cancellation simplification laws.
- Ring-kernel quotient APIs now include representative-level and projection-facing subtraction identities, negation identities, negation/product simplifications, and multiplication distribution over subtraction.
- Ring-kernel quotient APIs now include representative-level and projection-facing addition/subtraction cancellation aliases for cancelling matching negated summands and subtracting either summand of a quotient sum.
- Semiring-kernel quotient APIs now include semiring congruence facts, quotient zero/one/addition/multiplication wrappers, and canonical projection preservation for zero, one, addition, and multiplication.
- Semiring-kernel quotient APIs now include representative-respecting add/mul aliases and projection-facing identity, zero, associativity, commutativity, and distributivity simplification laws.
- Semiring-kernel quotient APIs now include representative-level natural-power projection, exponent addition, iterated-power, and one-power laws.
- Semiring-kernel quotient APIs now include projection-facing aliases for natural-power projection, first power, one powers, exponent addition, and iterated powers.
- Ring-kernel quotient APIs now include primitive natural-power operations plus representative-level and projection-facing projection, first-power, one-power, exponent-addition, and iterated-power laws.
- Linear-map-kernel quotient APIs now include a canonical projection wrapper and projection-facing aliases for zero, addition, negation, scalar multiplication, additive associativity/commutativity, left/right zero identities, and identity scalar action.
- Normal-subgroup quotient APIs now include projection-facing identity/zero-fiber iff lemmas, membership/equality one-way aliases, and projected-difference-to-identity relation aliases.
- Normal-subgroup quotient APIs now include projection-facing cancellation lemmas and iff wrappers for cancelling common left or right projected factors.
- Normal-subgroup quotient APIs now include left projected-difference membership/relation aliases and projection-facing identity iff/one-way wrappers for `b⁻¹ * a`, plus matching right projected-difference identity iff/one-way wrappers for `a * b⁻¹` membership.
- Kernel quotient projection wrappers now include iff lemmas identifying equality of projected representatives with the corresponding kernel relation for semiring, linear-map, group, ring, monoid, additive-monoid, and additive-group homomorphism quotients.
- Normal-subgroup quotient APIs now include projection-facing iff and one-way aliases connecting left projected-difference identity with membership of `b⁻¹ * a`.
