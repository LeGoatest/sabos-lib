# TCBasic Token System

TCBasic separates raw semantic variables from Tailwind theme variables and component consumption.

## Documents

- [`theme-variables.md`](theme-variables.md) — official Tailwind namespaces and `@theme` behavior.
- [`semantic-tokens.md`](semantic-tokens.md) — raw-value and semantic-role architecture.
- [`responsive-and-containers.md`](responsive-and-containers.md) — viewport breakpoints, container sizes, and responsive contracts.

## Token pipeline

```text
:root raw semantic variables
        ↓
@theme inline Tailwind mappings
        ↓
utilities such as bg-primary and rounded-component
        ↓
semantic classes such as button-primary and card
```

## Required groups

A production theme should define or intentionally inherit:

- Brand/action colors.
- Background, surface, border, and text roles.
- Success, warning, error, and information roles.
- Font families, sizes, line heights, and tracking.
- Spacing and content measures.
- Radius, border, and elevation.
- Breakpoints and container-query sizes where customized.
- Motion durations and easing where motion exists.
- Focus indicators and forced-colors behavior.

## Rules

1. Use roles rather than page or business names.
2. Do not duplicate arbitrary literal values across components.
3. Keep raw consumer-overridable values stable.
4. Map only intentional values into Tailwind namespaces.
5. Reset unused default namespaces only with migration review.
6. Test contrast and state distinctions after token changes.
7. Treat token removal or semantic redefinition as a public API change.

## Customization boundary

Consumers should override raw `--semantic-*` variables after importing TCBasic source. Consumers that add new utility names may extend official Tailwind namespaces with `@theme inline`.

See [`../customization.md`](../customization.md).
