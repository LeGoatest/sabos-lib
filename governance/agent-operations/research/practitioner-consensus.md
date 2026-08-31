# Practitioner Consensus and Established Engineering Practice

> **Status:** Informative research record  
> **Research date:** 2026-08-31

This record captures mature engineering guidance and current practitioner synthesis relevant to agent operations. Practitioner consensus is evidence, not automatic authority.

## Google Engineering Practices — Small CLs

Source: https://google.github.io/eng-practices/review/developer/small-cls.html

Established guidance includes:

- keep changes small and self-contained;
- include related test changes;
- small changes are easier to review thoroughly, reason about, merge, and roll back;
- separate significant refactoring from feature changes and bug fixes;
- avoid breaking the working system between dependent changes.

Agent-operations relevance:

- supports smallest coherent scope;
- supports independent regression evidence;
- supports separating refactors from requested behavior changes.

## Thoughtworks / Martin Fowler — Context Engineering for Coding Agents

Birgitta Böckeler, 2026.  
Source: https://martinfowler.com/articles/exploring-gen-ai/context-engineering-coding-agents.html

Practitioner synthesis includes:

- context engineering is the deliberate curation of what the model sees;
- always-loaded rules, path-scoped rules, skills, tools, MCP, hooks, and workspace files are different context interfaces with different loading behavior;
- context should be kept as small as practical rather than indiscriminately filled;
- context configuration should be built iteratively from actual needs;
- context remains probabilistic guidance and should not be described as if it guarantees behavior.

Agent-operations relevance:

- aligns with progressive disclosure;
- supports separating context interfaces by purpose;
- reinforces the distinction between guidance and deterministic enforcement.

## Thoughtworks / Martin Fowler — Harness engineering

Source: https://martinfowler.com/articles/harness-engineering.html

Relevant practitioner position:

- repeated agent failures should feed back into improved guidance, sensors, checks, or architecture rather than remaining repeated conversational corrections;
- quality controls should be moved earlier in the loop where practical.

Agent-operations relevance:

- supports converting recurring mistakes into durable repository knowledge or executable validation;
- supports feedback loops from agent outcomes back into governance/tooling.

## Durable architecture/project decision records

### Martin Fowler — Architecture Decision Record

Source: https://martinfowler.com/bliki/ArchitectureDecisionRecord.html

Fowler describes an ADR as a short record of a single consequential decision containing the decision, its context, and significant ramifications. When a decision changes, the historical record should remain and link to the superseding decision rather than being rewritten as though the prior decision never existed.

### Thoughtworks — Lightweight Architecture Decision Records

Source: https://www.thoughtworks.com/content/dam/thoughtworks/documents/report/thoughtworks-enterprise-architecture-playbook-v4

Thoughtworks recommends lightweight decision records for important architecture decisions, including context and consequences, and recommends keeping them in source control so they remain close to the evolving system.

### AWS Prescriptive Guidance — Architecture decision records

Sources:

- https://docs.aws.amazon.com/prescriptive-guidance/latest/architectural-decision-records/introduction.html
- https://docs.aws.amazon.com/prescriptive-guidance/latest/architectural-decision-records/adr-process.html

AWS describes missing justification and uncaptured decisions as recurring decision anti-patterns. Its ADR process uses explicit lifecycle/status and treats accepted records as historical records that are superseded by newer records rather than silently mutated.

### Microsoft Azure Well-Architected Framework — Maintain an ADR

Source: https://learn.microsoft.com/en-us/azure/well-architected/architect-role/architecture-decision-record

Microsoft recommends recording architecturally significant decisions with status, context, justification, implications, and supersession, keeping them concise and available in the workload documentation repository.

Agent-operations relevance:

- supports repository-recoverable rationale for decisions future agents might otherwise reconstruct incorrectly;
- supports explicit status/supersession rather than treating every historical record as current;
- supports lightweight records only for consequential decisions rather than documenting every implementation detail.

## Cross-practitioner convergence

Across established software-engineering guidance and current agent-focused practitioner writing, several themes recur:

1. small changes are easier to understand and validate;
2. refactoring should not be casually mixed with unrelated behavior changes;
3. relevant context should be supplied deliberately rather than maximized;
4. repeated failures should produce durable improvements to instructions, architecture, tests, or tooling;
5. human-readable guidance should be complemented by deterministic validation for high-confidence constraints;
6. consequential decisions should preserve their context/rationale and lifecycle so future contributors do not have to reconstruct them from code or conversation;
7. historical documentation should remain truthful while superseded/current state stays discoverable.

## Consensus limitation

"General consensus" is not measured by counting articles.

SABOS Lib should consider practitioner consensus stronger when:

- the sources are independent;
- the practice has a mature engineering rationale;
- empirical research does not materially contradict it;
- multiple tool ecosystems converge on compatible mechanisms;
- repository outcomes support the practice.

A popular blog pattern copied across the industry does not become a contract without explicit adoption.
