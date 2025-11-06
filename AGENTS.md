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

## Plan Documents

Plan documents are kept in the `plans/` directory. If you are working off of one, keep that up to date as you make changes.

A good plan document has four sections:

1. **Overall Goal**: A brief description of the goal of this document.

2. **Notes**: A list of theorems that might come in handy for the next steps, and strategies we might use. We don't need to track work that is already done, unless we will use it in the plan.

3. **Next Steps**: A list of definitions to write, and theorems that we intend to prove next. It's best to write these as function signatures, in Acorn code.

4. **Outline**: A summary of what we need to do after the next steps are complete.

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
- Rarely need explicit theorem names in same file
- Write natural expressions (`n + 1` not `n.suc`)

**Bounded induction pattern:** When inducting over bounded ranges with external constraints, induct on the _distance_ to enable automatic induction.

**Arithmetic explicitness:** Be explicit with inequalities - Acorn may not automatically prove `n - k >= big_n` from `big_n + k <= n`.

## Fixing Proofs

When a statement could not be verified, there are two possibilities.

Possibility 1 is that the statement is false. Rewrite the proof so that it does not use false statements.

Possibility 2 is that the statement is too big of a logical leap from the previous statement. Fix this by filling in the missing steps of reasoning, rather than rewriting the entire proof.
