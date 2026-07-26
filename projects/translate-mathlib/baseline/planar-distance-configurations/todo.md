# Planar Distance Configurations

Claimant: [distinct distances with no four concyclic](../../../verify-ai-claims/distinct-distances-no-four-concyclic/todo.md).

`src/geometry/` already has `point2.ac`, `point2_metric.ac`, `point2_circle.ac`, `point2_incidence_extra.ac`,
and `point2_orientation.ac`, so distances and circles exist in two dimensions. What is missing is
counting distinct distances and the general-position vocabulary.

- [ ] Define the set of distances realized from one point to a finite planar set.
- [ ] Prove that set is finite, and define its cardinality.
- [ ] Prove the count is monotone under enlarging the point set.
- [ ] Define concyclicity of four planar points using the existing circle API.
- [ ] Prove concyclicity is invariant under permuting the four points.
- [ ] Define the no-four-concyclic condition on a finite set, and prove it passes to subsets.
- [ ] Define collinearity-based general position, and relate it to the orientation API.
- [ ] Add Euclidean geometry of points, lines, and planes.
- [ ] Develop distances, angles, and isometries.
- [ ] Prove distance counts are invariant under isometries.
