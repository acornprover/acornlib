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

- [x] Prove that if `gcd(m, n)` does not divide `a - b` then `a mod m` and `b mod n` are disjoint.
      A common member is congruent to both residues, so the greatest common divisor of the moduli
      divides the gap between them; a failure of that divisibility rules out any common member.

- [x] Prove the converse: disjointness implies `gcd(m, n)` does not divide `a - b`, in
      `src/residue_class_crt.ac`. The two-modulus Chinese remainder theorem needed is not the
      coprime one and does not have to come from `crt.ac`: Bezout, which is exported as
      `nat_bezout`, writes the greatest common divisor as `u * m1 + v * m2`, and scaling by the
      multiple `k` carrying the gcd to the residue gap makes `r1 - k * u * m1` congruent to `r1`
      modulo `m1` and to `r2` modulo `m2`.

      With `classes_disjoint_of_gcd_not_divides` this closes the criterion in both directions:
      two congruence classes are disjoint exactly when the greatest common divisor of their
      moduli misses the gap between their residues.

      Two things cost time and are worth knowing. `Int.divides` puts the multiplier first, so
      unfolding it needs `c * m = z` rather than `m * c = z`. And the two rearrangements of the
      form `(a - b) - a = -b` both time out written directly; citing `add_swap_inner` with a
      zero padding term settles them, the same fix the density reflection identity needed.
- [x] Prove a covering system has density at least one, and a disjoint system at most one. Both
      halves are done, over the reals: `src/nat_covering_bridge.ac` for the covering direction
      and `src/nat_disjoint_system.ac` for the disjoint one. Together they pin the density of a
      system that is both at exactly one.

      The covering direction needed the count of a residue class below a bound
      (`src/nat_residue_count.ac`), its density (`src/nat_residue_density_value.ac`),
      subadditivity of the upper density (`src/nat_density_subadditive.ac`), and the Nat-to-Int
      congruence bridge. The disjoint direction needed superadditivity of the lower density over
      a disjoint union (`src/nat_density_disjoint.ac`), which is where disjointness turns the
      counting inequality into an equality.

      Disjointness of a system is written as a quantifier over suffixes rather than as a
      recursion returning `Bool`, since a `Bool`-valued `match` whose cons case is a conjunction
      sends proof search into a shallow explosion when unfolded.

      The `Rat` to `Real` conversion is in `src/system_density_real_eq.ac`, so both bounds now
      read as statements about `system_density` in `src/residue_class_density.ac`, and a system
      that is both covering and disjoint has density exactly one.

      The conversion rests on `Real.from_rat(modulus_weight(m)) = Real.1 / from_nat[Real](m)`,
      which needs no hypothesis on the modulus: the rational inverse of zero and the real
      quotient by zero are both zero by convention, so the two conventions agree on the nose.
- [x] Prove the density of a system bounded by `N` is attained by an explicit construction.
      `src/residue_full_system.ac` builds the system of every residue modulo `m` and computes its
      density directly: `full_residue_system(m, m)` has density exactly one whenever `m` is
      positive.

      No covering or disjointness argument is needed for it. The weights are all the same and
      there are exactly as many classes as the modulus, so the density is `m` copies of `1 / m` by
      a plain induction along the construction. Together with the bounds in
      `src/system_density_real_eq.ac`, which say a covering and disjoint system has density one,
      this shows that value is attained rather than merely bounded.
- [x] Add the least common modulus of a system, as `system_lcm`, and prove every modulus divides
      it. `system_modulus` in `crt_list.ac` is the product of the moduli, which is a common multiple
      but usually far from the least. With `all_moduli_divide_system_lcm`, `system_periodic` applies
      with the true period.
