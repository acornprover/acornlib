# Number Theory

Goal: push beyond the current arithmetic core into the standard theories that Mathlib treats as number theory.

The Erdos-facing Group A baseline is complete. The active number-theory queue is Group B below.

## The first cluster

`notes/erdos.md` ranks the 622 open problems by a single attackability score. That score is a smooth queue — about six or seven problems per value, no gap — so the cluster boundary is set by *shared infrastructure*, not by a score cliff. Taking the top band (score ≥ 90, the top ~10% = 66 problems) and classifying each problem by the infrastructure it needs:

| Infrastructure (Group A item) | top-band problems | example problem ids |
| --- | --- | --- |
| binomial-coefficient `v_p` (Kummer / Legendre) | 11 | 376, 730, 396, 849, 386 |
| divisor functions `tau` / `sigma` | 11 | 18, 469, 1054, 893, 886 |
| unit / Egyptian fractions | 9 | 313, 321, 288, 295, 304 |
| factorial `v_p` (Legendre) | 5 | 727, 390, 373, 912, 1108 |
| covering systems | 4 | 1113, 276, 273, 274 |
| base-`b` representations / digit sums | 2 | 406, 124 |

That is **42 of the top 66** — the first cluster this document targets. The other 24 of the top band are additive-combinatorics / Sidon (14, owned by the [combinatorics](../combinatorics/todo.md) project), graph theory (9), and geometry (1). So number theory is the largest single slice of the first cluster, and the completed Group A baseline was ordered to unlock it. (The count is robust to where the band is drawn: widening to score ≥ 80, ~120 problems, keeps number theory the plurality at 66.)

## Group A — Erdos-facing

Group A is complete and no longer tracked as an active checklist.

## Group B — Other standard number theory

- [ ] [Add continued fractions and their approximation theory](continued-fractions/todo.md)
- [ ] [Develop quadratic residues and quadratic reciprocity](quadratic-residues/todo.md)
- [ ] Add Pell equations and related Diophantine techniques
- [ ] Build infrastructure for Bernoulli numbers and classical arithmetic sequences
- [ ] Add analytic-number-theory preliminaries where they naturally fit
