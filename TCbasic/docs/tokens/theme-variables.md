# Tailwind Theme Variable Contract

Tailwind CSS v4 uses CSS theme variables to generate utilities and expose design tokens as normal CSS custom properties.

Official reference: https://tailwindcss.com/docs/theme

## 1. `@theme` purpose

Use `@theme` when a variable should participate in Tailwind utility generation:

```css
@theme {
  --color-brand-500: oklch(0.62 0.18 255);
  --font-display: "Oswald", ui-sans-serif, sans-serif;
  --breakpoint-3xl: 120rem;
}
```

This creates corresponding utilities such as `bg-brand-500`, `font-display`, and `3xl:*`.

## 2. `@theme inline`

Use `inline` when a Tailwind theme variable references another CSS variable whose value should be substituted into generated utilities:

```css
:root {
  --semantic-color-primary: oklch(0.48 0.16 255);
}

@theme inline {
  --color-primary: var(--semantic-color-primary);
}
```

TCBasic uses this pattern to keep consumer-overridable raw variables separate from Tailwind-facing names.

## 3. Namespace registry

Common namespaces include:

| Namespace | Generates or controls |
| --- | --- |
| `--color-*` | Color utilities. |
| `--font-*` | Font-family utilities. |
| `--text-*` | Font-size utilities. |
| `--font-weight-*` | Font-weight utilities. |
| `--tracking-*` | Letter-spacing utilities. |
| `--leading-*` | Line-height utilities. |
| `--breakpoint-*` | Responsive variants. |
| `--container-*` | Container-query variants and sizing. |
| `--spacing-*` | Spacing and sizing utilities. |
| `--radius-*` | Border-radius utilities. |
| `--shadow-*` | Box-shadow utilities. |
| `--inset-shadow-*` | Inset-shadow utilities. |
| `--drop-shadow-*` | Filter drop-shadow utilities. |
| `--blur-*` | Blur utilities. |
| `--perspective-*` | Perspective utilities. |
| `--ease-*` | Transition timing utilities. |
| `--animate-*` | Animation utilities. |

Use official namespaces rather than inventing near-equivalent ones that do not generate the expected utility API.

## 4. Resetting defaults

A namespace or subset can be reset to `initial`:

```css
@theme {
  --color-lime-*: initial;
}
```

Reset all values only when TCBasic or a consumer intentionally supplies the complete replacement:

```css
@theme {
  --color-*: initial;
  --color-white: #fff;
  --color-black: #000;
  --color-primary: oklch(0.48 0.16 255);
}
```

Resetting defaults is a migration-sensitive decision because existing utilities may stop compiling.

## 5. Static and generated variables

Use the `static` option only when all theme variables must be emitted even if no corresponding utility is detected:

```css
@theme static {
  --color-primary: oklch(0.48 0.16 255);
}
```

Do not emit every variable by default without a consumer or package-distribution requirement.

## 6. Sharing themes

Theme definitions can live in a dedicated CSS file and be imported by multiple packages or applications. The shared file must have a stable public API and versioning policy.

```css
@import "tailwindcss";
@import "./theme.css";
```

TCBasic exposes `./tokens` and `./theme` package exports for controlled reuse.

## 7. Rules

- Theme variables must use valid official namespaces.
- Raw consumer values remain outside `@theme` unless utility generation is intended.
- Do not redefine a token with a different semantic meaning between profiles.
- Use consistent units for breakpoints.
- Prefer CSS variables over the deprecated `theme()` function.
- Record removed or renamed variables in the changelog and migration guide.

## 8. Review checklist

- Does the variable need to generate utilities?
- Is the namespace correct?
- Should the value be raw, mapped, static, or inherited?
- Does it reference another variable safely?
- Does it affect package output size?
- Does it alter a documented public token?
- Were examples and tests updated?
