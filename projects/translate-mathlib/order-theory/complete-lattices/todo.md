# Complete Lattices

Goal: support arbitrary suprema and infima, not just binary ones.

- [ ] Revisit list/range complement and distributivity facts after decomposing the remaining bundled-set lattice proof obligations
- [ ] Decide the minimal general `CompleteLattice` typeclass shape after more unbundled users exist
- [ ] Add general `sup`, `inf`, `sSup`, and `sInf` APIs once the receiver design is stable
- [ ] Prove the standard order characterizations of arbitrary suprema and infima for the general API
- [ ] Add monotonicity lemmas for general `sSup` and `sInf`
- [ ] Add complete lattice APIs for predicates and bundled instances where the typeclass receiver supports them
- [ ] Support complete sublattices and closure operators
- [ ] Add least and greatest fixed point infrastructure based on completeness
- [ ] Connect complete lattices to topology and measure-theoretic constructions
- [ ] Record which downstream libraries should be migrated once this exists

Status:

- `src/set_lattice.ac` is closed to downstream-independent expansion. Do not add more general-purpose set-family, sequence-family, 4-ary-or-higher natural-family, or 4-ary-or-higher independent-product wrappers there.
- Additions to `src/set_lattice.ac` should only be maintenance fixes or narrow support for a named downstream theorem that cannot use the existing indexed-family API.
- A direct `Set[K]: PartialOrder` / `Lattice` instance still needs decomposed bundled-instance proof obligations for transitivity, antisymmetry, and meet/join semilattice wrappers. The verified unbundled API keeps set complete-lattice facts usable until those wrapper proofs are added.
