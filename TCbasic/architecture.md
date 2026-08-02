# Architecture

## Purpose

Tailwind CSS Semantic Layer treats Tailwind as the implementation language and semantic CSS classes as the template-facing API.

Templates should express intent:

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

1. **Foundation** — raw design tokens, semantic theme mappings, base element rules, and accessibility defaults.
2. **Layout** — reusable spatial primitives that solve recurring page structures.
3. **Components** — independent interface objects such as buttons, cards, forms, alerts, and badges.
4. **Patterns** — larger compositions built from layout primitives and components.
5. **States** — cross-component behavioral and validation states.
6. **Utilities** — a deliberately small set of project-wide exceptions.

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

Raw values use the `--semantic-*` namespace. Tailwind-facing mappings use Tailwind's theme namespaces, including `--color-*`, `--font-*`, `--radius-*`, and `--shadow-*`.

## Component composition

Use a base class plus explicit modifiers in markup:

```html
<a class="button button-primary button-large">Continue</a>
```

Do not rely on applying one custom component class inside another. Each modifier should contain only its own Tailwind utilities. This keeps compilation predictable and makes the class contract visible.

## Framework policy

The core package contains plain CSS and HTML. Framework-specific adapters may be added under `examples/` without becoming dependencies of the core package.

Primary content must remain server-renderable. JavaScript may enhance local interactions but must not be required to expose core content.
