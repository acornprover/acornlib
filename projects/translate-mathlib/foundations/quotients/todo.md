# Quotient Constructions

Goal: support quotient objects as first-class foundational tools using equivalence-class constrained structures instead of one-off encodings.

The active queue is empty. The [algebraic-quotients](algebraic-quotients/todo.md) branch reached a stable state with the load-bearing per-`qrel` API; its file is kept as the canonical record of that design decision (chosen wrapper-struct path, deferred phantom-singleton alternative).

Status:

- Foundational quotient API is the existing `Quotient[T]` / `QuotientOver[T]` / `QuotientRelation[T]` family in `src/equivalence.ac`: equivalence-class constrained structures with `quotient_projection`, `quotient_lift`, `quotient_unary_respects`, `quotient_binary_respects`, and induced congruence lemmas. `src/zmod.ac` is the first downstream user.
- Subobject transport across the quotient projection lives in `src/equivalence.ac` (`quotient_image_set`, `quotient_preimage_set`, plus saturation preservation, pointwise lemmas, and full round-trip set equalities).
- Kernel relation API in `src/equivalence.ac`: `kernel_relation`, `kernel_quotient_relation`, `kernel_lift`, with reflexive/symmetric/transitive/equivalence proofs, the factorization theorem `kernel_lift_projection`, and `kernel_quotient_projection_eq_iff`.
- `src/zmod.ac`, `src/rat/rat_base.ac`, `src/real/real_base.ac`, `src/multiset.ac`, and `src/int/int_base.ac` have been reviewed for quotient-shaped encodings. `Zmod[n]` is an equivalence-class quotient parallel to `QuotientOver[Int]` (constraint `is_equivalence_class(int_mod_rel(n), carrier)`); a future migration could replace it with `QuotientOver[Int]` constrained to `int_mod_quotient_relation(n)`, but the parallel structure keeps the existing 764-line proof base stable so no migration is recommended yet. `Rat` is a quotient by `(a, b) ~ (c, d) iff ad = bc` encoded by canonical reduced form; the canonical-form approach gives decidable structural equality and is intentionally not migrated. `Real`, `Multiset`, and `Int` are not quotient-shaped and need no migration.
