# Repository Agent Instructions

> **Status:** Binding  
> **Scope:** Entire repository  
> **Purpose:** Route agents into the repository's authoritative governance while keeping persistent instruction context small.

## Mission

> **Preserve known-good behavior. Make the smallest coherent change. Do not silently redefine established contracts.**

Agent preference is not authority.

## Read first

For any repository change:

1. Read [`governance/README.md`](governance/README.md).
2. Read [`governance/authority.md`](governance/authority.md).
3. Read [`governance/invariants.md`](governance/invariants.md).
4. Read the nearest applicable subsystem instructions/contracts.
5. Use [`governance/change-control.md`](governance/change-control.md) if the task crosses a mutation gate.
6. Validate according to [`governance/validation.md`](governance/validation.md).

The research supporting this structure is recorded in [`governance/research-basis.md`](governance/research-basis.md); it is not required reading for ordinary implementation work.

## Non-negotiable invariants

Agents MUST:

- Preserve working behavior outside requested scope.
- Make the smallest coherent change that fully satisfies the request.
- Inspect actual repository state before asserting implementation facts.
- Preserve user-established architecture, naming, tooling, workflow, and generated-output conventions unless explicitly changed.
- Treat existing intentional tests and observable behavior as regression evidence.
- Distinguish pre-existing failures from failures introduced by the current change.
- Report validation honestly.

Agents MUST NOT:

- Perform opportunistic refactors or cleanup.
- Rewrite, rename, move, reorganize, replace, or modernize working architecture merely because another approach appears cleaner.
- Add or replace dependencies without a concrete requirement.
- Delete code, tests, files, or configuration merely because they appear unused.
- Weaken tests or rewrite expected output solely to accommodate a regression.
- Hand-edit generated artifacts when the repository defines a canonical source-generation workflow.
- Overwrite unrelated user work or use destructive shortcuts for validation.
- Silently reinterpret authoritative terminology, acronyms, historical source material, or subsystem contracts.

Full invariant definitions: [`governance/invariants.md`](governance/invariants.md).

## Mutation gate

A change is a **governed mutation** when it changes architecture, framework/build tooling, public contracts, persistent data semantics, established directory/naming conventions, subsystem authority, or repository governance.

Before an **unrequested** governed mutation, provide:

```text
Proposed mutation:
Why it is necessary:
Affected files/contracts/behavior:
Regression risk:
Smaller alternative considered:
Validation plan:
```

Then obtain explicit user approval before modifying the governed contract.

If the user already explicitly requested that exact mutation, additional permission is not required; keep affected governance and implementation synchronized.

See [`governance/change-control.md`](governance/change-control.md).

## Required workflow

```text
inspect
→ resolve authority and scope
→ establish baseline when material
→ make smallest coherent change
→ validate locally
→ inspect integration/generated output
→ compare against baseline
→ report evidence and gaps
```

Do not repeatedly re-inspect unchanged material without a concrete reason.

## Subsystem routing

### TCBasic

For changes under `TCbasic/` read:

1. [`TCbasic/AGENTS.md`](TCbasic/AGENTS.md)
2. [`TCbasic/README.md`](TCbasic/README.md)
3. Applicable TCBasic architecture, standards, tests, and package files.

Run commands from `TCbasic/`.

Authoritative package commands include:

```text
npm test
npm run build
npm run check
```

Use the more specific commands in `TCbasic/AGENTS.md` when applicable.

### WDBASIC

For changes under `Wdbasic/` read:

1. [`Wdbasic/AGENTS.md`](Wdbasic/AGENTS.md)
2. [`Wdbasic/README.md`](Wdbasic/README.md)
3. [`Wdbasic/architecture_rules.md`](Wdbasic/architecture_rules.md)
4. Applicable WDBASIC contracts.

Implementation validation follows [`Wdbasic/engineering-validation.md`](Wdbasic/engineering-validation.md).

### SEObasic

For changes under `SEObasic/` read:

1. [`SEObasic/README.md`](SEObasic/README.md)
2. The specific SEObasic contract being changed.
3. Historical/reference files only when the task requires them.

Do not redefine the canonical T.E.S.T.I.N.G. Method from inference or industry convention.

## Commands and evidence

Never invent build or test commands from convention. Read the package manifest, workflow, task runner, or subsystem documentation that owns them.

When a check cannot be run, state that it was not run and why.

## Definition of done

A material task is not complete until, as applicable:

- the requested behavior exists;
- intended files were actually changed;
- relevant available validation was run;
- required generated output was regenerated from canonical sources;
- unrelated behavioral drift was checked;
- pre-existing and new failures were distinguished;
- unperformed validation was disclosed;
- no unapproved governed mutation was introduced.

## Governing maxim

> **Preserve invariants. Minimize scope. Validate independently. Escalate mutations.**
