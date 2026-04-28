---
name: work-on-project
description: Keep named project roadmaps under `projects/<project>/` updated as structured execution queues. Use when the user asks to plan a project, update a project roadmap, add roadmap items, create or revise project todo files, maintain long-term mathematical project plans, or explicitly asks to "work on a project". The default current project is `translate-mathlib`.
---

# Work On A Project

Use this skill when the user wants persistent project planning in this repository rather than a transient chat summary.

This skill has two modes:

- Project planning mode: update or reorganize one project's roadmap tree.
- Project execution mode: when the user asks to "work on a project", use that project's roadmap tree to choose the next implementation task and then do the code work.

## Project Selection

Projects live under `projects/`.

- If the user names a project, use the corresponding lowercase hyphenated project directory.
- If the user says "this project", "the current project", or gives no project name, use `projects/translate-mathlib/`.
- If the user introduces a new project, create `projects/<project>/todo.md` unless the project name is ambiguous enough that you must ask.
- Do not mix roadmap items between projects unless the user explicitly asks for cross-project planning.
- When reporting changes, mention the project root that was used.

The current Mathlib translation roadmap is the `translate-mathlib` project.

## Project Layout

Each project directory has the same internal layout.

- `projects/<project>/todo.md` is the top-level roadmap and contains a `## Blockers` section near the top.
- Each major topic gets its own subfolder under `projects/<project>/`.
- Each topic subfolder contains its own `todo.md`.
- This structure is recursive: if a topic-level `todo.md` is still too broad, make subfolders inside that topic, each with its own `todo.md`.

Current topic folders in `projects/translate-mathlib/` are expected to follow the existing roadmap structure, for example:

- `projects/translate-mathlib/foundations/todo.md`
- `projects/translate-mathlib/order-theory/todo.md`
- `projects/translate-mathlib/algebraic-hierarchy/todo.md`
- `projects/translate-mathlib/real-analysis/todo.md`

## Style

Keep project roadmaps terse and structured.

- Prefer short headings and short checklist items.
- Use Markdown checklists: `- [ ] item`.
- Keep top-level roadmap items broad.
- Keep topic-level items more concrete and implementation-oriented.
- Avoid nested bullets unless the user explicitly asks for a more detailed hierarchy.
- Prefer updating existing files over creating duplicate todo files.
- Prefer recursive folder structure over long flat todo lists when a topic is still too broad.

## Blockers

Track blockers in `projects/<project>/todo.md`, not only in the blocked leaf file.

A blocker is a dependency that requires work outside `acornlib` before the project branch can continue. Blockers are rare; they are not a label for difficult, broad, or unfinished library work.

Counts as a blocker:

- `acorn-bug`: Acorn appears to reject valid code, accepts invalid code, or crashes.
- `prover-limitation`: the intended Acorn library statement appears true, but continuing requires improving Acorn's language, verifier, or prover rather than adding more library support.

Does not count as a blocker:

- Missing definitions, lemmas, instances, theorem statements, or APIs in `acornlib`.
- A proof that needs helper lemmas, decomposition, imports, or nearby support theorems in `acornlib`.
- A topic that is too broad and needs to be split into narrower todo files.
- A definition or interface question that can be resolved by choosing and implementing an `acornlib` API.

Track these non-blocking cases as ordinary todo items, possibly by splitting them into smaller project branches. Only use the root `## Blockers` section when the next required work is outside this repository.

Use this root roadmap format:

```markdown
## Blockers

No current blockers.
```

If blockers exist, replace `No current blockers.` with unchecked items:

```markdown
- [ ] type: location - issue; next action
```

Blocker rules:

- Include the type, blocked project location, concrete issue, and next action.
- Use a location that names the affected topic todo path and, when useful, the code file, theorem, definition, or intended API.
- Keep blocked local todo items or branches in place, but make it clear that they are blocked.
- When a blocker is resolved, remove it from the root `## Blockers` section and update or resume the affected project branch.
- When working on a project, skip branches impacted by active blockers and continue with unrelated project work when possible.

## Workflow

1. Select the project root.
2. Read `projects/<project>/todo.md` first.
3. Ensure the root `todo.md` has a `## Blockers` section.
4. If the request concerns an existing topic, update that topic's `projects/<project>/<topic>/todo.md`.
5. If the request introduces a new major topic, update `projects/<project>/todo.md` and create a new topic subfolder with its own `todo.md`.
6. Keep the top-level roadmap and topic folders consistent with each other.
7. When expanding a topic, keep the lower `todo.md` between 10 and 30 checklist items unless the user explicitly wants a different size.
8. When adding a new top-level roadmap from scratch, aim for 10 to 30 broad areas.
9. Before working on a topic in project planning mode, check whether its current `todo.md` is narrow enough that one unchecked item could reasonably be completed in one session.
10. If it is not narrow enough, first break that topic into subtopics by creating subfolders and a new lower-level `todo.md`, then work from that narrower list.
11. Keep drilling down recursively until the active `todo.md` is session-sized.
12. If the user asks to record progress, mark completed items and add short new unchecked items only when they reflect real next steps.
13. Do not turn the project roadmap into prose documentation. These files are for planning and tracking.

