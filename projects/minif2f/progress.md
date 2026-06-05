# MiniF2F Acorn Formalization Progress

## 2026-05-23

- Considered MiniF2F Lean source `miniF2F/lean/src/valid.lean`.
- Added initial Acorn MiniF2F file `acornlib/src/minif2f/valid/algebra.ac`.
- Translated `mathd_algebra_462`, a rational arithmetic identity from the valid split.
- Verification status: `./acorn-0.1.84-linux-x64 verify --lib ./acornlib src/minif2f/valid/algebra.ac --timeout 20 --fail-fast` succeeded.
- Added compact agent guidance in top-level `AGENTS.md` and updated `acornlib/AGENTS.md` so future work uses the local Acorn verifier and records MiniF2F translation progress here.
- Considered valid-split problem `amc12a_2009_p2` from `miniF2F/lean/src/valid.lean`.
- Translated and proved `amc12a_2009_p2` in `acornlib/src/minif2f/valid/algebra.ac` as a rational continued-fraction identity.
- Added nearby rational helper lemmas for `1 + 1/2`, the reciprocal of `3/2`, `1 + 2/3`, and `5/3` in reduced form.
- Verification status: `./acorn-0.1.84-linux-x64 verify --lib ./acornlib src/minif2f/valid/algebra.ac --timeout 20 --fail-fast` succeeded.
- Strict replay status: `./acorn-0.1.84-linux-x64 check --lib ./acornlib --strict src/minif2f/valid/algebra.ac` succeeded with `0 searches performed`.
- Attempted valid-split problem `mathd_numbertheory_81`; the decimal arithmetic bridge `Nat.23 * Nat.3 + Nat.2 = Nat.71` is now tracked as `hard_problems/nat_decimal_arithmetic_bridge.ac`, so the unverified source file remains out of `acornlib/src`.
- Attempted valid-split problem `mathd_algebra_190`; a direct Real translation using `from_nat[Real]` timed out, so it was not kept in `acornlib/src`.
- Considered valid-split problem `mathd_algebra_182` from `miniF2F/lean/src/valid.lean`.
- Translated and proved `mathd_algebra_182` in `acornlib/src/minif2f/valid/algebra.ac` over `Complex`, using `from_nat[Complex]` and existing small Nat multiplication facts.
- Verification status: `./acorn-0.1.84-linux-x64 verify --lib ./acornlib src/minif2f/valid/algebra.ac --timeout 20 --fail-fast` succeeded.
- Strict replay status: `./acorn-0.1.84-linux-x64 check --lib ./acornlib --strict src/minif2f/valid/algebra.ac` succeeded with `0 searches performed`.
- Considered valid-split problem `algebra_2rootspoly_apatapbeq2asqp2ab` from `miniF2F/lean/src/valid.lean`.
- Translated and proved `algebra_2rootspoly_apatapbeq2asqp2ab` in `acornlib/src/minif2f/valid/algebra.ac` over `Complex`, writing `a^2` as `a * a` and expanding `2 * x` through `from_nat[Complex](Nat.2)`.
- Verification status: `./acorn-0.1.84-linux-x64 verify --lib ./acornlib src/minif2f/valid/algebra.ac --timeout 20 --fail-fast` succeeded.
- Strict replay status: `./acorn-0.1.84-linux-x64 check --lib ./acornlib --strict src/minif2f/valid/algebra.ac` succeeded with `0 searches performed`.
- Attempted valid-split problem `algebra_manipexpr_2erprsqpesqeqnrpnesq`; the direct Complex translation timed out on negated-product normalization (`-r * -r = r * r`), so the unverified theorem was removed from `acornlib/src`.
- Considered test-split problem `mathd_algebra_171` from `miniF2F/lean/src/test.lean`.
- Added initial test-split Acorn file `acornlib/src/minif2f/test/algebra.ac`.
- Translated and proved `mathd_algebra_171` over `Real`, using `from_nat[Real]`, `from_nat_add`, and the existing `five_plus_four` Nat arithmetic fact.
- Verification status: `./acorn-0.1.84-linux-x64 verify --lib ./acornlib src/minif2f/test/algebra.ac --timeout 20 --fail-fast` succeeded.
- Strict replay status: `./acorn-0.1.84-linux-x64 check --lib ./acornlib --strict src/minif2f/test/algebra.ac` succeeded with `0 searches performed`.
- Final stop check requested by the user: all newly written MiniF2F Acorn files verified successfully.
- Final verification commands: `./acorn-0.1.84-linux-x64 verify --lib ./acornlib src/minif2f/valid/algebra.ac --timeout 20 --fail-fast` and `./acorn-0.1.84-linux-x64 verify --lib ./acornlib src/minif2f/test/algebra.ac --timeout 20 --fail-fast` both succeeded from cache with `0 searches performed`.
- Final strict replay commands: `./acorn-0.1.84-linux-x64 check --lib ./acornlib --strict src/minif2f/valid/algebra.ac` and `./acorn-0.1.84-linux-x64 check --lib ./acornlib --strict src/minif2f/test/algebra.ac` both succeeded with `0 searches performed`.

## 2026-05-24

- Kept this progress log under `acornlib/projects/minif2f/progress.md` for benchmark tracking.
- The MiniF2F Acorn translations live in reusable source modules under `acornlib/src/minif2f/`.
- Removed committed project sidecar certificates; generated verifier artifacts are not part of the benchmark source tree.
- Current focused verification commands: `./acorn-0.1.84-linux-x64 verify --lib ./acornlib src/minif2f/valid/algebra.ac --timeout 20 --fail-fast` and `./acorn-0.1.84-linux-x64 verify --lib ./acornlib src/minif2f/test/algebra.ac --timeout 20 --fail-fast`.
