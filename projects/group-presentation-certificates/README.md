# DeepSeek Acorn implementation work packets

Date: 2026-08-23

## What this handoff is

DeepSeek's job is to **write and verify new Acorn library code**. The output of
every substantive packet is one or more `.ac` files in `acornlib` containing
definitions, theorems, and proofs.

DeepSeek is not being asked to:

- write Python, GAP, Sage, shell, JSON, or certificate-generation tools;
- inspect or modify the Luttinger audit repository;
- reproduce the computational search outside Acorn;
- prepare community commentary or evaluate the paper;
- formalize the entire open-problem claim in one pass.

Any unavoidable roadmap edit required by `acornlib` policy is incidental. The
work product is Acorn mathematics.

## Upstream baseline

Work from the public repositories:

- `https://github.com/acornprover/acornlib`
- `https://github.com/acornprover/acorn`

The baseline reviewed for this specification was:

- `acornlib` commit `bd1e602737758cff8e82934526b1710dbc3b7bc8`;
- `acorn` commit `91f29ff1d25aff15afbde214dd9b620f817a9567`;
- Acorn project format 27.

Pin the exact current commits at the start of implementation. Read
`AGENTS.md` and `CONTRIBUTING.md` before editing. Run `acorn` after every
change and `acorn check --strict` before declaring a packet complete.

The reviewed `acornlib` already contains groups, subgroups, normal subgroups,
equivalence-class quotient representatives, modules, finite vectors, finite
matrices, topological spaces, and graphs. It does not yet contain a developed
library for free groups, finite group presentations, presentation derivations,
chain complexes, homology, or finite simplicial complexes.

## Priority order

Build the `.ac` framework in this order:

1. group words;
2. semantic finite presentations;
3. presentation derivations and their soundness;
4. finite derivation sequences/DAGs in Acorn;
5. presentation-triviality theorems and concrete Acorn examples;
6. free groups and presented groups;
7. rank-two integral bilinear forms;
8. chain complexes and finite simplicial complexes;
9. explicit intersection certificates.

Packets 1–5 are the immediate critical path. Packets 6–9 are later library
work. Do not begin a later packet while an earlier packet's definitions are
unstable.

## Packet 1 — group words

### Files

Preferred new file:

```text
src/algebra/group/word.ac
```

Adjust the filename only to match the live library's organization.

### Definitions

Add general definitions equivalent to:

```text
SignedGenerator[n]
GroupWord[n]
group_word_empty
group_word_singleton
group_word_append
signed_generator_inverse
group_word_inverse
group_word_eval
```

The intended model is a generator in `Fin[n]` together with a sign, and a word
as a `List` of signed generators. Use the existing `Fin`, `Bool`, and `List`
APIs rather than fixed two-generator datatypes.

If a public structure definition is not clearly best, begin with a local
prototype and compare the viable representations before fixing the API. This
is the main definition decision in the packet.

### Theorems

Prove at least:

```text
group_word_eval_empty
group_word_eval_singleton_positive
group_word_eval_singleton_negative
group_word_eval_append
group_word_inverse_empty
group_word_inverse_append
group_word_inverse_inverse
group_word_eval_inverse
```

Also prove semantic preservation for deleting an adjacent generator/inverse
pair. If a full free-reduction function is natural with the current `List`
API, define it and prove that it preserves evaluation. Otherwise leave general
normalization for a later packet and provide only the local cancellation
lemmas.

### Acceptance

- All definitions work for arbitrary `n: Nat` and arbitrary `G: Group`.
- No axioms are added.
- No fixed `n = 2`, `n = 3`, and so on theorem family is added.
- Every public type, typeclass, and attribute has a mathematical `///` comment.
- `acorn check --strict` passes.

## Packet 2 — semantic finite presentations

### Files

```text
src/algebra/group/presentation.ac
```

### Definitions

Define a finite presentation using arbitrary generator and relator bounds. A
bundled structure is optional; if dependent fields are awkward, use explicit
parameters:

```text
n: Nat
m: Nat
relator: Fin[m] -> GroupWord[n]
```

Add definitions equivalent to:

```text
group_presentation_satisfied
group_presentation_equation_holds
group_presentation_entails
```

`group_presentation_entails(relator, lhs, rhs)` must mean:

> for every target group and every assignment of generators into that group,
> if all relators evaluate to the identity, then `lhs` and `rhs` evaluate to
> the same element.

This is intentionally semantic. Do not wait for a free-group construction.

### Theorems

Prove named introduction and application lemmas for the defined predicates,
then prove entailment is closed under:

```text
reflexivity
symmetry
transitivity
word inversion
common left context
common right context
word concatenation
replacement inside an explicit prefix and suffix
free cancellation
```

