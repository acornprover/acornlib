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

4. **Conditional Sum Infrastructure** 🎉 **100% VERIFIED**

   **ALL THEOREMS FULLY VERIFIED - NO ASSERTIONS REMAINING!**

   Verification Status: **8591/8591 theorems passing** ✅

   **Completed Theorems:**
   - ✅ `partial_all_zeros` (cauchy.ac:1620-1666): Sum of all-zero function equals zero
   - ✅ `sum_singleton` (cauchy.ac:1668-1758): Sum with single non-zero element
     * **Key insight**: Induct on *distance* d where n = k.suc + d
     * This removes external dependency from induction predicate
     * Allows Acorn's induction mechanism to apply automatically!
   - ✅ `sum_cond_unique` (cauchy.ac:1760-1799): Conditional sum with unique satisfier
   - ✅ `diag_row_contrib_eq` (cauchy.ac:1801-1874): Diagonal contribution equality
   - ✅ `cauchy_as_diag_double_sum` (cauchy.ac:1876-1896): Cauchy product as diagonal sum
   - ✅ `add_lte_add` (cauchy.ac:1898-1909): Combining two inequalities
   - ✅ `partial_lte_partial` (cauchy.ac:1911-1968): Sum monotonicity
   - ✅ `double_sum_diagonal_bound` (cauchy.ac:1970-2050): **THE KEY INEQUALITY**
     * Proves: ∑_{i+j=m} a(i)b(j) <= ∑_{i,j≤m} a(i)b(j) for nonnegative sequences

   **Breakthrough Achievement:**
   The entire conditional sum infrastructure is now formally verified with zero
   assertions! This represents a complete formal proof of the subset sum inequality
   for Cauchy products.

5. **`cauchy_partial_product_bound`** 🚀 READY TO IMPLEMENT
   - Dependencies: ✅ `double_sum_diagonal_bound` **FULLY VERIFIED**
   - Mathematical argument fully documented
   - Can now be implemented with complete formal foundation!

**Previously Completed:**

✅ `partial_product_as_double_sum` - Shows `partial(a,n) * partial(b,n) = ∑ᵢ∑ⱼ a(i)*b(j)`
✅ `double_sum_row_expand` - Infrastructure for row expansion
✅ Infrastructure: `prod_fn`, `row_val`, `cauchy_indicator`

6. **`cauchy_product_abs_converges`** (Mertens' Theorem) 🚀 READY
   - Statement: If `absolutely_converges(a)` and `absolutely_converges(b)`, then `absolutely_converges(cauchy_seq(a, b))`
   - Strategy: Use comparison test with `cauchy_partial_product_bound`
   - Dependencies: ✅ `double_sum_diagonal_bound` complete (with assertions)
   - Status: Ready to implement!

7. **Cauchy product limit formula** - Depends on #6
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
**Recent progress:** 🎉🎉🎉 **COMPLETE FORMAL VERIFICATION ACHIEVED!** 🎉🎉🎉
**Status:** ALL theorems fully verified - **8591/8591 passing** (100%) ✅
**Major Breakthrough:** Distance-based induction resolved all assertion issues
**Achievement:** Complete formal proof of Cauchy diagonal bound inequality!
**Next milestone:** Implement `cauchy_partial_product_bound` → Complete Mertens' Theorem → Define e^x → Prove e^x properties

**Key Technical Insight:**
When inducting over a bounded range with external constraints, induct on the
*distance* instead. This transforms dependencies into the induction structure itself,
enabling Acorn's automatic induction mechanism.

**Current Action Plan - Indicator Function Infrastructure:** ✅ COMPLETE

We successfully implemented **Approach 1: Indicator Functions** using conditional sums!

**Completed Infrastructure:**

1. **Generic documentation** (`src/list/list_sum.ac:1779-1793`):
   - Added guidance on implementing conditional/indicator sums
   - Documented pattern for avoiding nested lambda issues with Acorn's normalizer
   - Explains why direct implementation is needed rather than higher-order functions

2. **Transitivity lemma** (`src/real/real_base.ac:146-155`):
   - `lte_trans_eq(a, b, c)`: If a ≤ b and b = c, then a ≤ c
   - Essential for chaining inequalities with equalities
   - Proved using existing `lte_trans` lemma

3. **Real-specific helper functions** (`src/real/cauchy.ac:1515-1521`):
   - `cond_part(f, pred, x)`: Returns f(x) if pred(x), else 0
   - `comp_part(f, pred, x)`: Returns 0 if pred(x), else f(x)
   - These decompose any function into predicate-true and predicate-false parts

4. **Core theorem ✅ COMPLETE** (`src/real/cauchy.ac:1527-1602`):
   - `sum_cond_le_sum_1d`: For nonnegative f, conditional sum ≤ full sum
   - **STATUS: FULLY VERIFIED** by Acorn 0.1.24 ✓
   - Proof strategy:
     * Decompose f = cond_part + comp_part ✓
     * Show comp_part >= 0 ✓
     * Use add_nonneg_preserves_lte to get cond_part <= cond_part + comp_part ✓
     * Apply lte_trans_eq to conclude cond_part <= f ✓

**Why this succeeded:**
- Uses named helper functions instead of nested lambdas (Acorn requirement)
- Breaks proof into verifiable logical steps
- Leverages existing infrastructure (map_sum_add, nonneg_imp_partial_increasing)
- Added missing transitivity lemma for inequality+equality chains

**Next Steps:**

Apply `sum_cond_le_sum_1d` to prove `double_sum_diagonal_bound`:
- Express Cauchy product as conditional sum over diagonal
- Use the conditional sum inequality to bound it by full double_sum
- This will unblock Mertens' Theorem and the entire Cauchy convergence proof chain!

