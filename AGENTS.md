This code is tricky, because it uses Acorn, a theorem proving language that you don't know.

Before writing a proof, look at at least one Acorn file to understand the syntax. For proofs by induction, look at nat.ac. For proofs involving limits, look at real_ring.ac.

You can run

```
acorn
```

to run the verifier. This should be run after every change, to make sure the proof is verifiable.

If you are in an environment that doesn't have the verifier, install it with

```
npm i -g @acornprover/cli
```

### Workaround for Restricted Network Environments

If `api.github.com` is blocked (common in some sandbox environments), the npm-installed `acorn` command will fail. Here's a simple workaround - download and use the binary directly:

```bash
# Get latest version
LATEST=$(git ls-remote --tags https://github.com/acornprover/acorn.git | grep -o 'v[0-9.]*$' | sort -V | tail -1)

# Download binary
mkdir -p ~/.local/bin
curl -L "https://github.com/acornprover/acorn/releases/download/${LATEST}/acorn-${LATEST#v}-linux-x64" \
  -o ~/.local/bin/acorn
chmod +x ~/.local/bin/acorn

# Ensure ~/.local/bin is in PATH
export PATH="$HOME/.local/bin:$PATH"

# Now use acorn normally
acorn --version
```

The binary can be used directly without the npm wrapper.

Make sure to run the verifier before you tell the user you're finished. If you have made some progress but you're still working on a big proof, it's okay to comment that out so the user can check in your work.

There is a todo list in TODO.md. If you are working off of it, keep that up to date as you make changes.

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

As mentioned above, it is very important to run `acorn` after every change.

Before proving a theorem, consider whether there is a lemma that could be factored out into a separate theorem. If there is, ask the user whether they would prefer you to prove the lemma first.

Before proving a theorem, check if the theorem statement is actually true. If the user asks you to prove a false theorem, explain why you can't.

Numeric literals must have a type specified. You can write `Nat.0` to indicate zero, the natural number. `Real.0` indicates zero, the real number. A `numerals Nat` statement will set the default, but don't add that if it isn't already there.

Variable names must be lowercase.

**Avoid inline lambdas:** Acorn's normalizer has trouble with nested lambda functions and closures. Instead, define named helper functions with explicit parameters and use partial application. Example: define `row_sum(m, f, i)` separately, then use `row_sum(m, f)` instead of `function(i) { ... }`.

The Acorn prover is surprisingly powerful. You will almost never have to import theorems from other files since the prover can usually figure them out on its own. You will also almost never have to use explicit theorem names even in the same file. For example, if you need to do some basic arithmetic on the natural numbers, you will almost never have to write `n.suc` (just write `n + 1`) or import anything from `nat` other than `Nat`.

If the proof seems very large, it is worth beginning with a proof outline and thinking through it, then starting to fill in the details step by step, even if the complete proof does not pass.

## Fixing Proofs

When a statement could not be verified, there are two possibilities.

Possibility 1 is that the statement is false. Rewrite the proof so that it does not use false statements.

Possibility 2 is that the statement is too big of a logical leap from the previous statement. Fix this by filling in the missing steps of reasoning, rather than rewriting the entire proof.
