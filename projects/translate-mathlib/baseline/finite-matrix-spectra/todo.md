# Finite Matrix Spectra

Claimant: [Ran-Teng Conjecture 20](../../../verify-ai-claims/ran-teng-spectral-region/todo.md).

`src/fin_matrix.ac` and `src/fin_matrix_det.ac` supply finite matrices and determinants, and the
complex library is in place. The gap is the characteristic polynomial and everything downstream of
it, which is the smallest new area any target here needs.

- [ ] Define the characteristic polynomial of a finite matrix from the existing determinant.
- [ ] Prove it is monic of degree equal to the matrix size.
- [ ] Define the spectrum as the set of roots of the characteristic polynomial over the complex numbers.
- [ ] Prove an eigenvalue admits a nonzero eigenvector, and the converse.
- [ ] Prove the spectrum is invariant under similarity.
- [ ] Define nonnegative and row-stochastic conditions on a finite matrix.
- [ ] Prove a row-stochastic matrix has one as an eigenvalue.
- [ ] Prove every eigenvalue of a row-stochastic matrix has modulus at most one.
- [ ] Define regions in the complex plane, and set equality between them.
- [ ] Prove the characteristic polynomial of a circulant or cyclic family in closed form.
