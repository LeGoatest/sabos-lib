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
4. For `*basic` knowledge/framework changes, follow [`governance/knowledge-system-model.md`](governance/knowledge-system-model.md).
5. Read the nearest applicable subsystem `AGENTS.md`, README, and binding contracts.
6. Use [`governance/change-control.md`](governance/change-control.md) if the task crosses a mutation gate.
7. Validate according to [`governance/validation.md`](governance/validation.md).

The research supporting this structure is recorded in [`governance/research-basis.md`](governance/research-basis.md); it is not required reading for ordinary implementation work.

## Non-negotiable invariants

Agents MUST:

- Preserve working behavior outside requested scope.
- Make the smallest coherent change that fully satisfies the request.
- Inspect actual repository state before asserting implementation facts.
- Preserve user-established architecture, naming, tooling, workflow, terminology, and generated-output conventions unless explicitly changed.
- Preserve the distinction between practitioner positions, contracts, standards, research, references, examples, glossaries, and implementation evidence.
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
- Silently reinterpret authoritative terminology, acronyms, historical source material, practitioner positions, or subsystem contracts.
- Turn one research source, platform recommendation, example, or common industry practice into a binding contract without an explicit adoption step.

Full invariant definitions: [`governance/invariants.md`](governance/invariants.md).

## Mutation gate

A change is a **governed mutation** when it changes architecture, framework/build tooling, public contracts, persistent data semantics, established directory/naming conventions, subsystem authority, canonical philosophy/definitions, or repository governance.

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
3. The nearest local `AGENTS.md` for build, tokens, components, integrations, compliance, profiles, glossaries, examples, source, generated distribution, or tests when applicable.
4. Applicable TCBasic architecture, standards, contracts, tests, and package files.

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
4. The nearest local `AGENTS.md` for forms, tokens, components, compliance, authoring, profiles, or glossaries when applicable.
5. Applicable WDBASIC contracts.

Implementation validation follows [`Wdbasic/engineering-validation.md`](Wdbasic/engineering-validation.md).

### SEObasic

For changes under `SEObasic/` read:

1. [`SEObasic/AGENTS.md`](SEObasic/AGENTS.md)
2. [`SEObasic/README.md`](SEObasic/README.md)
3. The nearest domain `AGENTS.md` and README.
4. Applicable SEObasic contracts.
5. Research, standards, references, glossaries, examples, or measurement definitions only when relevant to the task.

Do not redefine the canonical T.E.S.T.I.N.G. Method from inference or industry convention. Its canonical location is [`SEObasic/content/testing-philosophy.md`](SEObasic/content/testing-philosophy.md).

### READMEbasic

For creation or material restructuring of README files, and for changes under `READMEbasic/`, read:

1. [`READMEbasic/AGENTS.md`](READMEbasic/AGENTS.md)
2. [`READMEbasic/README.md`](READMEbasic/README.md)
3. [`READMEbasic/contracts/readme-integrity.md`](READMEbasic/contracts/readme-integrity.md)
4. The nearest local `AGENTS.md` under profiles, research, standards, references, examples, contracts, or glossaries when applicable.
5. [`READMEbasic/best-practices.md`](READMEbasic/best-practices.md), [`READMEbasic/resources.md`](READMEbasic/resources.md), or other evidence only when relevant.

Use [`READMEbasic/TEMPLATE.md`](READMEbasic/TEMPLATE.md) as a modular scaffold, not as a mandatory section checklist.

README claims must be verified against repository evidence; do not invent commands, status, compatibility, features, badges, contacts, or project state to complete a template.

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
- no unapproved governed mutation was introduced;
- applicable subsystem and root changelogs were updated for notable changes.

## Governing maxim

> **Preserve invariants. Minimize scope. Validate independently. Escalate mutations.**
