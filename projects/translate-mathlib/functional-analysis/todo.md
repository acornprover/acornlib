# Functional Analysis

Goal: support infinite-dimensional linear analysis in the style Mathlib uses for measure theory, PDE, and geometry.

- [ ] Add `MetricSpace` instance via `norm_distance` for `NormedAddCommGroup` (blocked while typeclass-extension certificates fail `acorn check`)
- [ ] Add Banach spaces and completeness infrastructure
- [ ] Extend normed vector space API: scalar action via `Real.0`/`Real.1`, sub-additivity for linear combinations, scaled distance lemmas
- [ ] Add Hilbert spaces and orthogonal projection results
- [ ] Support bounded linear maps and operator composition
- [ ] Develop operator norms and completeness of operator spaces
- [ ] Add dual spaces and Hahn-Banach style extensions
- [ ] Prove open mapping, closed graph, and inverse mapping theorems
- [ ] Support weak and weak-star topologies
- [ ] Add compact operators and basic spectral theory
- [ ] Develop `L^p` spaces and related analytic constructions
