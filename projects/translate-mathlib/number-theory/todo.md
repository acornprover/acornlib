# Number Theory

Goal: push beyond the current arithmetic core into the standard theories that Mathlib treats as number theory.

The Erdos-facing Group A baseline is complete. The active number-theory queue is Group B below.

## The first cluster

A previous triage scored the 622 open Erdos problems by attackability. That score was a smooth queue — about six or seven problems per value, no gap — so the cluster boundary is set by *shared infrastructure*, not by a score cliff. Taking the top band (the top ~10% = 66 problems) and classifying each problem by the infrastructure it needs:

| Infrastructure (Group A item) | top-band problems | example problem ids |
| --- | --- | --- |
| binomial-coefficient `v_p` (Kummer / Legendre) | 11 | 376, 730, 396, 849, 386 |
| divisor functions `tau` / `sigma` | 11 | 18, 469, 1054, 893, 886 |
| unit / Egyptian fractions | 9 | 313, 321, 288, 295, 304 |
| factorial `v_p` (Legendre) | 5 | 727, 390, 373, 912, 1108 |
| covering systems | 4 | 1113, 276, 273, 274 |
| base-`b` representations / digit sums | 2 | 406, 124 |

That is **42 of the top 66** — the first cluster this document targets. The other 24 of the top band are additive-combinatorics / Sidon (14, owned by the [combinatorics](../combinatorics/todo.md) project), graph theory (9), and geometry (1). So number theory is the largest single slice of the first cluster, and the completed Group A baseline was ordered to unlock it. (The count is robust to where the band is drawn: widening to ~120 problems keeps number theory the plurality at 66.)

## Group A — Erdos-facing

Group A is complete and no longer tracked as an active checklist.

## Group B — Other standard number theory

Pell equations moved to [baseline/integer-polynomial-identities](../baseline/integer-polynomial-identities/todo.md)
and analytic preliminaries to [baseline/asymptotic-density](../baseline/asymptotic-density/todo.md).

- [ ] [Add continued fractions and their approximation theory](continued-fractions/todo.md)
- [ ] [Develop quadratic residues and quadratic reciprocity](quadratic-residues/todo.md)
- [ ] Build infrastructure for Bernoulli numbers and classical arithmetic sequences

Returned from the baseline when their verify-ai-claims targets were dropped for failing the
admission test. Kept because the mathematics is still worth having, but nothing claims it now.

### Residue class systems

- [ ] Define pairwise disjointness of a residue-class system.
- [ ] Prove `a mod m` and `b mod n` are disjoint iff `gcd(m, n)` does not divide `a - b`.
- [ ] Prove disjointness is preserved under dropping a class.
- [ ] Define the distinct-moduli condition on a system.
- [ ] Define the all-odd and all-greater-than-one conditions on the moduli.
- [ ] Define the density of a residue-class system as a sum of reciprocals of moduli.
- [ ] Prove a covering system has density at least one.
- [ ] Prove a disjoint system has density at most one.
- [ ] Prove the density of a system bounded by `N` is attained by an explicit construction.
- [ ] Add the least common modulus of a system and the periodicity it induces.
- [ ] State the Erdos-Selfridge odd covering question without axioms, for `hard_problems/`.

### Binomial coefficients and falling products

- [ ] Prove the prime factors of a falling product are the union of those of its factors.
- [ ] Relate the `p`-adic valuation of `binom(2n, n)` to carries, completing the Kummer bridge.
- [ ] Prove `binom(2n, n)` is divisible by every prime in the interval `(n, 2n]`.
- [ ] Add a least-witness API for the smallest natural failing a decidable predicate.
- [ ] Prove the least non-divisor of any natural is a prime power.
- [ ] Relate falling-product divisibility to central-binomial divisibility.
- [ ] Strengthen finite interval sums and products, including partial sums over residue classes.
- [ ] Add smooth-number definitions and closure facts for divisors, products, and cofactors.
- [ ] Prove Bertrand's postulate, or the existence of a prime in `(k, 2k)`.
- [ ] Add valuation sums over residue classes, the tool shared by these two targets.

### Multiplicative predicates

- [ ] Add a perfect-square predicate on the naturals.
- [ ] Prove a product of coprime squares is a square, and the converse.
- [ ] Define the squarefree part and the square part of a natural.
- [ ] Prove every natural factors uniquely as a square times a squarefree number.
- [ ] Prove a product is a square iff the squarefree parts multiply to a square.
- [ ] Add a squarefree predicate and relate it to the valuation being at most one.
- [ ] Define the set of prime factors of a natural lying in a given interval.
- [ ] Prove that predicate is multiplicative over coprime factors.
- [ ] Define smooth and rough numbers relative to a bound.
- [ ] Add the greatest prime factor function and its basic properties.
