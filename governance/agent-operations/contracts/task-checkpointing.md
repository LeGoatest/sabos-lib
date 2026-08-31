# Task Checkpointing Contract

> **Status:** Binding  
> **Scope:** Durable state for long-running, resumable, or cross-agent repository work  
> **Owner:** Agent Operations Governance

## Purpose

Preserve enough task state to resume material work accurately after interruption, context compaction, agent handoff, or a later session without turning every small task into project-management bureaucracy.

## Trigger

A durable checkpoint SHOULD be created or updated when losing the current interaction state would likely cause substantial rediscovery, repeated approval, or unsafe ambiguity.

Typical triggers include:

- multi-hour or multi-session work;
- work intentionally handed between agents or people;
- material cross-file/cross-subsystem changes;
- approved work paused before completion;
- complex migrations or staged changes;
- work with important unresolved blockers or validation debt;
- tasks whose progress/decisions cannot be recovered reliably from source and changelog alone.

Small, self-contained work that can be understood directly from the current diff and repository state does not require a checkpoint artifact.

## Requirements

### CP-01 — Preserve the minimum sufficient state

A checkpoint SHOULD record only the state needed to continue safely, such as:

- requested outcome;
- current scope;
- controlling constraints or decisions;
- completed work;
- in-progress work;
- next intended action;
- unresolved blockers/risks;
- validation already performed and validation still required;
- relevant files, branches, commits, issues, or other durable references.

Do not copy entire conversations into checkpoints.

### CP-02 — Checkpoints are state records, not new authority

A checkpoint records the current understanding of a task. It MUST NOT silently override current user instructions, governance, subsystem contracts, or newer repository evidence.

On resumption, authority still follows [`../../authority.md`](../../authority.md).

### CP-03 — Resume by reconciliation, not blind continuation

Before resuming from a checkpoint, inspect whether relevant repository state changed after the checkpoint.

Reconcile:

```text
checkpoint state
+ current repository state
+ current user instruction
→ resumed task state
```

If material drift invalidates the checkpoint, update the affected conclusions instead of executing stale steps.

### CP-04 — Update at meaningful transitions

For checkpointed work, update the durable state when a material transition occurs, such as:

- an approved plan changes;
- a major stage completes;
- a blocker is discovered or resolved;
- validation materially changes confidence;
- work is intentionally paused or handed off;
- the task completes.

Do not update checkpoints after every trivial edit.

### CP-05 — Completed state must be clear

When checkpointed work is complete, mark the active record completed, archive it, or otherwise make clear that it is no longer an active execution instruction.

Completed records MAY remain as historical evidence but MUST NOT masquerade as active work.

### CP-06 — Preserve decision provenance

When a checkpoint references a durable architectural, workflow, tooling, or product decision, link to the controlling decision/specification when one exists rather than restating a lossy paraphrase as authority.

### CP-07 — Do not store secrets or unnecessary sensitive data

Checkpoints MUST NOT become a dumping ground for credentials, tokens, private customer data, or other material that should not be committed to the repository.

### CP-08 — Tool/session state is not sufficient by itself

Vendor session history, model memory, local scratchpads, or resumable CLI sessions MAY help continuation, but material task state that must survive independently of a particular agent/tool SHOULD be represented in a repository-controlled record when the trigger above is met.

## Validation

Checkpointing is adequate when a competent agent or contributor can resume the material task from the repository without needing the original conversation to reconstruct approved scope, current progress, blockers, and outstanding validation.

## Evidence status

OpenAI reports using versioned execution plans with progress and decision logs for complex work while keeping lightweight plans ephemeral for small work. Anthropic documents that conversation-only state can be affected by context compaction while project-root instructions are reloaded from disk. These sources support durable state for complex work, but the exact checkpoint format and trigger thresholds are SABOS Lib governance choices.
