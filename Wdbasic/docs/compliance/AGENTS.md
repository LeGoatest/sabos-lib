# WDBASIC Compliance Agent Instructions

> **Status:** Binding for work under `Wdbasic/docs/compliance/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

This directory owns WDBASIC conformance evidence models, maturity matrices, testing methodology, ACT-style procedures, and claim-support material.

## Read first

1. [`../framework-contract.md`](../framework-contract.md)
2. [`../STANDARDS.md`](../STANDARDS.md)
3. The compliance/evidence document being changed
4. Applicable architecture, accessibility, form, security, media, authoring, internationalization, or non-web contract

## Evidence rules

Agents MUST distinguish pass, fail, `cantTell`, untested, blocked, and manual-pending outcomes. Automated output is evidence, not automatic proof of conformance.

Agents MUST NOT:

- improve claim wording beyond the evidence;
- convert unknown/manual/blocked results into passes;
- present draft/informative guidance as a normative Recommendation;
- reuse evidence outside its tested scope without justification;
- silently change a test procedure in a way that changes historical interpretation.

Reusable procedures must retain stable identity/version, applicability, expectations, subject/environment, outcome, and evidence.

## Validation

When a compliance procedure or matrix changes, review dependent claims and evidence for changed interpretation.

## Changelog

Notable compliance-contract changes update [`../../CHANGELOG.md`](../../CHANGELOG.md).
