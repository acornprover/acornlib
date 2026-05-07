# Crypto

## Blockers

No current blockers.

## RSA

The headline `rsa_correctness` is proven directly from Fermat's little theorem
and the existing CRT (`nat_congr_combine_coprime`); the items below are not
required for it. They support the textbook formulation and downstream
cryptographic content.

`src/nat/nat_totient.ac` contains:
- `nat_totient` with `totient(p) = p - 1`,
  `totient(p * q) = (p - 1) * (q - 1)` for distinct primes, and
  `totient(p^(n.suc)) = p^(n.suc) - p^n` for any prime power, plus the
  factored form `totient(p^(n.suc)) = (p - 1) * p^n`
  (`totient_p_pow`, `totient_p_pow_factored`, plus the convenience
  corollary `totient_pp`).
- `coprime_pow_iff`: `k.coprime(p^(n.suc)) = k.coprime(p)` for prime `p`.
- `count_multiples`, `count_not_coprime_to`, `coprime_partition`,
  and the inclusion-exclusion identity `ie_pq_pred`.
- `coprime_residues(n)`: list of coprime residues in `[0, n)` with
  `coprime_residues_length` (= `nat_totient(n)`), the forward results
  `coprime_residues_all_coprime` and `coprime_residues_all_below`, the
  membership characterization
  `coprime_residues_contains_iff`: `contains(x) iff x < n and x.coprime(n)`,
  `coprime_residues_mul_mem`: multiplication by a coprime unit preserves
  membership, `coprime_residues_mul_inj` (with the underlying
  `mul_mod_inj_below`): injectivity on `[0, n)`,
  `coprime_residues_unique`: the list itself has no duplicates, and
  `coprime_residues_mul_surj`: the same multiplication is also
  surjective on `coprime_residues(n)`, with explicit preimage
  `(mod_inv(a, n) * x).mod(n)`. Together these give the membership /
  injectivity / surjectivity / no-duplicates bookkeeping needed for the
  product / permutation argument behind a general Euler proof.
- `mul_mod_fn(n, a)` and `mul_mod_residues(n, a)`: the named function
  `x -> (a*x).mod(n)` and the corresponding mapped list over
  `coprime_residues(n)`. `mul_mod_residues_length` (=
  `nat_totient(n)`), `mul_mod_residues_in_coprime` and
  `coprime_in_mul_mod_residues` give bidirectional element membership
  with `coprime_residues(n)`, `mul_mod_residues_unique` shows the
  mapped list has no duplicates, and `mul_mod_residues_is_permutation`
  packages everything into
  `is_permutation(mul_mod_residues(n, a), coprime_residues(n))`.
- `scalar_mul_fn(a)` and `product_map_scalar`:
  `product(map(l, λx. a*x)) = a^|l| * product(l)` for Nat lists.
  Pulls the constant factor out of every term — the algebraic shape
  the Euler product argument needs once it switches from
  `mul_mod_fn(n, a)` to plain `scalar_mul_fn(a)` via the per-element
  `(a*x).mod(n) ≡ a*x (mod n)` congruence.
- `product_coprime_of_all` and `product_coprime_residues_coprime`:
  the Nat product of any list of `n`-coprime values is itself coprime
  to `n`; in particular, `product(coprime_residues(n))` is coprime
  to `n` — the cancellation factor for the final
  `cancel_coprime` step.
- `product_map_cons`: rewriting helper
  `product(map(cons(h, t), f)) = f(h) * product(map(t, f))`. Plumbing
  for the eventual `mul_mod`-vs-`scalar_mul` congruence step.
- `euler_pq`: Euler's theorem at `p * q` for distinct primes.

`src/nat/nat_fermat.ac` contains `fermat_euler`: Euler's theorem at a
prime, derived from Fermat's little theorem by canceling `m`.

