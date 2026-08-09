# WDBASIC Profile Agent Instructions

> **Status:** Binding for work under `Wdbasic/docs/profiles/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

Profiles specialize WDBASIC for particular project classes. They may choose defaults and emphasis; they may not weaken repository or WDBASIC invariants.

## Rules

Agents MUST:

- preserve the distinction between framework-wide contracts and profile-specific defaults;
- state applicability and intended project class clearly;
- keep profile decisions compatible with binding architecture, accessibility, form, security, privacy, semantic, and validation requirements;
- route product-specific exceptions outside reusable profiles when they are not generally reusable.

Agents MUST NOT promote one project's brand, service taxonomy, customer terminology, or implementation accident into a reusable profile without an explicit reusable rationale.

A profile may specialize; it may not silently waive a binding contract.

## Validation

When a profile changes, review affected examples/implementations for changed defaults and confirm the underlying contracts remain satisfied.

## Changelog

Notable profile changes update [`../../CHANGELOG.md`](../../CHANGELOG.md).
