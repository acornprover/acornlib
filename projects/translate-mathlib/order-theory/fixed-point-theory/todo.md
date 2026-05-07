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
- `src/fixed_point.ac` now has monotone-iteration wrappers: a monotone map preserves pre-fixed, post-fixed, and fixed points, and a monotone map sandwiched between a post-fixed lower bound and a pre-fixed upper bound preserves the bound on the image.
- `src/fixed_point.ac` now has `Nat`-indexed iterate wrappers built on `dynamical_systems.iterate`: every iterate of a pre-fixed point stays below the point, every iterate of a post-fixed point stays above, fixed-point iterates collapse to the point, and pre-fixed/post-fixed iterates form descending/ascending chains step-by-step.
- `src/fixed_point.ac` now has iterate-distance wrappers showing every iterate of a pre-fixed/post-fixed/fixed point under a monotone map is itself a pre-fixed/post-fixed/fixed point, and that iterating further descends (pre-fixed) or ascends (post-fixed) by an arbitrary `Nat` distance.
