# Contributing

Contributions are welcome. The goal of acornlib is to be a repository of all known mathematics. If there is part of known mathematics that you would like to contribute, you are welcome to do so.


## The Use of AI

We expect most of the library to be AI-generated. In general, most pull requests are *not* expected to be reviewed by a human. Unsupervised AI work is allowed in the directories:

* `src` for the Acorn source code
* `build` for the prover-generated artifacts
* `projects` for keeping notes on progress
* `hard_problems` for recording theorem goals that should train future provers

Try to be stylistically consistent with the rest of the codebase.


## Pull Requests

Try to keep pull requests to below 2000 lines of Acorn code.

Avoid extending fixed-size API or theorem families just by incrementing `n`. Having cases through `n = 3` is generally enough; do not add the `n = 4`, `n = 5`, `n = 6`, etc. variants, including fixed-arity wrappers or special theorems such as fourth-, fifth-, and sixth-power identities. Prefer a general theorem, indexed family, finite-support construction, or named abstraction. Exceptions should be narrow support for a named downstream theorem, and the pull request should identify that theorem and explain why a general form was not enough.

Most pull requests will be AI-reviewed. Some areas will be escalated to human review:

* Adding a new project
* Tricky decisions
* Touching any file outside of src, build, projects, and hard_problems

Adding a new subfolder within a project doesn't require human review per se. Just adding a new top-level project.

What counts as a "tricky decision" is subjective. Most tricky decisions are around definitions. If there is one obvious best way to define something, it isn't tricky. If there are multiple ways to define something and you had to choose one, then it's a tricky decision. If your pull request makes a tricky decision, please mention it in the pull request comment.

The definition of theorems and the method of proof for a theorem never count as tricky decisions, because nothing else is dependent on them. You can always add more theorems or change a proof without affecting anything downstream.

"Helper functions" of "helper types" that only exist for local use also do not count as tricky. Even if there are multiple ways to do it, your choice doesn't matter globally, since it isn't expected to use these objects globally.

Please allow contributors to modify your pull request, so that the AI can automatically fix merge conflicts.


## Bug Reports

Bug reports are very useful.

If there is a bug in the Acorn prover itself, please report it on the [https://github.com/acornprover/acorn/issues](acornprover issues). A minimal reproduction is helpful.

What counts as a bug? Any time the Acorn prover crashes, that is definitely a bug.

In general, it is not a bug just because the Acorn prover cannot prove a proposition - it's a heuristic process and sometimes it will fail to find a proof. When you can't prove a theorem or a statement, try to break it down into smaller steps, and then prove the smaller steps.

If you (or your AI) cannot figure out any way to break down the statement into smaller steps, and the theorem still cannot be proved, don't report this as an issue. Instead, create an `.ac` file in the `hard_problems` directory containing the theorem goal. `acorn check` knows to check these for syntactic validity, but not to expect a proof. See `hard_problems/README.md` for the purpose and format of these examples.

For now, let's avoid having AIs file an unbounded number of issues. One or two open AI-created issues at a time is okay. If you don't want to hook up your AI to GitHub issues, then when you submit a pull request, mention that you ran into a bug, and describe the bug there.


## Pull Request Triage

The AcornLibrarian bot reviews every pull request.

The triage process uses the review state to indicate the stage of triage.

* If changes are requested, that means the original creator should take the next step.

* If a review is requested, and it's assigned to a human maintainer, that means the human reviewer must take the next step.

* If a review is requested, and it's unassigned, assigned to a human that isn't a maintainer, or assigned to the AcornLibrarian bot, that means the pull request requires triage, and the AcornLibrarianBot should take the next step.

* Once the PR is approved, the AcornLibrarian bot should take next step step, getting it merged.

For convenience, the `scripts/pr-status.sh` script shows the status of each pending pull request.

If a PR doesn't pass CI, or if there is a merge conflict, the AcornLibrarian bot will try to fix it up. If it can't be fixed, or if the bot doesn't have access to modify the pull request, the bot will request changes.

Once it passes CI, the bot will use its own judgment as to whether the pull request "looks good". The bot can either add the PR to the merge queue, or assign to a human maintainer if there is something that needs to be escalated to human review. If the PR is stacked, ie if it's merging into a branch that is not master, the bot will approve it, but not merge it until the PR it's stacked on top of is merged.

If a PR repeatedly fails in the merge queue, the AcornLibrarian bot will escalate to a human maintainer.

When escalating to a human maintainer, the bot should summarize the new definitions that were added. Type definitions, function definitions, constant definitions. Write the summary as inline code with triple-```. Be sure to include the "constraint" block on structure types, and be sure to include the actual definitions for "let" and "define" statements, not just the name and type of the thing we are defining. Theorems do not count as "new definitions" and do not need to be summarized.

Once a human maintainer approves, the human may or may not add to the merge queue. The bot will take care of fixing any merge conflicts that subsequently arise, and getting the PR added to the merge queue.

The AcornLibrarian bot should not create pull requests itself.
