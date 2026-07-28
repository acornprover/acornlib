# Finite Matrix Spectra

`src/fin_matrix.ac` and `src/fin_matrix_det.ac` supply finite matrices and determinants, and the
complex library is in place. `src/fin_matrix_eigen.ac` adds eigenvalues and row-stochastic matrices,
and `src/fin_matrix_stochastic.ac` the nonnegativity and column conditions.

The spectrum here is defined through *eigenvectors*, not as the roots of the characteristic
polynomial. That was a deliberate choice: the characteristic polynomial needs a matrix over
`Polynomial[R]` and the determinant of it, which is the largest single construction in this branch,
and none of the results below need it. The two notions agree over a field, and proving so is the
bridge that the remaining items wait on.

Vectors are functions on `Fin[n]`, matching `src/fin_vector.ac`, rather than one-column matrices.
That keeps the eigenvalue equation pointwise.

- [x] Define the spectrum through eigenvectors, so that an eigenvalue admits a nonzero eigenvector
      and conversely. With this definition both directions are the introduction and elimination of
      the same existential.
- [x] Define nonnegative, row-stochastic, column-stochastic, and doubly stochastic conditions on a
      finite matrix, keeping the row-sum condition separate from nonnegativity since the first needs
      no order on the entries.
- [x] Prove a row-stochastic matrix has one as an eigenvalue, witnessed by the all-ones vector. Two
      hypotheses are genuinely needed and are stated: the size must be positive, or there is no
      index to point at, and one must differ from zero, or every vector is the zero vector.
- [x] Prove a matrix is column-stochastic exactly when its transpose is row-stochastic.
- [x] Add order lemmas for `fin_sum`, which had none: a sum of nonnegative terms is nonnegative,
      a single term is at most the sum, and sums are monotone in the summand. These live in
      `src/fin_sum_order.ac` and are general rather than matrix specific.
- [x] Prove every entry of a stochastic matrix is at most one, and the row and column sums of a
      nonnegative matrix are nonnegative.

Remaining:

- [ ] Define the characteristic polynomial of a finite matrix from the existing determinant, prove
      it is monic of degree the matrix size, and prove its roots are exactly the eigenvalues defined
      above. This is the missing bridge, and everything below waits on it.
- [ ] Prove the spectrum is invariant under similarity. This needs matrix inverses, which
      `src/fin_matrix.ac` does not supply.
- [ ] Prove every eigenvalue of a row-stochastic matrix has modulus at most one. The `fin_sum` term
      bound this was waiting on now exists. What remains is the argument itself: pick an index where
      the eigenvector attains its largest absolute value and bound that row. The maximum over
      `Fin[n]` now exists as `fin_function_max` in `src/fin_function_max.ac`; what remains is the
      triangle inequality for `fin_sum`, which needs an absolute value on the entries.
- [ ] Define regions in the complex plane, and set equality between them.
- [ ] Prove the characteristic polynomial of a circulant or cyclic family in closed form.
