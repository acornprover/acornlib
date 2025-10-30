# TODO

## 1. Cauchy Products - IN PROGRESS

**File:** `src/real/cauchy.ac`

Define and prove properties of the Cauchy product of two infinite series: `∑ cₙ where cₙ = ∑_{k=0}^{n} aₖ * b_{n-k}`

**Why it matters:** Essential for proving `e^x * e^y = e^(x+y)` and other properties of power series.

---

### Phase 1: Basic Infrastructure ✅ COMPLETE

**Core definitions and algebraic properties:**
- ✅ Definitions: `cauchy_coefficient`, `cauchy_product`, `cauchy_seq`
- ✅ Commutativity, linearity, distributivity (both arguments)
- ✅ Partial sum properties (zero behavior, distributivity, linearity)

**Absolute convergence infrastructure:**
- ✅ `abs_fn`, `absolutely_converges` and basic properties
- ✅ `absolutely_converges_imp_converges`, `absolutely_converges_scalar_mul`, `absolutely_converges_add`
- ✅ `abs_conv_tail_bound`: Tail sums of absolutely convergent series can be made arbitrarily small

---

### Phase 2: Convergence Proofs 🚧 IN PROGRESS

**✅ Recently Completed:**
- ✅ `sum_triangle_ineq`: |sum(list)| ≤ sum(|elements|) (line 806)
- ✅ `lte_fn`: Pointwise inequality abstraction (line 850)
- ✅ `sum_map_range_le`: Pointwise bounds imply sum bounds (line 856)
  - **Key insight**: Leverages existing `partial_seq_lte` infrastructure
- ✅ `cauchy_coefficient_abs_bound`: |a(k)*b(n-k)| ≤ |a(k)|*|b(n-k)| (line 884)
- ✅ `cauchy_product_abs_bound`: |cauchy_product(a,b,n)| ≤ cauchy_product(|a|,|b|,n) (line 899) ⭐
- ✅ `partial_zero`: Helper lemma showing partial(f, 0) = 0 (line 936)
- ✅ `partial_mul_scalar_right`: Right scalar multiplication through partial sums (line 946)

**🎯 Next: Prove Convergence (Mertens' Theorem)**

These three theorems complete the proof that Cauchy products of absolutely convergent series converge:

1. **`cauchy_partial_product_bound`** 🚧 IN PROGRESS (line 987, commented out)
   - Statement: For nonnegative sequences, `partial(cauchy_seq(a,b),n) ≤ partial(a,n) * partial(b,n)`
   - Status: Base case proven, inductive step scaffolded.
   - Current work: Building helper lemmas for double sum manipulation
   - Helper lemmas needed:
     - ✅ `partial_mul_scalar_right` - Complete (line 946)
     - ✅ `double_sum` definition - Complete (line 966)! Uses tuple type `(Nat, Nat) -> Real`
     - 🚧 `partial_product_as_double_sum` - Scaffolded (line 974, commented out)
     - ⏳ Cauchy partial sum as restricted double sum
     - ⏳ Subset inequality for sums of nonnegative terms

2. **`cauchy_product_abs_converges`** (Mertens' Theorem)
   - Statement: If `absolutely_converges(a)` and `absolutely_converges(b)`, then `absolutely_converges(cauchy_seq(a, b))`
   - Strategy: Use comparison test with `cauchy_partial_product_bound`
   - Partially scaffolded starting at line 933

3. **Cauchy product formula**
   - Statement: `limit(partial(cauchy_seq(a, b))) = limit(partial(a)) * limit(partial(b))`
   - Will need: Theorem about products of convergent sequences

---

### Lessons Learned

**Working with Acorn's verifier:**
- ✅ Reuse existing optimized infrastructure (like `partial_seq_lte`) rather than reproving from scratch
- ✅ Convert problems to use `partial` when possible - it unlocks powerful existing theorems
- ✅ Abstract patterns into definitions (like `lte_fn`) for cleaner reasoning
- ✅ When inequality transitivity is needed, look for existing theorems that already handle it

## 2. Define e^x via Power Series

Define the exponential function for real numbers using the power series:
```
e^x = ∑_{n=0}^{∞} x^n / n!
```

**Implementation approach:**
- Define as a limit: `exp(x) = limit(partial(function(n) { x^n / n! }, _))`
- Prove convergence for all real x
- May need to work with Real or Rat first, then generalize

**Files involved:**
- New file `src/real/real_exp.ac` or extend `src/real/real_series.ac`
- Will need factorial for Real (lift from Nat factorial)

## 3. Prove Properties of e^x

Once e^x is defined, prove its fundamental properties:

**Essential theorems:**
- [ ] `exp_zero`: `e^0 = 1`
- [ ] `exp_add`: `e^x * e^y = e^(x+y)` (uses Cauchy product!)
- [ ] `exp_pos`: `e^x > 0` for all x
- [ ] `exp_derivative`: `d/dx(e^x) = e^x` (if we develop calculus)
- [ ] Relationship to natural logarithm (if we define ln)
- [ ] Taylor series convergence properties

**Connection to binomial theorem:**
The binomial theorem gives the finite approximation:
```
(1 + x/n)^n = ∑_{k=0}^{n} (n choose k) * (x/n)^k
```
As n → ∞, this approaches e^x, providing an alternative definition and a bridge between discrete and continuous mathematics.
