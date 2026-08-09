# TCBasic Architecture

> **Status:** Canonical architecture overview  
> **Detailed rules:** [`rules.md`](rules.md)  
> **Standards registry:** [`../standards.md`](../standards.md)  
> **Local agent instructions:** [`AGENTS.md`](AGENTS.md)

TCBasic treats Tailwind CSS as an implementation vocabulary and stable semantic CSS classes as the template-facing API.

Templates express intent:

```html
<button class="button button-primary">Save changes</button>
```

The reference CSS owns reusable utility composition:

```css
@layer components {
  .button {
    @apply inline-flex min-h-11 items-center justify-center rounded-component;
  }
}
```

## Layer order

The reference implementation under [`../../src/`](../../src/) follows:

1. **Foundation** — raw design tokens, semantic theme mappings, base rules, typography, and accessibility defaults.
2. **Elements** — reusable treatments for semantic HTML elements.
3. **Layout** — reusable spatial primitives.
4. **Components** — independent interface objects.
5. **Patterns** — larger compositions built from primitives and components.
6. **States** — cross-component behavioral and validation states.
7. **Utilities** — a deliberately limited set of escape hatches.

A lower layer must not depend on a higher layer.

## Token flow

```text
raw semantic variables
        ↓
Tailwind theme namespace mappings
        ↓
Tailwind utilities
        ↓
semantic classes and variants
        ↓
template markup
```

See [`../tokens/README.md`](../tokens/README.md).

## Component composition

Use a stable base class plus explicit modifiers:

```html
<a class="button button-primary button-large">Continue</a>
```

Do not use hidden custom-class inheritance as a substitute for visible component contracts. See [`../components/component-contracts.md`](../components/component-contracts.md).

## Source detection

Tailwind scans source as text, so required candidates must be represented as complete static strings. See [`source-detection.md`](source-detection.md).

## Tooling boundary

TCBasic documents Tailwind CLI, PostCSS, Vite, and related upstream tooling so adopters understand the ecosystem. SABOS Lib itself does not build or publish TCBasic. See [`tooling.md`](tooling.md).

## Framework boundary

The reference implementation is plain CSS and HTML-oriented. Framework-specific integrations and examples must not silently redefine TCBasic architecture.

See [`../integrations/README.md`](../integrations/README.md).

## Validation boundary

TCBasic validation now means reviewing the documented architecture, the reference source, examples, compatibility assumptions, and applicable contracts. It does not imply that SABOS Lib runs a package build pipeline.

See [`../compliance/README.md`](../compliance/README.md).
