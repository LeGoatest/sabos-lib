# SEObasic Contract Agent Instructions

> **Scope:** `SEObasic/contracts/` and contract authoring conventions used by nested SEObasic domains  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

## Mission

> **Turn adopted knowledge into explicit obligations without erasing the evidence, judgment, or tradeoffs that produced the rule.**

## Contract-authoring rules

Agents MUST:

- identify the contract owner and scope;
- distinguish normative requirements from rationale and evidence;
- use MUST / MUST NOT for binding requirements and SHOULD / SHOULD NOT for strong defaults with legitimate exceptions;
- link to underlying evidence where it materially supports the rule;
- define validation when the requirement is mechanically or observably testable;
- preserve existing contract behavior unless a deliberate change is authorized;
- update affected examples, validation, and changelogs when a contract changes materially.

Agents MUST NOT:

- create a binding contract merely because one external source recommends something;
- convert a platform-specific recommendation into a universal SEObasic rule without an adoption decision;
- disguise practitioner judgment as a formal standard;
- disguise research findings as certainty beyond the study's scope;
- weaken a contract to match an implementation regression;
- rewrite a contract silently while performing an unrelated implementation task.

## Contract creation threshold

Create or formalize a contract when a rule is expected to be:

- reused across implementations or campaigns;
- important enough that silent drift would be harmful;
- testable or reviewable;
- a recurring source of disagreement or regression;
- an intentional divergence from common industry/platform practice;
- a cross-domain boundary that agents must not infer differently each time.

Not every lesson needs to become a contract. Some knowledge belongs as research, a practitioner note, example, glossary entry, or historical reference.

## Contract changes

Material contract changes are governed mutations when they alter established expected behavior. Follow [`../../governance/change-control.md`](../../governance/change-control.md) where applicable and update [`../CHANGELOG.md`](../CHANGELOG.md).
