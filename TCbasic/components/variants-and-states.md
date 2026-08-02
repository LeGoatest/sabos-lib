# Variants and States Contract

Tailwind CSS variants are conditional selectors and queries. TCBasic state classes are semantic hooks. They must not be confused.

Official references:

- https://tailwindcss.com/docs/hover-focus-and-other-states
- https://tailwindcss.com/docs/adding-custom-styles
- https://tailwindcss.com/docs/dark-mode

## 1. Tailwind variants

Tailwind variants include:

- Pseudo-classes such as `hover`, `focus-visible`, and `disabled`.
- Responsive and container variants.
- Media preferences such as `motion-reduce` and `forced-colors`.
- Attribute variants such as `aria-*`, `data-*`, and `open`.
- Structural variants such as `first`, `last`, `has-*`, `group-*`, and `peer-*`.

Use variants where the condition is represented by CSS, a native attribute, or a stable application attribute.

## 2. Applying variants in custom CSS

Use `@variant` inside semantic classes when the semantic class owns the behavior:

```css
.button-primary {
  @apply bg-primary text-on-primary;

  @variant hover {
    @apply bg-primary-hover;
  }

  @variant focus-visible {
    @apply outline-2 outline-offset-2 outline-primary;
  }
}
```

Direct pseudo-selectors are also valid when clearer.

## 3. Custom variants

Use `@custom-variant` only for recurring selectors that have a stable cross-project meaning:

```css
@custom-variant theme-dark (&:where([data-theme="dark"] *));
```

Do not register a custom variant for one page, one customer, or one temporary DOM structure.

## 4. Native state first

Prefer:

```html
<button class="button button-primary" disabled>Saving</button>
<a class="navigation-link" aria-current="page">Current</a>
<input class="form-input" aria-invalid="true">
<details class="dropdown" open>
```

Supplemental state classes are useful when no native selector represents the application state:

```html
<section class="upload-panel is-loading" aria-busy="true"></section>
```

## 5. State-class meanings

| Form | Meaning |
| --- | --- |
| `is-*` | The object currently has a condition. |
| `has-*` | The object contains or owns a condition. |
| `*-active` | A component-specific explicit modifier when part of its API. |

Do not use one name for multiple unrelated meanings. `is-active` cannot simultaneously mean current navigation, pressed button, running process, and selected record without a component-specific contract.

## 6. ARIA and data attributes

ARIA attributes communicate semantics and may be styled with `aria-*` variants. Do not add ARIA solely as a styling hook.

Use `data-*` attributes for application state that has no semantic ARIA equivalent:

```html
<div class="tabs" data-orientation="vertical"></div>
```

The attribute value and allowed states must be documented.

## 7. Hover

Tailwind v4 applies hover styles only where the primary input supports hover. Required information and controls cannot depend on hover.

A hover state may enhance:

- Color.
- Elevation.
- Underline.
- Preview.

It may not be the only way to reveal or operate essential content.

## 8. Motion

Use motion variants to respect preference:

```html
<div class="transition motion-reduce:transition-none"></div>
```

Loading and state communication must remain understandable when animation is removed.

## 9. Dark and alternate themes

Prefer semantic-token overrides for complete themes. Use `dark:*` or a custom theme variant for local exceptions that cannot be expressed through tokens.

Do not duplicate an entire component library under dark-mode selectors.

## 10. Variant stacking

Tailwind v4 stacks variants left to right. Order-sensitive combinations must be reviewed during v3 migration.

Keep stacked variants readable. Promote recurring complex selectors into a documented custom variant or semantic class.

## 11. Review checklist

- Is the state represented by a native attribute first?
- Is ARIA used for semantics rather than styling convenience?
- Is a data attribute documented?
- Does hover remain optional?
- Is reduced motion respected?
- Is forced-colors behavior usable?
- Is the variant order correct for v4?
- Is a custom variant genuinely reusable?
