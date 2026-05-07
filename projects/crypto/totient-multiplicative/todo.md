# Totient is multiplicative on coprime arguments

Goal: prove `m.coprime(n) implies (m * n).totient = m.totient * n.totient` in
`src/nat/nat_totient.ac`. Strategy: row-by-row counting on `[0, m*n)` using the
unique decomposition `x = q * m + r` with `r in [0, m)`, `q in [0, n)`.

Coprimality split:
- `gcd(x, m) = gcd(r, m)` (since `m | (x - r)`).
- `gcd(x, n)` is determined by `(q*m + r).mod(n)`; for `m.coprime(n)`, the
  map `q -> (q*m + r).mod(n)` is a bijection on `[0, n)`.
- `coprime_mul_iff`: `x.coprime(m * n) iff x.coprime(m) and x.coprime(n)`.

Already in `src/nat/nat_totient.ac`:
- `mod_add_mul_left(q, m, r)`: `(q * m + r).mod(m) = r.mod(m)`.
- `coprime_add_mul_left(q, m, r)`: `(q * m + r).coprime(m) = r.coprime(m)`.

## Building blocks

- [ ] Prove `q -> (q * m + r).mod(n)` is injective on `[0, n)` when `m.coprime(n)`.
- [ ] Prove the same map is surjective onto `[0, n)` when `m.coprime(n)`
      (preimage via `mod_inv(m, n) * (s - r)` with sign care, or argue from
      injectivity + finite cardinality).
- [ ] Define `count_coprime_in_row(m, n, r)` = `count_coprime_to(n, ?)` over
      `q in [0, n)` of `(q*m+r).coprime(n)`.
- [ ] Show `count_coprime_in_row(m, n, r) = n.totient` whenever `m.coprime(n)`.

## Aggregation

- [ ] Define `count_units_mn(m, n, k)` = number of `x in [0, k)` with
      `x.coprime(m * n)`. Show this equals `(m * n).totient` at `k = m * n`
      from the existing `count_coprime_to` definition.
- [ ] Decompose the count over rows: for `k = m * n`,
      `count_units_mn(m, n, m * n) = sum over r in [0, m) of [r.coprime(m)] *
      count_coprime_in_row(m, n, r)`.
- [ ] Combine the row counts: the sum is `m.totient * n.totient`.

## Headline

- [ ] Prove `totient_mul_coprime`: `m.coprime(n) implies
      (m * n).totient = m.totient * n.totient`. Reconcile with existing
      `totient_pq` (specialise to distinct primes).

## Notes

- `coprime_mul_iff` (in `nat_coprime.ac`) already gives the coprimality split.
- `mul_mod_inj_below` and `coprime_residues_mul_surj` (in `nat_totient.ac`)
  give the bijection skeleton for `q -> (a * q).mod(n)`; the `q*m + r` shift
  needs analogous lemmas with an additive offset.
- Once `totient_mul_coprime` lands, `totient_pq` can be re-derived from it
  plus `coprime_of_distinct_primes`.
