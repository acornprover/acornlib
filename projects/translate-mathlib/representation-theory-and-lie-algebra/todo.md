# Representation Theory and Lie Algebra Basics

Goal: provide the first layer of noncommutative linear algebra that Mathlib uses in higher algebra and geometry.

- [ ] Add representation equivalences and isomorphism-style transport lemmas
- [ ] Develop characters and basic character identities
- [ ] Prove Maschke-style semisimplicity results for finite groups
- [ ] Support restriction and induction constructions
- [ ] Restore the closure theorems dropped during the Submodule-based refactor of `LieSubalgebra` and `LieIdeal`: `lie_subalgebra_bracket`, `lie_ideal_bracket_left/right`, the `_ext` theorems, `full_submodule_is_lie_subalgebra` with `lie_subalgebra_top`, `zero_submodule_is_lie_ideal` with `lie_zero_ideal`, and `lie_ideal_is_lie_subalgebra` (all marked with TODO in `src/lie_algebra.ac`). The natural Acorn proofs time out under the default 5s search budget when applying the `lie_*_bracket_constraint` forall over the bundled submodule predicate.
- [ ] Add Lie algebra morphisms and quotients (base `LieAlgebra` with bracket lemmas, abelian example, and Submodule-based `LieSubalgebra` / `LieIdeal` structures landed in `src/lie_algebra.ac`)
- [ ] Support Lie algebra representations and modules
- [ ] Add standard examples such as matrix Lie algebras
- [ ] Connect Lie groups and Lie algebras where Acornlib has enough differential geometry
