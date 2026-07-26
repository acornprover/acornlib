# Quadruples With Square Product, Erdos #888

Source: aimath `Number theory-77`, 25 Apr 2026. https://www.erdosproblems.com/888
Status: resolved. Verification: Erdos Problems site record only.
Value: feasibility medium, uncertainty medium, importance medium.

Claim: a size bound for the largest `A` contained in `[1, n]` such that every ordered quadruple
`a <= b <= c <= d` in `A` with `a*b*c*d` a perfect square satisfies `a*d = b*c`.

The constraint is finite and elementary, so the predicate is directly statable over finite sets of
naturals. The extremal bound is the hard half.

## Todo

- [ ] Add a square predicate on the naturals, with the basic closure facts.
- [ ] Define the quadruple condition as a predicate on a finite set of naturals.
- [ ] Prove the condition is preserved under taking subsets.
- [ ] Check small cases against the published values.
- [ ] Record the exact bound claimed on the problem page.
- [ ] State the extremal quantity as the maximum size over qualifying subsets of `[1, n]`.
- [ ] Prove the construction direction, exhibiting a qualifying set of the claimed size.
- [ ] Attempt the upper bound; if out of reach, put it in `hard_problems/`.
- [ ] Record the outcome.

## Library demand

Feeds [multiplicative-predicates](../../translate-mathlib/baseline/multiplicative-predicates/todo.md)
and [finite-sum-indexing](../../translate-mathlib/baseline/finite-sum-indexing/todo.md).

- [ ] A perfect-square predicate on the naturals, and its behaviour on products.
- [ ] Squarefree parts, the standard tool for square-product conditions.
- [ ] Maximum size over the qualifying subsets of a finite interval.
