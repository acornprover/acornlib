# Ordered Algebra and Topology Interfaces

Goal: make order theory interact smoothly with the rest of the library instead of living in isolation.

- [ ] Standardize ordered ring and ordered field interfaces
- [ ] Connect lattice/order results with set containment APIs
- [ ] Add remaining monotone-map interfaces for algebraic operations beyond ordered-group translations and scalar multiplication as downstream consumers appear
- [ ] Connect order-theoretic boundedness with current analysis definitions
- [ ] Add order/topology bridge lemmas for intervals and closures
- [ ] Support order-complete statements used in supremum and convergence arguments
- [ ] Connect well-foundedness with algebraic descending-chain conditions
- [ ] Add ordered-module and ordered-field planning notes for later linear algebra and analysis
- [ ] Identify duplicated order reasoning in `real_*` files and record migration targets
- [ ] Keep a shortlist of order abstractions that later major roadmap branches depend on

Status:

- `src/ordered_field.ac` now packages positive scalar multiplication maps as strict monotone maps and negative scalar multiplication maps as strict antitone maps, complementing the existing non-strict monotone/antitone wrappers and direct comparison lemmas.
