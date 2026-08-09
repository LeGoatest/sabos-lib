# TCBasic Token Agent Instructions

> **Status:** Binding for work under `TCbasic/docs/tokens/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Token entry point:** [`README.md`](README.md)

This directory governs the distinction between raw semantic variables, Tailwind-facing theme variables, semantic token roles, responsive/container primitives, and related TCBasic token contracts.

## Rules

Agents MUST preserve:

- separation between raw values and Tailwind-facing theme variables;
- semantic role names rather than page/customer/color-specific naming;
- stable token responsibility unless an intentional migration is in scope;
- accessibility and responsive implications of token changes;
- CSS-first Tailwind v4 behavior in current guidance.

Do not collapse token layers merely because fewer variables appear simpler.

## Review

Review affected reference CSS under [`../../src/foundation/`](../../src/foundation/), component contracts, examples, profiles, and adopter migration implications.

Do not require a generated distribution or repository build as evidence. Actual consumer build validation belongs to the adopting project.

## Changelog

Notable token-contract changes update [`../../CHANGELOG.md`](../../CHANGELOG.md).
