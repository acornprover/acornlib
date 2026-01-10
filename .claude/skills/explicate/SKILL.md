---
name: "Explicate"
description: "Expand the valid but complicated proofs in a module to have more detailed steps, so that they are reprovable."
---

Sometimes, we have a valid proof, in the sense that its certificate can be verified. But the proof is too complicated, in the sense that the prover cannot re-discover the proof ("reprove") if we were to lose the certificate. In this situation, we often want to "explicate" the proof, ie to add more detailed steps to the .ac file so that the prover is able to re-discover the proof.

# Prerequisite

We can only explicate when we have a valid proof. So, the first step is to check that we have valid proofs in the module that we want to explicate.

```bash
acorn reverify MODULENAME
```

Note that module names can be single words like "add_ordered_group" or dot-separated like "comm_ring.binomial".

If the reverify fails, we won't be able to explicate.

# Explicating One Module

The next step is to figure out which lines we need to explicate. Run a reprove with `--fail-fast`. Once we find a line that fails, we'll know we need to explicate it.

```bash
acorn reprove MODULENAME --fail-fast
```

If there's a crash or an internal error, that's a bug in Acorn. We should stop explicating and tell the user there's an Acorn bug.

# Explicating One Line

Once we know a line that cannot be reproved, select the proof to see its detail.

```bash
acorn select MODULENAME LINENUMBER
```

This will show a list of statements and reasons. Statements that come from:

- definitions
- theorems
- boolean reduction
- simplification

can be used for explication. Insert these statements in the .ac file in front of the line we are explicating. (If the line has a `by` block, instead insert the statements at the end of the `by` block.)

Don't delete statements! You should only have to add new statements.

After modifying the file, run a verify of the _whole module_ to ensure the new lines can all be proven, and update the certs.

```bash
acorn verify MODULENAME
```

If this doesn't verify, something was bad with the code we inserted wrong. Try fixing it so that it verifies.

If it does verify, we can repeat. Try reproving this module again, to see if any lines still need explication.

# Finishing

When you are done explicating a module, run a reprove on that module. Ideally, it should succeed. If it doesn't, try explicating again.