Prove that every defining relator entails equality with the empty word.

### Acceptance

- Soundness is generic in the target `Group` and generator assignment.
- Predicate unfolding is hidden behind small `_intro` and `_apply` lemmas.
- No quotient, free group, or external computer-algebra assumption appears.
- `acorn check --strict` passes.

## Packet 3 — derivation objects and soundness

### Files

```text
src/algebra/group/presentation_derivation.ac
```

### Definitions

Add an Acorn datatype representing formal derivations of word equations from
a finite presentation. Constructors should correspond only to already-proved
sound rules:

```text
defining_relator
reflexive
symmetric
transitive
inverse
left_context
right_context
free_cancel
```

It is acceptable to start with a derivation tree. Do not make Knuth–Bendix
completion, confluence, or equality of normal forms a primitive constructor.

### Theorems

Prove one structural theorem equivalent to:

```text
group_presentation_derivation_sound
```

It must establish that every well-formed derivation entails its endpoint
equation in every group satisfying the presentation.

Add Acorn examples proving:

```text
<a | a> entails a = 1
<a,b | a b^-1, b> entails a = 1
<a,b | a b^-1, b> entails b = 1
```

These examples must themselves be `.ac` proofs.

### Acceptance

- Every constructor has an endpoint equation with explicit words.
- The soundness theorem contains no unproved branch.
- The examples fail when a relator sign or derivation endpoint is deliberately
  changed.
- `acorn check --strict` passes.

## Packet 4 — shared finite derivations in Acorn

### Files

Preferred new file:

```text
src/algebra/group/presentation_derivation_sequence.ac
```

### Objective

Large presentation proofs cannot duplicate a derivation tree every time a
previous equation is reused. Add an Acorn representation of a finite sequence
or DAG of derivation steps in which each step may cite only an earlier step.

This packet is still entirely Acorn code. It is not a request for a JSON
format, parser, compiler, or external certificate generator.

### Definitions

Define Acorn objects equivalent to:

```text
PresentationEquation[n]
PresentationDerivationStep[n, m]
PresentationDerivationSequence[n, m]
derivation_step_well_formed
derivation_sequence_well_formed
derivation_step_equation
```

Choose the representation that fits current Acorn support for finite lists and
bounded indices. Each reference must be provably earlier than the current
step. Every operation must reconstruct or constrain its claimed endpoint
words.

### Theorems

Prove:

```text
well_formed_step_references_earlier
well_formed_sequence_prefix
well_formed_step_sound
well_formed_derivation_sequence_sound
```

The final theorem must show that any selected equation in a well-formed
sequence is semantically entailed by the original presentation.

### Acceptance

- Forward references and out-of-range references are impossible or violate
  well-formedness.
- A transitivity step is valid only when the middle words agree.
- A cancellation step is valid only at an actual adjacent inverse pair.
- Shared prior steps are proved once rather than expanded as duplicate trees.
- `acorn check --strict` passes.

If current Acorn cannot express or prove the bounded-reference invariant
cleanly, preserve a minimal `.ac` reproduction in `hard_problems` and report
the exact limitation. Do not replace the invariant with an axiom.

## Packet 5 — presentation triviality

### Files

```text
src/algebra/group/presentation_triviality.ac
```

### Theorems

Prove a general theorem equivalent to:

```text
generators_trivial_implies_word_trivial
```

Statement: if a presentation entails that every singleton generator word is
equal to the empty word, then every word evaluates to the identity under every
assignment satisfying the presentation.

Add corollaries equivalent to:

```text
generators_trivial_implies_assignment_trivial
generators_trivial_implies_every_equation
```

The latter says that once all generators are forced to the identity, the
presentation entails every pair of words to be equal.

Add several concrete `.ac` presentation proofs, including at least one example
whose derivation sequence reuses earlier equations.

### Acceptance

- The main proof is by induction on arbitrary words.
- The theorem does not assume a presented quotient group already exists.
- All examples are verified `.ac` files.
- `acorn check --strict` passes.

## Packet 6 — free group

This packet begins only after the semantic certificate framework verifies.

### Files

Likely files:

```text
src/algebra/group/free_group.ac
src/algebra/group/free_group_universal.ac
```

### Acorn work

Define reduced group words modulo free cancellation, or the best construction
supported by the live quotient APIs. Provide:

- the free-group operations and `Group` instance;
- insertion of generators;
- evaluation/lift into any group;
- proof that the lift is a group homomorphism;
- lift/insertion equation;
- uniqueness of the lift;
- the universal property.

