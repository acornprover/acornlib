# acornlib

Acorn's standard library of mathematical facts.

This repository is a mathematics library, written in Acorn, building up mathematics from the
inherent axioms. The implementation of the Acorn language itself, the integrated AI, and the VS Code extension
are handled in the [acorn repository](https://github.com/acornprover/acorn).
The code for the acornprover.org website,
including documentation, is in the [acornprover.org repository](https://github.com/acornprover/acornprover.org).

## How To Contribute

Please feel free to submit pull requests! The more we contribute, the smarter the AI gets.

To start, fork this repository by clicking the "fork" button on GitHub. Then, clone the fork to your machine.

To work on your fork, open the `acornlib` folder from VS Code. The extension ships with a copy of the Acorn library, but it will use your local fork instead when you are working on a file inside it.

When you're ready, push your code to your fork, and open a pull request in the main repository.

## What to Contribute

The current goal for `acornlib` is to support the mathematics needed for the most common theorem-proving benchmarks, like [miniF2F](https://github.com/facebookresearch/miniF2F/blob/main/lean/src/test.lean) and PutnamBench. We still need to implement several parts of high school and college level mathematics:

- Exponentiation
- The definition and properties of `e`
- Calculus with complex numbers
- Trigonometry: sine, cosine, pi
- Vectors
- Matrices

If you're not sure where to start, jump into [Discord](https://discord.gg/RqXxaye4MC) and we're happy to discuss.
