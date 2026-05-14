# Lattices

Goal: provide finite-infimum and finite-supremum structure for ordered objects.

- [ ] Decide the same-carrier API for bundled `Submodule` meet/inclusion before adding a submodule lattice operation

Status:

- The set-specific binary lattice API in `src/set_lattice.ac` is closed to downstream-independent expansion; use existing facts there as support, not as a target for more wrappers.
- `src/lattice.ac` now has theorem wrappers for the left distributivity laws, right-sided distributivity lemmas, left-sided absorption variants, one-sided monotonicity lemmas, basic meet/join equality iff aliases, equality consequences, commutation and reversed-associativity lemmas, and Mathlib-style `inf`/`sup` theorem aliases.
- `Nat`, `Int`, `Rat`, and `Real` now instantiate `DistribLattice` using their `min` and `max` operations.
- `src/list/list_lattice.ac` now has non-empty list meet/join constructions, list lower/upper bound predicates, pointwise element-bound theorems, and universal-property characterizations of list meet/join as greatest lower bounds and least upper bounds.
- `src/list/list_lattice.ac` now also has tail projection lemmas, lower/upper-bound aliases, non-empty concatenation fold laws for list meet/join, append-singleton fold laws, and projection inequalities for concatenation and append. These are exported through `src/list/default.ac`.
- `src/list/list_lattice.ac` now has list lower/upper bound split lemmas for cons and concatenation, monotonicity of list bounds, singleton/nonempty bound witnesses, and iff-style meet/join bounds for concatenation and append. These are exported through `src/list/default.ac`.
- `src/list/list_lattice.ac` now exposes `list_inf` / `list_sup` aliases over non-empty list meet/join, with exported singleton, cons, pair, concatenation, append, projection, and universal-property lemmas.
- `src/subgroup.ac` now has an unbundled inclusion order for subgroups, with reflexivity, transitivity, intersection lower-bound projections, and the greatest-lower-bound characterization for subgroup intersection. Bundled `PartialOrder`/`MeetSemilattice` instances still need decomposed proof support.
- `src/subsemigroup.ac` and `src/submonoid.ac` now have matching unbundled inclusion orders, intersection lower-bound projections, greatest-lower-bound characterizations for intersections, and bottom/top containment lemmas for their canonical empty/identity/full subobjects.
- `src/add_subgroup.ac` now has additive subgroup extensionality, intersection as an additive subgroup, unbundled inclusion order, greatest-lower-bound characterization for intersections, and canonical zero/full additive subgroup containment lemmas.
- `src/ideal.ac` now has an unbundled ideal lattice API: mutual-inclusion equality, meet/intersection GLB iff, commutativity, associativity, idempotence, absorption under inclusion, zero/unit meet identities, join/sum LUB iff, commutativity, associativity, idempotence, absorption under inclusion, and zero/unit join identities.
- `src/list/list_order.ac` now has iff bridges between list lower/upper/interval bounds and the corresponding membership-predicate bounds from `order_interval`.
- `src/list/list_order.ac` now has recursive lower-bound, upper-bound, and interval-bound split lemmas for nil, cons, concatenation, singleton, and append, plus exported aliases connecting list minima/maxima to the shared `list_lower_bound` / `list_upper_bound` predicates.
- `src/submodule.ac` now has bundled commutativity, associativity, and zero/full submodule identity laws for `Submodule.intersection` on equal-carrier submodules, completing the meet semilattice axioms at the bundled level.
- `src/submodule.ac` now has bundled `submodule_intersection_eq_left_of_subset` / `submodule_intersection_eq_right_of_subset` absorption laws for same-carrier submodules.
- `src/pair_order.ac` now has unbundled `pair_meet` and `pair_join` operations on `Pair[A, B]` for componentwise meet/join semilattice products, with component projection lemmas, lower/upper bound projections, and greatest-lower-bound / least-upper-bound iff characterizations.
- `src/pair_order.ac` now also has commutativity, idempotence, and associativity laws for `pair_meet` and `pair_join`, plus `pair_meet_eq_left_iff_lte` and `pair_join_eq_right_iff_lte` order characterizations.
- `src/pair_order.ac` now has the symmetric `pair_meet_eq_right_iff_lte` and `pair_join_eq_left_iff_lte` equalities, plus left and right pointwise monotonicity of `pair_meet` and `pair_join`.
- `src/pair_order.ac` now has lattice absorption laws for componentwise pair lattices: `pair_meet_absorb_join`, `pair_join_absorb_meet`, and their left-form variants.
- `src/pair_order.ac` now has componentwise distributivity laws for pair distributive lattices: left and right meet-over-join and join-over-meet distributivity (`pair_meet_join_distrib_left`/`_right`, `pair_join_meet_distrib_left`/`_right`).
- `src/pair_order.ac` now has `pair_swap_meet` and `pair_swap_join` showing that `Pair.swap` commutes with componentwise pair meet and join, plus the reverse-direction `pair_meet_eq_swap_meet_swap` and `pair_join_eq_swap_join_swap` identities.
- `src/pair_order.ac` now has joint two-sided monotonicity for componentwise pair meet and join: `pair_meet_lte_meet` and `pair_join_lte_join`.
- `src/pair_order.ac` now has diagonal-pair meet and join identities: `pair_meet_diag` and `pair_join_diag` show that componentwise meet and join of diagonal pairs are diagonal pairs of the underlying meet and join.
- `src/pair_order.ac` now has `pair_meet_new` and `pair_join_new` showing that componentwise meet/join of `Pair.new(a, b)` and `Pair.new(c, d)` equals `Pair.new(a.meet(c), b.meet(d))` and `Pair.new(a.join(c), b.join(d))` respectively.
