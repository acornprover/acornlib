# Odd Covering Systems, Erdos #7

Source: aimath `Number theory-36`, 7 May 2026. https://www.erdosproblems.com/7
Status: **retracted**. Verification: failed an axiom and statement-fidelity audit.
Value: uncertainty very high, importance high, feasibility of the *statement* high and of the proof low.

Claim as published: a Lean formalization resolving whether a finite covering system of the integers
can have distinct odd moduli all greater than 1. The audit found that three consequences of the
BBMST sieve were left as axioms, and that the formalized statement did not faithfully match the
problem. The underlying question is still open.

This target is not an attempt at Erdos #7. It is a controlled repeat of a formalization that is
known to have gone wrong, in an area where `src/number_theory/covering_system.ac` already gives real
support. The deliverable is a faithful statement plus an honest account of what remains unproved.

## Todo

- [ ] Record the exact question from the problem page.
- [ ] State it in Acorn over the existing `is_covering_system` representation: moduli distinct, odd, all greater than 1.
- [ ] Check the statement is faithful, in particular that it quantifies over finite systems and forbids modulus 1.
- [ ] Confirm no part of the statement depends on an unproved auxiliary assumption.
- [ ] Put the goal in `hard_problems/` with a comment recording that the question is open.
- [ ] Read the retracted Lean development and list precisely which three facts were axiomatized.
- [ ] Record each as a separate library target if it is general mathematics worth having.
- [ ] Record the outcome, including whether Acorn's certificate discipline would have surfaced the axiom gaps.

## Library demand

Feeds [residue-class-systems](../../translate-mathlib/baseline/residue-class-systems/todo.md).

- [ ] Distinct-moduli and odd-moduli conditions on a covering system.
- [ ] The density obstruction: the reciprocals of the moduli of a covering system sum to at least 1.
- [ ] Whatever the three audited sieve facts turn out to be, stated without axioms.
