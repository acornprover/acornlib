# TODO

## Cleanup And Merge Follow-Up

- [x] Inspect current `main` and remaining remote refs.
- [x] Merge campaign branches that were already absorbed by current history.
- [x] Add `src/real/topology_cantor_bendixson.ac` and its certificate.
- [x] Push cleanup merges to `origin/main`.
- [x] Inspect upstream cleanup-style changes for easy-to-replicate patterns.
- [x] Remove or collapse redundant wrapper theorems in the current repo where safe.
- [x] Keep a visible checklist here as the work advances.

## Upstream Split Merge

- [x] Confirm current `main` is clean before upstream replay work.
- [x] Measure divergence from `upstream/master`.
- [x] Inventory upstream-only commits by first-parent PR cluster.
- [x] Inventory upstream cleanup/refactor commits separately from new theorem commits.
- [ ] Keep the target explicit: absorb all content through `upstream/master` at `aca6c9796640ea324e4539b455e9457bd3337cfb`, not just the easy pieces.
- [ ] Keep current fork-only campaign additions intact while replaying upstream; never resolve conflicts by discarding local files that are unrelated to the upstream chunk.
- [ ] Treat certificate and manifest churn as part of each source chunk, then regenerate or strict-replay certificates before committing.
- [x] Verified first simplification micro-batch: `src/compl_universal.ac`, `src/complex_module.ac`, `src/fin_enum.ac`, `src/fin_matrix.ac`, `src/fin_sum.ac`, `src/fin_vector.ac`, `src/finite_set_sum_product_extra.ac`, `src/frontier_props.ac`, and `src/module_hom_trivial_image.ac` with matching root certificates and `src/certs/manifest.json`; full `./scripts/acorn-check-strict.sh` passed with `101525/101525 OK`, `0 searches performed`.
- [x] Verified second simplification micro-batch: `src/fixed_point.ac`, `src/function_algebra.ac`, `src/function_product_algebra.ac`, `src/homeomorphism_compose.ac`, `src/int_congruence.ac`, and `src/nat/semiring.ac` with matching certificates/manifests; full `verify` refreshed downstream manifests and full `./scripts/acorn-check-strict.sh` passed with `101506/101506 OK`, `0 searches performed`.
- [x] Verified third simplification micro-batch: `src/complex_pow.ac`, `src/fin_matrix_det.ac`, `src/fin_sum_enum.ac`, `src/finite_support.ac`, `src/fixed_point_composition_sets.ac`, `src/frontier_connectedness.ac`, `src/frontier_open_closed.ac`, `src/int_residue.ac`, `src/metric_topology.ac`, `src/module_hom_trivial_kernel_image_eq.ac`, `src/nat/division.ac`, and `src/nat/lcm.ac` with matching certificates/manifests; full `verify` and full `./scripts/acorn-check-strict.sh` passed with `101447/101447 OK`, `0 searches performed`.
- [x] Verified fourth simplification micro-batch: `src/complex_from_real_hom.ac`, `src/complex_from_real_isometry.ac`, `src/complex_from_real_linear.ac`, `src/field_hom.ac`, `src/finite_set_sum_real.ac`, `src/geometry/point2_circle.ac`, `src/geometry/point2_metric.ac`, `src/group_hom_kernel_eq.ac`, `src/int/int_arith.ac`, and `src/number_theory/bezout.ac` with matching certificates/manifests; full `verify` and full `./scripts/acorn-check-strict.sh` passed with `101385/101385 OK`, `0 searches performed`.
- [x] Verified fifth simplification micro-batch: `src/geometry/point2_convex.ac`, `src/group_action_fixed_points.ac`, `src/module_hom_compose_image.ac`, `src/module_hom_identity_kernel_image_eq.ac`, `src/module_hom_kernel_image_eq.ac`, `src/module_hom_kernel_image_extreme_eq.ac`, and `src/module_hom_kernel_quotient.ac` with matching certificates/manifests; full `verify` and full `./scripts/acorn-check-strict.sh` passed with `101305/101305 OK`, `0 searches performed`.
- [x] Verified sixth simplification micro-batch: `src/closed_ball_closed_metric.ac`, `src/complex_normed_space.ac`, `src/continuity_closed.ac`, `src/crypto/rsa_roundtrip.ac`, `src/field_hom_galois.ac`, `src/field_ideal.ac`, `src/finite_group/list_filter_unique.ac`, `src/geometry/point2_halfplane.ac`, `src/geometry/point2_incidence_extra.ac`, `src/geometry/point2_polygon_edges.ac`, `src/geometry/point2_ray.ac`, `src/ideal_indexed_sum.ac`, and `src/normed_field.ac` with matching certificates/manifests; full `verify` and full `./scripts/acorn-check-strict.sh` passed with `101136/101136 OK`, `0 searches performed`.
- [x] Verified seventh simplification micro-batch: `src/geometry/point2_polygon.ac` with matching certificates/manifests; full `verify` and full `./scripts/acorn-check-strict.sh` passed with `101133/101133 OK`, `0 searches performed`.
- [x] Verified eighth simplification micro-batch: `src/complex_conj_hom.ac`, `src/complex_conj_linear.ac`, `src/complex_conj_module_hom.ac`, `src/complex_conj_field_hom.ac`, `src/complex_conj_field_hom_abs.ac`, and `src/complex_re_im_linear.ac` with matching certificates/manifests; full `verify` and full `./scripts/acorn-check-strict.sh` passed with `101006/101006 OK`, `0 searches performed`.
- [x] Verified ninth simplification micro-batch: minimal `src/complex_metric.ac` proof cleanup for `complex_distance_eq_modulus_sub` with matching certificates/manifests; full `verify` and full `./scripts/acorn-check-strict.sh` passed with `101003/101003 OK`, `0 searches performed`.
- [x] Verified tenth simplification micro-batch: `src/compact_transport.ac` with matching certificates/manifests; full `verify` and full `./scripts/acorn-check-strict.sh` passed with `100981/100981 OK`, `0 searches performed`.
- [x] Verified eleventh simplification micro-batch: `src/monoid.ac` and `src/add_monoid.ac` with matching certificates/manifests; full `verify` and full `./scripts/acorn-check-strict.sh` passed with `100929/100929 OK`, `0 searches performed`.
- [x] Verified twelfth simplification micro-batch: `src/add_comm_monoid.ac` with matching certificates/manifests; full `verify` and full `./scripts/acorn-check-strict.sh` passed with `100911/100911 OK`, `0 searches performed`.
- [x] Verified thirteenth simplification micro-batch: `src/group.ac` with matching certificates/manifests; full `verify` and full `./scripts/acorn-check-strict.sh` passed with `100881/100881 OK`, `0 searches performed`.
- [x] Verified fourteenth simplification micro-batch: `src/add_group.ac` with matching certificates/manifests; full `verify` and full `./scripts/acorn-check-strict.sh` passed with `100844/100844 OK`, `0 searches performed`.
- [x] Verified fifteenth simplification micro-batch: simplification-only deletions in `src/add_comm_group.ac` with matching certificates/manifests; full `verify` and full `./scripts/acorn-check-strict.sh` passed with `100826/100826 OK`, `0 searches performed`.
- [x] Verified sixteenth simplification micro-batch: `src/monoid_hom_set.ac`, `src/group_hom_set.ac`, `src/add_monoid_hom_set.ac`, `src/add_comm_monoid_hom_set.ac`, `src/add_group_hom_set.ac`, and `src/add_comm_group_hom_set.ac` with matching certificates/manifests; full `verify` and full `./scripts/acorn-check-strict.sh` passed with `100676/100676 OK`, `0 searches performed`.
- [x] Verified seventeenth simplification micro-batch: `src/module.ac` with matching certificates/manifests; full `verify` and full `./scripts/acorn-check-strict.sh` passed with `100634/100634 OK`, `0 searches performed`.
- [ ] Deferred tested simplification: `src/algebraic_instance_smoke.ac` was reverted because the upstream deletion caused a Real ordered-field search timeout at `Real.0 <= a * b`.
- [ ] Deferred tested simplification: the full upstream deletion set for `src/complex_metric.ac` was narrowed because removing the convergence proof-local steps caused a timeout at `z(i).distance(w) < eps`.
- [ ] Deferred tested simplification: the broad compactness batch was narrowed because upstream `src/compact_image.ac` timed out at `list_union_of_sets[Y](items_y).contains(f(x))`.
- [ ] Continue the simplification base as micro-slices instead of one broad patch. A blind source-only replay of commits `279ec69c`, `edf594c4`, `7df4882d`, and `0cfaf5c5` was rejected because verification timed out across category/natural-transformation, lattice/galois, affine, nat/carry, list/order/sum/permutation, int/lattice, combinatorics/binomial, finite-set, ideal/field/module, topology, and related files.

