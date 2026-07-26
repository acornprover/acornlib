# Odd-Prime Primitive-Root Existence

Design note: `Zmod[n]` is currently only a commutative ring, while bundling the
canonical coefficient map with a value-parameter modulus exposes dependent-type
index mismatches. Choose between a proof-indexed prime-residue field wrapper and
a conditional field interface on `Zmod[n]`; either choice must also supply a
canonical integer coefficient homomorphism.

- [ ] Specialize homomorphic polynomial root transport to roots modulo a prime
- [ ] Show some unit escapes each proper prime-power exponent bound
- [ ] Obtain a unit carrying each prime-power factor of `p - 1` in its order
- [ ] Combine the prime-power witnesses into an element of order `p - 1`
- [ ] Prove the resulting full-order element covers every unit modulo `p`
- [ ] Construct an order-`p - 1` unit generator for every odd prime
- [ ] Remove the explicit generator hypothesis from Euler's criterion
- [ ] Choose an option-valued or zero-default polynomial degree convention
- [ ] Restate the support-bound root theorem in terms of polynomial degree
- [ ] Equip prime residue classes with a field structure and a canonical coefficient homomorphism
