# Products, Opposites, and Units

Goal: support standard derived algebraic constructions that recur throughout Mathlib.

- [ ] Add bundled direct products of algebraic structures with standard instances after the generic `Pair[A, B]` typeclass receiver blocker is resolved
- [ ] Design an indexed or finite-support product abstraction before adding any new product API that would otherwise need 4-ary-or-higher wrappers
- [ ] Package the group of units as a `Group` instance once generic bundled instances are reliable
- [ ] Add bundled homomorphism transport lemmas for product structures once bundled products are available
- [ ] Support finite-support product constructions where useful
- [ ] Add compact boolean `iff` wrappers for product, function-product, and pointwise unit predicates once the directional lemmas are enough for reliable proof search
- [ ] Add the function-pair unit multiplication-closure wrapper after the componentwise proof-search tail is reduced
- [ ] Refactor representative proofs to use product and unit APIs directly

Progress: `src/product_algebra.ac` now provides unbundled componentwise operations on binary products (`pair_add`, `pair_mul`, `pair_zero`, `pair_one`, `pair_neg`, `pair_inverse`) with coordinate projection lemmas and associativity, commutativity, identity, inverse, semiring distributivity, zero-absorption, map-zero/map-one, swap-transport, and inverse-transport laws for the corresponding algebraic hypotheses.

Progress: `src/units.ac` now provides bundled monoid units, the unbundled `is_monoid_unit` predicate, identity/product/inverse operations on units, projection lemmas, inverse uniqueness, identity laws, inverse laws, associativity, inverse-of-product, ring cancellation/zero-kernel lemmas for multiplication by a unit value, and field-specific nonzero/unit/inverse characterizations.

Progress: `src/opposite_algebra.ac` now provides unbundled opposite multiplication with associativity, commutativity, monoid identity, group inverse, semiring zero/distributivity, and homomorphism preservation lemmas.

Progress: `src/opposite_order.ac` now provides unbundled `opposite_lte`, with reversal/swap lemmas, preservation of reflexivity/transitivity/antisymmetry from generic relation properties, derived partial-order reflexivity/transitivity/antisymmetry, linear-order totality, and agreement with `>=`.

Progress: `src/function_algebra.ac` now provides shared pointwise operations on functions (`pointwise_add`, `pointwise_mul`, `pointwise_zero`, `pointwise_one`, `pointwise_neg`, `pointwise_inverse`) with application, associativity, commutativity, identity, inverse, semiring distributivity, and zero-absorption laws.

Progress: `src/function_product_algebra.ac` now specializes the shared function-level pointwise API to binary and ternary products of function spaces, with evaluation, coordinate, eta, pointwise operation, associativity, commutativity, identity, inverse, semiring distributivity, and zero-absorption laws. Existing quaternary and quinary helper layers should not be extended or used as a pattern for more fixed-arity APIs. Bundled product instances remain deferred until generic bundled instances are reliable.

Progress: `src/product_units.ac` now connects bundled monoid units with unbundled componentwise product units, including value/inverse pairs, coordinate unit reflection, construction from component units, identity, inverse-witness, multiplication-closure lemmas, group-pair unit construction, inverse-pair unit construction, and coordinate zero-kernel/cancellation lemmas for multiplication by pair units over rings. `src/units.ac` also exposes unbundled `is_monoid_unit` zero-kernel, nonzero, and cancellation lemmas. Compact boolean `iff` wrappers and whole-pair cancellation wrappers remain deferred after verifier timeout reports; the verified directional and coordinate lemmas remain available.

Progress: `src/function_units.ac` now provides unbundled pointwise-unit support for functions, including value/inverse functions from unit-valued functions, two-sided pointwise inverse laws, pointwise-unit construction, inverse-witness transport, pointwise reflection to ordinary monoid units, identity pointwise-unit, group pointwise-unit, and closure of pointwise units under pointwise multiplication.

Progress: `src/function_product_units.ac` now connects binary and ternary products of function spaces with pointwise-unit predicates, including unbundled unit predicates, coordinate reflection to pointwise units, construction from pointwise-unit coordinates, identity, inverse-witness, group-valued, and inverse-product unit lemmas. Existing quaternary unit support should not be extended or used as a pattern for more fixed-arity APIs. The binary multiplication-closure wrapper remains deferred after componentwise proof-search tails timed out, although the verified coordinate lemmas and pointwise multiplication closure remain available.
