# Probability Theory

Goal: provide the probability layer that sits on top of measure theory in Mathlib.

Most subtopics depend on the [measure-theory](../measure-theory/todo.md) project, which currently has no `src/` code. Discrete probability is the only branch that can plausibly start without a measurable-spaces API in place, and even it needs a finite-sum-over-`FiniteSet[T]` of reals helper that does not yet exist in `acornlib`.

- [ ] [Discrete probability](discrete-probability/todo.md)
  Note: probability mass functions on a `FiniteSet`, expectation, variance, and finite-sample independence; needs a finite-sum-over-set helper before any probability code lands.

- [ ] [Probability spaces and probability measures](probability-spaces/todo.md)
  Note: `ProbabilitySpace` built on a measure with total mass `1`; depends on measure theory.

- [ ] [Random variables, pushforwards, and laws](random-variables/todo.md)
  Note: measurable functions on a probability space, distribution measures, and joint laws.

- [ ] [Expectation, variance, and moments](expectation-and-moments/todo.md)
  Note: expectation as a Bochner-style integral, `L^p` norms of random variables, variance, and higher moments.

- [ ] [Independence of events and random variables](independence/todo.md)
  Note: pairwise and mutual independence, sigma-algebra independence, and Kolmogorov's zero-one law.

- [ ] [Conditional probability and conditional expectation](conditional/todo.md)
  Note: conditional probability on events, conditional expectation as a sub-sigma-algebra projection, and tower property.

- [ ] [Standard distributions](distributions/todo.md)
  Note: Bernoulli, binomial, Poisson, geometric, uniform, exponential, normal, and their basic moment computations.

- [ ] [Convergence of random variables](convergence/todo.md)
  Note: convergence in probability, almost sure convergence, convergence in distribution, and `L^p` convergence with their relations.

- [ ] [Law of large numbers and central limit theorem](limit-theorems/todo.md)
  Note: weak and strong laws of large numbers, characteristic functions, and the classical CLT.

- [ ] [Martingales and stochastic processes](martingales/todo.md)
  Note: filtrations, stopping times, discrete-time martingales, optional stopping, and basic convergence results.
