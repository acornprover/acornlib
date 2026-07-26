# Divisibility Set for a Generalized Euler Totient

Source: aimath `Number theory-02`, 1 Jun 2026. https://arxiv.org/abs/2606.01633
Status: resolved. Verification: author-checked preprint only, no external review, no formal certificate.
Value: feasibility high, uncertainty high, importance medium.

Claim: for `phi_k(n) = sum of a^k over 1 <= a <= n with gcd(a, n) = 1`, the set
`D_1 = { k >= 1 : phi_1(n) divides phi_k(n) for every n }` is exactly `{1, 3, 15}`.

The claim splits into two very different halves. Membership (`k = 1, 3, 15` always divide) is a
universally quantified divisibility statement and is the realistic first target. Exclusion (no other
`k` works) needs a counterexample `n` for each remaining `k`, which is a search obligation.

## Todo

- [ ] Define `phi_k(n)` as a sum of `k`th powers over the reduced residues below `n`.
- [ ] Connect it to the existing reduced-residue machinery so `phi_0` agrees with `totient`.
- [ ] Prove `phi_1(n) = n * totient(n) / 2` for `n > 1`, the standard closed form.
- [ ] Prove `phi_1(n)` divides `phi_3(n)` for every `n`.
- [ ] Prove `phi_1(n)` divides `phi_15(n)` for every `n`.
- [ ] State the exclusion half: for every other `k >= 1` some `n` fails.
- [ ] Check whether exclusion is provable, or belongs in `hard_problems/`.
- [ ] Record the outcome.

## Library demand

Feeds [reduced-residue-sums](../../translate-mathlib/baseline/reduced-residue-sums/todo.md).

- [ ] Power sums over the reduced residues modulo `n`, indexed uniformly in the exponent.
- [ ] The pairing `a <-> n - a` on reduced residues, and its consequences for odd power sums.
- [ ] Multiplicativity of `phi_k` across coprime factors.
