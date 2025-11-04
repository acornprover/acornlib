# TODO

## Completed Work

### ✅ Cauchy Product Convergence (Mertens' Theorem)

**File:** `src/real/cauchy.ac`

All theorems for Cauchy product convergence are now proven and verified:

- **`cauchy_product_abs_converges`** (Mertens' Theorem): The Cauchy product of two absolutely convergent series is absolutely convergent. This is the critical theorem needed to prove `e^x * e^y = e^(x+y)`.

- **Supporting infrastructure**: `finite_double_sum_exchange` (discrete Fubini), `partial_cauchy_as_triangle`, `cauchy_partial_product_bound`, and all necessary double sum lemmas.

---

## Next Steps

### 1. Cauchy Product Limit Formula

**File:** `src/real/cauchy.ac`

Prove that the limit of the Cauchy product equals the product of the limits:
```
limit(partial(cauchy_seq(a, b))) = limit(partial(a)) * limit(partial(b))
```

**Recent progress:**
- Added `tail_triangle_abs_nonneg` and `row_sum_tail_triangle_abs_nonneg` to control the sign of the tail region.
- Established `tail_triangle_row_sum_abs_le` and `tail_triangle_double_sum_abs_le_partial_product` to bound tail contributions by products of absolute partial sums.
- Proved indicator lemmas (`tail_triangle_row_indicator_zero` / `_ge_abs`) to isolate the exact |b|-tail contribution of each row, preparing sharper tail decompositions.
- Refined the indicator machinery with `tail_triangle_indicator_partial_split`, `tail_triangle_indicator_partial_eq_diff`, and `tail_triangle_row_sum_abs_eq_abs_diff`, giving exact formulas for tail row sums in terms of |b| partial sums.
- **BLOCKED**: Attempted to prove `limit_prod_seq` (limit of pointwise products) in `real_series.ac`, but verification failed due to complexity of multiplication inequalities and bounds handling.

**Next steps:**
- **Critical blocker**: Need a theorem about products of convergent sequences (`limit_prod_seq`), OR find an alternative proof approach that doesn't require this general theorem.
- Options to unblock:
  1. Wait for Real division (from `real_field.ac`) which might simplify the proof
  2. Try a more direct proof specific to the Cauchy product case
  3. Use rational sequence approximations more cleverly
- May need to show that `cauchy_seq(a, b)` converges (not just absolutely).

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
