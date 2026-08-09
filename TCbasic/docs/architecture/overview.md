# Architecture Overview

> **Detailed rules:** [`architecture_rules.md`](architecture_rules.md)  
> **Standards registry:** [`STANDARDS.md`](STANDARDS.md)

Tailwind CSS Semantic Layer treats Tailwind as the implementation language and semantic CSS classes as the template-facing API.

Templates express intent:

```html
<button class="button button-primary">Save changes</button>
```

The CSS layer owns utility composition:

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
7. **Utilities** — a deliberately small set of project-wide exceptions.

A lower layer must not depend on a higher layer.

## Token flow

```text
Raw semantic variables
        ↓
@theme inline mappings
        ↓
Tailwind utilities
        ↓
Semantic component classes
        ↓
HTML templates
```

Raw values use the `--semantic-*` namespace. Tailwind-facing mappings use official namespaces including `--color-*`, `--font-*`, `--radius-*`, `--shadow-*`, `--breakpoint-*`, and `--container-*`.

See [`tokens/README.md`](tokens/README.md).

## Component composition

Use a base class plus explicit modifiers in markup:

```html
<a class="button button-primary button-large">Continue</a>
```

Do not rely on applying one custom component class inside another. Each modifier contains only its own additional behavior so the public class contract remains visible.

See [`components/component-contracts.md`](components/component-contracts.md).

## Source detection

Class candidates must appear as complete static strings. Dynamic class fragments are prohibited. Declare nonstandard templates and fragments with `@source` when automatic detection is insufficient.

See [`build/source-detection.md`](build/source-detection.md).

## Build policy

CLI and PostCSS are core supported build paths. Vite is an optional consumer adapter and is not a TCBasic dependency.

See [`build/tooling.md`](build/tooling.md).

## Framework policy

The core package contains plain CSS and HTML. Framework-specific adapters and examples do not become dependencies of the core package.

Primary content must remain server-renderable where the host architecture requires it. JavaScript may enhance local interactions but must not become styling ownership or the sole authority for primary content.

See [`integrations/README.md`](integrations/README.md).

## Validation policy

Architecture is verified through structural tests, package export checks, generated CSS inspection, documentation link checks, and release evidence.

See [`compliance/README.md`](compliance/README.md).
