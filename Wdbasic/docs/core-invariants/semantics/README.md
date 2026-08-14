# Semantics Invariant

> **Status:** Binding core-invariant domain  
> **Parent:** [`../README.md`](../README.md)

Semantics governs meaningful structure and behavior independent of styling technology.

## Requirements

- Prefer valid native HTML elements and controls when they provide the required semantics and behavior.
- Preserve meaningful headings, landmarks, names, relationships, state, reading order, form structure, and document language/direction.
- Do not recreate native controls with generic clickable containers or unnecessary ARIA.
- Client-side validation may improve feedback but does not replace authoritative validation where a trusted application/server boundary exists.
- Generated and authored output remains within the semantic contract.

## Subject contracts

- [`forms/`](forms/README.md)
- [`components/`](components/component-contracts.md)
- [`tokens/`](tokens/)
- [`authoring/`](authoring/)
- [`internationalization.md`](internationalization.md)

Styling-framework rules belong under technology profiles, not this invariant.
