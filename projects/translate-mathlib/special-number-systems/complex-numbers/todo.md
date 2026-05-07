# Complex Numbers

Goal: round out the basic algebraic API of `Complex` so downstream analysis files (eventually `complex-analysis/`) can rely on it.

- [ ] Add a real-valued absolute value `Complex.abs` via `Real.sqrt` and prove `abs(0) = 0`, `abs(1) = 1`, `abs(i) = 1`, `abs(-a) = abs(a)`, `abs(a.conj) = abs(a)`, `abs(a*b) = abs(a)*abs(b)` (blocked on a general `Real.sqrt` — `top100/theorem_001_sqrt2_irrational.ac` only handles a single specific case)
- [ ] Prove the triangle inequality `abs(a+b) <= abs(a) + abs(b)` (needs Cauchy-Schwarz or expansion via `abs_squared`)
- [ ] Add `Complex` as an `R`-module / `Real`-vector-space style structure (scalar multiplication by `Real`)
- [ ] Add subtraction lemmas: `re_sub`, `im_sub`, `conj_sub`, `abs_squared_sub_self`
- [ ] Add division lemmas: `div_one`, `div_self` (for nonzero), `div_from_real`
- [ ] Add `conj` as a ring/field automorphism (involution + multiplicative + additive packaged)
- [ ] Add `abs_squared_mul`: `abs_squared(a*b) = abs_squared(a) * abs_squared(b)`
- [ ] Complete the `is_real` characterization: prove the converse `a.conj = a implies a.is_real` (needs a real-field lemma `x = -x implies x = Real.0`)
- [ ] Add `re`/`im` as additive group homomorphisms (with `Real`-linearity once a scalar action exists)
