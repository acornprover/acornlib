# Modules and Vector Spaces

Goal: introduce a usable Module/VectorSpace API that later linear-algebra
work (linear maps, bases, matrices, etc.) can build on.

## Settled Design

- Encoding: bundled `Module[R: Ring, M: AddCommGroup]` structure with `smul: R -> M -> M`
  field, mirroring the `GroupHom[G, H]` two-parameter pattern. The four axioms are split
  into named sub-predicates (`module_smul_add_left_constraint`, `..._add_right_constraint`,
  `..._assoc_constraint`, `..._one_constraint`) combined by `is_module_action`.
- Spelling: `m.smul(r, x)` (typeclass `*` cannot be heterogeneous over two type
  parameters in Acorn).
- `VectorSpace` is a thin convention: a `Module[F, V]` with `F: Field`, not a separate
  structure. Field-specific lemmas live in `src/vector_space.ac`.
- Linear maps: predicate-level only (`preserves_add`, `preserves_smul`, `is_linear_map`)
  in `src/module_hom.ac`, plus `trivial_linear_map`, `identity_fn_is_linear_map`,
  and composition lemmas. A bundled `ModuleHom[R, M, N]` structure was deferred due
  to an Acorn certificate-serialization bug with 3-typeclass-parameter structures
  (see root `## Blockers`).

## Implementation Tasks

- [ ] Add bundled `ModuleHom[R, M, N]` once the 3-typeclass-param structure bug is fixed,
      with extensionality, projections, identity, and composition.
- [ ] Package the submodule quotient as a `Module[R, QuotientOver[M]]` (axioms via
      representatives, using `submodule_quotient_add/neg/zero/smul_by`). Note:
      requires first equipping `QuotientOver[M]` with an `AddCommGroup` instance,
      which the existing add-subgroup quotient also does not yet provide; the
      four module axioms are already verified at the representative level
      (`submodule_quotient_smul_add_left/right`, `submodule_quotient_smul_assoc`,
      `submodule_quotient_smul_one`).
- [ ] Promote the canonical projection `submodule_quotient_mk` to a linear map via
      `is_linear_map` once `Module[R, QuotientOver[M]]` is available; the
      representative-level intertwining lemmas
      (`submodule_quotient_mk_add`, `submodule_quotient_mk_neg`,
      `submodule_quotient_mk_smul`, `submodule_quotient_mk_zero`) are in place.
- [ ] Promote the kernel-of-canonical-projection-equals-submodule statement to the
      bundled-submodule level once `Module[R, QuotientOver[M]]` is available; the
      representative-level kernel characterisation
      (`submodule_quotient_mk_eq_zero_iff_in_submodule`) is in place.
- [ ] Extend packaged kernel/image submodule APIs only when downstream formalizations need additional lemmas.

Status:

- `src/module_hom.ac` adds predicate-level linear-map convenience lemmas: `preserves_add_zero`, `linear_map_zero`, `linear_map_smul` (single-argument scalar preservation), and `linear_map_add` (single-pair addition preservation).
- `src/submodule.ac` defines `submodule_zero_constraint`, `submodule_add_constraint`, `submodule_neg_constraint`, `submodule_smul_constraint`, `is_submodule`, and the bundled `Submodule[R, M]` structure, with extensionality and basic closure lemmas.
- Submodule intersections are represented by `submodule_intersection_contains`, with verified closure lemmas and a combined `submodule_intersection_is_submodule` theorem.
- Linear-map kernels and images are represented by `linear_map_kernel` and `linear_map_image`, with verified zero/add/neg/smul closure lemmas.
- `linear_map_kernel_submodule` and `linear_map_image_submodule` now package predicate-level kernels and images as `Submodule` values, using the full submodule outside the linear-map side condition.
- Packaged kernel/image submodules have verified carrier lemmas, linear-map membership lemmas, kernel introduction/elimination lemmas, image value/elimination lemmas, subset-style universal properties, the trivial-kernel-to-zero-submodule inclusion, and surjectivity/full-image bridges.
- `submodule_rel`, `submodule_quotient_relation`, `submodule_quotient_add/neg/zero`, and `submodule_quotient_smul_by` (left scalar multiplication for a fixed scalar, with projection and representative-compatibility lemmas) provide a representative-level quotient-by-submodule API, delegating additive structure to `submodule_to_add_subgroup` and the existing `add_subgroup` quotient.
- The four module axioms hold for the submodule quotient at the representative level: `submodule_quotient_smul_add_left`, `submodule_quotient_smul_add_right`, `submodule_quotient_smul_assoc`, `submodule_quotient_smul_one`.
- The canonical projection function `submodule_quotient_mk` is defined, with `submodule_quotient_mk_eq_iff_in_submodule`, `submodule_quotient_mk_eq_zero_iff_in_submodule`, `submodule_quotient_mk_zero`, `submodule_quotient_mk_add`, `submodule_quotient_mk_neg`, and `submodule_quotient_mk_smul` providing the kernel characterisation and representative-level linearity.
