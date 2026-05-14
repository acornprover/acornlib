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

Until polynomials exist, treat every checklist item below as ordinary library work
that depends on polynomial support; do not add a root `## Blockers` entry for it.

## Roadmap

- [ ] Field extension foundations (independent of polynomials)
  - [x] `FieldHom[F, E]` structure with `is_field_hom`, ext lemmas, ring-hom coercion,
        preservation of `0/1/+/*/neg/inverse`, nonzero preservation, and injectivity
        (`src/field_hom.ac`).
  - [x] Identity field hom `F -> F` and composition of field homs
        (`identity_field_hom`, `compose_field_hom`, associativity, identity laws
        in `src/field_hom.ac`).
  - [x] Subfield structure with constraints, extensionality, and basic
        closure theorems (`src/subfield.ac`)
  - [x] Field-hom image as a subfield (`field_hom_image` in `src/field_hom_image.ac`)
  - [x] `top_subfield` (whole field as a subfield) and `field_hom_image_identity`
        (identity hom's image is `top_subfield`); image of composition contained in
        image of outer map (`src/field_hom_image.ac`)
  - [x] Subfield inclusion preorder `subfield_le` with reflexivity, transitivity,
        antisymmetry (`src/subfield.ac`)
  - [x] `top_subfield_ge` (every subfield is contained in `top_subfield`),
        `field_hom_image_le_top`, and `field_hom_image_compose_le`
        (`src/field_hom_image.ac`)
  - [x] Subfield intersection `subfield_inter`: defined as a subfield with
        `subfield_inter_contains_eq`, `subfield_inter_le_left`,
        `subfield_inter_le_right`, `subfield_inter_greatest`,
        `subfield_inter_comm`, `subfield_inter_idem`, and
        `subfield_inter_assoc` (`src/subfield.ac`)
  - [x] Subfield closure under subtraction (`subfield_contains_sub`) and
        multiplication with an inverse of a nonzero element
        (`subfield_contains_mul_inverse`) in `src/subfield.ac`
  - [x] Forward image of a subfield under a field homomorphism
        (`subfield_image`, `subfield_image_contains_eq`,
        `subfield_image_contains_hom`, `subfield_image_le`,
        `subfield_image_top`, `subfield_image_identity`,
        `subfield_image_compose`, `subfield_image_inter` in
        `src/field_hom_image.ac`)
  - [x] Preimage of a codomain subfield under a field homomorphism
        (`subfield_preimage`, `subfield_preimage_contains_eq`,
        `subfield_preimage_top`, `subfield_preimage_le`,
        `subfield_preimage_inter`, `subfield_preimage_identity`,
        `subfield_preimage_compose` in `src/field_hom_image.ac`)
  - [ ] `bottom_subfield` (prime field) once integer/rational embedding is available
  - [ ] Field-extension API beyond `FieldHom`; previous vacuous
        `is_field_extension(phi: FieldHom[F, E])` design was removed after review.

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
