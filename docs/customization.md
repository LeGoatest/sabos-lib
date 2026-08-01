# Customization

The semantic layer is customized by changing tokens, not by copying component files into an application.

## Override raw tokens

Import the package first, then redefine `--semantic-*` variables:

```css
@import "tailwindcss-semantic-layer";

:root {
  --semantic-color-primary: oklch(45% 0.17 255);
  --semantic-color-primary-hover: oklch(38% 0.16 255);
  --semantic-color-accent: oklch(78% 0.16 75);
  --semantic-radius-card: 1rem;
  --semantic-shadow-elevated: 0 24px 60px rgb(15 23 42 / 0.18);
}
```

The package maps raw values to Tailwind theme namespaces through `@theme inline`. Existing utilities and semantic components then inherit the new values.

## Add project tokens

Project-specific tokens should retain the same split:

```css
:root {
  --project-color-emergency: oklch(55% 0.2 25);
}

@theme inline {
  --color-emergency: var(--project-color-emergency);
}
```

Use a project prefix for raw values and a meaningful semantic role for the Tailwind mapping.

## Extend a component

Combine the base class with a variant class in markup, and keep the variant stylesheet focused on the additional behavior:

```css
@layer components {
  .button-danger {
    @apply bg-error text-white hover:brightness-90 focus-visible:outline-error;
  }
}
```

Use `class="button button-danger"` in markup. Keep variants limited to recurring product-level behavior. A class used by only one page section belongs in that application's stylesheet.

## Dark color scheme

Override the same raw tokens within an explicit theme selector or media query:

```css
[data-theme="dark"] {
  --semantic-color-background: oklch(17% 0.02 255);
  --semantic-color-surface: oklch(22% 0.025 255);
  --semantic-color-surface-muted: oklch(27% 0.025 255);
  --semantic-color-text: oklch(96% 0.008 255);
  --semantic-color-text-muted: oklch(76% 0.015 255);
  --semantic-color-border: oklch(36% 0.02 255);
}
```

Do not create a separate dark component library. Components consume semantic roles and should adapt through tokens.

## Integration source scanning

Tailwind CSS v4 detects source files automatically, but package and nonstandard template locations can be declared explicitly:

```css
@import "tailwindcss-semantic-layer";
@source "../views";
@source "../vendor/example/package/resources/views";
```

## Stable customization boundary

Public customization boundaries are:

- `--semantic-*` raw variables.
- Exported package entry points.
- Documented semantic class names.
- Standards-based HTML attributes such as `aria-current`, `aria-invalid`, `open`, and `disabled`.

Internal file organization may evolve between minor versions. Applications should avoid deep imports that are not listed in `package.json` exports.
