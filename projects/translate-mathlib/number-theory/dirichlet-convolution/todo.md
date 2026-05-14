# Dirichlet Convolution

Goal: define `dirichlet_convolve(f, g)(n) = sum_{d | n} f(d) * g(n/d)` and develop its
basic algebra (identity, zero annihilator, commutativity, associativity).

- [ ] Prove commutativity of `dirichlet_convolve`
- [ ] Prove associativity of `dirichlet_convolve`
- [ ] Prove `dirichlet_convolve` of two multiplicative arithmetic functions is multiplicative

Status:

- `divisor_quotient(n, d)` is defined in `src/nat/nat_dirichlet.ac` via the
  `let ... satisfy` pattern: when `d` divides `n` it returns the unique cofactor
  with `d * divisor_quotient(n, d) = n`, and otherwise returns zero.
- `dirichlet_convolve(f, g)(n) = sum(map(divisor_list(n), dirichlet_term(f, g, n)))`
  is defined in the same file, with `dirichlet_term(f, g, n)(d) = f(d) * g(divisor_quotient(n, d))`.
- Base values are proved: `dirichlet_convolve(f, g)(0) = 0`, `dirichlet_convolve(f, g)(1) = f(1) * g(1)`.
- The zero annihilators `dirichlet_convolve(nat_zero_arithmetic_fn, g) = nat_zero_arithmetic_fn`
  and `dirichlet_convolve(f, nat_zero_arithmetic_fn) = nat_zero_arithmetic_fn` are proved,
  via the general list helper `sum_map_zero_fn(l, h)` (with its inductive predicate
  `sum_map_zero_pred`).
- The right identity law `dirichlet_convolve(f, nat_dirichlet_unit_fn)(n) = f(n)` for
  `n > 0` is proved (`dirichlet_convolve_unit_right`). The proof uses the cofactor
  characterisation `divisor_quotient_proper_not_one` (proper divisors give non-one
  cofactors), the per-term vanishing `dirichlet_term_unit_proper_zero`, and the
  bounded sum-vanishing helper `dirichlet_unit_right_below` proved by induction on
  the bound via `dirichlet_unit_right_below_step_yes`/`step_no` and the general
  cons-step lemma `sum_cons_zero_head`.
- The left identity law `dirichlet_convolve(nat_dirichlet_unit_fn, f)(n) = f(n)` for
  `n > 0` is proved (`dirichlet_convolve_unit_left`). The proof uses
  `dirichlet_term_unit_left_off_one` (the unit on the left vanishes off `d = 1`) and
  the bound-induction helper `dirichlet_unit_left_below`, with the base case
  `dirichlet_unit_left_below_step_one` extracting `f(n)` from `[1]` and the step
  cases `dirichlet_unit_left_below_step_above_yes`/`step_above_no` showing higher
  divisors contribute zero (using the value-preserving cons lemma
  `sum_cons_zero_head_eq`).
- Cofactor involution scaffolding for commutativity is in place:
  `divisor_quotient_divides` (the cofactor of a divisor is a divisor),
  `divisor_quotient_positive` (cofactors of positive `n` are positive),
  `divisor_of_positive_is_positive`, and the involution
  `divisor_quotient_involution`: `divisor_quotient(n, divisor_quotient(n, d)) = d`
  for positive `n` and `d | n`. The reindexing identity
  `dirichlet_term_flip` shows `dirichlet_term(f, g, n)(d) =
  dirichlet_term(g, f, n)(divisor_quotient(n, d))` for `d | n` and `n > 0`, ready
  to drive a permutation-based commutativity proof.
- Distributivity of Dirichlet convolution over pointwise addition is proved on
  both sides (`dirichlet_convolve_add_left`, `dirichlet_convolve_add_right`),
  via the pointwise-term splittings `dirichlet_term_add_left_eq` and
  `dirichlet_term_add_right_eq` and the list helper `map_sum_add`.
- A swap form of the Dirichlet convolution is in place. The helper
  `dirichlet_cofactor_term(f, g, n)(d) = dirichlet_term(g, f, n)(divisor_quotient(n, d))`
  satisfies `dirichlet_term_eq_cofactor_term` on divisors of positive `n`. The
  bounded induction `dirichlet_swap_below_pred` / `dirichlet_swap_below`
  (with step cases `dirichlet_swap_below_step_yes` / `step_no`) then yields
  `dirichlet_convolve_swap_form`:
  `dirichlet_convolve(f, g)(n) = sum(map(divisor_list(n), dirichlet_cofactor_term(f, g, n)))`
  for `n > 0`. The remaining work for commutativity is to reindex this sum
  along the cofactor involution as a permutation of `divisor_list(n)`.
