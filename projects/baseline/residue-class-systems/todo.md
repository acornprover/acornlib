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
- [ ] Prove a covering system has density at least one, and a disjoint system at most one. The
      count of integers in a residue class below a bound now exists, in
      `src/nat_residue_count.ac`: a residue class is hit exactly once per block, so the count over
      a whole number of periods is the number of periods. What remains is summing that over a
      system and passing to the density.

      Two things about the shape. `mod_lt`, `div_of_decomp` and `mod_of_decomp` were all proved in
      `src/nat/division.ac` and unexported; `mod` is barely usable from outside without them, and
      they are exported now.

      The counting lemma was first written as a single statement with a conditional term,
      `count(q * m + j) = count(q * m) + (if a < j { 1 } else { 0 })`. That form sent proof search
      into a blowup — the module did not verify in twenty minutes. Split into the two cases it
      verifies in seconds, with a 36 ms average search. Conditional terms inside an arithmetic
      identity look worth avoiding entirely.
- [ ] Prove the density of a system bounded by `N` is attained by an explicit construction.
- [x] Add the least common modulus of a system, as `system_lcm`, and prove every modulus divides
      it. `system_modulus` in `crt_list.ac` is the product of the moduli, which is a common multiple
      but usually far from the least. With `all_moduli_divide_system_lcm`, `system_periodic` applies
      with the true period.
