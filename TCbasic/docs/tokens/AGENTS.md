# TCBasic Token Agent Instructions

> **Status:** Binding for work under `TCbasic/tokens/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Token entry point:** [`README.md`](README.md)

This directory governs the distinction between raw consumer variables, Tailwind theme variables, semantic token roles, responsive/container primitives, and related public token contracts.

## Rules

Agents MUST preserve:

- separation between raw values and Tailwind-facing theme variables;
- semantic role names rather than page/customer/color-specific naming;
- public variable/token compatibility unless an intentional migration is in scope;
- accessibility and responsive implications of token changes;
- static CSS-first Tailwind v4 behavior.

Do not collapse token layers merely because fewer variables appear simpler.

## Validation

Review affected source CSS, components, examples, profiles, generated distribution, and tests. Rebuild `dist/` when source CSS changes.

## Changelog

Notable public token changes update [`../CHANGELOG.md`](../CHANGELOG.md).
