# TODO

## Completed Work

### ✅ Cauchy Product Convergence (Mertens' Theorem)

**Files:** `src/real/cauchy.ac`, `src/real/double_sum.ac`

All theorems for Cauchy product convergence are now proven and verified:

- **`cauchy_product_abs_converges`** (Mertens' Theorem): The Cauchy product of two absolutely convergent series is absolutely convergent. This is the critical theorem needed to prove `e^x * e^y = e^(x+y)`.

- **Supporting infrastructure**: `finite_double_sum_exchange` (discrete Fubini), `partial_cauchy_as_triangle`, `cauchy_partial_product_bound`, and all necessary double sum lemmas.

- **New modular structure**: Basic double sum infrastructure has been extracted to `src/real/double_sum.ac` for better code organization. This is an incremental refactoring - more infrastructure can be moved as needed.

---

## Next Steps

### 1. Cauchy Product Limit Formula (IN PROGRESS - BLOCKED)

**File:** `src/real/cauchy.ac`

**Status:** Progress blocked by Acorn constraint solver limitations.

**Work completed:**
1. ✅ **Double sum infrastructure**: Core infrastructure extracted to `src/real/double_sum.ac`
2. ✅ **Mertens' Theorem**: `cauchy_product_abs_converges` proven - Cauchy product of absolutely convergent series is absolutely convergent
3. ✅ **Supporting lemmas**: `partial_cauchy_as_triangle`, `partial_product_as_double_sum`
4. ⚠️ **Limit of product theorem**: Attempted to prove `limit_mul_seq` in `real_series.ac`
   - Theorem statement: If `a_n -> L` and `b_n -> M`, then `a_n * b_n -> L * M`
   - Mathematical proof is sound and follows the pattern from `mul_rat_seq_converges`
   - **Blocked**: Acorn's constraint solver cannot handle the complex inequality chains involving:
     - Existential quantifiers for bounds on convergent sequences
     - Triangle inequality for products: `|ab - cd| <= |a||b-d| + |d||a-c|`
     - Epsilon divisions with multiple multiplications

**What's still needed:**
1. **Either:**
   - (a) Enhance Acorn's constraint solver to handle these complex inequalities, OR
   - (b) Find a different proof strategy that avoids the problematic constraint patterns, OR
   - (c) Prove the necessary helper lemmas (convergent sequences are bounded, etc.) in a way the prover accepts

2. **Corner region analysis**: Show that the "corner" terms vanish in the limit
   - This also likely requires limit_mul_seq or similar infrastructure

3. **Complete cauchy_product_limit**: Once limit_mul_seq is proven, complete the main theorem

**Current state:**
- Theorem outline exists in `cauchy.ac` (commented out)
- `limit_mul_seq` attempted in `real_series.ac` but commented out due to constraint solver limitations
- All existing theorems verify successfully (8951/8951 OK)

---

### 2. Define e^x via Power Series

**File:** New file `src/real/real_exp.ac` or extend `src/real/real_series.ac`

Define the exponential function for real numbers:
```
e^x = ∑_{n=0}^{∞} x^n / n!
```

**Tasks:**
- Define factorial for Real (lift from Nat)
- Define `exp(x) = limit(partial(function(n) { x^n / n! }))`
- Prove convergence for all real x (ratio test or comparison)

---

### 3. Prove Properties of e^x

**Essential theorems:**
- `exp_zero`: `e^0 = 1`
- `exp_add`: `e^x * e^y = e^(x+y)` (uses Mertens' Theorem!)
- `exp_pos`: `e^x > 0` for all x
- `exp_monotone`: `x < y` implies `e^x < e^y`

**Advanced (optional):**
- `exp_derivative`: `d/dx(e^x) = e^x` (requires calculus framework)
- `exp_surjective`: For all y > 0, there exists x such that e^x = y

---

## Tips

**Acorn-specific patterns:**
- Avoid nested lambdas in definitions - use named helper functions instead
- When inducting over bounded ranges with external constraints, induct on the *distance* instead to enable Acorn's automatic induction
- Use `numerals` declarations sparingly - check if they already exist in the file
