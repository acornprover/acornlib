---
name: "Explicate"
description: "Expand a valid proof to have more detailed steps, so that it is reprovable."
---

Sometimes, we have a valid proof, in the sense that its certificate can be verified. But the proof is too complicated, in the sense that the prover cannot re-discover the proof if we were to lose the certificate. In this situation, we often want to "explicate" the proof, ie to add more detailed steps to the .ac file so that the prover is able to re-discover the proof.

# Prerequisite

We can only explicate when we have a valid proof. We can explicate either the whole project, one module, or one line within the module. So, the first step is to check that we have valid proofs in the scope that we want to explicate.

```bash
acorn reverify [MODULENAME] [--line LINENUMBER]
```

Note that module names can be single words like "add_ordered_group" or dot-separated like "comm_ring.binomial".

If the reverify fails, we won't be able to explicate.

# Figuring Out What Needs Explication

The next step is to figure out which lines we need to explicate. Run a reprove. Any lines that cannot be verified during the reprove will need to be explicated.

```bash
acorn reprove [MODULENAME] [--line LINENUMBER]
```

If there's a crash, that's a bug in Acorn. We should stop explicating, it's hopeless to continue.

# Explicating One Line

Once we know which lines cannot be verified, we proceed line by line. Go backwards, from the last line to the first line. (This is because we are going to insert lines, which will change line numbers, so going back to front will mean we won't have to track line number changes.)

Select the proof to see its detail.

```bash
acorn select MODULENAME LINENUMBER
```

This will show a list of statements and reasons. Statements that come from:

- definitions
- theorems
- boolean reduction
- simplification

can be used for explication. Insert these statements in the .ac file in front of the line we are explicating.

After modifying the file, run a verify of the _whole module_ to ensure the new lines can all be proven, and update the certs.

```bash
acorn verify MODULENAME
```

If this verifies, we have made progress. You can now move on to explicating the next line.

If this doesn't verify, something went wrong. Try fixing it so that it verifies.

# Finishing

When you are done explicating a module, run a reprove on that module. Ideally, it should succeed. If it doesn't, try explicating again.
