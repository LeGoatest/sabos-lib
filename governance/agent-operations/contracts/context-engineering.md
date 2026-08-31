# Context Engineering Contract

> **Status:** Binding  
> **Scope:** Repository-agent context acquisition and selection  
> **Owner:** Agent Operations Governance

## Purpose

Ensure agents receive enough relevant, current project context to act correctly without treating context volume as a proxy for correctness.

## Requirements

### CE-01 — Persistent context stays high-salience

Always-loaded repository instructions MUST prioritize:

- authority routing;
- high-risk invariants;
- essential workflow boundaries;
- discovery pointers to deeper sources.

Detailed procedures, references, examples, research, and subsystem-specific knowledge SHOULD be retrieved only when relevant.

### CE-02 — Retrieve selectively

Agents MUST retrieve context based on the task, affected scope, and uncertainty rather than loading all available project material by default.

Relevant context MAY include:

- controlling governance;
- nearest local agent instructions;
- architecture/contracts;
- current specifications or plans;
- implementation and tests;
- changelogs, decision/history records, or handovers when prior state matters;
- generated artifacts or deployment evidence when the task depends on them.

### CE-03 — Relevant context beats abundant context

Agents MUST NOT treat more retrieved text as inherently safer or more accurate.

When retrieved material is irrelevant, stale, redundant, contradictory, or outside the affected scope, it SHOULD be excluded from the active working set unless needed to resolve a conflict.

### CE-04 — Preserve provenance and source type

When a conclusion depends on multiple context sources, the agent MUST preserve enough provenance to distinguish:

- explicit current user instruction;
- binding repository governance;
- subsystem contract/specification;
- current implementation evidence;
- historical record;
- research/vendor guidance;
- practitioner position;
- inference.

A source's presence in context does not change its authority class.

### CE-05 — Scope context to the mutation surface

Context discovery SHOULD follow the expected impact surface outward:

```text
requested surface
→ local instructions/contracts
→ direct dependencies/consumers
→ repository-wide invariants when applicable
```

Broad repository exploration requires a concrete reason such as cross-cutting behavior, unclear ownership, dependency impact, or conflicting evidence.

### CE-06 — Context must be inspectable where practical

When the agent platform exposes active instruction/context inspection, teams SHOULD use it for debugging instruction conflicts, missing context, or stale context.

Governance MUST NOT depend on such a vendor-specific feature being available.

### CE-07 — Durable project state belongs in versioned sources

Project facts that materially affect future implementation SHOULD be recorded in an appropriate repository source of truth when they are stable enough to outlive the current conversation.

Conversational memory alone SHOULD NOT be the sole durable record of architecture, contracts, approved project decisions, build/deployment procedures, or persistent implementation state.

Long-running/resumable work follows [`task-checkpointing.md`](task-checkpointing.md) when losing active interaction state would create material ambiguity or rediscovery.

### CE-08 — Security and least privilege apply to retrieval

Retrieval mechanisms MUST respect existing authorization and data-access boundaries.

An AI context mechanism MUST NOT gain broader repository, service, or organizational access merely because broader access would make retrieval easier.

### CE-09 — Machine retrieval does not replace authority resolution

RAG, search, embeddings, MCP, indexes, code search, memories, and similar mechanisms are retrieval aids.

They MUST NOT determine which conflicting source is authoritative. Authority resolution follows repository governance.

### CE-10 — Repository-local does not imply current

Context selection MUST account for freshness where the task depends on state that can become stale.

A versioned document, cached retrieval result, memory, checkpoint, or generated index MUST NOT be treated as current merely because it is repository-local or previously correct.

Freshness and supersession follow [`context-freshness.md`](context-freshness.md).

### CE-11 — Context compaction and summarization are lossy boundaries

When a tool compacts, summarizes, truncates, or otherwise compresses active context, agents SHOULD assume some detail may be lost unless the platform explicitly guarantees preservation.

Material constraints or task state that must survive such boundaries SHOULD live in durable/reloadable sources appropriate to their scope rather than only in transient conversation text.

## Validation

A context-engineering implementation is consistent with this contract when:

- persistent instructions remain concise enough to function as routing/high-salience guidance;
- relevant local authority is discoverable;
- repository state is inspected before material factual claims;
- irrelevant or stale context is not indiscriminately loaded;
- provenance/authority distinctions remain visible;
- durable decisions are not dependent solely on transient conversation history;
- material resumable work can preserve state when needed;
- retrieved context is reconciled for freshness when material;
- retrieval does not bypass access controls.

## Rationale

External evidence converges on selective, hierarchical, repository-grounded context rather than monolithic instruction files. Current vendor documentation also shows that context loading, compaction, and instruction persistence differ by tool, reinforcing the need for durable repository state rather than dependence on one session mechanism. The evidence and limitations are recorded under [`../research/`](../research/).
