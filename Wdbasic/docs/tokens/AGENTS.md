# WDBASIC Token Agent Instructions

> **Status:** Binding for work under `Wdbasic/docs/tokens/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

This directory owns WDBASIC semantic design-token contracts.

## Read first

1. [`../architecture_rules.md`](../architecture_rules.md)
2. [`../framework-contract.md`](../framework-contract.md)
3. The token file being changed
4. [`../components/component-contracts.md`](../components/component-contracts.md) when token changes affect components

## Preserve

- Semantic intent rather than page-, brand-, sequence-, or implementation-specific naming.
- Accessibility requirements attached to color, typography, spacing, motion, focus, target size, and related tokens.
- Separation between reusable semantic roles and product-specific values/profiles.
- Existing public token names unless an intentional migration is approved.

Do not rename or collapse tokens merely for stylistic consistency when consumers may depend on them.

## Validation

Review affected components/profiles and any evidence tied to contrast, typography, spacing, responsive behavior, focus, or accessibility. Token changes that alter public meaning are contract changes, not formatting cleanup.

## Changelog

Notable token-contract changes update [`../../CHANGELOG.md`](../../CHANGELOG.md).
