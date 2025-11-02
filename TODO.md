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

**Priority 1: Double Sum Comparison** ✅ **COMPLETE**
- **`double_sum_pointwise_le`**: If for all i < n and j < m, f(i, j) <= g(i, j), then double_sum(n, m, f) <= double_sum(n, m, g)
- Location: `src/real/cauchy.ac` (line 2018)
- Status: **Proven and verified** (uses partial_lte_partial for row and column comparisons)
- Needed for: `cauchy_partial_product_bound`

**Priority 2: Triangular Sum Identity** ⏸️ **DEFERRED**
- **`partial_cauchy_as_triangle`**: partial(cauchy_seq(a, b), n) = double_sum(n, n, triangle_product(a, b, n))
- Location: `src/real/cauchy.ac` (commented out, lines 2278-2294)
- Status: **Requires summation exchange infrastructure** (Fubini-like lemma for finite sums)
- Issue: LHS sums over (k, i) with i ≤ k < n; RHS sums over (i, j) with i+j < n
- Both represent the same triangular region but in different summation orders
- **Action needed**: Implement finite summation exchange lemmas or alternative proof strategy
- Needed for: `cauchy_partial_product_bound`

**Priority 3: Convergence Bounds** ✅ **EXISTS**
- **`increasing_convergent_bounded_by_limit`**: If is_increasing(a) and converges(a), then is_upper_bound(a, limit(a))
- Location: `src/real/real_series.ac:143`
- Status: **Already proven** - shows that for all n, a(n) <= limit(a)
- Needed for: `cauchy_product_abs_converges`

**Priority 4: Partial Sum Monotonicity** ✅ **EXISTS**
- **`nonneg_partial_increasing`**: is_lower_bound(a, Real.0) implies is_increasing(partial(a))
- Location: `src/real/real_series.ac:312`
- Status: **Already proven** - partial sums of nonnegative sequences are increasing
- Bonus: `nonneg_partial_bounded_above` (line 316) combines this with convergence bounds
- Needed for: `cauchy_product_abs_converges`

**Priority 5: Multiplication Bound** ✅ **EXISTS**
- **`mul_le_mul_nonneg`**: Already exists at `src/real/cauchy.ac:1326`
- Proves: a <= b and c <= d and a,b,c,d >= 0 implies a*c <= b*d
- Needed for: `cauchy_product_abs_converges`

---

## Critical Blocker: Summation Exchange

**The ONLY missing piece** is a summation exchange lemma for Priority 2:

**Required: `finite_double_sum_exchange`**
- **Location**: `src/real/cauchy.ac` (lines 2138-2158, currently commented out)
- **Statement**: Enable reordering finite double sums over triangular regions
- **Specific need**: Prove that
  ```
  sum_{k=0}^{n-1} sum_{i=0}^{k} f(i, k-i) = sum_{i=0}^{n-1} sum_{j<n} [i+j<n ? f(i,j) : 0]
  ```
- **Why needed**: To prove `partial_cauchy_as_triangle`, which connects:
  - Cauchy products: `sum_{k<n} sum_{i≤k} a(i)*b(k-i)`
  - Triangular double sum: `sum_{i<n} sum_{j<n} [i+j<n ? a(i)*b(j) : 0]`

**Progress made:**
- ✅ Defined helper functions: `diagonal_sum`, `triangle_region`, `triangle_fn`
- ✅ Proved base case (n=0): both sides equal 0
- ✅ Set up induction structure
- ⏸️ **Blocker in inductive step**: Need to prove that expanding `double_sum(m.suc, m.suc, triangle_fn(f, m.suc))` adds exactly `diagonal_sum(f, m)`

**Key insight identified**:
- `triangle_fn(f, m.suc)` differs from `triangle_fn(f, m)` only on the m-th diagonal (where i+j=m)
- New terms added when going from m×m to (m+1)×(m+1) are precisely those with i+j=m
- This should equal `diagonal_sum(f, m) = sum_{i=0}^m f(i, m-i)`

**What's needed to complete**:
1. Lemma showing how `triangle_fn(f, m.suc)` decomposes into `triangle_fn(f, m)` plus diagonal m terms
2. Lemma relating `double_sum` expansion with the triangle restriction
3. OR: Alternative proof approach that avoids the induction altogether


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
