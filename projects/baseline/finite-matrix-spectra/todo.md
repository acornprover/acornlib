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
- [x] Prove every eigenvalue of a row-stochastic matrix has modulus at most one, in
      `src/fin_matrix_stochastic_bound.ac`. Evaluate the eigenvalue equation at an index where the
      eigenvector attains its largest absolute value: the left side is that value times the
      absolute value of the eigenvalue, and the right side is bounded by the value itself, since
      the row weights are nonnegative and sum to one. The value is positive because the
      eigenvector is nonzero, so it cancels.

      Two general lemmas were missing and are added. `fin_sum_abs_le` in `src/fin_sum_abs.ac` is
      the triangle inequality for a finite sum; getting it needed `abs_add_le` too, since
      `src/real/` exports the pieces the triangle inequality follows from but not the inequality.
      `fin_sum_scalar_mul` in `src/fin_sum_scalar.ac` factors a scalar out of a finite sum, which
      `src/nat_range_sum_semiring.ac` had for range sums but nothing had for `Fin`-indexed ones.

      The bound is tight: `row_stochastic_has_eigenvalue_one` already showed one is an
      eigenvalue, so `stochastic_spectral_radius_one` packages the two into the statement that
      one is an eigenvalue of largest absolute value.

      Stated over the reals rather than an ordered field, since there is no absolute value at
      that level and adding one is a design decision.

      One shape note: the `match fin_of_nat_option(n, k)` branches that reduce inside
      `src/fin_sum.ac` do not reduce from outside it. Both new zero-extension identities go
      through `fin_value_or_zero_value` and a `Fin` index instead, which is all
      `partial_pointwise_eq` asks for.
- [ ] Define regions in the complex plane, and set equality between them.
- [ ] Prove the characteristic polynomial of a circulant or cyclic family in closed form.
