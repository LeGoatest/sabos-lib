# Naming conventions

## Layout primitives

Prefix structural helpers with `layout-`.

```css
.layout-container {}
.layout-section {}
.layout-stack {}
.layout-cluster {}
.layout-grid {}
.layout-sidebar {}
```

## Components

Use a clear semantic noun for the base class and noun-modifier names for variants.

```css
.button {}
.button-primary {}
.button-large {}
.card {}
.card-interactive {}
.form-input {}
.alert-error {}
```

Use the base and modifier together:

```html
<button class="button button-primary">Submit</button>
```

## Patterns

Prefix larger page compositions with `pattern-`.

```css
.pattern-hero {}
.pattern-proof-strip {}
```

## States

Use `is-` for a current state and `has-` when an object contains a condition.

```css
.is-loading {}
.is-disabled {}
.is-hidden {}
.has-error {}
```

Prefer native attributes when possible:

```html
<button class="button button-primary" disabled>Saving</button>
<div class="alert alert-error" role="alert">Correct the errors below.</div>
```

## Utilities

Prefix intentional escape hatches with `util-`. A utility should solve one narrow problem and should not become an alternate component system.

```css
.util-sr-only {}
.util-content-narrow {}
.util-text-balance {}
```

## Avoid

```css
.homepage-blue-box {}
.about-page-button {}
.service-card-three {}
.mt-custom-37 {}
```

Prefer names based on purpose rather than location, color, or a single page.
