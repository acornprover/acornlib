# Galois Connections, Insertions, and Coinsertions

Goal: support the adjoint-order patterns that appear in lattice theory and closure constructions.

- [ ] Decide whether relation closures should be exposed as `Set[Pair[T, T]]` closure operators or stay in the unbundled relation API

Status:

- Algebraic generation is now connected to the generic set closure-operator API for subsemigroups, submonoids, subgroups, additive submonoids, additive subgroups, subrings, and ideals.
- Homomorphism image-preimage closures and preimage-image kernels are now packaged as generic set closure/kernel operators for monoid, additive monoid, group, additive group, and semiring homomorphisms.
- Submodule generation is now connected to the generic set closure-operator API for each fixed ambient module.
- `src/galois_connection.ac` now has unbundled meet and join operations transported along a Galois insertion from a meet/join semilattice lower side to the upper side, with lower/upper projection lemmas, universal-property iff lemmas, commutativity, associativity, and idempotence.
- `src/galois_connection.ac` now has the dual unbundled meet and join operations transported along a Galois coinsertion from a meet/join semilattice upper side to the lower side, with projection lemmas, universal-property iff lemmas, commutativity, associativity, idempotence, monotonicity, and naming aliases.
- `src/galois_connection.ac` now defines Galois connections, insertions, coinsertions, induced closure/kernel operators, adjunction-direction lemmas, monotonicity of adjoints and composites, unit/counit inequalities, idempotence, and exact insertion/coinsertion laws.
- `src/galois_connection.ac` now connects induced closure/kernel maps to generic closure and kernel operator predicates, proves insertion/coinsertion embedding and surjection facts, and characterizes fixed closed/kernel-stable elements.
- `src/set.ac` now records the set/image-preimage example in the unbundled `Set` inclusion style: subset-monotone set maps, set closure/kernel operators, a set-specific Galois connection predicate, direct image and inverse image maps, the image/preimage adjunction, and closure/kernel operator packaging for image-preimage closure and preimage-image kernel.
- `src/galois_connection.ac` now has identity and composition Galois connections: `identity_galois_connection` proves the identity pair is a Galois connection, and `compose_galois_connection` proves that composing two Galois connections gives a Galois connection on the outer types.
