# Distinct Distances With No Four Concyclic, Erdos #654

Source: aimath `Geometry & topology-03`, Feb 2026. https://www.erdosproblems.com/654
Status: partial. Verification: expert-reviewed project result. No formal certificate.
Value: importance high, feasibility medium, uncertainty medium-high.

Claim: if `n` points in the plane have no four concyclic, must some point determine `(1 - o(1)) * n`
distinct distances? The recorded partial result forces more than `(1/3 + c) * n` for a fixed `c > 0`.

`src/geometry/` has `point2_metric.ac` and `point2_circle.ac`, so both the distance function and
concyclicity are already expressible in two dimensions. That makes this the only geometric claim in
the pool that is close to statable today.

## Todo

- [ ] Define the number of distinct distances from a point to a finite planar point set.
- [ ] Define the no-four-concyclic condition using the existing circle API.
- [ ] Prove the condition is preserved under taking subsets.
- [ ] Check the definitions on a small configuration where the count is known by hand.
- [ ] State the partial result: some point determines more than `(1/3 + c) * n` distinct distances.
- [ ] State the full conjecture separately, with an explicit epsilon form for `(1 - o(1))`.
- [ ] Put whichever statements resist proof into `hard_problems/`.
- [ ] Record the outcome, including whether three-collinear or degenerate cases are handled by the source.

## Library demand

Feeds [planar-distance-configurations](../../translate-mathlib/baseline/planar-distance-configurations/todo.md).

- [ ] Cardinality of the set of distances realized from one point to a finite set.
- [ ] Concyclicity of four planar points, and the no-four-concyclic condition on a set.
- [ ] General-position predicates for finite planar configurations.
