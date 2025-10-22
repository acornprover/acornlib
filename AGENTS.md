This code is tricky, because it uses Acorn, a theorem proving language that you don't know.

Before writing a proof, look at at least one Acorn file to understand the syntax. For proofs by induction, look at nat.ac. For proofs involving limits, look at real_ring.ac.

You can run

```
acorn
```

to run the verifier. This should be run after every change, to make sure the proof is verifiable.

## Tips

As mentioned above, it is very important to run `acorn` after every change.

Before proving a theorem, consider whether there is a lemma that could be factored out into a separate theorem. If there is, ask the user whether they would prefer you to prove the lemma first.

Before proving a theorem, check if the theorem statement is actually true. If the user asks you to prove a false theorem, explain why you can't.

Numeric literals must have a type specified. You can write `Nat.0` to indicate zero, the natural number. `Real.0` indicates zero, the real number. A `numerals Nat` statement will set the default, but don't add that if it isn't already there.

Variable names must be lowercase.

The Acorn prover is surprisingly powerful. You will almost never have to import theorems from other files since the prover can usually figure them out on its own. You will also almost never have to use explicit theorem names even in the same file. For example, if you need to do some basic arithmetic on the natural numbers, you will almost never have to write `n.suc` (just write `n + 1`) or import anything from `nat` other than `Nat`.

If the proof seems very large, it is worth beginning with a proof outline and thinking through it, then starting to fill in the details step by step, even if the complete proof does not pass.

## Fixing Proofs

When a statement could not be verified, there are two possibilities.

Possibility 1 is that the statement is false. Rewrite the proof so that it does not use false statements.

Possibility 2 is that the statement is too big of a logical leap from the previous statement. Fix this by filling in the missing steps of reasoning, rather than rewriting the entire proof.
