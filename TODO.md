# TODO

## 1. Cauchy Products - IN PROGRESS

**File:** `src/real/cauchy.ac`

Define and prove properties of the Cauchy product of two infinite series.

The Cauchy product of two series `∑ aₙ` and `∑ bₙ` is:
```
∑ cₙ where cₙ = ∑_{k=0}^{n} aₖ * b_{n-k}
```

**Why it matters:** Essential for proving `e^x * e^y = e^(x+y)` and other properties of power series.

### ✅ Completed

**Infrastructure:**
- Core definitions: `cauchy_coefficient`, `cauchy_product`, `cauchy_seq`
- Zero behavior: products with zero sequences give zero
- Base case: `cauchy_product(a, b, 0) = a(0) * b(0)`
- Commutativity: `cauchy_product(a, b, n) = cauchy_product(b, a, n)` ✅

**Algebraic properties:**
- [x] Linearity in first argument: `cauchy_product(mul_fn(c, a), b, n) = c * cauchy_product(a, b, n)` ✅
- [x] Linearity in second argument: `cauchy_product(a, mul_fn(c, b), n) = c * cauchy_product(a, b, n)` ✅
- [x] Distributivity in first argument: `cauchy_product(add_fn(a, aa), b, n) = cauchy_product(a, b, n) + cauchy_product(aa, b, n)` ✅
- [x] Distributivity in second argument: `cauchy_product(a, add_fn(b, bb), n) = cauchy_product(a, b, n) + cauchy_product(a, bb, n)` ✅

**Partial sum properties:**
- [x] Zero behavior: `partial(cauchy_seq(const(0), b), n) = 0` and symmetric ✅
- [x] Distributivity: `partial(cauchy_seq(add_fn(a, aa), b), n) = partial(cauchy_seq(a, b), n) + partial(cauchy_seq(aa, b), n)` (both arguments) ✅
- [x] Linearity: `partial(cauchy_seq(mul_fn(c, a), b), n) = c * partial(cauchy_seq(a, b), n)` (both arguments) ✅

**Key insight:** Extracting lambda functions into named definitions (like `cauchy_coefficient`) enables proving properties about them. Direct reasoning with lambdas inside `sum(map(...))` is challenging in Acorn.

### 🚧 Next Steps

**Phase 1: Absolute Convergence Infrastructure** (CURRENT)

Build the foundation for reasoning about absolutely convergent series. This is essential for proving the Cauchy product convergence theorem.

**Definitions:**
- [x] `abs_fn(a: Nat -> Real)`: Takes a sequence and returns the sequence of absolute values ✅
- [x] `absolutely_converges(a)`: Predicate meaning `converges(partial(abs_fn(a)))` ✅

**Basic properties of abs_fn:**
- [x] `abs_fn_zero`: `abs_fn(const(0))(n) = 0` for all n ✅
- [x] `abs_fn_nonneg`: `forall n, abs_fn(a)(n) >= 0` ✅
- [x] `abs_fn_scalar_mul`: `abs_fn(mul_fn(c, a))(n) = c.abs * abs_fn(a)(n)` ✅
- [x] `abs_fn_eq_compose`: Shows `abs_fn` is equivalent to `compose(Real.abs, _)` ✅

**Absolute convergence theorems:**
- [x] `absolutely_converges_imp_converges`: Absolute convergence implies convergence ✅
  - Connects to existing `abs_conv_imp_conv` from real_series.ac
- [x] `absolutely_converges_scalar_mul`: Scalar multiple of absolutely convergent series is absolutely convergent ✅
- [x] `absolutely_converges_add`: Sum of absolutely convergent series is absolutely convergent ✅
  - Uses comparison test and triangle inequality

**Still needed for Cauchy products:**
- [x] `abs_conv_tail_bound`: If series converges absolutely, tail sums are bounded ✅
  - `absolutely_converges(a) implies forall(ε > 0) exists(N) forall(n >= N, m >= N): sum_{k=n}^{m} |a(k)| < ε`

**Phase 2: Cauchy Product Convergence** (IN PROGRESS)

Once we have absolute convergence infrastructure:
- [ ] **Cauchy product convergence:** If `∑ aₙ` and `∑ bₙ` both converge absolutely, then `partial(cauchy_seq(a, b))` converges
  - Framework established with proven building blocks
  - Key lemmas identified, some blocked on infrastructure (see below)
- [ ] **Cauchy product formula:** If both series converge absolutely, then `limit(partial(cauchy_seq(a, b))) = limit(partial(a)) * limit(partial(b))`

**Completed:**
- ✅ `sum_triangle_ineq`: |sum(list)| ≤ sum(|elements|) - Proven by structural induction (src/real/cauchy.ac:806)
- ✅ `cauchy_coefficient_abs_bound`: |a(k)*b(n-k)| ≤ |a(k)|*|b(n-k)| (src/real/cauchy.ac:884)
- ✅ `lte_fn`: Definition for pointwise inequality on Nat -> Real functions (src/real/cauchy.ac:850)
- ✅ `sum_map_range_le`: If lte_fn(f,g), then sum(map(n.range,f)) ≤ sum(map(n.range,g)) (src/real/cauchy.ac:856)
  - **Key insight**: Reuse existing `partial_seq_lte` instead of reproving transitivity from scratch
- ✅ `cauchy_product_abs_bound`: |cauchy_product(a,b,n)| ≤ cauchy_product(|a|,|b|,n) (src/real/cauchy.ac:899)
  - Uses: sum_triangle_ineq + map_map + cauchy_coefficient_abs_bound + sum_map_range_le
  - Critical building block for proving Cauchy product convergence!

**Still TODO:**
- `cauchy_partial_product_bound`: partial(cauchy_seq(a,b),n) ≤ partial(a,n) * partial(b,n)
  - Key lemma for convergence - shows Cauchy product sums bounded by product of sums
  - Will need double sum manipulation theorems
- `cauchy_product_abs_converges`: Main convergence theorem using comparison test
- Cauchy product formula (limit equals product of limits)

**Lessons learned:**
- When proving inequality combinations, work with Acorn's existing optimized infrastructure
- The `partial` function and `partial_seq_lte` are well-optimized; reuse them when possible
- Converting problems to use `partial` rather than raw `sum(map(...))` can unlock existing theorems

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
