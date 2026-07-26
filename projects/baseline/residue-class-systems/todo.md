# Residue Class Systems

`src/number_theory/covering_system.ac` represents a system as `List[Pair[Nat, Nat]]` and supplies
`congruence_class_contains`, `covers_all_int`, and `is_covering_system`. Disjointness, modulus
conditions, and density all reuse that representation.

- [ ] Define pairwise disjointness of a residue-class system.
- [ ] Prove `a mod m` and `b mod n` are disjoint iff `gcd(m, n)` does not divide `a - b`.
- [ ] Prove disjointness is preserved under dropping a class.
- [ ] Define the distinct-moduli condition on a system.
- [ ] Define the all-odd and all-greater-than-one conditions on the moduli.
- [ ] Define the density of a residue-class system as a sum of reciprocals of moduli.
- [ ] Prove a covering system has density at least one.
- [ ] Prove a disjoint system has density at most one.
- [ ] Prove the density of a system bounded by `N` is attained by an explicit construction.
- [ ] Add the least common modulus of a system and the periodicity it induces.
