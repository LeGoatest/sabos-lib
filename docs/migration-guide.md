# Migration guide

This guide converts utility-heavy Tailwind markup into the semantic-layer pattern without abandoning Tailwind CSS.

## 1. Inventory repeated groups

Find utility sequences repeated across templates. Promote only stable repetitions with a clear semantic purpose.

Before:

```html
<a class="inline-flex min-h-11 items-center justify-center rounded-lg bg-blue-700 px-5 py-2.5 font-semibold text-white hover:bg-blue-800" href="/quote">
  Request a quote
</a>
```

After:

```html
<a class="button button-primary" href="/quote">Request a quote</a>
```

## 2. Separate raw values from roles

Move brand values into raw variables:

```css
:root {
  --semantic-color-primary: oklch(42% 0.16 255);
}
```

Map the role through Tailwind:

```css
@theme inline {
  --color-primary: var(--semantic-color-primary);
}
```

Use `primary` for the role, not a color name such as `blue`.

## 3. Classify the abstraction

Use the narrowest correct layer:

- **Foundation:** tokens, theme mapping, reset, typography, accessibility.
- **Element:** default treatment for semantic HTML elements.
- **Layout:** flow and spatial primitives.
- **Component:** reusable interface object with a stable contract.
- **Pattern:** composition of multiple components or layout primitives.
- **State:** temporary status such as loading or error.
- **Utility:** a small escape hatch with one narrow purpose.

## 4. Preserve variants in markup when local

Semantic classes should not encode every local responsive decision. Keep one-off layout decisions in markup when that improves clarity:

```html
<div class="layout-grid md:grid-cols-2 xl:grid-cols-3">
```

Promote the variant only when it is a repeated contract.

## 5. Replace visual names

Avoid:

```css
.blue-button {}
.homepage-card {}
.left-column {}
```

Prefer:

```css
.button-primary {}
.card-feature {}
.layout-sidebar {}
```

## 6. Migrate incrementally

1. Import the semantic layer alongside the existing stylesheet.
2. Replace one repeated component at a time.
3. Compare hover, focus, disabled, validation, reduced-motion, and responsive states.
4. Remove obsolete utilities only after all templates have migrated.
5. Run the complete build and accessibility checks.

## 7. Laravel and HTMX

Server-rendered templates remain the source of truth. HTMX may replace fragments, but returned markup uses the same semantic contracts as a full-page response. Laravel Blade components may wrap semantic classes, but the CSS package remains framework-independent.

See the implementations under `examples/laravel-blade/` and `examples/htmx/`.
