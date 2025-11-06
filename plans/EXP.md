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

/// Difference between partial sum at n and partial sum at m.
define partial_diff(f: Nat -> Real, m: Nat, n: Nat) -> Real {
  partial(f, n) - partial(f, m)
}

/// The limit of the tail sum difference.
define tail_limit_diff(f: Nat -> Real, m: Nat) -> Real {
  limit(partial(f)) - partial(f, m)
}

/// The tail triangle double sum at index n.
define tail_triangle_sum(a: Nat -> Real, b: Nat -> Real, n: Nat) -> Real {
  double_sum(n, n, tail_triangle_product(abs_fn(a), abs_fn(b), n))
}

/// Difference between two sequences.
define sub_seq(s: Nat -> Real, t: Nat -> Real, n: Nat) -> Real {
  s(n) - t(n)
}

/// Two sequences differ by a vanishing amount.
define vanishing_diff(s: Nat -> Real, t: Nat -> Real) -> Bool {
  vanishes(function(n: Nat) { abs(sub_seq(s, t, n)) })
}

/// For fixed m, the tail sum difference converges to the limit minus the cutoff.
theorem tail_diff_converges(a: Nat -> Real, m: Nat) {
  absolutely_converges(a)
  implies
  converges_to(partial_diff(abs_fn(a), m), tail_limit_diff(abs_fn(a), m))
}

/// The tail triangle double sum vanishes as n → ∞.
theorem tail_triangle_vanishes(a: Nat -> Real, b: Nat -> Real) {
  absolutely_converges(a) and absolutely_converges(b)
  implies
  vanishes(tail_triangle_sum(a, b))
}

/// Two sequences with vanishing difference have the same limit.
theorem limit_preserved_by_vanishing_diff(s: Nat -> Real, t: Nat -> Real) {
  converges(s) and vanishing_diff(s, t)
  implies
  converges(t) and limit(s) = limit(t)
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
