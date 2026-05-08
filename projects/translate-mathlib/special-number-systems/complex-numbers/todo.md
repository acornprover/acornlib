# Complex Numbers

Goal: round out the basic algebraic API of `Complex` so downstream analysis files (eventually `complex-analysis/`) can rely on it.

- [ ] Add a real-valued absolute value `Complex.abs` via `Real.sqrt` and prove `abs(0) = 0`, `abs(1) = 1`, `abs(i) = 1`, `abs(-a) = abs(a)`, `abs(a.conj) = abs(a)`, `abs(a*b) = abs(a)*abs(b)` (blocked on a general `Real.sqrt` — `top100/theorem_001_sqrt2_irrational.ac` only handles a single specific case)
- [ ] Prove the triangle inequality `abs(a+b) <= abs(a) + abs(b)` (needs Cauchy-Schwarz or expansion via `abs_squared`)
- [ ] Package `Complex` as a `Module[Real, Complex]` (scalar action `complex_real_smul` and its add-left/add-right/assoc/one/zero-left/zero-right lemmas already in `src/complex.ac`; `is_module_action(complex_real_smul)` closure currently times out — needs a smaller lemma chain or prover assist)
- [ ] Add `conj` as a ring/field automorphism (involution + multiplicative + additive packaged)
- [ ] Add `re`/`im` as additive group homomorphisms (with `Real`-linearity once a scalar action exists)
