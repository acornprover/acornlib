# Totient Preimages and Least Primes, Erdos #456

Source: aimath `Number theory-34`, 4 May 2026. https://www.erdosproblems.com/456
Status: partial. Verification: community manuscript, expert review explicitly requested.
Value: uncertainty high, feasibility medium, importance medium.

Claim: for `p_n` the least prime congruent to `1 mod n` and `m_n` the least integer with `n` dividing
`totient(m_n)`, the manuscript addresses whether `m_n < p_n` almost always, whether `p_n / m_n` tends
to infinity almost always, and when `m_n = p` is unique.

Both quantities are least-witness definitions over existing `src/number_theory/totient.ac` and
congruence machinery. The definitions are close at hand; the almost-always claims are not.

## Todo

- [ ] Define `m_n` as the least `m` with `n` dividing `totient(m)`.
- [ ] Prove `m_n` exists, using a prime congruent to `1 mod n`.
- [ ] Define `p_n` as the least prime congruent to `1 mod n`.
- [ ] Prove `p_n` exists; this needs Dirichlet for the general case, so record what it depends on.
- [ ] Prove the easy comparison `m_n <= p_n`, since `totient(p_n)` is divisible by `n`.
- [ ] State the strict form `m_n < p_n` and identify exactly when equality holds.
- [ ] State the almost-always claims with an explicit density form.
- [ ] Attempt the uniqueness characterization, the most self-contained of the three parts.
- [ ] Record the outcome.

## Library demand

Feeds [reduced-residue-sums](../../translate-mathlib/baseline/reduced-residue-sums/todo.md)
and [asymptotic-density](../../translate-mathlib/baseline/asymptotic-density/todo.md).

- [ ] Least-witness definitions over the naturals, with existence from a supplied witness.
- [ ] Existence of primes in the residue class `1 mod n`, at least the cyclotomic special case.
- [ ] Preimages of `totient`, and the divisibility structure of `totient` values.
