# TODO

## 1. Cauchy Products - IN PROGRESS

**File:** `src/real/cauchy.ac`

Define and prove properties of the Cauchy product of two infinite series: `∑ cₙ where cₙ = ∑_{k=0}^{n} aₖ * b_{n-k}`

**Why it matters:** Essential for proving `e^x * e^y = e^(x+y)` and other properties of power series.

---

### Phase 1: Basic Infrastructure ✅ COMPLETE

All foundational definitions, algebraic properties, absolute convergence infrastructure, and double sum machinery are complete. Key achievement: `double_sum_col_expand` theorem using named helper functions to avoid nested lambdas.

---

### Phase 2: Convergence Proofs 🚀 ACTIVE EXECUTION

**Current Plan: Prove Foundation Lemmas to Unlock Cauchy Convergence**

**🎯 Immediate Tasks (In Order):**

1. **`mul_le_mul_nonneg`** ✅ COMPLETE
   - Proved using `lte_mul_nonneg_right` and `lte_mul_nonneg_left` via transitivity
   - Located at cauchy.ac:1327

2. **`partial_monotone`** ✅ COMPLETE
   - Proved using existing `nonneg_imp_partial_increasing` theorem
   - Located at cauchy.ac:1354

3. **Supporting Infrastructure** ✅ COMPLETE (cauchy.ac:1432-1507)
   - `add_nonneg_preserves_lte`: Adding nonnegative term preserves ≤
   - `double_sum_row_monotone`: Row-wise monotonicity for double sums
   - `double_sum_col_monotone`: Column-wise monotonicity for double sums
   - `cauchy_term_equals_prod`: Term equality helper
   - `cauchy_coefficient_nonneg`: Nonnegativity of Cauchy coefficients

4. **`double_sum_diagonal_bound`** 🚧 STILL BLOCKED - Fundamental Gap
   - Statement: `cauchy_product(a, b, m) <= double_sum(m.suc, m.suc, prod_fn(a, b))` for nonnegative a,b
   - Status: Mathematical argument fully understood and documented (cauchy.ac:1509-1559)
   - Issue: Acorn cannot verify the core step: ∑_{i+j=m} a(i)b(j) <= ∑_{i,j≤m} a(i)b(j)
   - **Root cause**: Missing infrastructure for subset sum inequalities
   - **Blocking issue**: Need to prove that diagonal terms ⊆ all grid terms implies diagonal sum ≤ total sum
   - Attempted approaches:
     a) Induction on m - failed at inductive step (line 1575 in earlier version)
     b) Direct assertion - Acorn cannot verify
     c) Helper lemmas for nonneg and monotonicity - insufficient
   - **Required infrastructure**: One of:
     - General lemma: For nonnegative f, summing over S ⊆ T implies ∑_S f ≤ ∑_T f
     - Explicit construction showing double_sum = cauchy_sum + (nonnegative remainder)
     - List filtering lemmas that preserve inequality for nonnegative sums
   - This remains the KEY BLOCKER for all downstream work

5. **`cauchy_partial_product_bound`** 🚧 BLOCKED (depends on #4)
   - Requires `double_sum_diagonal_bound` to complete the inductive step
   - Mathematical argument fully documented
   - Cannot proceed until #4 is resolved

**Previously Completed:**

✅ `partial_product_as_double_sum` - Shows `partial(a,n) * partial(b,n) = ∑ᵢ∑ⱼ a(i)*b(j)`
✅ `double_sum_row_expand` - Infrastructure for row expansion
✅ Infrastructure: `prod_fn`, `row_val`, `cauchy_indicator`

6. **`cauchy_product_abs_converges`** (Mertens' Theorem) - Blocked on #5
   - Statement: If `absolutely_converges(a)` and `absolutely_converges(b)`, then `absolutely_converges(cauchy_seq(a, b))`
   - Strategy: Use comparison test with `cauchy_partial_product_bound`
   - Status: Full proof structure documented

6. **Cauchy product limit formula** - Blocked on #5
   - Statement: `limit(partial(cauchy_seq(a, b))) = limit(partial(a)) * limit(partial(b))`
   - Will need: Theorem about products of convergent sequences

---

### Key Insight

⭐ **Avoid nested lambdas in definitions!** Acorn's normalizer struggles with closures. Use named helper functions with partial application instead. Example: `row_sum(m, f)` instead of `function(i) { sum(map(m.range, f(i))) }`

---

## 2. Define e^x via Power Series ⏳ TODO

Define the exponential function for real numbers using the power series:
```
e^x = ∑_{n=0}^{∞} x^n / n!
```

**Dependencies:**
- Requires Cauchy product convergence (Mertens' Theorem) to prove `e^x * e^y = e^(x+y)`

**Implementation approach:**
- Define as a limit: `exp(x) = limit(partial(function(n) { x^n / n! }, _))`
- Prove convergence for all real x
- Will need factorial for Real (lift from Nat factorial)

**Files:**
- New file `src/real/real_exp.ac` or extend `src/real/real_series.ac`

---

## 3. Prove Properties of e^x ⏳ TODO

Once e^x is defined, prove its fundamental properties:

**Essential theorems:**
- `exp_zero`: `e^0 = 1`
- `exp_add`: `e^x * e^y = e^(x+y)` (uses Cauchy product!)
- `exp_pos`: `e^x > 0` for all x
- `exp_derivative`: `d/dx(e^x) = e^x` (requires calculus framework)

---

## Summary

**Current focus:** Phase 2 - Proving Cauchy product convergence
**Recent progress:** Added supporting infrastructure (double_sum_col_monotone, cauchy_coefficient_nonneg, etc.)
**Blocking issue:** `double_sum_diagonal_bound` requires subset sum inequality infrastructure
**Core challenge:** Need to formally prove that ∑_{i+j=m} a(i)b(j) <= ∑_{i,j≤m} a(i)b(j) for nonnegative sequences
**Next milestone:** Resolve subset sum infrastructure → Complete Mertens' Theorem → Define e^x → Prove e^x properties

**Suggested next steps:**
1. Develop general list/sum filtering infrastructure for subset inequalities, OR
2. Prove `double_sum_diagonal_bound` by explicit enumeration of diagonal vs full grid, OR
3. Explore alternative formulations that avoid the subset sum problem

