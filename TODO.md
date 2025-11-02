# TODO

## 1. Cauchy Products - Phase 2: Convergence Proofs

**File:** `src/real/cauchy.ac`

**Status:** Infrastructure complete. Ready to prove convergence theorems.

### Next Steps

1. **`cauchy_partial_product_bound`** - TODO
   - Prove: `cauchy_product(a, b, m) <= partial(a, m.suc) * partial(b, m.suc)` for nonnegative a, b
   - Strategy: Use `double_sum_diagonal_bound` + `partial_product_as_double_sum`
   - This bounds each Cauchy partial product by the product of partial sums

2. **`cauchy_product_abs_converges`** (Mertens' Theorem) - TODO
   - Statement: If `absolutely_converges(a)` and `absolutely_converges(b)`, then `absolutely_converges(cauchy_seq(a, b))`
   - Strategy: Use comparison test with `cauchy_partial_product_bound`
   - This is the key convergence theorem for Cauchy products

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
