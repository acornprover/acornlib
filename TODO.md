# TODO

## 1. Cauchy Products - IN PROGRESS

**File:** `src/real/cauchy.ac`

Define and prove properties of the Cauchy product of two infinite series: `∑ cₙ where cₙ = ∑_{k=0}^{n} aₖ * b_{n-k}`

**Why it matters:** Essential for proving `e^x * e^y = e^(x+y)` and other properties of power series.

---

### Phase 1: Basic Infrastructure ✅ COMPLETE

All foundational definitions, algebraic properties, absolute convergence infrastructure, and double sum machinery are complete. Key achievement: `double_sum_col_expand` theorem using named helper functions to avoid nested lambdas.

---

### Phase 2: Convergence Proofs 🚧 IN PROGRESS

**🎯 Next Steps:**

These theorems complete the proof that Cauchy products of absolutely convergent series converge:

1. **`partial_product_as_double_sum`** ✅ COMPLETE
   - Statement: `partial(a,n) * partial(b,n) = double_sum(n, n, prod_fn(a, b))`
   - Strategy: Used `double_sum_col_expand` and `double_sum_row_expand` with induction
   - Note: Defined `prod_fn` helper to avoid lambda equality issues

2. **`cauchy_partial_product_bound`** 📋 DOCUMENTED (commented around line ~1339)
   - Statement: For nonnegative sequences, `partial(cauchy_seq(a,b),n) ≤ partial(a,n) * partial(b,n)`
   - **Mathematical Argument Fully Worked Out:**
     - Inductive proof structure complete through m.suc step
     - Reduces to showing: `cauchy_product(a,b,m) ≤ partial(a,m)*b(m) + a(m)*partial(b,m) + a(m)*b(m)`
     - RHS expands to: `a(0)*b(m) + ... + a(m-1)*b(m) + a(m)*b(0) + ... + a(m)*b(m)`
     - Cauchy product: `a(0)*b(m) + a(1)*b(m-1) + ... + a(m)*b(0)`
     - Each Cauchy term appears in or is bounded by RHS terms (when nonnegative)
   - **Missing Infrastructure:**
     - Term-by-term comparison lemmas for sums
     - OR: Formal subset sum lemma (sum over subset ≤ sum over superset for nonnegative terms)
     - OR: Monotonicity properties for partial sums

3. **`cauchy_product_abs_converges`** 🚧 BLOCKED (Mertens' Theorem, commented around line ~1363)
   - Statement: If `absolutely_converges(a)` and `absolutely_converges(b)`, then `absolutely_converges(cauchy_seq(a, b))`
   - Strategy: Use comparison test with `cauchy_partial_product_bound` to show boundedness
   - Blocked by: Need `cauchy_partial_product_bound` to be proven
   - Status: Full proof structure documented

4. **Cauchy product limit formula** ⏳ TODO
   - Statement: `limit(partial(cauchy_seq(a, b))) = limit(partial(a)) * limit(partial(b))`
   - Will need: Theorem about products of convergent sequences
   - Blocked by: Needs Mertens' theorem first

---

### Recent Progress Summary

**✅ Completed Proofs:**
1. `partial_product_as_double_sum` - Proven and verified! Shows `partial(a,n) * partial(b,n) = ∑ᵢ∑ⱼ a(i)*b(j)`

**📋 Fully Documented Mathematical Arguments:**
2. `cauchy_partial_product_bound` - Complete inductive proof structure with term-by-term analysis
3. `cauchy_term_bound` - Helper lemma with subset sum argument documented
4. Mertens' theorem (`cauchy_product_abs_converges`) - Full proof strategy using comparison test

**🔧 Infrastructure Added:**
- `prod_fn(a, b)` - Product function for double sums (avoids lambda equality issues)
- `row_val(f, i)` - Extract row i from 2D functions
- `double_sum_row_expand` - Expand double sums by adding rows
- `cauchy_indicator(n, i, j)` - Indicator: 1 if i+j < n, else 0

**🎯 Key Insight Discovered:**
The Cauchy product bound reduces to a beautiful term comparison:
- Cauchy terms: `a(0)*b(m), a(1)*b(m-1), ..., a(m)*b(0)`
- Bounding terms: `a(0)*b(m), ..., a(m-1)*b(m), a(m)*b(0), ..., a(m)*b(m)`
- Each Cauchy term is present in or bounded by the RHS (for nonnegative sequences)

**⚠️ Missing Infrastructure Identified:**
The remaining proofs need ONE of:
- Formal subset sum lemma (sum over nonnegative subset ≤ sum over superset)
- Term-by-term comparison framework for sums
- Monotonicity lemmas for sequences/partials

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
**Blocking issue:** Need to prove `partial_product_as_double_sum` using the lambda-avoiding technique
**Next milestone:** Complete Mertens' Theorem → Define e^x → Prove e^x properties

