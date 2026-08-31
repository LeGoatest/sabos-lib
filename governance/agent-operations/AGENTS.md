# Agent Operations Instructions

> **Scope:** `governance/agent-operations/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

This directory governs repository-agent context acquisition, task-state continuity, and approval interpretation.

## Required reading

Before changing this domain, read:

1. [`README.md`](README.md)
2. [`../authority.md`](../authority.md)
3. [`../invariants.md`](../invariants.md)
4. [`../change-control.md`](../change-control.md)
5. applicable files under [`contracts/`](contracts/)
6. applicable practitioner positions under [`positions/`](positions/)
7. research only when rationale or evidence is material to the change

## Knowledge-type discipline

Keep these categories distinct:

- `contracts/` — binding adopted requirements;
- `positions/` — deliberate practitioner preferences or conventions;
- `research/` — evidence and synthesis, not automatic authority;
- `references/` — provenance/source records.

Do not move a claim from research into a binding contract merely because multiple sources repeat it. Determine independence, applicability, limitations, and whether explicit adoption is justified.

## Context discipline

Do not solve context problems by indiscriminately expanding always-loaded instructions.

Prefer:

- concise routing instructions;
- selective retrieval;
- local authority near the affected domain;
- versioned repository records for durable project state;
- executable checks when a stable rule is mechanically testable.

## Interaction semantics

Exact shorthand words such as `proceed` and `continue` are repository-adopted interaction conventions, not external scientific standards. Preserve that distinction in research and contracts.

## Governance changes

A material change to agent-operation contracts is a governance mutation. Follow [`../change-control.md`](../change-control.md), update this domain's [`CHANGELOG.md`](CHANGELOG.md), and update parent/root changelogs when the change is repository-wide.