## Execution Mode

When the user says to "work on a project", do not stop at roadmap maintenance. Use the selected project's todo tree as the task queue.

Default scope:

- If the user does not specify how much work to do, aim for a chunk that changes around 1000 lines of `.ac` code.
- Treat 1000 lines as an approximate target, not a quota: stop earlier for a coherent verified result, a real blocker, or a natural session boundary.
- Do not pad a change to reach the target, and do not take on risky design work just to make the chunk larger.

1. Start at `projects/<project>/todo.md` and read `## Blockers`.
2. Follow the active branch or else the first unchecked item in execution order that is not blocked.
3. If an item points to a lower `todo.md`, descend into it unless that branch is blocked.
4. If the current item is still too broad for one session, first split it into subfolders with narrower `todo.md` files.
5. Repeat until you reach a concrete item that is narrow enough to plausibly complete in one session.
6. Before implementing, check whether the next step is really a code task or whether it hides a definition/design question.
7. If the active branch becomes blocked, apply the Blockers rules, stop work on that branch, and continue with unrelated project work when possible.
8. Only after design questions are settled should you switch fully from planning to implementation: read the relevant code, write Acorn code, and verify the change.
9. Prefer actually finishing the todo item over discussing it abstractly, except when the next step is a definition choice that needs user input.
10. After the code verifies, update the project roadmap immediately.

## Design Questions

When working on a project, definition questions deserve special handling.

- If the next task is "how should this be defined?", pause and discuss with the user instead of guessing.
- This matters most for foundational definitions that later theorems and APIs will depend on.
- Treat proof strategy as replaceable, but treat definitions as sticky: a messy proof can be cleaned up later, while a bad definition will create downstream trouble.
- If a design question appears, record the concrete options and open questions in the project roadmap as todo work, then ask the user only when the choice would commit the project to a bad API. Do not add a blocker unless the next required work is outside `acornlib`.

## Updating Project Roadmap After Work

When an execution-mode task is completed:

- remove the completed bullet from the active `todo.md`
- if useful, add one or more new follow-up bullets that reflect the new frontier
- if a subtopic file becomes empty, delete that `todo.md` and remove the branch from the parent roadmap
- keep parent indexes consistent with the remaining children
- remove resolved blockers from the root `## Blockers` section
- do not keep completed `todo.md` files around as archives

If the task was only partially completed:

- rewrite the active bullet into smaller remaining bullets
- keep the project roadmap honest about what is left
- if the remaining work is blocked, apply the Blockers rules
- do not mark broad progress if the concrete subtask is still unfinished

If a task is explicitly deferred rather than completed:

- move that bullet to the end of its current `todo.md`
- keep the wording honest about why it was deferred if that is not already obvious
- if every remaining item in a leaf `todo.md` is deferred, move that whole branch to the end of its parent list
- keep applying this rule recursively so the overall project tree stays in execution order
- do not leave a deferred item at the active frontier if there is non-deferred work elsewhere in the same list

## Verification

In execution mode, the project roadmap is not enough by itself. Always try to verify the code change before updating the roadmap as though the item is complete.

- For Acorn library work, run `acorn` while iterating, and before finishing run `acorn check`.
- If `acorn` verification succeeds but `acorn check` fails, treat that as an `acorn-bug` blocker.
- Use the narrowest additional verifying command only when it still justifies the roadmap update.
- If verification fails because the proof is incomplete but the statement still appears true, keep or narrow the todo item and add helper-lemma or support-theorem tasks as needed.
- If verification fails because `acornlib` is missing supporting definitions, lemmas, instances, or APIs, track that as ordinary todo work.
- If the failure appears to come from Acorn itself rather than the library code, report it clearly and add an `acorn-bug` or `prover-limitation` blocker.

## Naming Conventions

- Use lowercase, hyphenated project and topic folder names.
- Name each planning file `todo.md`.
- Keep topic titles in Markdown synchronized with the corresponding roadmap entry.

## Preferred Edits

- Update links in `projects/<project>/todo.md` when topic folders are added or renamed.
- Preserve stable folder names once they exist.
- If a topic becomes too large for session-sized work, split it into subtopics before attempting the work itself.
- When splitting a topic, make the parent `todo.md` point to the narrower subfolders.
- Stop splitting when a single bullet is concrete enough to plausibly complete in one session.
- When a `todo.md` is totally complete, remove the file and delete all references to it from the parent roadmap instead of keeping a completed marker.
- Keep the project tree ordered as a real queue: active work first, deferred work later.
- If an item is deferred, reorder it toward the end rather than leaving it in place.
- If an entire subtopic is deferred, move the parent link for that subtopic toward the end of the parent `todo.md`.

## Output

When you finish a project planning request, report:

- which project root was used
- which project todo files were updated
- whether any new project or topic folders were created
- any major roadmap changes that affect navigation
- any blocker added, resolved, or avoided

When you finish an execution-mode request, also report:

- which project root was used
- which todo item you selected
- whether it was completed and removed from the project roadmap
- any blocker added, resolved, or avoided
- which code files changed
- what verification was run
