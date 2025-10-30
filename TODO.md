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

**Key insight:** Extracting lambda functions into named definitions (like `cauchy_coefficient`) enables proving properties about them. Direct reasoning with lambdas inside `sum(map(...))` is challenging in Acorn.

### 🚧 Next Steps

**Algebraic properties:**
- [ ] Linearity in first argument: `cauchy_product(c*a, b, n) = c * cauchy_product(a, b, n)`
- [ ] Linearity in second argument: `cauchy_product(a, c*b, n) = c * cauchy_product(a, b, n)`
- [ ] Distributivity: `cauchy_product(a + a', b, n) = cauchy_product(a, b, n) + cauchy_product(a', b, n)`

**Convergence theorems (the big ones):**
- [ ] **Cauchy product convergence:** If `∑ aₙ` and `∑ bₙ` both converge absolutely, then `partial(cauchy_seq(a, b))` converges
- [ ] **Cauchy product formula:** If both series converge absolutely, then `limit(partial(cauchy_seq(a, b))) = limit(partial(a)) * limit(partial(b))`

**Will need:**
- Lemmas connecting `cauchy_coefficient` to sequence operations (add_seq, mul_seq) for linearity/distributivity
- Connection between `partial(cauchy_seq(a, b))` and products of partial sums
- Bounds on partial sums of absolutely convergent series
- Double sum manipulation theorems

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
