---
name: formalizing-hard-theorems
description: Use when a theorem is mathematically true but difficult to formalize directly, especially when proof search times out, the statement is large, or the proof needs helper lemmas, dependency research, or structured decomposition.
---

# Formalizing Hard Theorems

Use this skill when the user wants a hard theorem formalized, finished, or unstuck.

This skill is for theorems that are not routine one-shot proofs. It assumes the main challenge is proof structure, theorem dependencies, or statement size rather than basic syntax.

## Prerequisite

Before formalizing, understand informally why the theorem is true.

- If you do not yet understand the mathematical proof at an informal level, stop and figure that out first.
- If you cannot explain to yourself what the proof is supposed to do, you are not ready to formalize it.
- If the statement itself may be false, test that first before investing in formalization.

## Core Workflow

Follow this order.

1. Understand the theorem informally.
2. Research dependencies.
3. Make the import situation explicit.
4. Try decomposition strategies one by one.
5. Verify after each meaningful change.
6. Only give up after exhausting the available strategies.

## Dependency Research

For a hard theorem, do the research first.

- Find every existing theorem you expect to use.
- Figure out where each dependency lives in the codebase.
- Make sure the relevant modules are imported.
- Check the exact theorem statements before relying on memory.
- Identify the likely last theorem you will use in the proof and work backward from its hypotheses.

When looking for dependencies, ask:

- What theorem is likely the final step?
- What are the immediate hypotheses needed for that final step?
- Which of those hypotheses are already available?
- Which missing hypotheses should become helper lemmas?

Every proof step combines only a small number of immediate dependencies. If your proof idea depends on many facts at once, there is almost always a linear breakdown hiding inside it.

## Strategy Order

When a hard theorem does not go through directly, try these strategies in order.

### 1. Sequential Split

If the proof is really `A -> B -> C -> ...`, split it.

- Prove `A implies B` as one theorem.
- Prove `B implies C` as a second theorem.
- Continue until the original theorem becomes a short final proof.

This is especially useful when you know the last step of the proof. If the target is `C`, ask:

- What theorem gives `C`?
- What are its immediate prerequisites?
- Can each prerequisite be proved as its own theorem first?

If the theorem depends on several facts, there should be some order in which they are fed into the proof. Use that order to split the theorem linearly.

### 2. Simplify the Statement Through Definitions

Large theorem statements are hard to formalize directly.

- If the statement contains bulky `forall`, `exists`, or function expressions, factor them into named definitions.
- Define helper predicates or helper functions for the large subexpressions.
- Prove the properties of those helpers separately.
- Then restate the main theorem in terms of the smaller definitions.

This is often the right move when the theorem statement itself is doing too much work.

### 3. Isolate the Reverse Direction

If the theorem is an equality or equivalence, split directions.

- Prove one inclusion or implication first.
- Then prove the reverse direction separately.
- Only package the final equality once both directions are already available.

### 4. Turn Witness Search Into Explicit Lemmas

If the proof repeatedly extracts witnesses from `exists`, do not keep asking the prover to rediscover them.

- Prove witness-extraction lemmas.
- Prove introduction lemmas that build the relevant `exists`.
- Use those lemmas instead of repeating local witness arguments in the main theorem.

### 5. Prove Complicated Boolean Goals by Contradiction

If the goal itself is a complicated Boolean formula, direct proof search can
wander through many irrelevant ways to assemble the formula. This often happens
with goals involving `and`, `or`, `implies`, `=`, or `!=` between propositions.

- Name the important Boolean subexpressions with `let` or a small definition.
- Cite the relevant direction or introduction lemmas under the shared
  hypotheses, before the case split.
- Use proof by contradiction on the whole Boolean goal.
- Inside the contradiction, split cases on one named Boolean subexpression.
- In each case, prove the other Boolean subexpressions explicitly, then derive
  the contradiction.
- After the contradiction closes, rewrite the named Booleans back to the
  original goal.

For example, if the goal is `p = q`, try proving `p = q` by contradiction. In
the `p` case, prove `q`, so both sides are `true`. In the `not p` case, prove
`not q`, so both sides are `false`.

### 6. Reduce Search Width

If the statement is true and the plan is correct but Acorn times out, reduce the number of choices the prover has.

- Replace implicit leaps with explicit intermediate statements.
- Name helper lemmas instead of repeating the same local reasoning.
- Avoid asking one theorem to do several conceptually different things.
- Prefer short local lemmas over one giant `by` block.

## Working Style

- Try each strategy deliberately, one by one.
- Do not abandon a hard theorem after only one decomposition attempt.
- Keep theorem statements simple.
- Prefer named helpers over giant inline expressions.
- Prefer a small stack of honest lemmas over a single opaque proof.

If a theorem still resists formalization, rewrite the remaining work into narrower helper theorems rather than leaving one broad stuck target.

## Acorn-Specific Guidance

- Run `acorn` after each meaningful change.
- Check that imports are sufficient before blaming the prover.
- Acorn promises one-step uses of explicit cited theorems.
- Acorn also promises cited rewrites and Boolean reduction once the relevant theorem is cited.

For example, if you have:

```acorn
theorem t1(x: Thing) {
  foo(x) and bar(x) implies baz(x)
}
```

and later you prove:

```acorn
foo(a)
bar(a)
t1(a)
```

then Acorn should be able to prove:

```acorn
baz(a)
```

Similarly, if you have:

```acorn
theorem t2(x: Thing) {
  baz(x) = qux(x)
}
```

and later you prove:

```acorn
zorp(baz(a)) = gunk
t2(a)
```

then Acorn should be able to prove:

```acorn
zorp(qux(a)) = gunk
```

- If Acorn fails on a more complicated proof step, do not call that a prover limitation. It is your responsibility to fill in the missing intermediate steps and helper theorems.
- If a proof fails, distinguish between:
  - a false statement
  - a true statement with missing intermediate steps
  - a true statement whose current wrapper still needs to be split into smaller lemmas
- A real Acorn bug is narrower: you cited a relevant theorem, proved its immediate dependencies, and Acorn still cannot prove the immediate conclusion or immediate rewrite that should follow in one step.
- If something looks like that kind of Acorn bug, or like a genuinely missing language feature, tell the user explicitly.

## Output

When you use this skill, report:

- the theorem you are trying to formalize
- the informal proof idea you are using
- the key dependencies you found
- which decomposition strategy you are trying
- whether the theorem was completed or split into narrower helper lemmas
