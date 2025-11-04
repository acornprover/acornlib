# TODO

## Recently Completed

- ✅ **Product of sequences** (`src/real/prod_seq.ac`): Defined `prod_seq` and proved that the product of two convergent sequences converges to the product of their limits. Includes helper lemmas for mixed inequality transitivity and closeness of products.

- ✅ **Cauchy product convergence** (`src/real/cauchy.ac:2030`): Proved `cauchy_seq_converges`, showing that the Cauchy product of two absolutely convergent series converges (not just absolutely converges). Uses `cauchy_product_abs_converges` combined with `absolutely_converges_imp_converges`.

---

## Next Steps

### 1. Cauchy Product Limit Formula (Mertens' Theorem - Part 2)

**File:** `src/real/cauchy.ac`

**Goal:** Prove the limit formula for the Cauchy product:

```
limit(partial(cauchy_seq(a, b))) = limit(partial(a)) * limit(partial(b))
```

**Progress:**
- ✅ **Convergence proven**: `cauchy_seq_converges` shows the Cauchy product converges
- ✅ **Infrastructure exists**:
  - `partial_product_diff_abs_le`: bounds error in terms of tail triangle
  - `abs_conv_tail_bound`: tail sums can be made arbitrarily small
  - `limit_of_prod`: product of sequences has limit equal to product of limits
  - Extensive tail triangle analysis machinery

**What's needed:**
1. **Prove tail triangle vanishes**: Show that `double_sum(n, n, tail_triangle_product(abs_fn(a), abs_fn(b), n)) → 0`
   - Split analysis by fixing index m where tails are small
   - Bound contributions from regions where i≥m or j≥m
   - Use `abs_conv_tail_bound` to show these vanish

2. **Prove limit preservation under vanishing difference**:
   - Show if `seq1` converges and `|seq1(n) - seq2(n)| → 0`, then `limit(seq1) = limit(seq2)`
   - Or equivalently: express as `seq2 = seq1 - diff` and use limit subtraction laws

**Strategy:**
- The standard proof of Mertens' theorem involves a two-stage epsilon argument
- First, fix m such that tails past m are small (using `abs_conv_tail_bound`)
- Then, for large n, show the Cauchy partial sum captures the "head×head" product
- The "head×tail" and "tail×tail" contributions vanish as n increases
- This is a substantial proof requiring multiple helper lemmas

**Note:** See `src/real/cauchy.ac:2045-2076` for detailed proof outline and missing pieces.

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
