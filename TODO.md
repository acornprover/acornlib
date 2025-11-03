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

### 1. Cauchy Product Limit Formula (IN PROGRESS)

**File:** `src/real/cauchy.ac`

**Status:** Partially complete. The theorem statement and proof structure are outlined, but the proof requires additional infrastructure.

**What's needed:**
1. **Theorem about products of convergent sequences**: If `a_n -> L` and `b_n -> M`, then `a_n * b_n -> L * M`
   - This is a classical result in real analysis
   - For rational sequences, we have `mul_rat_seq_converges` in `real_seq.ac`
   - Need an analogous theorem for real sequences

2. **Corner region analysis**: Show that the "corner" terms (products `a(i)*b(j)` where `i < n`, `j < n`, but `i+j >= n`) vanish in the limit
   - The corner region represents the difference between `partial(a, n) * partial(b, n)` and `partial(cauchy_seq(a, b), n)`
   - For absolutely convergent series, these terms should go to zero as the tail sums vanish

3. **Double sum manipulation lemmas**: More infrastructure for working with limits of double sums

**Current state:**
- Commented-out theorem `cauchy_product_limit` with proof outline
- The key facts are established:
  - `cauchy_product_abs_converges`: Cauchy product of absolutely convergent series is absolutely convergent (Mertens' Theorem)
  - `partial_cauchy_as_triangle`: Connection between Cauchy partial sums and double sums
  - `partial_product_as_double_sum`: Product of partials as a double sum

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
