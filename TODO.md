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

1. **`partial_product_as_double_sum`** ⏳ TODO
   - Statement: `partial(a,n) * partial(b,n) = double_sum(n, n, function(i,j) { a(i) * b(j) })`
   - Strategy: Use `double_sum_col_expand` and induction
   - Note: Use named helpers like `row_sum` to avoid lambda issues

2. **`cauchy_partial_product_bound`** ⏳ TODO (commented scaffolding around line ~1200)
   - Statement: For nonnegative sequences, `partial(cauchy_seq(a,b),n) ≤ partial(a,n) * partial(b,n)`
   - Strategy: Show Cauchy product is subset of full product expansion
   - Depends on: `partial_product_as_double_sum` or alternative approach

3. **`cauchy_product_abs_converges`** ⏳ TODO (Mertens' Theorem)
   - Statement: If `absolutely_converges(a)` and `absolutely_converges(b)`, then `absolutely_converges(cauchy_seq(a, b))`
   - Strategy: Use comparison test with `cauchy_partial_product_bound`

4. **Cauchy product limit formula** ⏳ TODO
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
**Blocking issue:** Need to prove `partial_product_as_double_sum` using the lambda-avoiding technique
**Next milestone:** Complete Mertens' Theorem → Define e^x → Prove e^x properties

