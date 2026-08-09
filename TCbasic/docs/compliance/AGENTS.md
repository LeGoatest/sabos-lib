# TCBasic Validation and Evidence Agent Instructions

> **Status:** Binding for work under `TCbasic/docs/compliance/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Entry point:** [`README.md`](README.md)

This directory governs how TCBasic compatibility, migration, reference consistency, and adopter validation claims are represented.

## Rules

Agents MUST distinguish:

- documented/upstream support from observed adopter evidence;
- reference-source consistency from a successful consumer build;
- example behavior from production validation;
- `not_tested`, `blocked`, and `manual_review_required` from `passed`.

Agents MUST NOT claim package integrity, generated-distribution integrity, or SABOS Lib build success because those are no longer TCBasic repository concepts.

Changes to a compatibility baseline or evidence interpretation are governed knowledge changes and must be reflected in dependent documentation.

## Validation language

Use the actual scope of evidence. If a real adopting project performed build/browser/accessibility tests, identify that project/environment. Otherwise report only the documentation/reference review that actually occurred.

## Changelog

Notable compliance/evidence changes update [`../../CHANGELOG.md`](../../CHANGELOG.md).
