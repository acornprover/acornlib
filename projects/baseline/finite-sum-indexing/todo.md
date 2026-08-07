# Finite Sum Indexing

`src/finite_set/sum.ac` and `src/real/rectangular_sum.ac` cover sums over finite sets, which is the
right indexing when the index set is given but an awkward one when identities are indexed by a
range. `src/nat_range_sum.ac` adds the range-indexed sum, defined by the recurrence directly so
that induction on the upper limit needs no set machinery, and `src/nat_range_sum_semiring.ac` the
scalar and constant cases. `src/nat_binary_digits.ac` has the binary digit predicate and the split
of a range of length `2^(i+1)` into halves.

`src/add_comm_monoid_rearrange.ac` holds the associativity and commutativity chains that proof
search will not find on its own inside an induction, chiefly `add_swap_inner`.

- [x] Add sums over an initial range of the naturals, with the standard recurrence.
- [x] Prove a range split at an arbitrary midpoint, and the three-part split.
- [x] Prove reindexing a range sum by an offset, and that summands agreeing on the range give equal
      sums.
- [x] Add binary-expansion predicates on naturals usable inside a summand. Stated through `mod` and
      a comparison rather than through division: `nat.division` is private to its package, so
      `div_of_decomp` is not reachable, and the comparison form needs only `small_mod`.
- [x] Prove the range `0` to `2^n - 1` splits into low and high halves matching the top bit, with
      the congruence lemma that rewrites the upper half in terms of the lower.
- [x] Add scalar multiples and constant summands over a semiring.

Remaining:

- [x] Bridge the two indexing schemes. `range_sum` and `partial` have the same base case and the
      same step, so they agree everywhere; from there the finite-set sum over `fs_from_list(n.range)`
      follows, the index list being duplicate-free. Everything in `src/list/` stated for `partial` is
      therefore available for range sums.
- [x] Prove a range sum of naturals is monotone in the summand, and bounded by the count times a
      bound on the terms. Stated over the naturals rather than an ordered semiring, since
      `AddCommMonoid` carries no order and the ordered-semiring layer has no range sums.
- [ ] Add ordered set partitions and the surjection count defining the Fubini numbers. This is the
      largest remaining item and mostly definitional: it needs surjections between finite sets to
      be countable, which nothing above supplies.
