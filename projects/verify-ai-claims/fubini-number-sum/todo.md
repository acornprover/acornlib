# Kurkov's Fubini-Number Sum Identity

Source: aimath `Combinatorics-38`, 8 Jul 2026. https://oeis.org/A000670
Status: resolved. Verification: audited proof plus exhaustive checker; not externally refereed.
Value: feasibility high, uncertainty high, importance low-medium.

Claim: for the Fubini numbers `a(n)` (ordered set partitions, OEIS A000670),
`a(n) = sum of A284005(k) for 0 <= k <= 2^(n-1) - 1`, for every `n > 0`.

A finite identity with no asymptotics, so the whole obligation is definitional plus induction. The
work is almost entirely in pinning down the two sequences: `A284005` is defined through a binary
expansion, so the index set `0 .. 2^(n-1) - 1` has to be handled as a range with digit structure.

## Todo

- [ ] Record precise definitions of A000670 and A284005 from OEIS, including the offset convention.
- [ ] Define Fubini numbers, either by the ordered-set-partition count or by the standard recurrence.
- [ ] If both are defined, prove they agree.
- [ ] Define A284005 over the naturals via its binary characterization.
- [ ] Define the partial sum over `0 .. 2^(n-1) - 1`.
- [ ] Prove the identity by induction on `n`, splitting the range at `2^(n-1)`.
- [ ] Record the outcome, including any offset mismatch found between the sources.

## Library demand

Feeds [finite-sum-indexing](../../translate-mathlib/baseline/finite-sum-indexing/todo.md).

- [ ] Sums over an initial range of naturals, with a split lemma at an arbitrary midpoint.
- [ ] Binary-expansion predicates on naturals usable as summand definitions.
- [ ] Ordered set partitions, or the surjection count that defines the Fubini numbers.
