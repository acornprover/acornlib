# Products, Opposites, and Units

Goal: support standard derived algebraic constructions that recur throughout Mathlib.

- [ ] Add bundled direct products of algebraic structures with standard instances
- [ ] Design an indexed or finite-support product abstraction before adding any new product API that would otherwise need 4-ary-or-higher wrappers
- [ ] Package the group of units as a `Group` instance once generic bundled instances are reliable
- [ ] Add bundled homomorphism transport lemmas for product structures once bundled products are available
- [ ] Add the remaining product-valued finite-supportedness wrappers for coordinate construction and pointwise addition after the existential-witness proofs are decomposed
- [ ] Add a compact boolean `iff` wrapper for pointwise unit predicates once the directional lemmas are enough for reliable proof search
- [ ] Refactor representative proofs to use product and unit APIs directly

Progress: `src/product_algebra.ac` now provides unbundled componentwise operations on binary products (`pair_add`, `pair_mul`, `pair_zero`, `pair_one`, `pair_neg`, `pair_inverse`) with coordinate projection lemmas and associativity, commutativity, identity, inverse, semiring distributivity, zero-absorption, map-zero/map-one, swap-transport, and inverse-transport laws for the corresponding algebraic hypotheses.

Progress: `src/units.ac` now provides bundled monoid units, the unbundled `is_monoid_unit` predicate, identity/product/inverse operations on units, projection lemmas, inverse uniqueness, identity laws, inverse laws, associativity, inverse-of-product, ring cancellation/zero-kernel lemmas for multiplication by a unit value, and field-specific nonzero/unit/inverse characterizations.

Progress: `src/units.ac` now has unbundled monoid-unit construction from inverse witnesses, multiplication closure, and natural-power closure; `src/comm_ring_unit.ac` also has commutative-ring `is_unit` power closure and a field nonzero-power unit bridge.

Progress: `src/opposite_algebra.ac` now provides unbundled opposite multiplication with associativity, commutativity, monoid identity, group inverse, semiring zero/distributivity, and homomorphism preservation lemmas.

Progress: `src/opposite_order.ac` now provides unbundled `opposite_lte`, with reversal/swap lemmas, preservation of reflexivity/transitivity/antisymmetry from generic relation properties, derived partial-order reflexivity/transitivity/antisymmetry, linear-order totality, and agreement with `>=`.

Progress: `src/function_algebra.ac` now provides shared pointwise operations on functions (`pointwise_add`, `pointwise_mul`, `pointwise_zero`, `pointwise_one`, `pointwise_neg`, `pointwise_inverse`) with application, associativity, commutativity, identity, inverse, semiring distributivity, and zero-absorption laws.

Progress: `src/function_product_algebra.ac` now specializes the shared function-level pointwise API to binary and ternary products of function spaces, with evaluation, coordinate, eta, pointwise operation, associativity, commutativity, identity, inverse, semiring distributivity, and zero-absorption laws. Existing quaternary and quinary helper layers should not be extended or used as a pattern for more fixed-arity APIs. Bundled product instances remain deferred until generic bundled instances are reliable.

Progress: `src/product_units.ac` now connects bundled monoid units with unbundled componentwise product units, including value/inverse pairs, coordinate unit reflection, construction from component units, compact componentwise iff, identity, inverse-witness, multiplication-closure lemmas, group-pair unit construction, inverse-pair unit construction, and coordinate zero-kernel/cancellation lemmas for multiplication by pair units over rings. `src/units.ac` also exposes unbundled `is_monoid_unit` zero-kernel, nonzero, and cancellation lemmas. Whole-pair cancellation wrappers still need decomposed proofs; the verified directional and coordinate lemmas remain available.

Progress: `src/finite_support.ac` now provides unbundled finite-support predicates for zero-valued tails of functions, including zero-function support, closure under pointwise addition, negation, and multiplication by a supported factor, and corresponding finite-supportedness wrappers. Product-valued support now covers coordinate projection predicates, coordinate-to-product support transfer, coordinate finite-support reflection, product zero support, and pointwise product/negation finite-supportedness. The coordinate-construction and pointwise-addition finite-supportedness wrappers still need decomposed existential-witness proofs.

Progress: `src/function_units.ac` now provides unbundled pointwise-unit support for functions, including value/inverse functions from unit-valued functions, two-sided pointwise inverse laws, pointwise-unit construction, inverse-witness transport, pointwise reflection to ordinary monoid units, identity pointwise-unit, group pointwise-unit, closure of pointwise units under pointwise multiplication, and pointwise and whole-function zero-kernel/cancellation lemmas for multiplication by pointwise units over rings.

Progress: `src/function_product_units.ac` now connects binary and ternary products of function spaces with pointwise-unit predicates, including unbundled unit predicates, coordinate reflection to pointwise units, construction from pointwise-unit coordinates, compact componentwise iff wrappers, identity, inverse-witness, group-valued, inverse-product unit lemmas, and the binary multiplication-closure wrapper. Existing quaternary unit support should not be extended or used as a pattern for more fixed-arity APIs.
