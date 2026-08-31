# Context Freshness Contract

> **Status:** Binding  
> **Scope:** Freshness, supersession, and maintenance of repository context used by agents  
> **Owner:** Agent Operations Governance

## Purpose

Prevent repository-grounded context from becoming a false source of confidence when documentation, plans, instructions, indexes, or generated knowledge no longer match the current project state.

Repository-local context is useful only when agents can distinguish current guidance from stale, historical, superseded, or unverified material.

## Requirements

### CF-01 — Freshness is part of context quality

Agents MUST NOT assume a repository document is current merely because it is versioned, detailed, or easy to retrieve.

When a task materially depends on information that can change over time, the agent MUST consider whether the source is still current enough for the claim being made.

### CF-02 — Verify volatile facts against current evidence

Volatile facts SHOULD be checked against the source that currently owns them when practical.

Examples include:

- active branch/deployment state;
- dependency/tool versions;
- current routes, schemas, APIs, or generated artifacts;
- active plans and unfinished work;
- external platform/vendor behavior;
- current operational or runtime state.

A historical changelog entry may explain an earlier state but MUST NOT be treated as proof of the current state.

### CF-03 — Make supersession visible

When a durable decision, plan, contract, or instruction is replaced, the old record SHOULD remain historically truthful while making its superseded/deprecated status discoverable.

Where practical, records SHOULD link to the source that supersedes them rather than being silently rewritten as if the earlier state never existed.

### CF-04 — Contradictions trigger reconciliation

When current implementation evidence and repository documentation materially disagree, the agent MUST determine whether:

1. implementation drifted from the governing contract;
2. documentation is stale;
3. both are incomplete; or
4. authority cannot be resolved from available evidence.

Do not silently select the more convenient source.

### CF-05 — Maintain coupled knowledge with the change

When an approved change invalidates a directly dependent durable record, update or explicitly supersede that record as part of the smallest coherent change when practical.

Examples include:

- architecture decisions;
- active implementation plans;
- build/deployment procedures;
- public contracts;
- generated documentation indexes;
- agent routing instructions.

### CF-06 — High-salience instructions require gardening

Always-loaded or high-salience agent instructions SHOULD be reviewed when repeated failures, stale references, conflicting instructions, or repository restructuring indicate drift.

Remove obsolete instructions rather than indefinitely accumulating corrections.

### CF-07 — Freshness metadata is proportional

Repositories MAY use metadata such as `status`, `last_reviewed`, `verified_against`, owner, version, or supersession links where freshness materially affects safe retrieval.

This contract does not require timestamps on every document. Metadata SHOULD be added where it reduces real ambiguity or supports mechanical validation.

### CF-08 — Historical material stays distinguishable

Archived decisions, completed plans, changelog entries, migration notes, and recovered discussions MAY remain valuable context.

They MUST remain distinguishable from current controlling guidance when that distinction affects implementation.

### CF-09 — Mechanical freshness checks are preferred when practical

Stable freshness properties SHOULD be checked mechanically in the adopting repository when practical, including:

- broken internal links;
- missing referenced files;
- stale generated artifacts;
- invalid indexes;
- required status/supersession metadata;
- drift between generated documentation and canonical source.

## Validation

A repository context system satisfies this contract when agents can reasonably determine whether material context is current, historical, superseded, or uncertain; contradictions are reconciled instead of ignored; and durable records directly invalidated by a change are updated or explicitly superseded.

## Evidence status

OpenAI reports documentation staleness, verification status, mechanical cross-link/freshness checks, and recurring documentation gardening as operational concerns in agent-first repositories. Broader software-engineering practice similarly treats versioned records as useful only when their lifecycle and supersession remain understandable.

The exact metadata and maintenance cadence are repository choices, not universal vendor requirements.
