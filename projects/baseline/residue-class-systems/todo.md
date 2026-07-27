# Residue Class Systems

`src/number_theory/covering_system.ac` represents a system as `List[Pair[Nat, Nat]]` and supplies
`congruence_class_contains`, `covers_all_int`, and `is_covering_system`. Disjointness, modulus
conditions, and density all reuse that representation.

`src/residue_class_disjoint.ac` has disjointness, `src/residue_class_moduli.ac` the modulus
conditions and periodicity, and `src/residue_class_density.ac` the density.

Two notes for anyone working here. First, a recursive definition over the list whose `cons` branch
is a conjunction will not unfold as an equation — the goal is too large for proof search. State the
`cons` case as separate implications with a *single* conjunct as the conclusion, which is the shape
`covers_int_cons_left` and its neighbours already use in `covering_system.ac`. Second, name any
quantifier inside the `cons` branch, as `head_disjoint_from` does; leaving it inline defeats the
unfolding on its own.

- [x] Define pairwise disjointness of a residue-class system, with dropping a class and the
      uniqueness of the covering class.
- [x] Prove classes with a shared modulus and incongruent residues are disjoint.
- [x] Define the distinct-moduli condition, and the all-odd and all-greater-than-one conditions.
- [x] Define the density of a residue-class system as a sum of reciprocals of moduli, over `Rat`.
      Density is nonnegative and monotone under adding a class.
- [x] Add the common modulus condition and the periodicity it induces: a system whose moduli all
      divide `m` gives the same answer at any two integers congruent modulo `m`.

Remaining:

- [ ] Prove `a mod m` and `b mod n` are disjoint iff `gcd(m, n)` does not divide `a - b`. The
      forward direction is elementary and the ingredients are in `residue_class_disjoint.ac`; the
      converse needs the two-modulus case of the Chinese remainder theorem to produce the common
      member.
- [ ] Prove a covering system has density at least one, and a disjoint system at most one. Both
      need counting over one period, which `system_periodic` now makes meaningful but which still
      needs the count of integers in a residue class below a bound.
- [ ] Prove the density of a system bounded by `N` is attained by an explicit construction.
- [ ] Add the least common modulus of a system. `system_modulus` in `crt_list.ac` is the product,
      not the least common multiple, so this is a separate construction.
