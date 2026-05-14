# Differential Geometry and Manifolds

Goal: add the smooth geometric infrastructure behind Lie groups, manifolds, and geometric analysis.

- [ ] Define charted spaces and manifolds
  - [x] Partial bijections (`LocalEquiv`) in `src/local_equiv.ac`
  - [x] Identity partial bijection theorem (`local_equiv_data_id`, `local_equiv_id_constructible`)
  - [x] Composition of partial bijections (`local_equiv_data_trans`, `local_equiv_trans_constructible`)
  - [x] Restriction of a partial bijection to a subset (`local_equiv_data_restr`, `local_equiv_restr_constructible`)
  - [x] Define `Chart[M, E]` (partial bijection into a model space) in `src/chart.ac`
  - [x] Define `ChartedSpace[M, E]` structure via an atlas of charts (in `src/charted_space.ac`)
  - [x] Constructibility of a single-chart charted space from a chart with full source (`charted_space_of_global_chart_constructible`)
  - [x] Transition maps between overlapping charts (`chart_transition_constructible`)
  - [x] Restriction of a chart to a subset of its source (`chart_restr_constructible`)
  - [x] Inverse of a chart as a partial bijection from the model space (`chart_symm_constructible`)
  - [x] Atlas covers the space and chosen-chart corollaries (`charted_space_atlas_covers`, `charted_space_chart_at_map_source`, `charted_space_chart_at_left_inv`)
  - [ ] Smoothness compatibility (needs differentiability infrastructure)
- [ ] Support smooth maps and manifolds with boundary
- [ ] Add tangent and cotangent bundles
- [ ] Develop derivatives and chain rules on manifolds
- [ ] Support vector bundles and bundle sections
- [ ] Add differential forms and exterior calculus
- [ ] Build integration on manifolds and Stokes-style theorems
- [ ] Add Riemannian metrics and geodesic constructions
- [ ] Support connections and curvature
- [ ] Connect smooth manifolds with Lie groups and smooth actions
