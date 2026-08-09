# TCBasic Profile Agent Instructions

> **Status:** Binding for work under `TCbasic/profiles/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Profile entry point:** [`README.md`](README.md)

Profiles define adoption/migration choices for classes of TCBasic consumers.

## Rules

Agents MUST keep profile choices distinct from core package requirements.

A profile may select defaults, migration strategy, or adoption scope; it may not silently weaken package architecture, source-detection, accessibility, token, component, build, or public API contracts.

Do not promote one consumer project's accidental conventions into a reusable profile without an explicit reusable rationale.

## Validation

Review examples, migration guidance, package contracts, and public API implications affected by profile changes.

## Changelog

Notable profile changes update [`../CHANGELOG.md`](../CHANGELOG.md).
