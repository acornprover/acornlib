# Dynamical Systems and Ergodic Ideas

Goal: support iterative, topological, and measure-theoretic dynamics in a unified way.

- [ ] Finish prime-period existence: unfold the local predicate inside `has_min` with a small helper lemma or a non-local predicate definition
- [ ] Build omega-limit and alpha-limit sets on top of the topological-space layer; the discrete "hits a point infinitely often" formulation only suits discrete dynamics, so the topological definition (neighborhoods, closure of forward tail) belongs here
- [ ] Prove `fixed_point_set_invariant` (currently commented out: the analogue proof for `periodic_point_set_invariant` is cached but a fresh search at 5s times out); supply stronger hints or a helper lemma
- [ ] Extend the periodic-point API further: closure under iterate, characterization via prime period, the relation to `fixed_point_set`, and interaction with orbits
- [ ] Add symbolic-dynamics basics
- [ ] Support interval and circle dynamics
- [ ] Develop topological-entropy preliminaries
- [ ] Add measure-preserving transformations
- [ ] Prove basic ergodic-theorem statements
- [ ] Support continuous flows and dynamical systems from differential equations
