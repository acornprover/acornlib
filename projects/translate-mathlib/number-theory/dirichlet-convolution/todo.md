# Dirichlet Convolution

Goal: define `dirichlet_convolve(f, g)(n) = sum_{d | n} f(d) * g(n/d)` and develop its
basic algebra (identity, zero annihilator, commutativity, associativity).

- [ ] Prove the left and right identity laws with `nat_dirichlet_unit_fn`
- [ ] Prove commutativity of `dirichlet_convolve`
- [ ] Prove associativity of `dirichlet_convolve`
- [ ] Prove `dirichlet_convolve` distributes over `arithmetic_fn_add`
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
