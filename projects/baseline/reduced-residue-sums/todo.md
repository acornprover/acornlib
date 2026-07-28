# Reduced Residue Sums

`src/number_theory/totient.ac` has `count_coprime_to`, `nat_totient`, and the inclusion-exclusion
machinery; `wilson.ac` and `multiplicative_order.ac` use a `coprime_residues` list.
`src/reduced_residue_sum.ac` adds the general sum over those residues and
`src/reduced_residue_reflection.ac` the reflection that pairs them.

The sum is taken over the existing `coprime_residues(n)` list rather than over a new indexing, so it
inherits the length result `coprime_residues_length` for free. Every proof runs along the truncated
form `reduced_residue_sum_below`, matching how the residue list is built.

- [x] Add a general sum over the reduced residues modulo `n`, parameterized by the summand, with the
      recurrence in both the coprime and non-coprime cases, and the congruence lemma that lets a
      summand be replaced by any description agreeing on the residues.
- [x] Prove the sum over the constant function one equals `totient(n)`.
- [x] Define the power sums `phi_k(n)`, summing `a^k` over reduced residues.
- [x] Prove `phi_0` agrees with the sum of the constant one, hence with `totient`.
- [x] Prove the reflection `a <-> n - a` is an involution on reduced residues: it preserves
      coprimality, keeps residues strictly between zero and the modulus, and is free of fixed points
      except at `a + a = n`. That last is exactly why the pairing argument needs `n > 2`.

Remaining:

- [x] Reindex a reduced residue sum along a permutation of the residue list. `permutation_preserves_sum`
      already existed in `src/list/list_permutation.ac` but was not exported, and the *mapped*
      version needed here did not exist at all; both are now available as
      `permutation_preserves_mapped_sum`.

- [ ] Prove the closed form `phi_1(n) = n * totient(n) / 2` for `n > 1`. The sum-level step is now
      available as `reduced_residue_sum_reindex`, and every fact about the reflection is proved.
      What remains is discharging its hypothesis — that reflecting permutes `coprime_residues(n)` —
      which needs `coprime_residues_all_coprime`, `coprime_residues_unique`, and
      `coprime_residues_contains_intro`. All three exist in `src/number_theory/totient.ac` but the
      `number_theory` interface exports only `coprime_residues_length`.
- [ ] Prove `phi_k` is multiplicative across coprime factors. This needs the Chinese remainder
      bijection between reduced residues modulo `m * n` and pairs of reduced residues, which
      `src/number_theory/crt.ac` supports at the level of solutions but not as a bijection of lists.
- [ ] Extend the reduced-residue API to sums weighted by a character. This wants a character to be
      defined first; nothing in `src/` has one.
