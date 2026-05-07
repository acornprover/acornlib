# Algebraic Geometry

Goal: develop the commutative-algebra-plus-sheaf infrastructure that leads to schemes.

## Prerequisites

This branch is gated on upstream library work. Do not pick algebraic-geometry
items until at least the following are landed:

- [Commutative algebra](../commutative-algebra/todo.md): prime ideals, maximal
  ideals, quotient rings, localization at primes, radicals.
- [Topology](../topology/todo.md): topological spaces, open/closed sets,
  closure, bases, continuity.
- [Category theory](../category-theory/todo.md): presheaves and sheaves on a
  site (needed once the structure sheaf is introduced).

Each unchecked roadmap item below names the prerequisite block that must clear
first.

## Roadmap

- [ ] Define prime spectra `Spec(R)` as the set of prime ideals
      (needs: prime ideals — predicate-form `is_prime_ideal` now in
      `src/ideal.ac`; still need bundled `PrimeIdeal[R]` or a chosen
      Spec representation)
- [ ] Define the Zariski topology via vanishing sets `V(I)` and prove the
      topology axioms (needs: prime ideals, topological spaces)
- [ ] Add basic open sets `D(f)` and the distinguished base for the Zariski
      topology (needs: Zariski topology, bases for topologies)
- [ ] Build the structure sheaf on `Spec(R)` from localizations
      (needs: localization at primes, sheaves on a base)
- [ ] Define sheafed spaces and locally ringed spaces
      (needs: sheaves of rings, stalks)
- [ ] Define schemes and morphisms of schemes
      (needs: locally ringed spaces, affine schemes)
- [ ] Support fiber products and base change of schemes
- [ ] Add the projective spectrum `Proj(S)` for graded rings and projective
      space `P^n` (needs: graded rings, homogeneous prime ideals)
- [ ] Develop quasi-coherent and coherent sheaves, divisors, and line bundles
- [ ] Add dimension, regularity, and smoothness preliminaries
- [ ] Prove affine Nullstellensatz-style results (needs: integral extensions,
      finitely generated algebras over a field)
- [ ] Support cohomological infrastructure where needed by later geometry
      (needs: derived functors or Čech-cohomology scaffolding)
