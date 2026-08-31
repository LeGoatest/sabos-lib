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

## Cross-practitioner convergence

Across established software-engineering guidance and current agent-focused practitioner writing, several themes recur:

1. small changes are easier to understand and validate;
2. refactoring should not be casually mixed with unrelated behavior changes;
3. relevant context should be supplied deliberately rather than maximized;
4. repeated failures should produce durable improvements to instructions, architecture, tests, or tooling;
5. human-readable guidance should be complemented by deterministic validation for high-confidence constraints.

## Consensus limitation

"General consensus" is not measured by counting articles.

SABOS Lib should consider practitioner consensus stronger when:

- the sources are independent;
- the practice has a mature engineering rationale;
- empirical research does not materially contradict it;
- multiple tool ecosystems converge on compatible mechanisms;
- repository outcomes support the practice.

A popular blog pattern copied across the industry does not become a contract without explicit adoption.
