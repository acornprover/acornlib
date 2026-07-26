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
- [ ] Inventory upstream-only commits by domain and PR cluster.
- [ ] Inventory upstream cleanup/refactor commits separately from new theorem commits.
- [ ] Pick the first low-risk upstream chunk to replay onto current `main`.
- [ ] Apply the first chunk without direct broad merge.
- [ ] Run focused `acorn verify` / `check --strict` for the changed modules.
- [ ] Run full-library `check --strict` before pushing any replay chunk.
- [ ] Commit and push the verified first upstream replay chunk.
- [ ] Repeat chunk replay until `upstream/master` content is exhausted or blocked.

## Notes

- Prefer small cleanup commits over broad merges when the goal is code hygiene.
- Preserve verified proofs and regenerate certificates when source files change.
