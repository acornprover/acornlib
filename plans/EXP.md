# Exponential Function Plan

## Overall Goal

Prove the exponential function satisfies `exp(x + y) = exp(x) * exp(y)` using Mertens' theorem, which states that the Cauchy product of two absolutely convergent series has limit equal to the product of their limits.

## Notes

**Available theorems for Mertens' theorem:**
- `vanishes(s)`: Defined in `src/real/limits.ac`, equivalent to `converges_to(s, Real.0)`
- `partial_product_diff_abs_le`: The difference between `partial(a,n) * partial(b,n)` and `partial(cauchy_seq(a,b),n)` is bounded by the tail triangle double sum
- `partial_diff_vanishes_fixed_offset`: For fixed k, `partial(abs_fn(a), n) - partial(abs_fn(a), n-k) → 0`
- `finite_sum_vanishes`: Finite sum of vanishing sequences vanishes
- `double_sum_split_row_index`: Split double sum into initial and tail row segments
- `tail_triangle_row_sum_abs_eq_abs_diff`: Each tail triangle row equals `abs_fn(a)(i) * (partial(abs_fn(b), n) - partial(abs_fn(b), n-i))`
- `limit_of_prod`: Product of convergent sequences
- `partial_diff`, `tail_limit_diff`, `sub_seq`, and `vanishing_diff`: Implemented in `src/real/cauchy.ac`
- `tail_triangle_sum`: Absolute-value tail double sum in `src/real/cauchy.ac`
- `tail_diff_converges`: Fixed-offset tail differences converge to the tail limit difference
- `vanishes_of_abs_seq`: Absolute-value vanishing implies raw vanishing (proved in `src/real/cauchy.ac`)
- `vanishes_neg_seq`: Negating a vanishing sequence preserves vanishing (proved in `src/real/cauchy.ac`)
- `limit_preserved_by_vanishing_diff`: Vanishing differences transfer limits (`src/real/cauchy.ac`)
- Plan to reuse `double_sum_split_row_index` to isolate finitely many tail triangle rows and bound the remaining rows by tail estimates from absolute convergence

**Strategy for tail triangle vanishing:**
Two-stage epsilon argument:
1. Choose cutoff m where tails of both series are small
2. Split double sum by row index: rows i < m vanish (finite sum), rows i ≥ m bounded by tail of series

**Available for exp definition:**
- `Nat.factorial` exists in `nat/nat_base.ac:712`
- Ratio test can likely be proved inline

## Next Steps

```acorn
// In src/real/cauchy.ac

/// The partial sum of the triangle row indicator equals the partial sum
/// of |b| up to index n-i.
theorem triangle_row_indicator_partial_eq(b: Nat -> Real, n: Nat, i: Nat) {
  i < n
  implies
  partial(triangle_row_indicator(b, n, i), n) = partial(abs_fn(b), n - i)
}

/// Reformulate tail triangle row sum in terms of partial difference.
/// For i < n, the row sum equals |a(i)| times the difference between
/// partial sums of |b| at n and n-i.
theorem tail_triangle_row_eq_diff(a: Nat -> Real, b: Nat -> Real, n: Nat, i: Nat) {
  i < n
  implies
  row_sum(n, tail_triangle_product(abs_fn(a), abs_fn(b), n), i) =
    abs_fn(a)(i) * partial_diff(abs_fn(b), n - i, n)
}

/// The row sum for a fixed row i in the tail triangle at varying n.
define tail_triangle_fixed_row(a: Nat -> Real, b: Nat -> Real, i: Nat, n: Nat) -> Real {
  row_sum(n + i, tail_triangle_product(abs_fn(a), abs_fn(b), n + i), i)
}

/// For any fixed row index i, that row's contribution vanishes as n → ∞.
theorem tail_triangle_fixed_row_vanishes(a: Nat -> Real, b: Nat -> Real, i: Nat) {
  absolutely_converges(a) and absolutely_converges(b)
  implies
  vanishes(tail_triangle_fixed_row(a, b, i))
}

/// The sum of tail rows from index m onwards in the tail triangle.
define tail_triangle_tail_rows_sum(a: Nat -> Real, b: Nat -> Real, n: Nat, m: Nat) -> Real {
  sum(map((n - m).range, function(k: Nat) {
    row_sum(n, tail_triangle_product(abs_fn(a), abs_fn(b), n), m + k)
  }))
}

/// Bound the sum of tail rows (from index m onwards) by the product of
/// |a(m)| and beyond with the partial sum of |b|.
theorem tail_triangle_tail_rows_bound(a: Nat -> Real, b: Nat -> Real, n: Nat, m: Nat) {
  m <= n
  implies
  tail_triangle_tail_rows_sum(a, b, n, m) <= partial_diff(abs_fn(a), m, n) * partial(abs_fn(b), n)
}

/// The tail triangle double sum vanishes as n → ∞.
theorem tail_triangle_vanishes(a: Nat -> Real, b: Nat -> Real) {
  absolutely_converges(a) and absolutely_converges(b)
  implies
  vanishes(tail_triangle_sum(a, b))
}

/// Mertens' theorem: Cauchy product limit equals product of limits.
theorem mertens_theorem(a: Nat -> Real, b: Nat -> Real) {
  absolutely_converges(a) and absolutely_converges(b)
  implies
  limit(partial(cauchy_seq(a, b))) = limit(partial(a)) * limit(partial(b))
}
```

## Outline

After Mertens' theorem:

1. **Define exponential function** (`src/real/real_exp.ac`):
   - Lift `factorial` to Real
   - Define `exp_seq(x, n) = x^n / n!`
   - Define `exp(x) = limit(partial(exp_seq(x)))`
   - Prove convergence (ratio test)

2. **Prove exp(x + y) = exp(x) * exp(y)**:
   - Show `exp_seq(x)` and `exp_seq(y)` are absolutely convergent
   - Show `exp_seq(x+y)` equals Cauchy product of `exp_seq(x)` and `exp_seq(y)` (binomial theorem)
   - Apply Mertens' theorem

3. **Basic properties**:
   - `exp(0) = 1`
   - `exp(x) > 0` for all x
   - `exp` is monotone increasing

4. **Advanced properties** (optional):
   - `exp'(x) = exp(x)`
   - `exp` is surjective onto positive reals
