# Agent Operations Instructions

> **Scope:** `governance/agent-operations/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

This directory governs repository-agent context acquisition, task-state continuity, context freshness, durable checkpointing, approval interpretation, and execution/verification discipline.

## Required reading

Before changing this domain, read:

1. [`README.md`](README.md)
2. [`../authority.md`](../authority.md)
3. [`../invariants.md`](../invariants.md)
4. [`../change-control.md`](../change-control.md)
5. applicable files under [`contracts/`](contracts/), including [`contracts/execution-verification.md`](contracts/execution-verification.md) when changing execution, command, prerequisite, validation, or completion behavior
6. applicable practitioner positions under [`positions/`](positions/)
7. applicable reusable patterns under [`patterns/`](patterns/) when changing an operational artifact pattern
8. research only when rationale or evidence is material to the change

## Knowledge-type discipline

Keep these categories distinct:

- `contracts/` — binding adopted requirements;
- `positions/` — deliberate practitioner preferences or conventions;
- `patterns/` — optional reusable ways to operationalize contracts;
- `research/` — evidence and synthesis, not automatic authority;
- `references/` — provenance/source records.

Do not move a claim from research into a binding contract merely because multiple sources repeat it. Determine independence, applicability, limitations, and whether explicit adoption is justified.

Do not turn a pattern into a mandatory repository structure merely because it is documented here.

## Context discipline

Do not solve context problems by indiscriminately expanding always-loaded instructions.

Prefer:

- concise routing instructions;
- selective retrieval;
- local authority near the affected domain;
- freshness/supersession signals where they reduce real ambiguity;
- versioned repository records for durable project state;
- lightweight checkpoints only when work is genuinely resumable/complex;
- explicit acceptance criteria for material work;
- authoritative commands and prerequisite ordering;
- executable checks when a stable rule is mechanically testable;
- independent/fresh-context review for substantial or high-risk changes when practical.

## Interaction semantics

Exact shorthand words such as `proceed` and `continue` are repository-adopted interaction conventions, not external scientific standards. Preserve that distinction in research and contracts.

## Durable state

Do not assume versioned means current. When adding durable context, define enough lifecycle behavior that future agents can distinguish active/current material from completed, archived, deprecated, or superseded records.

For long-running work, preserve minimum sufficient resumable state without copying conversations or creating process artifacts for trivial tasks.

## Practical patterns

The [`patterns/`](patterns/) directory now includes a priority adoption sequence for:

- scoped persistent agent instructions;
- material task contracts;
- requirement-to-verification matrices;
- fresh-context review;
- resumable checkpoints;
- durable decision records.

These are reusable forms, not mandatory filenames or ceremony.

## Governance changes

A material change to agent-operation contracts is a governance mutation. Follow [`../change-control.md`](../change-control.md), update this domain's [`CHANGELOG.md`](CHANGELOG.md), and update parent/root changelogs when the change is repository-wide.
