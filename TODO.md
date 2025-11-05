# TODO

## Recently Completed

- ✅ **Split double sum by row index** (`src/real/double_sum.ac`): Added the helper `row_sum_offset` and proved `double_sum_split_row_index`, allowing a double sum to be decomposed into initial and tail row segments.
- ✅ **Finite sum of vanishing sequences** (`src/real/cauchy.ac:2145`): Added the helper definitions `finite_sum_seq` and proved `finite_sum_vanishes`, showing that summing a fixed number of sequences that each tend to zero also tends to zero.
- ✅ **Product of sequences** (`src/real/prod_seq.ac`): Defined `prod_seq` and proved that the product of two convergent sequences converges to the product of their limits. Includes helper lemmas for mixed inequality transitivity and closeness of products.

- ✅ **Cauchy product convergence** (`src/real/cauchy.ac:2031`): Proved `cauchy_seq_converges`, showing that the Cauchy product of two absolutely convergent series converges (not just absolutely converges). Uses `cauchy_product_abs_converges` combined with `absolutely_converges_imp_converges`.

- ✅ **Partial difference helper** (`src/real/cauchy.ac:2081`): Proved `partial_diff_vanishes_fixed_offset`, showing that for absolutely convergent series with fixed offset k, the difference `partial(abs_fn(a), n) - partial(abs_fn(a), n-k) → 0` as n → ∞. This is a key building block for showing individual tail triangle rows vanish.

---

## Next Steps

### 1. Tail Bound Convergence to Limit Difference

**File:** `src/real/cauchy.ac`

**Goal:** For absolutely convergent series, show that tail sums converge to the limit minus the cutoff:
```
For m fixed and n large: partial(abs_fn(a), n) - partial(abs_fn(a), m)
    approaches limit(partial(abs_fn(a))) - partial(abs_fn(a), m)
```

**Why needed:** For rows `i ≥ m` in the tail triangle, we need to bound their contribution by the tail of the series times a constant.

**Approach:**
- Use that partial(abs_fn(a), n) → limit(partial(abs_fn(a)))
- Subtract partial(abs_fn(a), m) from both sides
- Show convergence is preserved under constant subtraction

**Difficulty:** Easy (likely automatic with existing infrastructure)

---

### 2. Tail Triangle Vanishes

**File:** `src/real/cauchy.ac`

**Goal:** Prove that the tail triangle double sum vanishes:
```
For ε > 0, exists N such that for n ≥ N:
    double_sum(n, n, tail_triangle_product(abs_fn(a), abs_fn(b), n)) < ε
```

**Why needed:** This is the core missing piece for Mertens' theorem limit formula.

**Approach (two-stage epsilon argument):**

**Stage 1:** Choose cutoff m such that:
- Tail of a past m is small: `limit(partial(abs_fn(a))) - partial(abs_fn(a), m) < ε/(4*K_b)`
- Tail of b past m is small: `limit(partial(abs_fn(b))) - partial(abs_fn(b), m) < ε/(4*K_a)`
- Where K_a, K_b are the limits

**Stage 2:** For large n, split the double sum:
- **Region 1 (i < m):** Fixed rows, each vanishes by `partial_diff_vanishes_fixed_offset`
  - Sum vanishes by finite sum of vanishing terms (Step 1)
  - Contribution < ε/2 for large enough n

- **Region 2 (i ≥ m):** Growing rows, bounded by tail of series
  - Each row ≤ abs_fn(a)(i) * partial(abs_fn(b), n)
  - Sum over i ∈ [m, n) ≤ [tail of a] * [limit of b] < ε/2

**Stage 3:** Combine both regions < ε/2 + ε/2 = ε

**Difficulty:** Hard (requires Steps 1-3 complete, careful epsilon management)

**Key insight:** From `tail_triangle_row_sum_abs_eq_abs_diff`:
```
row_sum(n, tail_triangle_product(abs_fn(a), abs_fn(b), n), i) =
    abs_fn(a)(i) * (partial(abs_fn(b), n) - partial(abs_fn(b), n-i))
```

---

### 3. Limit Preservation Under Vanishing Difference

**File:** `src/real/cauchy.ac` or `src/real/real_seq.ac`

