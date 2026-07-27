This code uses Acorn, a theorem proving language.

Before writing a proof, look at at least one Acorn file to understand the syntax. For proofs by induction, look at nat.ac. For proofs involving limits, look at real_ring.ac.

You can run

```
acorn
```

to run the verifier. This should be run after every change, to make sure the proof is verifiable.

If you are in an environment that doesn't have the verifier, use the "acorn-installation" skill to set it up.

Make sure to run the verifier before you tell the user you're finished. If you have made some progress but you're still working on a big proof, it's okay to comment that out so the user can check in your work.

Before submitting a pull request, read CONTRIBUTING.md to learn the expected format and understand the process.

## Pull Request Readiness

When creating or updating a pull request:

- Do not create draft PRs unless explicitly requested.
- Allow maintainer edits on PR branches from forks.
- Before reporting that a PR is ready, fetch the target base branch, merge or rebase it into the PR branch, resolve any conflicts, run `acorn` and `acorn check`, push the updated branch, and verify the PR reports as mergeable.
- If GitHub reports that a PR is not mergeable, fix that before saying the PR is ready.

## Documentation Style

Every type, typeclass, and attribute should have a doc comment, starting with `///`.

Comments should be written using mathematical language, not using programming language.

```acorn
// Good:
/// The smaller of two elements.

// Bad: "returns" is what a programmer would say.
/// Returns the smaller of two elements.

// Good:
/// True if f is continuous everywhere on the reals.

// Bad: "checks" is what a programmer would say.
/// Checks if f is continuous everywhere on the reals.
```

## Tips

Never clean the build directory.

**Always run `acorn` after every change.**

**Proof strategy:**
- Check if theorem statement is actually true before attempting proof
- Consider factoring out lemmas - ask user if lemma should be separate
- For large proofs: start with outline, fill in details incrementally (partial completion is ok)
- Check for similar existing theorems to leverage

**Syntax requirements:**
- Variable names must be lowercase
- Numeric literals need explicit types: `Nat.0`, `Real.0`
- Check if `numerals` declaration already exists before adding

**Keep definitions and theorems simple:**
- Avoid inline lambdas: Define named helpers with explicit parameters. Example: `row_sum(m, f, i)` then use `row_sum(m, f)`, not `function(i) { ... }`
- Avoid complex theorem statements: Extract inline `forall`/`exists`/`function` into separate definitions
- Define helper functions to simplify expressions in theorem signatures

**File organization:**
- Place definitions and theorems in the most general file that applies
- Example: `sub_seq` belongs with `add_seq` in `real_seq.ac`, not in `cauchy.ac` where it's used

**Prover capabilities:**
- Rarely need to import theorems (prover is powerful)
- Rarely need explicit theorem names in same file, for small steps. Once a step times out, cite explicitly and state the conclusion — see "Fixing Proofs" below
- Write natural expressions (`n + 1` not `n.suc`)

**Bounded induction pattern:** When inducting over bounded ranges with external constraints, induct on the _distance_ to enable automatic induction.

**Arithmetic explicitness:** Be explicit with inequalities - Acorn may not automatically prove `n - k >= big_n` from `big_n + k <= n`.


## Fixing Proofs

When a statement could not be verified, there are two possibilities.

Possibility 1 is that the statement is false. Rewrite the proof so that it does not use false statements.

Possibility 2 is that the statement is too big of a logical leap from the previous statement. Fix this by filling in the missing steps of reasoning, rather than rewriting the entire proof.

**Cite the theorem, then state its conclusion.** Acorn gives you a one-step use of an explicitly cited theorem, but the conclusion still has to appear as its own line. Citing a theorem and stopping leaves its conclusion for proof search to rediscover, which is where searches usually time out.

```acorn
// Times out: the conclusion is never stated.
max_degree_at_most_intro(g, s, k)

// Verifies: cite, then state what the citation gives you.
max_degree_at_most_intro(g, s, k)
max_degree_at_most(g, s, k)
```

**Do not bind a cited theorem's arguments with a local `let`.** Writing `let n: Nat = f(x)` and then citing a theorem at `n` can stop the prover matching the citation against the goal, even though every line looks right. Repeat the full term in the citation and in the conclusion instead. This turned a theorem that timed out for three attempts into a one-line fix.

**Boolean steps need explicit lemmas from `logic.ac`.** Mutual implication does not give equality: proving `a implies b` and `b implies a` leaves `a = b` unproved until you cite `iff_bool_imp_eq`. The same holds for associativity, distributivity, and the rest — the library's own set-equality proofs always cite `and_assoc`, `and_or_distrib_right`, and friends rather than leaving the boolean algebra to search. When a proof stalls on what looks like trivial logic, look for the lemma instead of restructuring.

**Case-split on `Bool` yourself.** Proof search does not try both values of a boolean. Deriving `not p(x) != not p(y)` from `p(x) != p(y)`, or a contradiction from three pairwise-different booleans, times out until you write `if p(x) { ... }` and `if not p(x) { ... }` explicitly. This comes up wherever a two-colouring or a negated predicate appears.

The same applies to a `define`d predicate: unfolding is not automatic. To use one, first state its defining equation (`p(args) = forall(x) { ... }`), then instantiate. Give each such predicate an `_apply` lemma (predicate plus a member yields the instance) and an `_intro` lemma (the pointwise form yields the predicate), and cite those downstream instead of unfolding again. `src/number_theory/covering_system.ac` and `src/simple_graph_regular.ac` both follow this shape.
