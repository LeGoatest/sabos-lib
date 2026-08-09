# WDBASIC Component Agent Instructions

> **Status:** Binding for work under `Wdbasic/components/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Primary contract:** [`component-contracts.md`](component-contracts.md)

This directory governs reusable component behavior and contracts.

## Read first

1. [`../architecture_rules.md`](../architecture_rules.md)
2. [`../README.md`](../README.md)
3. [`component-contracts.md`](component-contracts.md)
4. Applicable token, accessibility, form, media, internationalization, and profile contracts

## Preserve

Agents MUST preserve native semantics, keyboard behavior, focus, states, names/roles/values/relationships, no-JavaScript baseline behavior where required, and stable public component contracts.

A visual change is not permission to alter component anatomy, state semantics, interaction model, accessibility behavior, or public class/API contracts.

Do not replace native behavior with custom widgets or ARIA without a demonstrated requirement.

## Validation

Validate all applicable component states, responsive behavior, keyboard/focus behavior, reduced motion, forced colors, assistive-technology semantics, and failure/empty/loading conditions.

## Changelog

Notable component-contract changes update [`../CHANGELOG.md`](../CHANGELOG.md).
