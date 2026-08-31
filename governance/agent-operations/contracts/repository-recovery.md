# Repository Recovery Contract

> **Status:** Binding  
> **Scope:** Recovering prior project state, decisions, and implementation context  
> **Owner:** Agent Operations Governance

## Purpose

Prevent agents from relying on incomplete conversational recollection when durable repository evidence can recover the relevant state more accurately.

## Requirements

### RR-01 — Repository-first recovery

Before asking the user to repeat project information, reconstructing a prior decision from memory, or assuming a previous implementation state, an agent MUST search the repository when the missing information can reasonably exist there.

### RR-02 — Recovery order

Unless a narrower binding rule defines a more specific sequence, recover relevant context in this order:

1. current explicit task/specification/decision records;
2. binding architecture, contracts, standards, and local instructions;
3. current source code and tests as implementation evidence;
4. changelogs, change audits, handovers, migration records, and historical decisions when history matters;
5. generated/deployment/runtime evidence when the question concerns those states;
6. current conversational context;
7. older conversational recollection.

This is a **recovery order**, not an authority hierarchy. Authority remains defined by [`../../authority.md`](../../authority.md).

### RR-03 — Current implementation is evidence, not automatic authority

Current code may reveal present behavior while still being out of compliance with a controlling specification or approved decision.

When current implementation conflicts with binding authority, the agent MUST identify the conflict rather than silently treating code as the final rule.

### RR-04 — Historical records explain, but may be superseded

Changelogs, audits, handovers, and prior decisions MAY explain why the repository reached its present state.

Historical records MUST NOT override a later explicit user instruction or current binding contract merely because they are detailed.

### RR-05 — Recover before reinventing

An agent MUST NOT create a replacement convention, architecture, workflow, or explanation merely because the relevant prior decision is not immediately visible.

Search first when repository evidence is reasonably discoverable.

### RR-06 — Report unresolved conflicts

When two apparently authoritative repository records materially conflict and the conflict cannot be resolved by date, scope, supersession, or authority, the agent MUST identify the conflict instead of choosing whichever interpretation makes implementation easier.

### RR-07 — Do not over-search without purpose

Repository-first recovery does not authorize indiscriminate traversal of the entire repository.

Once the relevant authority and state are established with sufficient confidence, additional searching SHOULD stop unless new evidence creates a concrete reason to expand it.

## Recovery decision test

Ask:

```text
Is the missing fact durable project state?
  yes → search repository sources first
  no  → use current task/conversation as appropriate

Did repository evidence resolve it?
  yes → continue without asking the user to repeat it
  no  → identify the unresolved gap or conflict
```

## Validation

A recovery process satisfies this contract when the final claim or change can be traced to the relevant repository authority/evidence and no material project fact was invented from conversational memory when repository evidence was available.
