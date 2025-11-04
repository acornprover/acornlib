# Strategy for Proving Mertens' Theorem (Limit Formula)

## Goal
Prove: `limit(partial(cauchy_seq(a, b))) = limit(partial(a)) * limit(partial(b))`
when `a` and `b` are absolutely convergent.

## Current Status
- ✅ Proven: `cauchy_seq_converges` - the Cauchy product converges
- ✅ Available: `partial_product_diff_abs_le` - bounds the error
- ✅ Available: `tail_triangle_row_sum_abs_eq_abs_diff` - characterizes tail rows
- ✅ Available: `abs_conv_tail_bound` - tail sums can be made small
- ✅ Available: `limit_of_prod` from prod_seq.ac - limit of products

## Key Insight

From `tail_triangle_row_sum_abs_eq_abs_diff`, we know:
```
row_sum(n, tail_triangle_product(abs_fn(a), abs_fn(b), n), i) =
    abs_fn(a)(i) * (partial(abs_fn(b), n) - partial(triangle_row_indicator(b, n, i), n))
```

Since `triangle_row_indicator(b, n, i, j) = abs_fn(b)(j)` when `i+j < n` (i.e., `j < n-i`), we have:
```
partial(triangle_row_indicator(b, n, i), n) = partial(abs_fn(b), n-i)` (for `i < n`)
```

Therefore:
```
row_sum(n, tail_triangle_product(abs_fn(a), abs_fn(b), n), i) =
    abs_fn(a)(i) * (partial(abs_fn(b), n) - partial(abs_fn(b), n-i))
```

## Proof Strategy (Two-Stage Epsilon Argument)

**Given:** `ε > 0`
**Goal:** Find `N` such that for all `n ≥ N`:
```
double_sum(n, n, tail_triangle_product(abs_fn(a), abs_fn(b), n)) < ε
```

### Stage 1: Fix a cutoff `m`

Use `abs_conv_tail_bound` to choose `m` large enough that:
- `partial(abs_fn(a), ∞) - partial(abs_fn(a), m) < sqrt(ε) / (2 * K_b)` where `K_b = limit(partial(abs_fn(b)))`
- `partial(abs_fn(b), ∞) - partial(abs_fn(b), m) < sqrt(ε) / (2 * K_a)` where `K_a = limit(partial(abs_fn(a)))`

(Need helper lemma: can choose m for two different series simultaneously)

### Stage 2: Split rows into two regions

For large `n ≥ N`, split the double sum:
```
double_sum(n, n, tail_triangle) =
    sum(row_sum(..., i) for i in [0, m)) +
    sum(row_sum(..., i) for i in [m, n))
```

**Region 1: Rows `i < m` (fixed number of rows)**

For each fixed `i < m`:
- As `n → ∞`, `partial(abs_fn(b), n) → L_b` and `partial(abs_fn(b), n-i) → L_b`
- Therefore `partial(abs_fn(b), n) - partial(abs_fn(b), n-i) → 0`
- So `row_sum(n, tail_triangle..., i) → 0`

Since there are only `m` rows (fixed), we can choose `N1` such that for `n ≥ N1`:
```
sum(row_sum(n, tail_triangle..., i) for i in [0, m)) < ε/2
```

**Region 2: Rows `i ≥ m` (growing range)**

For `i ≥ m`:
```
row_sum(n, tail_triangle..., i) = abs_fn(a)(i) * (partial(abs_fn(b), n) - partial(abs_fn(b), n-i))
                                  ≤ abs_fn(a)(i) * partial(abs_fn(b), n)   (since n-i < n)
                                  ≤ abs_fn(a)(i) * K_b                     (for large n)
```

Summing over `i ∈ [m, n)`:
```
sum(...) ≤ sum(abs_fn(a)(i) for i in [m, n)) * K_b
        = (partial(abs_fn(a), n) - partial(abs_fn(a), m)) * K_b
        ≤ (L_a - partial(abs_fn(a), m)) * K_b                (for large n)
        < sqrt(ε) / 2                                         (by choice of m)
        < ε/2
```

### Stage 3: Combine

For `n ≥ N = max(N1, N2)` (where N2 ensures convergence in Region 2):
```
double_sum(n, n, tail_triangle...) < ε/2 + ε/2 = ε
```

## Required Helper Lemmas

1. **`partial_diff_vanishes`**: For absolutely convergent `a` and fixed `k`,
   `partial(abs_fn(a), n) - partial(abs_fn(a), n-k) → 0` as `n → ∞`

2. **`finite_sum_vanishing_terms`**: If `f_i(n) → 0` for each fixed `i < m`, then
   `sum(f_i(n) for i < m) → 0` as `n → ∞`

3. **`tail_bound_with_limit`**: For absolutely convergent `a`,
   `partial(abs_fn(a), n) - partial(abs_fn(a), m)` can be made arbitrarily close to
   `limit(partial(abs_fn(a))) - partial(abs_fn(a), m)` for large `n`

4. **`split_range_sum`**: Ability to split sums over `[0, n)` into `[0, m)` and `[m, n)`

5. **`limit_preservation`**: If `s_n` converges and `|s_n - t_n| → 0`, then `t_n` converges to the same limit

## Complexity Assessment

This proof requires significant infrastructure that doesn't currently exist in the codebase:
- Lemmas about limits of differences
- Machinery for splitting sums over growing ranges
- Techniques for handling finite sums of vanishing sequences

**Estimated effort:** 5-10 additional theorems with careful bookkeeping.

## Alternative: Partial Results

Rather than the full limit formula, we could prove:
1. ✅ **Already done**: The Cauchy product converges
2. **Easier**: The limit exists and is bounded appropriately
3. **Medium**: Special cases (e.g., when one series is finite, or both are geometric)
4. **Full theorem**: The limit formula (requires full infrastructure above)
