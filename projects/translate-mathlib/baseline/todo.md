# Baseline

Goal: the part of this roadmap that some target in [verify-ai-claims](../../verify-ai-claims/todo.md)
actually needs. Everything here traces to a specific published proof we intend to check end to end,
so this branch comes before the rest of translate-mathlib.

Membership rule: an item belongs in the baseline exactly when a verify-ai-claims target names it.
When a target is finished or dropped, re-check whether its items still have a claimant; if not, move
them back out to the topic they came from rather than leaving them here. This has already happened
once: four branches returned to number theory and geometry when their targets failed the admission
test.

The subtopics below are ordered to match the verify-ai-claims queue, so working top to bottom
unblocks targets in the order they are ranked.

- [ ] [Integer polynomial identities](integer-polynomial-identities/todo.md)
  Claimant: parametric Diophantine families.

- [ ] [Finite sum indexing](finite-sum-indexing/todo.md)
  Claimant: Fubini-number sum identity.

- [ ] [Reduced residue sums](reduced-residue-sums/todo.md)
  Claimant: generalized totient divisibility.

- [ ] [Finite matrix spectra](finite-matrix-spectra/todo.md)
  Claimant: Ran-Teng Conjecture 20. The smallest new area any target needs; `fin_matrix.ac` already exists.

- [ ] [Asymptotic density](asymptotic-density/todo.md)
  Claimant: Erdos-Borwein binary digits.

- [ ] [Graph theory core](graph-theory-core/todo.md)
  Claimants: Koch-Narayan Conjecture 1; zero forcing and domination.
  Note: the largest branch by far. `src/` already has the graph type and connectivity; what is
  missing is vertex degree and everything numeric built on it.