`src/nat/nat_modular_inverse.ac` contains `cancel_coprime` (modular
cancellation by a coprime factor) and `mod_inv_coprime`
(`mod_inv(a, n).coprime(n)` whenever `a.coprime(n)`), via the more
general `inverse_imp_coprime` (`a * b ≡ 1 (mod n) ⟹ b.coprime(n)`).

`src/nat/nat_coprime.ac` contains `coprime_mul_iff` and `coprime_mod_iff`
(coprimality is invariant under modular reduction).

- [ ] [totient-multiplicative](totient-multiplicative/todo.md): prove
      `nat_totient(m * n) = nat_totient(m) * nat_totient(n)` when
      `m.coprime(n)`, generalising `totient_pq`.
- `fermat_euler_general` (in `src/nat/nat_totient.ac`): for `n != 0` and
  `a.coprime(n)`, `a.pow(n.totient).congr_mod(1, n)`. Generalises both
  `fermat_euler` (prime moduli) and `euler_pq` (`p * q`) via the
  coprime-residues permutation argument. Helper
  `product_mul_mod_congr_scalar` packages the "products of element-wise
  congruent lists are congruent mod n" bridge.

## DSA

- [ ] Prove existence of an order-`q` element `g` in `(Z/p)*` when `q | p - 1`.

`src/crypto/dsa.ac` contains:
- `dsa_pow_order_reduce`: if `g.pow(q).mod(p) = 1` then
  `g.pow(k * q + r).mod(p) = g.pow(r).mod(p)`.
- `dsa_pow_mod_q`: if `g.pow(q).mod(p) = 1` then
  `g.pow(a).mod(p) = g.pow(a.mod(q)).mod(p)` — exponent only matters
  modulo `q`.
- `dsa_y_pow_congr`: if `y = g.pow(x).mod(p)` then
  `y.pow(b).congr_mod(g.pow(x * b), p)`.
- `dsa_combine_pow`: if `y = g.pow(x).mod(p)` then
  `(g.pow(a) * y.pow(b)).mod(p) = g.pow(a + x * b).mod(p)`.
- `dsa_exp_mod_q_factor`: pure-arithmetic mod-`q` identity
  `((h*sinv).mod(q) + x*(r*sinv).mod(q)).mod(q) = ((h + x*r)*sinv).mod(q)`.
- `dsa_k_times_s_congr`: from `s ≡ kinv*(h + x*r)` and
  `(k*kinv) ≡ 1` (mod `q`), `(k*s) ≡ h + x*r (mod q)`.
- `dsa_finish_congr`: from `(k*s) ≡ h + x*r` and `(s*sinv) ≡ 1`
  (mod `q`), `((h + x*r)*sinv) ≡ k (mod q)`.
- `dsa_k_times_s_from_mod`: lifted form of `dsa_k_times_s_congr`
  taking the integer `(k*kinv).mod(q) = 1` and
  `s = (kinv*(h+x*r)).mod(q)` hypotheses directly (assumes `1 < q`).
- `dsa_congr_to_eq`: a congruence `lhs ≡ k (mod q)` with `k < q`
  upgrades to `lhs.mod(q) = k`.

- [ ] Prove the DSA verification identity: for `s = kinv * (h + x*r) mod q`
      and `w = sinv mod q`, `(g^{h*w} * y^{r*w}) mod p mod q = r`.
- [ ] Uncomment and prove `dsa_correctness` in `src/crypto/dsa.ac`.

## ECDSA

- [ ] Provide a `CyclicGroup` typeclass with prime-order axiom (or reuse one).
- [ ] Prove `g.pow(a).pow(b) = g.pow(a * b)` follows from existing `pow_mul`.
- [ ] Prove `g.pow(k.mod(n)) = g.pow(k)` for `g` of order `n`.
- [ ] Define an elliptic curve point group and provide an `XCoord` instance.
- [ ] Uncomment and prove `ecdsa_correctness` in `src/crypto/ecdsa.ac`.
