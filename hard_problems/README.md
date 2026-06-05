# Hard Problems

This directory contains theorem goals that are too hard for the current prover
in practice, even though they seem like goals the prover should be able to solve
in theory.

These files are checked for syntactic and semantic validity by `acorn check`,
but proof search is not required to succeed here. The purpose is to collect
real examples that can be used to train and evaluate future provers.

Prefer small, focused examples. Each `.ac` file should contain one theorem goal
or a tightly related family of goals, together with the imports needed to state
the problem.
