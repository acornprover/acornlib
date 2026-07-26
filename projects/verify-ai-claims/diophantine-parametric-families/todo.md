# Parametric Families for Two Diophantine Equations

Source: aimath `Number theory-43`, 5 Mar 2026. https://epoch.ai/frontiermath/open-problems/small-diophantine
Status: partial. Verification: problem authors checked. No formal certificate.
Value: feasibility high, uncertainty medium, importance low. Chosen first to open the pipeline.

Claim: `z^2 + y^2*z - z + x^3 + 2 = 0` and `z^2 + y^2*z + x^3 + x + 1 = 0` each have infinitely many
integer solutions, exhibited by explicit parametric families.

Why this one is checkable: a parametric family reduces the claim to a polynomial identity in one
parameter, plus the observation that the family takes infinitely many values. Both halves are ring
algebra over `Int`, which `src/int/` and `src/polynomial/` already support.

## Todo

- [ ] Read the six-page solution note and record the two parametric families verbatim.
- [ ] State each equation as a predicate on `Int` triples.
- [ ] Define each claimed family as a triple of integer polynomials in one parameter.
- [ ] Prove the substitution identity: evaluating the equation at the family is identically zero.
- [ ] Prove the family is injective, or that one coordinate is unbounded, so the solutions are infinite.
- [ ] Conclude: the solution set of each equation is infinite.
- [ ] Record the outcome, including any transcription ambiguity in the published families.

## Library demand

Feeds [integer-polynomial-identities](../../translate-mathlib/baseline/integer-polynomial-identities/todo.md).

- [ ] Evaluation of multivariate integer polynomials at a tuple of arguments.
- [ ] Identity checking by normalization rather than by case analysis.
- [ ] An infinite-image lemma for a nonconstant integer polynomial in one variable.
