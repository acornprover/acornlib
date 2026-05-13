# Complex Numbers

Goal: round out the basic algebraic API of `Complex` so downstream analysis files (eventually `complex-analysis/`) can rely on it.

- [ ] Add a real-valued absolute value `Complex.abs` via `Real.sqrt` and prove `abs(0) = 0`, `abs(1) = 1`, `abs(i) = 1`, `abs(-a) = abs(a)`, `abs(a.conj) = abs(a)`, `abs(a*b) = abs(a)*abs(b)`; this needs a general `Real.sqrt` API
- [ ] Prove the triangle inequality `abs(a+b) <= abs(a) + abs(b)` (needs Cauchy-Schwarz or expansion via `abs_squared`)
- [ ] Package `Complex` as a `Module[Real, Complex]` (scalar action `complex_real_smul` and its add-left/add-right/assoc/one/zero-left/zero-right lemmas already in `src/complex.ac`; close `is_module_action(complex_real_smul)` with a smaller lemma chain)
- [ ] Add `conj` as a ring/field automorphism: function-level `complex_conj_fn` with pointwise add/mul/one/involution lemmas now in `src/complex_conj_hom.ac`
- [ ] Package `complex_re_fn`/`complex_im_fn` as `AddGroupHom[Complex, Real]` using helper lemmas `complex_re_fn_add`/`complex_im_fn_add`
- [ ] Add `re`/`im` `Real`-linearity once a scalar action exists
- [ ] Extend `is_real` closure: sums of indexed real terms (natural-power closure in `src/complex_pow.ac` as `is_real_pow`; integer-power version still needs `pow` over `Int`)
- [ ] Build out complex-sequence convergence API in `src/complex_seq.ac` (add/sub/scale/neg/conj/const-shift/real-scalar-smul in place; `complex_mul_seq` defined with componentwise re/im and const-left convergence; remaining: general pointwise-multiplication convergence (needs bounded-sequence machinery for real sequences), and reciprocal/quotient convergence)
