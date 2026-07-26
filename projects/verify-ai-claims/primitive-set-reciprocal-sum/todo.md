# Primitive Sets and Reciprocal Sums, Erdos #1196

Source: aimath `Number theory-44`, 13 Apr 2026. https://arxiv.org/abs/2605.00301
Status: resolved. Verification: multi-author human proof, with public expert exposition.
Value: importance high, uncertainty low-medium, feasibility medium.

Claim: if `A` is contained in `[x, inf)` and is primitive, meaning no member divides another, then
the sum of `1 / (a * log a)` over `a` in `A` is at most `1 + o(1)` as `x` tends to infinity.

This is the best-attested claim in the queue, so it is here for importance and as a calibration
target rather than because its truth is in doubt. `src/real/log.ac` and the series machinery make
the sum expressible; the `o(1)` and the supremum over primitive sets are the hard parts.

## Todo

- [ ] Define primitivity for a set of naturals.
- [ ] Prove the basic closure facts: subsets of primitive sets are primitive, and an antichain of a fixed size is primitive.
- [ ] Define the reciprocal-log sum over a finite primitive set.
- [ ] Prove the sum is monotone under inclusion.
- [ ] Express the supremum of the sum over primitive subsets of `[x, inf)`.
- [ ] State the `1 + o(1)` conclusion using an explicit epsilon form rather than asymptotic notation.
- [ ] Attempt the bound; expect this to need `hard_problems/` at first.
- [ ] Record the outcome.

## Library demand

Feeds [asymptotic-density](../../translate-mathlib/baseline/asymptotic-density/todo.md).

- [ ] Sums of `1 / (a * log a)` over a finite set of naturals, and their convergence behaviour.
- [ ] An explicit epsilon form for `1 + o(1)` bounds, avoiding asymptotic notation in statements.
- [ ] Suprema over a family of finite sets, as the way to state extremal sums.
