# Baseline

Goal: build the general mathematics that Acornlib needs before it can check substantial published
proofs. This is a library project, not a problem-solving project.

Everything here is general mathematics with independent value. Nothing in this project is specific to
a single problem, theorem, or paper. If an item only makes sense in service of one named result, it
does not belong here.

## Blockers

No current blockers.

## How this queue was chosen

The ordering came from surveying published AI-assisted mathematical claims that no proof assistant
has checked, and asking what a library would need in order to check them. That survey is the
inspiration, not the content: it told us which corners of mathematics are load-bearing for real
verification work, and those corners are what this project builds.

What the survey suggested, in rough order of leverage:

- Elementary number theory and finite combinatorics carry the most weight, by a wide margin.
- Finite, concrete objects matter more than asymptotic machinery. Checking a claim about one explicit
  graph or matrix needs invariants that can actually be computed, not limit theory.
- Graph theory is the largest gap relative to its importance. `src/` has the graph type and
  connectivity but almost no invariants, starting with vertex degree.
- Some of this has no Mathlib counterpart, so it cannot be obtained by translation. Each branch below
  says which parts those are. Treat them carefully: a proof can be redone, but a definition that
  downstream work is built on is expensive to change.

## Relationship to translate-mathlib

[translate-mathlib](../translate-mathlib/todo.md) aims at broad coverage of Mathlib. This project
aims at depth in a few areas, chosen for verification leverage, and includes material Mathlib does
not have. Where the two overlap, this project takes priority and holds the item; translate-mathlib
covers the rest.

## Queue

Ordered by leverage. Work top to bottom.

- [ ] [Graph theory core](graph-theory-core/todo.md)
  The largest gap. Degree and edges first; everything numeric depends on them. Domination and zero
  forcing have no Mathlib counterpart.

- [ ] [Finite sum indexing](finite-sum-indexing/todo.md)
  Sums over ranges with digit structure, and the enumerative constructions built on them.

- [ ] [Reduced residue sums](reduced-residue-sums/todo.md)
  Sums over reduced residues, and the generalized totients they define. Mathlib has `Nat.totient` but
  not the power sums.

- [ ] [Binomial coefficients and falling products](binomial-and-falling-products/todo.md)
  Valuations of binomial coefficients and falling products, extending the existing Kummer and
  Legendre work.

- [ ] [Multiplicative predicates](multiplicative-predicates/todo.md)
  Squares, squarefree parts, smooth and rough numbers, and prime factors restricted to an interval.

- [x] [Residue class systems](residue-class-systems/todo.md)
  Covering and disjoint systems of residue classes, and their density.

- [ ] [Integer polynomial identities](integer-polynomial-identities/todo.md)
  Multivariate evaluation, substitution, and parametric families of solutions.

- [ ] [Finite matrix spectra](finite-matrix-spectra/todo.md)
  Characteristic polynomials and eigenvalues over the existing finite matrices.

- [ ] [Asymptotic density](asymptotic-density/todo.md)
  Density, almost-all quantification, and digit expansions of real numbers. Density has no direct
  Mathlib module.

- [x] [Planar distance configurations](planar-distance-configurations/todo.md)
  Distance counts and general position for finite planar point sets.
