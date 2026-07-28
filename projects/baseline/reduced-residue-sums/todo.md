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

- [ ] Prove the closed form `phi_1(n) = n * totient(n) / 2` for `n > 1`. All the ingredients about
      the reflection are now in place, but the sum-level step is not: summing over a list is
      unchanged by permuting it, and the reflection permutes `coprime_residues(n)`. `src/list/` has
      `sum_reverse` and `sum_map_remove_one` but no statement that a permutation preserves a sum,
      and no way to say the reflection induces one. That is the missing piece, and it is a list
      lemma rather than a number-theoretic one.
- [ ] Prove `phi_k` is multiplicative across coprime factors. This needs the Chinese remainder
      bijection between reduced residues modulo `m * n` and pairs of reduced residues, which
      `src/number_theory/crt.ac` supports at the level of solutions but not as a bijection of lists.
- [ ] Extend the reduced-residue API to sums weighted by a character. This wants a character to be
      defined first; nothing in `src/` has one.
