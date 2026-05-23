# Metric Spaces

Build out the `MetricSpace` typeclass in `src/metric_space.ac` with definitions and APIs analogous to Mathlib's `MetricSpace`.

- [ ] Promote `is_diameter` predicate to a function-form `diameter(s)` (with 0 fallback for empty/unbounded)
- [ ] Define product metric on `Pair[M, N]` and prove triangle inequality
- [ ] Define pseudometric typeclass and relate to `MetricSpace`
- [ ] Prove union/intersection properties of closed sets via complement
- [ ] Show closed ball is closed (via open complement). Helpers `closed_ball_complement_inner`, `closed_ball_complement_open_ball_subset`, and `closed_ball_complement_has_open_neighborhood` are in place; remaining work is to package these into `is_open_metric(closed_ball(...).c)`. The prover currently times out closing the `forall` body into the `is_open_metric` definition; may need explicit packaging via `is_open_metric_from_inner_balls`.
- [ ] Show interior/closure operations for metric topology
