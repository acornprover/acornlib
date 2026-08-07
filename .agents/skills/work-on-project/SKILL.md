---
name: work-on-project
description: Keep named project roadmaps under `projects/PROJECT/` updated as structured execution queues, execute roadmap work, and run projects continuously through recurring PR-aware cycles. Use when the user asks to plan or update a project roadmap, add roadmap items, maintain long-term mathematical project plans, explicitly asks to "work on a project", or asks to work on a project "in continuous mode". The default current project is `translate-mathlib`.
---

# Work On A Project

Use this skill when the user wants persistent project planning in this repository rather than a transient chat summary.

This skill has three modes:

- Project planning mode: update or reorganize one project's roadmap tree.
- Project execution mode: when the user asks to "work on a project", use that project's roadmap tree to choose the next implementation task and then do the code work.
- Continuous mode: execute project work autonomously across recurring runs while keeping at most one submitted pull request outstanding.

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

## Continuous Mode

Enter continuous mode when the user says to work on a project "in continuous mode" or otherwise explicitly requests recurring autonomous project work.

Continuous mode is execution mode plus a recurring PR lifecycle. It requires a real recurring trigger that comes back to this session. Keeping one turn alive, sleeping in a shell, or promising to check later is not a substitute.

### Initialize Continuous Mode

Two kinds of recurring trigger can drive this. Pick one; do not run both against the same checkout.

**Scheduled task (default).** A recurring task that fires on its own schedule and survives closing the session. Each run starts with fresh context, which is correct here: every cycle re-derives state from the repository and GitHub anyway. It needs local repository access, so use a local scheduled task rather than a cloud-only routine.

1. Resolve the project and repository normally.
2. List existing scheduled tasks. If one already covers this project, update it rather than creating a duplicate.
3. Create one hourly task whose prompt is durable on its own, because the next run will not have this conversation:

```text
Use the work-on-project skill to continue <project> in continuous mode in
<absolute repo path>. This is the recurring hourly run; do not create another
schedule. Execute exactly one continuous cycle from current repository and
GitHub state. Keep at most one submitted pull request outstanding. If it is
merely waiting on CI, review, or merge, end this run without polling; the next
run will check again.
```

4. Confirm from the tool result that the task was actually created or updated. Do not claim continuous operation from intent alone.
5. Execute one continuous cycle immediately unless another cycle is already operating on the same checkout.
6. Tell the user how to stop: ask to cancel the scheduled task, or delete it from the scheduled-task list.

**In-session loop.** Use when the user wants to watch it work in this conversation. A loop re-fires a prompt into the current session on an interval, keeping context between runs, but it stops when the session closes. In Claude Code this is `/loop`, which is user-invocable: hand the user the exact line to paste, and do not claim it is running until loop-driven turns arrive.

```text
/loop 60m Use the work-on-project skill to continue <project> in continuous mode.
This is the recurring hourly run; do not start another loop or schedule. Execute
exactly one continuous cycle from current repository and GitHub state.
```

State the interval explicitly. `/loop` defaults to 10 minutes, which is too short for PR-sized Acorn work. To resume after closing the session, run `claude --resume <session-id>` and re-issue the command.

On every later run under either mechanism, recognize the recurring prompt, treat it as one cycle, and do not re-initialize.

If neither mechanism is available on the current surface, perform at most one ordinary execution cycle and say plainly that continuous scheduling was not established. A cron or `launchd` job that starts one headless run per cycle, or a cron-scheduled GitHub Actions workflow, are acceptable substitutes the user can set up. Never emulate a schedule by keeping a turn alive or sleeping in a background shell.

### Execute One Continuous Cycle

Treat the repository, project roadmaps, and pull-request state as authoritative on every run. Do not rely on the previous run's final message as proof of current state.

1. Inspect the current checkout and identify any submitted pull request belonging to the active project work.
2. If a project pull request is open:
   - inspect CI, mergeability, reviews, review threads, and comments;
   - fix actionable failures or feedback autonomously, verify, commit, and push;
   - bring the branch up to date with its target branch before reporting it ready;
   - submit no other pull request while it remains open;
   - if it is only awaiting an external event, end the cycle immediately without polling or stopping the loop.
3. If the previous pull request merged or closed, synchronize the target branch and begin the next work from the updated base.
4. If no project pull request is outstanding, follow execution mode through one coherent verified PR-sized roadmap item. Commit, push, and open one ready pull request when repository policy permits it.
5. After submitting or updating a pull request, verify its remote configuration and mergeability. Then end the cycle; let the next loop run provide the next check.

Never submit more than one pull request in a cycle. Never submit a new pull request while an earlier project pull request is unresolved. Local exploratory work may continue only when it cannot contaminate the outstanding branch or create a dependent PR stack.

### Autonomy and Stop Conditions

- Make routine implementation, proof, naming, branch, commit, and pull-request decisions without asking for confirmation.
- When a definition or design question would normally require discussion, record the options in the roadmap, defer that item, and continue with the next unrelated project item. Do not classify it as an external blocker.
- Skip a branch affected by a recorded external blocker and continue elsewhere in the project.
- Keep the loop running while GitHub state is unchanged; unchanged state is expected, not a blocked goal.
- Keep each run short when there is nothing to do. Ending a run early is correct; it does not end the loop.
- Stop looping only when the user requests it, the project roadmap is complete, or every remaining branch requires unavailable authorization or an external dependency. Report the concrete reason when stopping.
- If authentication, permissions, repository availability, or the loop setup fails, report the exact failure. Never claim the continuous loop is active without evidence that loop-driven turns are arriving.

## Design Questions

When working on a project, definition questions deserve special handling.

- If the next task is "how should this be defined?", pause and discuss with the user instead of guessing.
- This matters most for foundational definitions that later theorems and APIs will depend on.
- Treat proof strategy as replaceable, but treat definitions as sticky: a messy proof can be cleaned up later, while a bad definition will create downstream trouble.
- If a design question appears, record the concrete options and open questions in the project roadmap as todo work, then ask the user only when the choice would commit the project to a bad API. Do not add a blocker unless the next required work is outside `acornlib`.
- In continuous mode, apply the autonomy rules instead: record and defer the design question, reorder the queue, and continue with unrelated work without asking the user.

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
- Do not increase arity of constructs unless it's necessary for the next step - in that case bundle the changes; never increase the arity separately or just in case.
- If requested to make commits, always include the updated build files along with source changes.

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
