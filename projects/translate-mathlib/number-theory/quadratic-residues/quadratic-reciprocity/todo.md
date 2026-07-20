# Quadratic Reciprocity For Odd Primes

Design note: represent the positive half-system either directly as the
successor image of a range or by filtering the nonzero residues, and represent
the upper-half count either as a filtered-list length or a recursive count.
Defer this API choice until the theorem scaffolding fixes its consumers.

- [ ] Show the chosen signed-representative list is a permutation of the positive half-system
- [ ] Derive the product congruence underlying Gauss's lemma
- [ ] Prove Gauss's lemma as a Legendre-symbol sign formula
- [ ] Express the Gauss count through a floor-sum parity
- [ ] Partition the odd-prime rectangle by the reciprocity lattice boundary
- [ ] Relate the two exchanged floor sums modulo two
- [ ] Prove quadratic reciprocity for distinct odd primes
- [ ] Package reciprocity in Legendre-symbol and residue-predicate forms
- [ ] Define the positive half-system and its upper-half multiplication count
