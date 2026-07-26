# Ran-Teng Conjecture 20

Source: aimath `Analysis-18`, resolved. Matrix analysis.
Document: detailed arXiv preprint.
Verification: human-checked mathematical proof; **no formal proof assistant artifact located**.

Claim: the exact nonreal spectral region is determined for a four-cycle family of row-stochastic
nonnegative matrices, resolving Conjecture 20 of Ran and Teng.

Deliverable: the exact region, both inclusions. The claim is an equality of sets in the complex
plane, so proving only containment verifies nothing.

Chosen because the object is finite and concrete. `src/fin_matrix.ac` and `src/fin_matrix_det.ac`
already exist, and the complex number library is in place, so this needs eigenvalue language rather
than a whole new area. It is the only claim in the pool where a complete unformalized proof meets an
object `src/` can almost already describe.

## Todo

- [ ] Read the preprint and record the exact family and the exact claimed region.
- [ ] Confirm the family is genuinely finite-dimensional and fixed size, not an asymptotic family.
- [ ] Define row-stochastic and nonnegative conditions on a finite matrix.
- [ ] Define the four-cycle family as a parameterized finite matrix.
- [ ] Define the spectrum of a finite matrix as the roots of its characteristic polynomial.
- [ ] Prove the characteristic polynomial of the family in closed form.
- [ ] Prove every nonreal eigenvalue of a family member lies in the claimed region.
- [ ] Prove every point of the claimed region is attained by some family member.
- [ ] Assemble the exact-region equality.
- [ ] Record the outcome.

## Library demand

Feeds [finite-matrix-spectra](../../translate-mathlib/baseline/finite-matrix-spectra/todo.md).

- [ ] Characteristic polynomial of a finite matrix, built on the existing determinant.
- [ ] Eigenvalues as roots of the characteristic polynomial over the complex numbers.
- [ ] Row-stochastic and nonnegative matrix conditions.
- [ ] Regions in the complex plane, and set equality between them.
