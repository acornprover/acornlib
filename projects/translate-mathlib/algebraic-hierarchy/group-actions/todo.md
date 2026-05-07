# Group Actions

Goal: provide a standard language for symmetry actions before representation theory arrives.

- [ ] Package orbits as equivalence classes and add the `is_transitive(orbit_relation(a))` wrapper when proof search can handle the generic relation obligation
- [ ] Add action homomorphisms and equivariant maps
- [ ] Connect permutation actions with finite groups
- [ ] Add further restricted-action support and product-action refinements (transitivity/faithfulness reflection beyond the injectivity bridge)
- [ ] Prove orbit-stabilizer style theorems
- [ ] Record future links to representation theory and geometry

Progress: `src/conjugation_action.ac` now defines `conjugation_act(g, x) = g * x * g.inverse`, proves it satisfies the action identity and multiplication constraints, packages it as the bundled `conjugation_action: MulAction[G, G]`, and adds the commutes-fixed-point characterization, identity-value invariance, multiplicativity in the second argument, and inverse preservation.

Progress: `src/derived_action.ac` now provides the bundled `trivial_action[G, X]: MulAction[G, X]` (with action-evaluation and singleton-orbit lemmas, plus transitivity on subsingleton targets) and the bundled `restricted_action(phi, a)` pulling a `MulAction[G, X]` back along a `GroupHom[H, G]`, with action-evaluation, orbit-subset transport, and the faithful-implies-`phi`-injective bridge.

Progress: `src/product_action.ac` now provides the componentwise product action on `Pair[X, Y]`, the bundled `product_action(a, b): MulAction[G, Pair[X, Y]]`, coordinate evaluation lemmas, equivariance of both projections, basic orbit projection/same-witness introduction lemmas, and product-action orbit equality transport to product and coordinate orbits.
