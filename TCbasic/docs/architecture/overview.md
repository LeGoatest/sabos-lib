# Architecture Overview

> **Detailed rules:** [`rules.md`](rules.md)  
> **Standards registry:** [`../standards.md`](../standards.md)

TCBasic treats Tailwind CSS as the implementation vocabulary and semantic CSS classes as the template-facing API.

Templates express intent:

```html
<button class="button button-primary">Save changes</button>
```

Reference CSS owns reusable utility composition:

```css
@layer components {
  .button {
    @apply inline-flex min-h-11 items-center justify-center rounded-component;
  }
}
```

## Layer order

1. **Foundation** — raw design tokens, semantic theme mappings, base element rules, typography, and accessibility defaults.
2. **Elements** — reusable treatments for semantic HTML elements.
3. **Layout** — reusable spatial primitives.
4. **Components** — independent interface objects such as buttons, cards, forms, alerts, and badges.
5. **Patterns** — larger compositions built from layout primitives and components.
6. **States** — cross-component behavioral and validation states.
7. **Utilities** — a deliberately small set of project-wide escape hatches.

A lower layer must not depend on a higher layer.

## Token flow

```text
raw semantic variables
        ↓
@theme inline mappings
        ↓
Tailwind utilities
        ↓
semantic component classes
        ↓
HTML templates
```

Raw values use the `--semantic-*` namespace. Tailwind-facing mappings use official namespaces including `--color-*`, `--font-*`, `--radius-*`, `--shadow-*`, `--breakpoint-*`, and `--container-*`.

See [`../tokens/README.md`](../tokens/README.md).

## Component composition

Use a base class plus explicit modifiers in markup:

```html
<a class="button button-primary button-large">Continue</a>
```

Do not rely on applying one custom component class inside another as hidden inheritance. Each modifier should add only its documented responsibility.

See [`../components/component-contracts.md`](../components/component-contracts.md).

## Source detection

Tailwind candidates in examples and adopter implementations should appear as complete static strings. Dynamic fragments are prohibited by the TCBasic architecture.

See [`source-detection.md`](source-detection.md).

## Tooling boundary

CLI, PostCSS, Vite, and similar tooling are adopter choices. SABOS Lib does not build TCBasic.

See [`tooling.md`](tooling.md).

## Framework boundary

The reference architecture is framework-independent. Framework-specific examples and integrations may adapt TCBasic without becoming dependencies of SABOS Lib or redefining the core contracts.

See [`../integrations/README.md`](../integrations/README.md).

## Validation boundary

TCBasic documentation and reference CSS must remain internally consistent. Actual build, browser, framework, and application validation belongs to the adopting project and must be reported with its real scope.

See [`../compliance/README.md`](../compliance/README.md).
