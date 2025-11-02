# TODO

## 1. Cauchy Products - Phase 2: Convergence Proofs ✅ **COMPLETE**

**File:** `src/real/cauchy.ac`

**Status:** All theorems proven and verified!

### Completed Work

1. **`cauchy_partial_product_bound`** ✅ **COMPLETE**
   - Location: `src/real/cauchy.ac` (lines 2907-2970)
   - Statement: `partial(cauchy_seq(a, b), n) <= partial(a, n) * partial(b, n)` for nonnegative a, b
   - Strategy: Compare triangular sum (i+j < n) vs square sum (i < n, j < n)
   - Uses `partial_cauchy_as_triangle` + `double_sum_pointwise_le`
   - Key insight: Triangular region ⊆ square region, with nonnegative terms

2. **`cauchy_product_abs_converges`** (Mertens' Theorem) ✅ **COMPLETE**
   - Location: `src/real/cauchy.ac` (lines 2972-3074)
   - Statement: If `absolutely_converges(a)` and `absolutely_converges(b)`, then `absolutely_converges(cauchy_seq(a, b))`
   - Proof strategy:
     * Shows `abs_fn(cauchy_seq(a, b)) <= cauchy_seq(abs_fn(a), abs_fn(b))` pointwise
     * Applies `cauchy_partial_product_bound` to abs_fn sequences
     * Uses `monotone_convergence_principle` with bounded increasing sequence
   - This is the critical theorem needed to prove `e^x * e^y = e^(x+y)`

### Missing Lemmas (Priority Order)

**Priority 1: Double Sum Comparison** ✅ **COMPLETE**
- **`double_sum_pointwise_le`**: If for all i < n and j < m, f(i, j) <= g(i, j), then double_sum(n, m, f) <= double_sum(n, m, g)
- Location: `src/real/cauchy.ac` (line 2018)
- Status: **Proven and verified** (uses partial_lte_partial for row and column comparisons)
- Needed for: `cauchy_partial_product_bound`

**Priority 2: Triangular Sum Identity** ✅ **COMPLETE**
- **`partial_cauchy_as_triangle`**: partial(cauchy_seq(a, b), n) = double_sum(n, n, triangle_product(a, b, n))
- Location: `src/real/cauchy.ac` (lines 2789-2906)
- Status: **Proven and verified**
- Connects Cauchy product (diagonal sum) to triangular region (double sum)
- Uses `finite_double_sum_exchange` to reorder summation
- Needed for: `cauchy_partial_product_bound` ✅

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

## Supporting Lemmas: Summation Exchange ✅ **COMPLETE**

All supporting lemmas for summation exchange over triangular regions have been proven!

**Completed: `finite_double_sum_exchange`** ✅
- **Location**: `src/real/cauchy.ac` (lines 2562-2631)
- **Statement**: `sum(map(n.range, diagonal_sum(f))) = double_sum(n, n, triangle_fn(f, n))`
- **Purpose**: Enables reordering finite double sums from diagonal form to triangular region form
- **Why needed**: To prove `partial_cauchy_as_triangle`, which connects:
  - Cauchy products: `sum_{k<n} sum_{i≤k} a(i)*b(k-i)`
  - Triangular double sum: `sum_{i<n} sum_{j<n} [i+j<n ? a(i)*b(j) : 0]`

**Supporting lemmas proven:**

1. **`diagonal_as_double_sum`** ✅ **COMPLETE**
   - Location: `src/real/cauchy.ac` (lines 2391-2560)
   - Statement: `diagonal_sum(f, m) = double_sum(m.suc, m.suc, diag_indicator(f, m))`
   - Where `diag_indicator(i,j) = f(i,j) if i+j=m, else 0`
   - Uses `sum_singleton` to show each row contributes f(i, m-i)
   - Key technique: Named helper function `diagonal_val` instead of inline lambda

2. **`double_sum_triangle_expand`** ✅ **COMPLETE**
   - Location: `src/real/cauchy.ac` (lines 2633-2787)
   - Statement: Expanding from (m,m) to (m+1,m+1) adds exactly diagonal m
   - Uses `diagonal_as_double_sum` + `double_sum_pointwise_add`
   - Key insight: `triangle_fn(f, m.suc) = triangle_fn(f, m) + diag_indicator(f, m)` pointwise

3. **`double_sum_pointwise_add`** ✅ **COMPLETE**
   - Location: `src/real/cauchy.ac` (lines 2292-2389)
   - Statement: `double_sum(n, m, f) + double_sum(n, m, g) = double_sum(n, m, add_fn(f, g))`
   - Distributes addition over double sums pointwise
   - Used to combine triangle expansions


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
