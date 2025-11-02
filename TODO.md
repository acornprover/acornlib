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
   - **Remaining work:** Need lemma to compare double sums pointwise, and prove `partial_cauchy_as_triangle`

2. **`cauchy_product_abs_converges`** (Mertens' Theorem) - PROOF STRUCTURE COMPLETE (commented out)
   - Statement: If `absolutely_converges(a)` and `absolutely_converges(b)`, then `absolutely_converges(cauchy_seq(a, b))`
   - Strategy documented:
     * Show `abs_fn(cauchy_seq(a, b)) <= cauchy_seq(abs_fn(a), abs_fn(b))` pointwise
     * Apply `cauchy_partial_product_bound` to abs_fn sequences
     * Use monotone_convergence_principle with bounded increasing sequence
   - All key steps outlined with clear reasoning
   - **Remaining work:** Need to formalize upper bound extraction from convergent sequences and complete the monotone convergence argument

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
