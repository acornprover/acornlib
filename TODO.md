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

**Approach: Break down into helper lemmas**

To prove `limit_mul_seq`, we need these helper lemmas (in order of dependency):

1. ⚠️ **converges_imp_bounded**: Convergent sequences are bounded (ATTEMPTED - BLOCKED)
   - Statement: `converges(a) implies exists(bound: Real) { bound.is_positive and forall(i: Nat) { a(i).abs < bound } }`
   - This is fundamental - any Cauchy sequence is bounded
   - **Status**: Attempted multiple proof strategies but all fail with constraint solver:
     - Cannot find existential witness for `eventual_ub` on real sequences
     - Cannot find finite bound for initial segment
     - Triangle inequality not automatically applied
   - **Note**: The analogous theorem `converges_imp_bounded(a: Nat -> Rat)` works for rational sequences
   - **Issue**: Constraint solver treats Real (Dedekind cuts) differently from Rat

2. ⬜ **limit_bounded_by_seq_bound**: The limit is bounded by the sequence bound
   - Statement: `converges_to(a, lim_a) and bound.is_positive and (forall(i: Nat) { a(i).abs < bound }) implies lim_a.abs <= bound`
   - The limit can't be larger than the bound on all sequence elements

3. ⬜ **epsilon_division_helper**: Dividing epsilon by a positive bound
   - Statement: `eps.is_positive and bound.is_positive implies exists(eps2: Real) { eps2.is_positive and bound * eps2 + bound * eps2 < eps }`
   - This is algebraic: just take eps2 = eps / (2 * bound + 1)

4. ⬜ **triangle_ineq_mul_diff**: Triangle inequality for product differences
   - Statement: `(a * b - c * d).abs <= a.abs * (b - d).abs + d.abs * (a - c).abs`
   - Key algebraic fact: a*b - c*d = a*(b-d) + d*(a-c)

5. ⬜ **mul_pos_lt_mul**: Multiplication preserves strict inequality for non-negative reals
   - Statement: `a < bound and b < eps and not a.is_negative and not b.is_negative and bound.is_positive and eps.is_positive implies a * b < bound * eps`
   - This should be provable from existing real number axioms

6. ⬜ **limit_mul_seq**: The main theorem
   - Once all helpers are proven, complete the proof using these lemmas

**Then:**
7. ⬜ **Corner region analysis**: Show that the "corner" terms vanish in the limit
8. ⬜ **cauchy_product_limit**: Complete the main Cauchy product limit formula theorem

**Current state:**
- Theorem outline exists in `cauchy.ac` (commented out)
- `limit_mul_seq` attempted in `real_series.ac` but commented out due to constraint solver limitations
- Helper lemma `converges_imp_bounded` attempted with multiple approaches, all blocked by constraint solver
- All existing theorems verify successfully (8956/8959 OK - failures are only in the new helper lemma attempts)

**Key finding**: The constraint solver cannot handle existential quantifiers over Real sequences in the same way it handles Rat sequences. For Rat, it accepts `let a_ub: Rat satisfy { forall(i: Nat) { a(i).abs < a_ub } }` but for Real this fails. This is likely due to the difference in type definitions (Rat is algebraic, Real is Dedekind cuts).

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