**Goal:** If two sequences differ by a vanishing amount and one converges, they have the same limit:
```
converges(s) and (forall ε > 0, exists N, forall n ≥ N, |s(n) - t(n)| < ε)
    implies converges(t) and limit(s) = limit(t)
```

**Why needed:** We have:
- `prod_seq(partial(a), partial(b))` converges to `limit(partial(a)) * limit(partial(b))`
- `|prod_seq - partial(cauchy_seq)| = tail_triangle` which vanishes
- Therefore `partial(cauchy_seq)` has the same limit

**Approach:**
- Show t(n) = s(n) + (t(n) - s(n))
- Since s converges and the difference vanishes, use limit laws
- May need to prove t converges first (Cauchy criterion)

**Difficulty:** Medium (depends on existing limit law infrastructure)

---

### 4. Mertens' Theorem - Limit Formula

**File:** `src/real/cauchy.ac`

**Goal:** Prove the complete limit formula:
```
limit(partial(cauchy_seq(a, b))) = limit(partial(a)) * limit(partial(b))
```

**Why needed:** This completes Mertens' theorem and enables proving `exp(x + y) = exp(x) * exp(y)`.

**Approach:**
- Use `partial_product_diff_abs_le`:
  ```
  |partial(a, n) * partial(b, n) - partial(cauchy_seq(a, b), n)|
      ≤ double_sum(n, n, tail_triangle...)
  ```
- By Step 4, the tail triangle vanishes
- By Step 5, the Cauchy product has the same limit as the product of partials
- By `limit_of_prod`, that limit is `limit(partial(a)) * limit(partial(b))`

**Difficulty:** Easy (once Steps 4-5 are complete, this is just assembly)

---

### 5. Define e^x via Power Series

**File:** New file `src/real/real_exp.ac`

**Goal:** Define the exponential function:
```
exp(x) = ∑_{n=0}^{∞} x^n / n!
```

**Tasks:**
1. Define factorial for Real (lift from `Nat.factorial` in `nat/nat_base.ac:712`)
2. Define the power series sequence: `exp_seq(x, n) = x^n / n!`
3. Define `exp(x) = limit(partial(exp_seq(x)))`
4. Prove convergence for all real x using ratio test

**Available resources:**
- ✅ `Nat.factorial` already defined
- ✅ Most limit and absolute value theorems exist
- Need: ratio test lemma (or prove inline)

---

### 6. Prove exp(x + y) = exp(x) * exp(y)

**File:** `src/real/real_exp.ac`

**Goal:** Prove the fundamental exponential property using Mertens' theorem

**Approach:**
1. Show exp_seq(x) and exp_seq(y) are absolutely convergent
2. Show exp_seq(x+y) equals the Cauchy product of exp_seq(x) and exp_seq(y)
   - Use binomial theorem: (x+y)^n / n! = sum of x^k/k! * y^(n-k)/(n-k)! (up to combinatorial factors)
3. Apply Mertens' theorem (Step 6) to get the limit formula
4. Conclude exp(x+y) = exp(x) * exp(y)

**Difficulty:** Medium (requires combinatorial lemmas about binomial coefficients)

---

### 7. Additional Properties of e^x

**File:** `src/real/real_exp.ac`

**Essential theorems:**

1. **`exp_zero`**: `exp(0) = 1`
   - Direct evaluation

2. **`exp_pos`**: `exp(x) > 0` for all x
   - For x ≥ 0: all terms positive
   - For x < 0: use exp(x) * exp(-x) = exp(0) = 1

3. **`exp_monotone`**: x < y implies exp(x) < exp(y)
   - Use series comparison or derivative

**Advanced (optional):**
- `exp_derivative`: d/dx(exp(x)) = exp(x)
- `exp_surjective`: For all y > 0, exists x such that exp(x) = y

---

## Tips

**Acorn-specific patterns:**
- Avoid nested lambdas in definitions - use named helper functions instead
- When inducting over bounded ranges with external constraints, induct on the _distance_ instead to enable Acorn's automatic induction
- Use `numerals` declarations sparingly - check if they already exist in the file
- Before proving a theorem, check if similar theorems exist that can be leveraged
- Run `acorn` frequently to catch errors early
- Be explicit with arithmetic - Acorn may not automatically prove things like `n - k >= big_n` from `big_n + k <= n`
