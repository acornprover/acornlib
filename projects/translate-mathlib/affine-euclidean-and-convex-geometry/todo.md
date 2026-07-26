# Affine, Euclidean, and Convex Geometry

Goal: support the geometric language used in linear algebra, optimization, and classical geometry.


- [ ] Add product `AffineSpace` instances componentwise on `Pair[P, Q]`
- [ ] Add affine maps (structure, identity, constant, extensionality, preservation lemma, composition, preimage and image of subspaces done; still need barycentric coordinates and affine combinations)
- [ ] Develop affine span, independence, and parallelism (span monotonicity, empty/univ
      span lemmas done; still need affine independence, parallelism, and finite-source
      span characterizations)
- [ ] Support inner product spaces and orthogonal projection geometry
- [ ] Add convex sets and convex hulls
- [ ] Prove supporting-hyperplane and separation results
- [ ] Add simplices, polytopes, and finite-dimensional convex geometry
- [ ] Support classical convexity inequalities and lemmas

Returned from the baseline when their verify-ai-claims targets were dropped for failing the
admission test. Kept because the mathematics is still worth having, but nothing claims it now.

### Planar distance configurations

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
