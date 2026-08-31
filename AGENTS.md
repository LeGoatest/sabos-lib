# Repository Agent Instructions

> **Status:** Binding  
> **Scope:** Entire repository  
> **Purpose:** Route agents into authoritative governance while keeping persistent instruction context small.

## Mission

> **Preserve known-good behavior. Make the smallest coherent change. Do not silently redefine established contracts.**

Agent preference is not authority.

## Read first

For any repository change:

1. Read [`governance/README.md`](governance/README.md).
2. Read [`governance/authority.md`](governance/authority.md).
3. Read [`governance/invariants.md`](governance/invariants.md).
4. For prior-state recovery, multi-phase work, approval/continuation semantics, or material context uncertainty, read [`governance/agent-operations/README.md`](governance/agent-operations/README.md) and the applicable contracts.
5. For `*basic` work, read [`governance/knowledge-system-model.md`](governance/knowledge-system-model.md).
6. Read the affected subsystem `README.md` and `AGENTS.md`.
7. Read the subsystem's `docs/README.md` / `docs/AGENTS.md` when present.
8. Read the nearest local `AGENTS.md`, binding contracts, and applicable practitioner positions.
9. Use [`governance/change-control.md`](governance/change-control.md) when the task crosses a mutation gate.
10. Validate according to [`governance/validation.md`](governance/validation.md).

The research supporting this structure is recorded in [`governance/research-basis.md`](governance/research-basis.md) and [`governance/agent-operations/research/`](governance/agent-operations/research/); it is not ordinary required reading.

## Non-negotiable invariants

Agents MUST:

- preserve working behavior outside requested scope;
- make the smallest coherent change that fully satisfies the request;
- inspect actual repository state before asserting implementation facts;
- recover durable project state from repository sources before relying on incomplete conversational recollection when the repository can reasonably resolve it;
- preserve established findings, constraints, decisions, and approved scope across analysis, implementation, validation, and documentation unless new evidence or the user changes them;
- preserve user-established architecture, naming, terminology, workflow, and knowledge authority unless explicitly changed;
- preserve the distinction between practitioner positions, contracts, standards, research, references, examples, glossaries, subject artifacts, and validation evidence;
- distinguish pre-existing failures from failures introduced by the current change;
- report validation honestly.

Agents MUST NOT:

- perform opportunistic refactors or cleanup;
- reorganize working architecture merely because another structure appears cleaner;
- add/remove dependencies or build systems without a concrete requirement;
- delete code/files/configuration merely because they look unused;
- weaken tests/contracts to accommodate a regression;
- overwrite unrelated user work or use destructive shortcuts for validation;
- silently reinterpret canonical terminology, acronyms, historical material, practitioner positions, or subsystem contracts;
- turn one research source, platform recommendation, example, or common industry practice into a binding contract without explicit adoption;
- solve context uncertainty by indiscriminately loading all available repository documentation.

Full invariant definitions: [`governance/invariants.md`](governance/invariants.md).

## Knowledge-system structure

Where applicable, a `*basic` system separates:

```text
root        identity / authority routing / changelog
docs/       accumulated governed knowledge
artifact    canonical source, templates, playbooks, schemas, etc. when real
examples/   illustrative usage/cases
```

Do not create artifact directories merely for symmetry. Use `dist/` only for actual generated/distribution output.

Moving a document does not change its substantive authority by itself.

## Mutation gate

A governed mutation changes architecture, tooling assumptions, public contracts, persistent semantics, established directory/naming conventions, subsystem authority, canonical definitions, or repository governance.

Before an **unrequested** governed mutation, provide:

```text
Proposed mutation:
Why it is necessary:
Affected files/contracts/behavior:
Regression risk:
Smaller alternative considered:
Validation plan:
```

Then obtain explicit approval.

If the user explicitly requested that exact mutation, additional permission is not required; keep affected governance, documentation, artifacts, and changelogs synchronized.

Concise approval/continuation semantics are governed by [`governance/agent-operations/contracts/approval-semantics.md`](governance/agent-operations/contracts/approval-semantics.md).

## Required workflow

```text
inspect
→ selectively recover relevant context
→ resolve authority and scope
→ establish baseline when material
→ preserve current task/approval state
→ make smallest coherent change
→ validate available evidence
→ compare against baseline/contract
→ report evidence and gaps
```

