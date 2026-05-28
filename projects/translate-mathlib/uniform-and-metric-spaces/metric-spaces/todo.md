# Metric Spaces

Build out the `MetricSpace` typeclass in `src/metric_space.ac` with definitions and APIs analogous to Mathlib's `MetricSpace`.

- [ ] Register `Pair[M: MetricSpace, N: MetricSpace]: MetricSpace` once the instance axiom-search overhead for `pair_distance` is reduced; helpers `pair_distance_self/_zero_imp_eq/_symmetric/_triangle` are in `pair_metric.ac`
- [ ] Strengthen `diameter_le` to a pairwise statement (`forall x y in s, x.distance(y) <= b`) once the prover can handle the free-pred instantiation; current form characterizes via `is_set_upper_bound(distance_set(s), b)`
- [ ] Define pseudometric typeclass and relate to `MetricSpace`
- [ ] Add `Set[M].universal_set` and `Set[M].empty_set` instances as closed and other closed-set library lemmas (countable intersection, finite-union variants)
- [ ] Show closed ball is closed (via open complement). Helpers `closed_ball_complement_inner`, `closed_ball_complement_open_ball_subset`, and `closed_ball_complement_has_open_neighborhood` are in place; remaining work is to package these into `is_open_metric(closed_ball(...).c)`. The prover currently times out closing the `forall` body into the `is_open_metric` definition; may need explicit packaging via `is_open_metric_from_inner_balls`.
- [ ] Show interior/closure operations for metric topology
