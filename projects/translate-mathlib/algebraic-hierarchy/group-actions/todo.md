# Group Actions

Goal: provide a standard language for symmetry actions before representation theory arrives.

- [ ] Package orbits as equivalence classes and add the `is_transitive(orbit_relation(a))` wrapper when proof search can handle the generic relation obligation
- [ ] Add action homomorphisms and equivariant maps
- [ ] Connect permutation actions with finite groups
- [ ] Add product and restricted actions
- [ ] Prove orbit-stabilizer style theorems
- [ ] Record future links to representation theory and geometry

Progress: `src/conjugation_action.ac` now defines `conjugation_act(g, x) = g * x * g.inverse`, proves it satisfies the action identity and multiplication constraints, packages it as the bundled `conjugation_action: MulAction[G, G]`, and adds the commutes-fixed-point characterization, identity-value invariance, multiplicativity in the second argument, and inverse preservation.
