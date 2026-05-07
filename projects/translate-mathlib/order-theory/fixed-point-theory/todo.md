# Order-Theoretic Fixed Point Results

Goal: support the fixed-point theorems that rest primarily on monotonicity and completeness.

- [ ] Add least and greatest fixed point constructions in complete lattices
- [ ] Prove Knaster-Tarski style fixed point theorems
- [ ] Add monotone iteration results
- [ ] Support closure operators as fixed-point constructions
- [ ] Add applications to inductive definitions and invariants
- [ ] Connect fixed points with Galois insertions and complete lattices
- [ ] Add examples from set operators and algebraic closure operations
- [ ] Identify uses in topology, algebra, and semantics-oriented developments
- [ ] Refactor at least one later proof to use the fixed-point API once available

Status:

- `src/fixed_point.ac` defines `is_fixed_point`, `is_pre_fixed_point`, and `is_post_fixed_point`, with pre/post equivalence to fixed point, identity fixed point, and a fixed-point iteration lemma.
