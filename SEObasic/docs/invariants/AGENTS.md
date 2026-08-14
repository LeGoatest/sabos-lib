# SEObasic Invariant Agent Instructions

> **Scope:** `SEObasic/docs/invariants/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Domain entrypoint:** [`README.md`](README.md)

## Mission

> **Preserve binding cross-domain truths without erasing the evidence, judgment, scope, or tradeoffs that produced them.**

## Invariant-authoring rules

Agents MUST:

- identify the invariant owner and scope;
- distinguish normative requirements from rationale and evidence;
- use MUST / MUST NOT for binding requirements and SHOULD / SHOULD NOT for strong defaults with legitimate exceptions;
- link to underlying evidence where it materially supports the rule;
- define validation when the requirement is mechanically or observably testable;
- preserve existing binding behavior unless a deliberate change is authorized;
- update affected strategies, surfaces, measurement semantics, examples, and changelogs when an invariant changes materially.

Agents MUST NOT:

- create an invariant merely because one external source recommends something;
- convert a platform-specific recommendation into a universal SEObasic rule without an adoption decision;
- disguise practitioner judgment as a formal standard;
- disguise research findings as certainty beyond the study's scope;
- weaken an invariant to match an implementation or campaign regression;
- rewrite an invariant silently while performing unrelated work.

## Promotion threshold

Formalize an invariant when a rule is expected to be:

- cross-domain or repeatedly reused;
- important enough that silent drift would be harmful;
- testable or reviewable;
- a recurring source of disagreement or regression;
- an intentional boundary agents must not infer differently each time.

Not every lesson belongs here. Some knowledge belongs under [`../evaluation/`](../evaluation/README.md), [`../strategies/`](../strategies/README.md), [`../surfaces/`](../surfaces/README.md), [`../evidence/`](../evidence/README.md), [`../measurement/`](../measurement/README.md), or [`../terminology/`](../terminology/README.md).

## Evidence discipline

The [`Evidence Classification Contract`](evidence-classification.md) applies to material claims feeding invariant decisions. Evidence may challenge an invariant, but it does not silently replace one.

## Changes

Material invariant changes are governed mutations when they alter established expected behavior. Follow [`../../../governance/change-control.md`](../../../governance/change-control.md) where applicable and update [`../../CHANGELOG.md`](../../CHANGELOG.md).
