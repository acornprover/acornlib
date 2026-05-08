# Field Theory and Galois Theory

Goal: develop the algebraic extension theory needed by number theory, algebra, and geometry.

## Prerequisites

These items must land before field theory work becomes tractable. They are tracked in
sibling project branches but are listed here because every roadmap item below depends
on them.

- Polynomials over a commutative ring: type, ring instance, degree, evaluation,
  division with remainder over a field. Belongs under
  [algebraic-hierarchy](../algebraic-hierarchy/todo.md) or
  [commutative-algebra](../commutative-algebra/todo.md).
- Quotient rings `R / I` and their universal property
  ([commutative-algebra](../commutative-algebra/todo.md)).
- Fraction fields / localization at non-zero elements of an integral domain
  ([commutative-algebra](../commutative-algebra/todo.md)).
- Modules and finite-dimensional vector spaces with a working dimension API
  ([linear-algebra](../linear-algebra/todo.md)).

Until polynomials exist, treat every checklist item below as blocked-on-library-support
rather than blocked-on-Acorn; do not add a root `## Blockers` entry for it.

## Roadmap

- [ ] Field extension foundations (independent of polynomials)
  - [x] `FieldHom[F, E]` structure with `is_field_hom`, ext lemmas, ring-hom coercion,
        preservation of `0/1/+/*/neg/inverse`, nonzero preservation, and injectivity
        (`src/field_hom.ac`).
  - [x] Identity field hom `F -> F` and composition of field homs
        (`identity_field_hom`, `compose_field_hom`, associativity, identity laws
        in `src/field_hom.ac`).
  - [ ] Field-hom image as a subfield (once subfield API exists)
  - [x] `is_field_extension(phi: FieldHom[F, E])` and tower composition law
        (`src/field_extension.ac`)

- [ ] Algebraic elements and minimal polynomials
  - [ ] Define `is_algebraic[F: Field, E: Field, phi: F -> E](x: E)`
  - [ ] Define `is_integral_over[F, E](x)` predicate via monic-polynomial roots
  - [ ] Existence of a minimal polynomial for an algebraic element
  - [ ] Uniqueness up to associates and irreducibility of the minimal polynomial
  - [ ] Degree of the minimal polynomial as a `Nat`
- [ ] Adjoining elements and simple extensions `F(alpha)`
- [ ] Finite extensions, tower law `[L:F] = [L:K] * [K:F]`
- [ ] Splitting fields for a polynomial; existence and uniqueness up to F-isomorphism
- [ ] Algebraic closures: existence, uniqueness up to (non-canonical) F-isomorphism
- [ ] Separable polynomials, separable extensions, perfect fields
- [ ] Normal extensions and normal closures
- [ ] Finite fields: classification by `p^n`, Frobenius automorphism, subfield lattice
- [ ] Field automorphism groups `Aut(L/F)` and fixed-field functor
- [ ] Galois extensions and the fundamental theorem of Galois theory
- [ ] Applications: cyclotomic extensions, cyclic/abelian extensions,
      solvability-by-radicals criterion
