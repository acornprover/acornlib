# Divisibility Set for a Generalized Euler Totient

Source: aimath `Number theory-02`, 1 Jun 2026. https://arxiv.org/abs/2606.01633
Document: complete arXiv proof, submitted for publication.
Verification: author-checked only. No external review, no formal certificate.

Claim: for `phi_k(n) = sum of a^k over 1 <= a <= n with gcd(a, n) = 1`, the set
`D_1 = { k >= 1 : phi_1(n) divides phi_k(n) for every n }` is exactly `{1, 3, 15}`.

Deliverable: the whole equality. Membership alone verifies nothing, since the content of the claim is
that no other `k` works. If the exclusion direction turns out to be unreachable, this target is not
ready and should be removed rather than half-done.

## Todo

- [ ] Read the preprint and record its proof structure, both directions, before writing any Acorn.
- [ ] Confirm the exclusion argument is a general one rather than a finite check; if it is a finite check, record the bound it needs.
- [ ] Define `phi_k(n)` as a sum of `k`th powers over the reduced residues below `n`.
- [ ] Prove `phi_0` agrees with `totient`.
- [ ] Prove the closed form `phi_1(n) = n * totient(n) / 2` for `n > 1`.
- [ ] Prove `phi_k` is multiplicative across coprime factors.
- [ ] Membership: prove `phi_1(n)` divides `phi_3(n)` for every `n`.
- [ ] Membership: prove `phi_1(n)` divides `phi_15(n)` for every `n`.
- [ ] Exclusion: follow the preprint to rule out every other `k >= 1`.
- [ ] Assemble the set equality `D_1 = {1, 3, 15}`.
- [ ] Record the outcome, including any step of the preprint that did not survive formalization.

## Library demand

Feeds [reduced-residue-sums](../../translate-mathlib/baseline/reduced-residue-sums/todo.md).

- [ ] Power sums over the reduced residues modulo `n`, indexed uniformly in the exponent.
- [ ] The pairing `a <-> n - a` on reduced residues, and its consequences for odd power sums.
- [ ] Multiplicativity of `phi_k` across coprime factors.
