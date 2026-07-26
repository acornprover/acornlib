# Reduced Residue Sums

Claimants: [generalized totient divisibility](../../../verify-ai-claims/generalized-totient-divisibility/todo.md),
[totient preimages and least primes](../../../verify-ai-claims/totient-preimage-least-prime/todo.md).

`src/number_theory/totient.ac` has `count_coprime_to`, `nat_totient`, and the inclusion-exclusion
machinery; `wilson.ac` and `multiplicative_order.ac` use a `coprime_residues` list. What is missing
is summing an arbitrary function over those residues.

- [ ] Add a general sum over the reduced residues modulo `n`, parameterized by the summand.
- [ ] Prove the sum over the constant function one equals `totient(n)`.
- [ ] Define the power sums `phi_k(n)`, summing `a^k` over reduced residues.
- [ ] Prove `phi_0` agrees with `totient`.
- [ ] Prove the reflection `a <-> n - a` is an involution on reduced residues for `n > 2`.
- [ ] Prove the closed form `phi_1(n) = n * totient(n) / 2` for `n > 1`.
- [ ] Prove `phi_k` is multiplicative across coprime factors.
- [ ] Add least-witness definitions over the naturals, with existence supplied by a witness.
- [ ] Prove the preimage structure of `totient`: which `n` divide some `totient(m)`.
- [ ] Add existence of a prime congruent to `1 mod n`, at least via cyclotomic polynomials.
- [ ] Extend the reduced-residue API to sums weighted by a character.
