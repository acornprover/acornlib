# Complete Lattices

Goal: support arbitrary suprema and infima, not just binary ones.

- [ ] Revisit list/range complement and distributivity facts after decomposing the remaining bundled-set lattice proof obligations
- [ ] Decide the minimal general `CompleteLattice` typeclass shape after more unbundled users exist
- [ ] Add general `sup`, `inf`, `sSup`, and `sInf` APIs once the receiver design is stable
- [ ] Add monotonicity lemmas for general `sSup` and `sInf`
- [ ] Add complete lattice APIs for predicates and bundled instances where the typeclass receiver supports them
- [ ] Support complete sublattices and closure operators
- [ ] Add least and greatest fixed point infrastructure based on completeness
- [ ] Connect complete lattices to topology and measure-theoretic constructions
- [ ] Record which downstream libraries should be migrated once this exists

Status:

- `src/set_lattice.ac` is closed to downstream-independent expansion. Do not add more general-purpose set-family, sequence-family, 4-ary-or-higher natural-family, or 4-ary-or-higher independent-product wrappers there.
- Additions to `src/set_lattice.ac` should only be maintenance fixes or narrow support for a named downstream theorem that cannot use the existing indexed-family API.
- A direct `Set[K]: PartialOrder` / `Lattice` instance still needs decomposed bundled-instance proof obligations for transitivity, antisymmetry, and meet/join semilattice wrappers. The verified unbundled API keeps set complete-lattice facts usable until those wrapper proofs are added.
- `src/order_bounds.ac` now provides the generic predicate-based bounds API over any `PartialOrder`: `is_lower_bound`, `is_upper_bound`, `is_least`, `is_greatest`, `is_glb`, and `is_lub`, with projection lemmas, predicate-inclusion monotonicity, below-a-lower-bound / above-an-upper-bound closure, uniqueness of least/greatest/glb/lub, and least↔glb / greatest↔lub correspondences. This settles the standard order characterizations of arbitrary suprema and infima ahead of a bundled `CompleteLattice` receiver.
- `src/order_bounds.ac` now also has set-inclusion monotonicity of `is_glb`/`is_lub` (enlarging a set lowers its infimum and raises its supremum), the explicit characterizations of the infimum as the `is_greatest` lower bound and the supremum as the `is_least` upper bound, and the binary-lattice instances: in a `MeetSemilattice`/`JoinSemilattice` the meet/join of two elements is the `is_glb`/`is_lub` of the two-element predicate `is_in_pair`.
- `src/order_bounds.ac` now has the singleton-set API: `is_singleton`, the lower/upper bound iff characterizations, and the singleton as its own least, greatest, infimum, and supremum.
- `src/order_bounds.ac` now also has the empty-set lower/upper bound facts (every element is a bound) and union-set bound facts via `pred_union`: each part inherits a bound of the union, and a common bound of both parts is a bound of the union.
- `src/order_bounds.ac` now has the binary union/meet/join compatibility: in a `MeetSemilattice`/`JoinSemilattice` the infimum/supremum of `pred_union(p, q)` is the meet/join of the individual infima/suprema.
- `src/order_bounds.ac` now has insertion bounds via `pred_insert`: a lower/upper bound of `pred_insert(a, p)` splits into a bound of `a` plus a bound of `p`, and combining the two reconstitutes the insertion bound.
- `src/order_bounds.ac` now has the insertion meet/join compatibility: in a `MeetSemilattice`/`JoinSemilattice` the infimum/supremum of `pred_insert(a, p)` is the meet/join of `a` with the infimum/supremum of `p`.
- `src/order_bounds.ac` now has predicate-equality transport for lower/upper bounds and for `is_glb`/`is_lub`, so pointwise-equal predicates share their bound structure.
- `src/order_bounds.ac` now has predicate-equality transport for `is_least` and `is_greatest`.
- `src/order_bounds.ac` now has iff-form predicate-equality transport for all six bound predicates (`is_lower_bound`, `is_upper_bound`, `is_glb`, `is_lub`, `is_least`, `is_greatest`).
- `src/order_bounds.ac` now has intersection bounds via `pred_inter`: a lower/upper bound of either part is automatically a lower/upper bound of the intersection.
- `src/order_bounds.ac` now has `is_bounded_above`/`is_bounded_below` set-level predicates with witnessing lemmas from explicit bounds, suprema/infima, and least/greatest elements; subset monotonicity; and empty-set and singleton boundedness.
- `src/order_bounds.ac` now has union and intersection boundedness lemmas: `union_bounded_above_of_common`/`union_bounded_below_of_common` lift a common explicit bound on both parts, and `inter_bounded_above_left`/`_right` and `inter_bounded_below_left`/`_right` inherit boundedness of `pred_inter(p, q)` from either side.