## Upstream Split Merge Plan

- [ ] 01. Baseline branch hygiene: record `HEAD`, `origin/main`, `upstream/master`, and merge-base hashes in the first replay commit message; verify the worktree is clean before every chunk.
- [ ] 02. Upstream simplification base, commits `279ec69c`, `edf594c4`, `7df4882d`, `0cfaf5c5`: port the source-level theorem/proof-local simplifications that affect core algebra, `field`, and `fin_sum`, without assuming removed-looking facts are unused by search.
- [ ] 03. Core simplification certificate sweep: after chunk 02, regenerate or strict-replay all touched root-level `src/certs/*.jsonl` and `src/certs/manifest.json`; do not hand-edit certificates except to resolve manifest entries for changed modules.
- [ ] 04. Project harness metadata, commit `b33e6bf4` and project `todo.md` edits: merge `.agents/skills/work-on-project/SKILL.md` and all `projects/translate-mathlib/**/todo.md` changes independently from theorem code.
- [ ] 05. Continued-fraction foundation, PRs `#1193`-`#1196`: replay continuant ratios, convergent determinants, convergent bounds, and best approximation into `src/number_theory/continued_fraction*.ac` with their certificates.
- [ ] 06. Rational continued fractions, PRs `#1197`-`#1204`: add `continued_fraction_convergents.ac`, `continued_fraction_rational_expansion.ac`, and `continued_fraction_value_ratio.ac`; merge updates to `continued_fraction.ac`, `continued_fraction_suffix.ac`, and the number-theory manifest.
- [ ] 07. Multiplicative-order infrastructure, PRs `#1207`-`#1214`: replay order uniqueness, full unit coverage, order of powers, coprime-product order, divisor order powers, factorisation selection, coprime lcm factors, and lcm order unit.
- [ ] 08. Quadratic-residue bridge start, PRs `#1205`, `#1206`, `#1219`, `#1220`: merge Legendre neg-one reverse, Euler criterion iff, discrete-log parity, and Legendre congruence before the larger supplement layer.
- [ ] 09. Polynomial root layer, PRs `#1215`-`#1218`: add `src/polynomial/map.ac`, `src/polynomial/root_bound.ac`, update `src/polynomial/interface.ac`, and commit matching polynomial certificates and manifest entries.
- [ ] 10. Quadratic-residue supplements, PRs `#1221`-`#1239`: replay signed half representatives, minus-one criteria, Wilson/half-factorial lemmas, Gauss doubling, Euler converse, and the two criterion through `quadratic_residue_supplements.ac`, `quadratic_reciprocity.ac`, `primitive_root*.ac`, and related number-theory certificates.
- [ ] 11. Number-theory consolidation: after chunks 05-10, run focused verification over `src/number_theory`, `src/polynomial`, `src/nat`, `src/int`, `src/zmod`, and then full strict replay before continuing.
- [ ] 12. Binomial and generating-function layer, PRs `#1240`-`#1249`: merge Vandermonde, hockey-stick, binomial symmetry, second moment, alternating identities, parity, alternating partial rows, and weighted derivative across `src/combinatorics/binomial.ac`, `src/comm_ring/binomial.ac`, and interfaces.
- [ ] 13. Inclusion-exclusion layer, PRs `#1250`-`#1253`: replay inclusion-exclusion, disjoint family, Bonferroni lower, and inclusion support into finite-set/combinatorics files while checking for overlap with existing campaign finite-set monotonicity work.
- [ ] 14. Finite-set/order extrema layer, PRs `#1254`-`#1265`: replay finite greatest, extrema uniqueness/inclusion/order/singleton/union/cardinality, maximal elements, minimal elements, and supporting list/order changes.
- [ ] 15. Finite-set interface and list support cleanup: merge upstream edits to `src/finite_set/base.ac`, `src/finite_set/interface.ac`, `src/list/interface.ac`, `src/list/list_order.ac`, `src/list/list_permutation.ac`, and all affected cert manifests as one dependency-aware chunk.
- [ ] 16. Nat/int/list collateral from simplification and combinatorics: port upstream modifications to `src/nat/**`, `src/int/**`, and `src/list/**` that are not already consumed by chunks 11-15; strict-check because many are theorem removals or proof-shortening changes.
- [ ] 17. Product affine space and maps, PRs `#1266`-`#1270`: add `src/product_affine_map.ac`, update `src/affine_space.ac`, `src/affine_map.ac`, and merge product-affine map certificates before touching the larger subspace/span layer.
- [ ] 18. Affine-span closure and union base, PRs `#1271`-`#1280`: replay idempotent, subset iff, congruence, eq iff, fixed predicates, unions, union closure, affine-subspace sup, and union laws into `src/affine_subspace.ac`.
- [ ] 19. Affine-subspace sup and intersection laws, PRs `#1281`-`#1290`: replay sup laws, absorption, monotonicity, identities, subset-join iff, equality, intersection closed/laws/absorption, and source distributivity.
- [ ] 20. Affine-span list laws, PRs `#1291`-`#1310`: replay source, insert/delete, permutation, unique, mono, add-sup, mutual contains, subset iff, add-eq, congruence, commutation, and internal congruence lemmas.
- [ ] 21. Affine-span intersection/distributive finish, PRs `#1311`-`#1318`: replay intersection mono, eq component/mutual, span laws, idempotent, union idempotent, absorption, and distributive laws.
- [ ] 22. Nonempty affine-subspace list joins, PRs `#1319`-`#1322`: replay nonempty list joins, join-space, join-members, and join-lub after all affine-span dependencies are strict-replay stable.
- [ ] 23. Product affine subspaces, PRs `#1323`-`#1334`: replay product subspaces, containment, monotonicity, nonempty, equality, empty factor, empty iff, univ, intersection, singleton, swap, and associativity.
- [ ] 24. Product affine span and projection preimage finish, PRs `#1335`-`#1336`: replay affine-subspace projection preimage and product affine span containment, adding `src/product_affine_span.ac` and its certificate.
- [ ] 25. Root-level deletion-like simplification sweep: compare all modified root `src/*.ac` files with upstream after the feature chunks, especially algebra/category/topology/complex/module/ideal/metric files whose upstream diff mostly removes proof-local propositions.
- [ ] 26. Certificate manifest reconciliation: compare every changed `src/**/certs/manifest.json` against the current source tree, keep only modules present in this fork, and ensure no upstream certificate entry overwrites unrelated fork-only modules.
- [ ] 27. Full-library strict replay gate: run `ACORN_BIN=/data/acorn_venv/workspace/acornlib/bin/acorn-0.2.4-linux-x64 ./scripts/acorn-check-strict.sh` and require `0 searches performed` before each pushed replay batch.
- [ ] 28. Upstream exhaustion check: after the final chunk, verify `git diff --stat HEAD...upstream/master` contains only intentionally fork-specific differences or is empty for upstream-owned paths.
- [ ] 29. Push policy: commit each verified chunk separately on `main` only after focused verification plus full strict replay; include the upstream PR range and strict-check result in the commit message.

## Notes

- Prefer small cleanup commits over broad merges when the goal is code hygiene.
- Preserve verified proofs and regenerate certificates when source files change.
