# Binary Digits of the Erdos-Borwein Constant

Source: aimath `Number theory-40`, 22 May 2026. https://arxiv.org/abs/2605.24160
Document: complete arXiv proof, submitted for publication.
Verification: author-checked only. No external review, no formal certificate.

Deliverable: the whole infinitude statement. Exhibiting finitely many occurrences of the block
verifies nothing.

Claim: the block `11` occurs infinitely often in the base-2 expansion of the Erdos-Borwein constant
`E = sum over n >= 1 of 1 / (2^n - 1)`.

The constant is a convergent real series that `src/real/real_series.ac` can express, and
`src/nat/base_b_extra.ac` and `digit_sum.ac` give base-`b` machinery for naturals. What is missing is
the bridge: digits of a *real* number rather than of a natural.

## Todo

- [ ] Prove the series defining `E` converges, and define `E` as its sum.
- [ ] Define the base-2 digit of a real number in `(0, 1)` at a given position.
- [ ] Prove the digit sequence recovers the number, so the definition is faithful.
- [ ] Define "the block `11` occurs at position `i`" in terms of two consecutive digits.
- [ ] State the claim as: for every `N` there is a position beyond `N` carrying the block.
- [ ] Read the preprint and record the mechanism it uses to force the block.
- [ ] Follow the preprint's mechanism through to the infinitude conclusion.
- [ ] Record the outcome.

## Library demand

Feeds [asymptotic-density](../../translate-mathlib/baseline/asymptotic-density/todo.md).

- [ ] Base-`b` digit expansion of a real number in the unit interval.
- [ ] Agreement between the real-digit expansion and the existing natural-number base-`b` API.
- [ ] Convergence of `sum 1 / (2^n - 1)`, by comparison with a geometric series.
