# TODO

## Recently Completed

- ✅ **Product of sequences** (`src/real/prod_seq.ac`): Defined `prod_seq` and proved that the product of two convergent sequences converges to the product of their limits. Includes helper lemmas for mixed inequality transitivity and closeness of products.

---

## Next Steps

### 1. Cauchy Product Convergence

**File:** `src/real/cauchy.ac`

**Goal:** Prove that the Cauchy product of two convergent series converges to the product of their limits:

```
limit(partial(cauchy_seq(a, b))) = limit(partial(a)) * limit(partial(b))
```

**Already proven:**
- ✅ **Mertens' Theorem** (`cauchy_product_abs_converges`): The Cauchy product of two absolutely convergent series is absolutely convergent
- ✅ Extensive machinery for tail triangles, double sums, and indicator functions
- ✅ Bounds relating tail contributions to products of absolute partial sums

**What's needed:**
1. Prove that `cauchy_seq(a, b)` converges (not just absolutely converges)
   - Use the absolute convergence result plus the fact that absolute convergence implies convergence
2. Prove the limit formula using the convergence of products (can now use `limit_of_prod` from `prod_seq.ac`)

**Strategy:**
- The new `prod_seq` theorems should be helpful for relating limits of products
- May need to connect the Cauchy product partial sums to products of partial sums
- The extensive tail analysis already done provides the key estimates

---

### 2. Define e^x via Power Series

**File:** New file `src/real/real_exp.ac`

**Goal:** Define the exponential function:

```
exp(x) = ∑_{n=0}^{∞} x^n / n!
```

**Tasks:**
1. Define factorial for Real (lift from `Nat.factorial` defined in `nat/nat_base.ac:712`)
2. Define the power series sequence: `exp_seq(x, n) = x^n / n!`
3. Define `exp(x) = limit(partial(exp_seq(x)))`
4. Prove convergence for all real x
   - Use ratio test: `|a_{n+1}| / |a_n| = |x| / (n+1) → 0` as `n → ∞`
   - Or use comparison with a known convergent series

**Available resources:**
- ✅ `Nat.factorial` already defined in `nat/nat_base.ac:712`
- ✅ Most limit and absolute value theorems exist in `real_seq.ac` and `real_base.ac`
- Need: ratio test lemma (or prove inline)

---

### 3. Prove Properties of e^x

**File:** `src/real/real_exp.ac`

**Essential theorems:**

1. **`exp_zero`**: `exp(0) = 1`
   - Direct evaluation: `0^n / n! = 0` for `n > 0`, and `0^0 / 0! = 1`

2. **`exp_add`**: `exp(x + y) = exp(x) * exp(y)` (uses Cauchy product!)
   - Use Mertens' Theorem from Cauchy product work
   - Show that `exp_seq(x+y)` equals the Cauchy product of `exp_seq(x)` and `exp_seq(y)`
   - Apply the limit formula from step 1

3. **`exp_pos`**: `exp(x) > 0` for all x
   - For `x ≥ 0`: all terms positive, so partial sums positive
   - For `x < 0`: use `exp(x) * exp(-x) = exp(0) = 1`, so `exp(x) = 1/exp(-x) > 0`

4. **`exp_monotone`**: `x < y` implies `exp(x) < exp(y)`
   - Use that the derivative is positive (if calculus available)
   - Or use series comparison

**Advanced (optional):**
- `exp_derivative`: `d/dx(exp(x)) = exp(x)` (requires calculus framework)
- `exp_surjective`: For all y > 0, there exists x such that exp(x) = y

---

## Tips

**Acorn-specific patterns:**
- Avoid nested lambdas in definitions - use named helper functions instead
- When inducting over bounded ranges with external constraints, induct on the _distance_ instead to enable Acorn's automatic induction
- Use `numerals` declarations sparingly - check if they already exist in the file
- Before proving a theorem, check if similar theorems exist that can be leveraged
- Run `acorn` frequently to catch errors early
