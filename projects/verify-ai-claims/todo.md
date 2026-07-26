# Verify AI Claims

Goal: take a published AI-assisted proof that nobody has machine-checked, and check the whole thing.
Either it verifies, which is a real contribution, or it does not, and we have found an error. Nothing
in between counts.

Each target names the general mathematics it needs; that demand is what drives
[the translate-mathlib baseline](../translate-mathlib/baseline/todo.md).

## Blockers

No current blockers.

## Admission test

A claim belongs here only if all four hold. Three of the four are checks on the *source*, not on us,
and they are the ones that are easy to skip.

1. **A complete proof document exists in public.** A preprint, a solution note, or a proof note with
   certificates. A problem-page record, a forum thread, or a "site confirmed" entry is not a proof;
   there is nothing to check. Read the publication description before admitting a claim.
2. **Nobody has machine-checked it.** No Lean or other proof-assistant artifact.
3. **Human verification is weak.** Author-checked, not externally refereed, or review pending. This
   is what makes an error plausible, and finding one is half the point.
4. **The whole proof is plausibly formalizable in Acorn**, allowing for baseline work first. Not the
   statement — the proof.

Two failure modes to refuse explicitly, because the first pass of this project fell into both:

- **Do not admit a target in order to state it.** If the plan ends in "state it and put it in
  `hard_problems/`", the claim does not belong here. `hard_problems/` is for goals we tried and could
  not prove, not a parking space for work we never intended to finish.
- **Do not admit half a claim.** Proving the easy direction of a two-directional claim verifies
  nothing. If only half is reachable, the target is not ready.

An open problem whose *resolution* is claimed is admissible; an open problem is not.

## Survey

Source: `https://aimath.robertj1.com/`, read 26 July 2026. 239 claims. 138 record some Lean checking,
101 do not, and roughly 94 of those 101 link to some artifact. But the artifact is often a problem
record rather than a proof, which is what test 1 exists to catch.

Excluded outright: algebraic geometry, knot theory, moduli spaces, PDE, stochastic analysis, and
profinite Galois claims are far outside current `src/` reach.

## Queue

Ordered by value: how likely we are to either complete a real verification or find an error.

- [ ] [Parametric families for two Diophantine equations](diophantine-parametric-families/todo.md)
  Six-page solution note; the proof reduces to a polynomial identity. Complete verification is realistic now.

- [ ] [Kurkov's Fubini-number sum identity](fubini-number-sum/todo.md)
  Proof note plus checker, not externally refereed. A finite identity, so the whole proof is in reach.

- [ ] [Divisibility set for a generalized Euler totient](generalized-totient-divisibility/todo.md)
  Complete arXiv proof, author-checked only. Both directions or nothing.

- [ ] [Ran-Teng Conjecture 20](ran-teng-spectral-region/todo.md)
  Detailed preprint, no formal artifact located. A finite matrix family, and `src/fin_matrix.ac` exists.

- [ ] [Binary digits of the Erdos-Borwein constant](erdos-borwein-binary-digits/todo.md)
  Complete arXiv proof, author-checked only. Needs real-number digit expansions first.

- [ ] [Koch-Narayan Conjecture 1](koch-narayan-edge-bound/todo.md)
  Certificates and frozen source, not externally refereed. Blocked on graph invariants.

- [ ] [Zero forcing and domination, TxGraffiti-Davila 9](zero-forcing-domination/todo.md)
  Certificates and frozen source, not externally refereed. Blocked on the most graph baseline of any target.

## Conventions

- `src/` gets general mathematics only. No predicate, theorem name, or example may be specific to a
  claim being checked. These files are where the motivation lives.
- Record the outcome honestly: verified, refuted, or abandoned with the reason. An abandoned target
  should be deleted from this queue, not left as a stub.
- If the published proof has a gap, that is the result. Write down exactly which step fails.
- A claim that cannot be stated without inventing mathematics the source left implicit is also a
  finding, and it usually means the source was less complete than it appeared.
