# Number Theory

Goal: push beyond the current arithmetic core into the standard theories that Mathlib treats as number theory.

- [ ] Support arithmetic and multiplicative functions
- [ ] Add continued fractions and their approximation theory
- [ ] Develop quadratic residues and quadratic reciprocity
- [ ] Add Pell equations and related Diophantine techniques
- [ ] Support valuations and valuation-theoretic number theory
- [ ] Build infrastructure for Bernoulli numbers and classical arithmetic sequences
- [ ] Add analytic-number-theory preliminaries where they naturally fit

Status:

- The primes and unique factorisation branch is complete: `src/nat/nat_factorisation.ac` covers prime predicates, the `prime_factorisation` list-of-primes representation, the fundamental theorem of arithmetic (`prime_factorisation_unique`), the `count_prime_factor` view with multiplicativity and the divisibility characterisation `divides_iff_count_prime_factor_le`, and the point-wise GCD/LCM characterisations `count_prime_factor_gcd` / `count_prime_factor_lcm` (with prime-power divisibility helpers `prime_pow_divides_iff`).
- The divisibility/gcd/lcm branch is complete. `Nat.gcd`, `Nat.lcm`, `Nat.coprime`, Bezout on `Nat`, and the matching `Int.divides`/`Int.gcd`/`Int.lcm`/`Int.coprime` APIs all live under `src/nat/` and `src/int/` (`nat_gcd.ac`, `nat_coprime.ac`, `nat_lcm.ac`, `nat_bezout.ac`, `int_divisibility.ac`, `int_lcm.ac`, `int_gcd_extra.ac`). `Nat.lcm` is defined via the equation `gcd * lcm = a * b` so a future `GCDMonoid`-style typeclass can lift the same characterisation.
- Euler's theorem in general form is proved: `euler(n, a)` in `src/nat/nat_totient.ac` establishes `a^φ(n) ≡ 1 (mod n)` whenever `n != 0` and `a.coprime(n)`. The proof goes through `mul_mod_residues_is_permutation` (already present), the new list-product helper `product_map_mul_mod` (`product(map(L, x -> (a*x).mod(n))) ≡ a^|L| * product(L) (mod n)` by induction), the specialisation `product_mul_mod_residues_congr` to `coprime_residues(n)`, the combined congruence `euler_product_setup`, and `cancel_coprime` against `product_coprime_residues_coprime`.
- The modular-arithmetic and congruences branch is complete. The lightweight `Nat.congr_mod` / `Int.congr_mod` predicates with full equivalence/addition/multiplication/power preservation live in `src/nat/nat_congruence.ac` and `src/int/int_congruence.ac`. Bridges to the existing `Zmod[n]` infrastructure (`int_mod_rel` from `src/zmod.ac`) are in `src/nat/nat_congr_int.ac`. Modular inverse (`int_modular_inverse_exists`, `nat_modular_inverse_exists`) lives in `src/nat/nat_modular_inverse.ac`. Two-modulus, three-modulus, and `List`-indexed CRT (`nat_crt_two_moduli`, `nat_crt_three_moduli`, `nat_crt_list`) plus uniqueness are in `src/nat/nat_crt.ac` and `src/nat/nat_crt_list.ac`. The Int-to-Nat residue extraction `int_has_nat_residue` lives in `src/int/int_residue.ac`. `Nat` is now a `CommSemigroup`/`CommMonoid` instance and a generic `list_product` helper is added in `src/list/list_product.ac`.
