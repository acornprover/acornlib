# Order-Theoretic Fixed Point Results

Goal: support the fixed-point theorems that rest primarily on monotonicity and completeness.

- [ ] Add least and greatest fixed point constructions in complete lattices
- [ ] Prove Knaster-Tarski style fixed point theorems
- [ ] Connect fixed-point sets with complete-lattice infimum/supremum constructions
- [ ] Add applications to inductive definitions and invariants
- [ ] Connect fixed points with complete-lattice APIs once the general complete-lattice receiver design is stable
- [ ] Add examples from set operators and algebraic closure operations
- [ ] Identify uses in topology, algebra, and semantics-oriented developments
- [ ] Refactor at least one later proof to use the fixed-point API once available

Status:

- `src/fixed_point.ac` defines `is_fixed_point`, `is_pre_fixed_point`, and `is_post_fixed_point`, with pre/post equivalence to fixed point, identity fixed point, and a fixed-point iteration lemma.
- `src/fixed_point.ac` now has monotone-iteration wrappers: a monotone map preserves pre-fixed, post-fixed, and fixed points, and a monotone map sandwiched between a post-fixed lower bound and a pre-fixed upper bound preserves the bound on the image.
- `src/fixed_point.ac` now has `Nat`-indexed iterate wrappers built on `dynamical_systems.iterate`: every iterate of a pre-fixed point stays below the point, every iterate of a post-fixed point stays above, fixed-point iterates collapse to the point, and pre-fixed/post-fixed iterates form descending/ascending chains step-by-step.
- `src/fixed_point.ac` now has iterate-distance wrappers showing every iterate of a pre-fixed/post-fixed/fixed point under a monotone map is itself a pre-fixed/post-fixed/fixed point, and that iterating further descends (pre-fixed) or ascends (post-fixed) by an arbitrary `Nat` distance.
- `src/fixed_point.ac` now has `monotone_iterate_le_of_le` (equal-length iterates of a monotone map preserve `<=`) and `monotone_iterate_sandwich_middle` (iterates from `y <= x` stay ordered).
- `src/fixed_point.ac` packages fixed, pre-fixed, and post-fixed points as sets, proves fixed points are exactly the intersection of pre-fixed and post-fixed points, and adds iterate bounds between post-fixed lower bounds and pre-fixed upper bounds.
- `src/galois_connection.ac` exposes the generic `is_fixed_by` predicate plus closure/kernel operator image-fixed and comparison-with-fixed-point lemmas.
- `src/set.ac` mirrors those closure/kernel operator comparison lemmas for set closure and kernel operators.
- `src/fixed_point.ac` now has index-monotone iterate lemmas (`monotone_iterate_pre_fixed_anti_index`, `monotone_iterate_post_fixed_mono_index`) and any-map fixed-point iterate equalities (`fixed_point_iterate_eq`, `fixed_point_iterate_eq_iterate`).
- `src/fixed_point.ac` now has set-level closure lemmas: monotone maps map the fixed/pre-fixed/post-fixed point sets to themselves pointwise and iterate-wise.
- `src/fixed_point.ac` now bridges fixed points with `is_fixed_by`, closure operators, kernel operators, and Galois-induced closure/kernel maps: closure pre-fixed points and kernel post-fixed points are exactly fixed points, and Galois closure/kernel images are fixed points.
- `src/fixed_point.ac` now also has additional monotone-iterate sandwich and index-comparison lemmas, single-step iterate bounds via `f(x)`, lower-iterate bounds for pre-fixed points, and forall-wrapped closure properties for the fixed/pre-fixed/post-fixed point sets.
- `src/fixed_point.ac` now has composition and common-fixed-point lemmas: a common fixed point of two self-maps is a fixed point of their composition, a fixed point is fixed by the self-composition, fixed points of the composition with a fixed inner map are fixed points of the outer map, identity composition (either side) preserves fixed points, and the `common_fixed_point_set` of two maps with its membership characterization, commutativity, and containment in each map's fixed-point set. (The set-level containment of the common fixed-point set in the composition's fixed-point set times out from `compose`-lambda search blowup; the pointwise `fixed_point_of_compose_of_common` covers the math.)