Do not repeatedly re-inspect unchanged material without a concrete reason. Do not restart a completed task phase or discard approved scope merely because work moves into a later phase.

## Subsystem routing

### WDBASIC

Read:

1. [`Wdbasic/README.md`](Wdbasic/README.md)
2. [`Wdbasic/AGENTS.md`](Wdbasic/AGENTS.md)
3. [`Wdbasic/docs/README.md`](Wdbasic/docs/README.md)
4. [`Wdbasic/docs/core-invariants/README.md`](Wdbasic/docs/core-invariants/README.md)
5. [`Wdbasic/docs/core-invariants/contract.md`](Wdbasic/docs/core-invariants/contract.md)
6. nearest local `AGENTS.md` and applicable contracts

Implementation/review validation guidance: [`Wdbasic/docs/core-invariants/measurable-evidence/engineering-validation.md`](Wdbasic/docs/core-invariants/measurable-evidence/engineering-validation.md).

### TCBasic

Read:

1. [`TCbasic/README.md`](TCbasic/README.md)
2. [`TCbasic/AGENTS.md`](TCbasic/AGENTS.md)
3. [`TCbasic/docs/README.md`](TCbasic/docs/README.md)
4. [`TCbasic/docs/architecture/rules.md`](TCbasic/docs/architecture/rules.md)
5. nearest local `AGENTS.md` and applicable contracts/positions
6. [`TCbasic/src/`](TCbasic/src/) only as canonical reference CSS when implementation detail matters
7. [`TCbasic/examples/`](TCbasic/examples/) only as illustrative adoption evidence

SABOS Lib does **not** build, package, publish, or release TCBasic. Do not recreate `package.json`, `dist/`, repository build pipelines, or npm-release machinery without explicit governed scope.

### SEObasic

Read:

1. [`SEObasic/README.md`](SEObasic/README.md)
2. [`SEObasic/AGENTS.md`](SEObasic/AGENTS.md)
3. [`SEObasic/docs/README.md`](SEObasic/docs/README.md)
4. nearest domain `AGENTS.md` / README and applicable contracts
5. positions, research, standards, references, glossaries, measurement definitions, or examples only as relevant

Canonical T.E.S.T.I.N.G. location: [`SEObasic/docs/content/testing-philosophy.md`](SEObasic/docs/content/testing-philosophy.md). Do not redefine its letters or normalize its canonical wording.

Measurement work follows [`SEObasic/docs/measurement/contracts/metric-semantics.md`](SEObasic/docs/measurement/contracts/metric-semantics.md).

[`SEObasic/examples/`](SEObasic/examples/) is illustrative. A future `playbooks/` artifact root should be created only when real reusable operational playbooks exist.

### READMEbasic

For README creation/material restructuring or READMEbasic changes, read:

1. [`READMEbasic/README.md`](READMEbasic/README.md)
2. [`READMEbasic/AGENTS.md`](READMEbasic/AGENTS.md)
3. [`READMEbasic/docs/README.md`](READMEbasic/docs/README.md)
4. [`READMEbasic/docs/contracts/readme-integrity.md`](READMEbasic/docs/contracts/readme-integrity.md)
5. applicable profile/position/local `AGENTS.md`
6. research, standards, references, resources, templates, or examples only when relevant

[`READMEbasic/templates/README-template.md`](READMEbasic/templates/README-template.md) is a reusable starting artifact, not a mandatory checklist. README claims must be verified against project evidence.

## Commands and evidence

Never invent build/test commands from convention. Read the owning project manifest/workflow/documentation when an adopting implementation actually has commands.

SABOS Lib itself is primarily a knowledge repository; absence of repository build tooling is not a validation failure.

When a check cannot be run, state that it was not run and why. Do not convert documentation inspection into a build/browser/conformance pass.

## Definition of done

A material task is complete only when, as applicable:

- requested behavior/knowledge exists;
- intended files were actually changed;
- canonical paths and local authority links are correct;
- relevant available validation/evidence was reviewed;
- approved scope and actual changes were reconciled;
- unrelated drift was checked;
- pre-existing and new failures were distinguished;
- unperformed validation was disclosed;
- no unapproved governed mutation was introduced;
- subsystem/root changelogs were updated for notable changes.

## Governing maxim

> **Preserve invariants. Minimize scope. Validate independently. Escalate mutations.**