Do not expose an ad hoc quotient representation as the final API unless its
definition has been reviewed. The current acornlib roadmap already identifies
free groups as missing work, so integrate with that roadmap rather than adding
a paper-specific free group.

## Packet 7 — presented group

### Files

Likely files:

```text
src/algebra/group/presented_group.ac
src/algebra/group/presented_group_universal.ac
```

### Acorn work

Construct the normal closure of a relator family in the free group and its
quotient. Prove:

- the canonical generators satisfy the relators;
- every satisfying generator assignment induces a homomorphism;
- uniqueness of the induced homomorphism;
- semantic entailment agrees with equality in the presented group;
- the Packet 5 generator-triviality hypothesis makes the presented group
  trivial.

This packages the conventional group object. It is not required for the
earlier semantic triviality result.

## Packet 8 — rank-two integral bilinear forms

### Files

Choose locations consistent with current matrix/module organization, for
example:

```text
src/algebra/module/integral_bilinear_form.ac
src/algebra/module/integral_bilinear_form_rank_two.ac
```

### Acorn work

Using existing `Int`, finite vectors, matrices, and `fin_matrix_2x2`, define
the narrow amount of integral bilinear-form infrastructure needed to state and
prove congruence under an integral change of basis. Prove:

- `[[0,1],[1,2n]]` is integrally congruent to the hyperbolic form;
- `[[0,1],[1,2n+1]]` is integrally congruent to `diag(1,-1)`;
- the displayed change-of-basis matrices are unimodular;
- the two coordinate axes of the hyperbolic form have square zero.

Prefer general indexed definitions with rank-two theorems over a family of
hard-coded matrix arities.

## Packet 9 — chain complexes and finite simplicial complexes

This is a later, larger Acorn library program. Split it into separate PR-sized
`.ac` packets:

```text
finite abstract simplicial complexes
oriented finite simplices
integer simplicial chains
the simplicial boundary operator
boundary composed with boundary is zero
cycles and boundaries
chain maps
homology via quotient representatives
links and finite pseudomanifolds
oriented triangulated surfaces
```

Likely new modules should live under a coherent `src/topology/` or
`src/algebra/homology/` hierarchy chosen after inspecting the current tree.
Every subpacket must add verified `.ac` definitions and theorems. Do not build
external triangulation software as part of this handoff.

## Packet 10 — explicit intersection certificates

After Packet 9, add Acorn definitions for a finite combinatorial certificate
that two oriented complementary-dimensional subcomplexes or chains intersect
with a specified signed number. The eventual target is a direct certificate
that a specified surface push-off has algebraic intersection zero with the
original surface.

Start with low-dimensional toy examples and a local definition. This is a
foundational API choice and should not be promoted globally until reviewed.
The deliverables remain `.ac` definitions, soundness theorems, and verified
examples.

## Coding rules for every packet

- Write Acorn source, not support tooling in another language.
- Inspect nearby `.ac` files before choosing names or syntax.
- Keep definitions and theorem statements small.
- Prefer named helpers to inline lambdas and deeply nested propositions.
- Use lowercase variable names.
- Give numeric literals explicit types.
- Add mathematical `///` comments to every type, typeclass, and attribute.
- Do not add axioms, `assume` placeholders, or unsound convenience rules.
- Do not extend fixed-arity theorem families merely by increasing the arity.
- Run `acorn` after every change.
- Run `acorn check --strict` before completion.
- If a proof times out, split it into named intermediate lemmas and explicitly
  state cited conclusions.
- If Acorn crashes or cannot express a necessary invariant, add a minimal `.ac`
  case to `hard_problems` and report it as an Acorn limitation.

## Required report after each packet

DeepSeek reports only implementation-relevant facts:

1. exact upstream base SHA;
2. `.ac` files added or changed;
3. definitions added;
4. theorem statements proved;
5. any public API choice needing review;
6. `acorn` and `acorn check --strict` results;
7. verification time or timeouts;
8. the next `.ac` packet.

## Copyable first DeepSeek prompt

```text
Implement Packet 1 of this specification in the current public acornlib. Your
job is to add verified Acorn source code, not Python, GAP, JSON, shell tooling,
or audit-repository changes. Pin and report the exact acornlib and Acorn SHAs.
Read AGENTS.md and CONTRIBUTING.md completely and inspect the current Group,
Fin, Bool, and List APIs. Add the general signed-generator/group-word module
and prove the Packet 1 semantic theorems for arbitrary generator count and
arbitrary target Group. Do not add axioms or fixed-arity theorem families. Run
acorn after every change and acorn check --strict before reporting. Report the
.ac files changed, definitions added, theorems proved, representation choice,
verification results, and any minimal .ac reproduction of a real prover
limitation. Do not work on Packet 2 yet.
```
