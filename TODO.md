# TODO

## 1. Cauchy Products - Phase 2: Convergence Proofs

**File:** `src/real/cauchy.ac`

**Status:** Proof structures completed and documented. Theorems commented out pending additional lemmas.

### Completed Work

1. **`cauchy_partial_product_bound`** - PROOF STRUCTURE COMPLETE (commented out)
   - Statement: `partial(cauchy_seq(a, b), n) <= partial(a, n) * partial(b, n)` for nonnegative a, b
   - Strategy documented: Compare triangular sum (i+j < n) vs square sum (i < n, j < n)
   - Helper function `triangle_product` defined
   - Key insight: Triangular region ⊆ square region, with nonnegative terms
   - **Remaining work:** Needs the following lemmas:
     * `double_sum_pointwise_le`: If f(i,j) <= g(i,j) for all i < n, j < m, then double_sum(n, m, f) <= double_sum(n, m, g)
     * `partial_cauchy_as_triangle`: Prove that partial(cauchy_seq(a, b), n) = double_sum(n, n, triangle_product(a, b, n))

2. **`cauchy_product_abs_converges`** (Mertens' Theorem) - PROOF STRUCTURE COMPLETE (commented out)
   - Statement: If `absolutely_converges(a)` and `absolutely_converges(b)`, then `absolutely_converges(cauchy_seq(a, b))`
   - Strategy documented:
     * Show `abs_fn(cauchy_seq(a, b)) <= cauchy_seq(abs_fn(a), abs_fn(b))` pointwise
     * Apply `cauchy_partial_product_bound` to abs_fn sequences
     * Use monotone_convergence_principle with bounded increasing sequence
   - All key steps outlined with clear reasoning
   - **Remaining work:** Needs the following lemmas:
     * `convergent_increasing_bounded_by_limit`: If converges(s) and is_increasing(s), then for all n, s(n) <= limit(s)
     * `mul_bounded_by_product`: If a <= A and b <= B and all are nonnegative, then a * b <= A * B (may already exist as `mul_le_mul_nonneg`)
     * `is_increasing_partial`: For nonnegative f, partial(f) is increasing

### Missing Lemmas (Priority Order)

**Priority 1: Double Sum Comparison**
- **`double_sum_pointwise_le`**: If for all i < n and j < m, f(i, j) <= g(i, j), then double_sum(n, m, f) <= double_sum(n, m, g)
- Location: `src/real/cauchy.ac`
- Needed for: `cauchy_partial_product_bound`

**Priority 2: Triangular Sum Identity**
- **`partial_cauchy_as_triangle`**: partial(cauchy_seq(a, b), n) = double_sum(n, n, triangle_product(a, b, n))
- Location: `src/real/cauchy.ac`
- Needed for: `cauchy_partial_product_bound`

**Priority 3: Convergence Bounds**
- **`convergent_increasing_bounded_by_limit`**: If converges(s) and is_increasing(s), then for all n, s(n) <= limit(s)
- Location: `src/real/real_series.ac` (may already exist, need to check)
- Needed for: `cauchy_product_abs_converges`

**Priority 4: Partial Sum Monotonicity**
- **`is_increasing_partial`**: For nonnegative f, is_increasing(partial(f))
- Location: `src/real/real_series.ac` (may already exist as `nonneg_partial_increasing`)
- Needed for: `cauchy_product_abs_converges`


3. **Cauchy product limit formula** - TODO
   - Statement: `limit(partial(cauchy_seq(a, b))) = limit(partial(a)) * limit(partial(b))`
   - Will need: Theorem about products of convergent sequences

---

## 2. Define e^x via Power Series

**File:** New file `src/real/real_exp.ac` or extend `src/real/real_series.ac`

Define the exponential function for real numbers:
```
e^x = ∑_{n=0}^{∞} x^n / n!
```

**Dependencies:**
- Requires Mertens' Theorem (above) to prove `e^x * e^y = e^(x+y)`

**Tasks:**
- Define factorial for Real (lift from Nat)
- Define `exp(x) = limit(partial(function(n) { x^n / n! }, _))`
- Prove convergence for all real x

---

## 3. Prove Properties of e^x

**Essential theorems:**
- `exp_zero`: `e^0 = 1`
- `exp_add`: `e^x * e^y = e^(x+y)` (uses Cauchy product!)
- `exp_pos`: `e^x > 0` for all x
- `exp_derivative`: `d/dx(e^x) = e^x` (requires calculus framework)

---

## Tips

**Acorn-specific patterns:**
- Avoid nested lambdas in definitions - use named helper functions instead
- When inducting over bounded ranges with external constraints, induct on the *distance* instead to enable Acorn's automatic induction
