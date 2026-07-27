# Planar Distance Configurations

`src/geometry/` already has `point2.ac`, `point2_metric.ac`, `point2_circle.ac`, `point2_incidence_extra.ac`,
and `point2_orientation.ac`, so distances and circles exist in two dimensions.
`src/geometry/point2_concyclic.ac` adds concyclicity, `point2_distance_set.ac` the distance set and
its count, and `point2_general_position.ac` general position and isometry invariance.

Everything here works with *squared* distances. The ambient type is only an `OrderedField`, so it
need not have square roots, and two points are equidistant from a third exactly when their squared
distances agree — nothing about the counting changes.

The recurring shape in this area is a condition on several points at once, which quantifies too
deeply to restrict to subsets directly. Naming the membership-and-distinctness part
(`four_distinct_in`, `three_distinct_in`) brings each condition down to a two-part body, and the
subset lemma then goes through. This is the same move `simple_graph_triangle_free.ac` uses.

- [x] Define the set of distances realized from one point to a finite planar set, as the image of
      the set under the squared-distance function, and define its cardinality.
- [x] Prove the count is monotone under enlarging the point set.
- [x] Define concyclicity of four planar points using the existing circle API.
- [x] Prove concyclicity is invariant under permuting the four points, via a transposition and a
      cyclic rotation.
- [x] Define the no-four-concyclic condition on a finite set, and prove it passes to subsets.
- [x] Define collinearity-based general position, and relate it to the orientation API.
- [x] Prove distance counts are invariant under isometries, where an isometry is taken to be a map
      preserving squared distances.

Remaining:

- [ ] Prove the distance set is finite in the sense of having a cardinality bounded by the size of
      the point set. `fs_image` already gives a finite set, so what is missing is the bound
      `distance_count(p, s) <= fs_card(s)`, which needs the image cardinality bound.
- [ ] Prove a set in general position with no four concyclic points has all distance counts
      positive, and relate the two conditions.
- [ ] Add the distance set between two different point sets, not just from a single point.
