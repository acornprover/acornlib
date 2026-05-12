# Metric Spaces

Build out the `MetricSpace` typeclass in `src/metric_space.ac` with definitions and APIs analogous to Mathlib's `MetricSpace`.

- [ ] Define completeness and prove `Real: CompleteMetricSpace`
- [ ] Promote `is_diameter` predicate to a function-form `diameter(s)` (with 0 fallback for empty/unbounded)
- [ ] Define product metric on `Pair[M, N]` and prove triangle inequality
- [ ] Define pseudometric typeclass and relate to `MetricSpace`
- [ ] Prove union/intersection properties of closed sets via complement
- [ ] Show closed ball is closed (via open complement)
- [ ] Show interior/closure operations for metric topology
