# Erdos 396

Goal: track general known mathematics that would be useful for a hypothetical proof of Erdos problem 396.

Problem 396 asks whether for every `k` there exists `n` such that `prod_{0 <= i <= k} (n - i)` divides `binom(2n, n)`.

The library should not contain predicates, theorem names, or examples that are specific to this problem. Additions to `src/` should be general mathematics with independent value; this project file is just the place to remember why those topics are relevant.

## Blockers

No current blockers.

## Roadmap

### Tier 1: general foundations

- [ ] Relate falling-product central-binomial divisibility criteria to residue-class valuation sums.
- [ ] Strengthen finite interval sums and products, including partial sums over residue classes.
- [ ] Extend the modular-arithmetic API for normalized residues, units, affine maps, and finite CRT systems.
- [ ] Add a finite Fourier API on cyclic residue groups: additive characters, orthogonality, convolution, and Parseval-type identities.
- [ ] Add multiplicative characters modulo `n`, with principal characters, orthogonality, and compatibility with reduced residues.
- [ ] Add asymptotic language for summatory functions, natural density, logarithmic averages, and big-O style bounds.
- [ ] Add smooth-number definitions and elementary closure facts for divisors, products, cofactors, and consecutive intervals.
- [ ] Develop arithmetic-function support predicates: boundedness, support on smooth numbers, restrictions to residue classes, and weighted sums.
- [ ] Formalize the basic algebra of Fermat quotients modulo primes, including the product law and the relation to residues modulo `p^2`.

### Tier 2: reusable advanced inputs

- [ ] Formalize Vaaler-style trigonometric approximation for interval indicators after finite Fourier support is in place.
- [ ] Add classical exponential-sum and character-sum bounds in reusable forms, starting with Gauss sums and Pólya-Vinogradov/Burgess-type statements.
- [ ] Add large-sieve inequalities for additive and multiplicative characters, then square-moduli variants.
- [ ] Add Bombieri-Vinogradov and Siegel-Walfisz style equidistribution statements for primes and multiplicative functions.
- [ ] Add smooth-number distribution theorems, starting with Dickman-style counting interfaces and then Hildebrand/Fouvry-Tenenbaum/Drappeau-style AP estimates.
- [ ] Add correlation theorems for bounded multiplicative functions only after the boundedness, averaging, and residue-class APIs are stable.
- [ ] Add Heilbronn-sum and Fermat-quotient character-sum estimates once characters, large sieve, and Fermat quotient algebra are available.
- [ ] Add finite-field additive-combinatorics tools for subgroups, energies, reciprocal sumsets, and Kloosterman-type sums.
- [ ] Add constructive smooth-window results, such as general CRT/cyclotomic constructions of strings of smooth consecutive integers.
