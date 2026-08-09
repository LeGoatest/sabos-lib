# Semantic Token Contract

Semantic tokens name purpose rather than literal appearance. They allow components to remain stable while brands, themes, and color schemes change.

## 1. Token levels

### Primitive values

Primitive values describe scales or raw options:

```css
--palette-blue-600: oklch(0.50 0.16 255);
--space-4: 1rem;
```

TCBasic does not require consumers to expose a complete primitive palette publicly.

### Semantic raw variables

Semantic raw variables describe product-neutral roles and form the supported customization boundary:

```css
:root {
  --semantic-color-primary: oklch(0.48 0.16 255);
  --semantic-color-surface: white;
  --semantic-color-text: oklch(0.22 0.025 255);
  --semantic-radius-card: 0.875rem;
}
```

### Tailwind mappings

Tailwind mappings expose selected roles to utility generation:

```css
@theme inline {
  --color-primary: var(--semantic-color-primary);
  --color-surface: var(--semantic-color-surface);
  --color-text: var(--semantic-color-text);
  --radius-card: var(--semantic-radius-card);
}
```

### Component consumption

Components consume the role:

```css
.card {
  @apply rounded-card bg-surface text-text;
}
```

## 2. Required naming qualities

A semantic token name must be:

- Stable across brands.
- Understandable without seeing its current value.
- Narrow enough to avoid conflicting responsibilities.
- Broad enough to be reused.
- Independent of a page, campaign, customer, or implementation detail.

Prefer:

```text
primary
surface
surface-muted
text
text-muted
border
error
focus
```

Avoid:

```text
blue-button
homepage-gray
customer-gold
third-card-shadow
```

## 3. State tokens

Interactive and validation states require intentional roles:

- Primary default, hover, active, and disabled.
- Focus indicator.
- Success, warning, error, and information.
- Field background, border, text, placeholder, and invalid state.
- Selected, current, expanded, and pending states where visually distinct.

Color must not be the only state indicator.

## 4. Surface model

Recommended roles:

```text
background
surface
surface-muted
surface-raised
surface-inverse
border
border-strong
text
text-muted
text-inverse
```

Do not create a new surface role solely because one page uses a slightly different shade. First determine whether the distinction carries reusable hierarchy.

## 5. Typography roles

Recommended roles:

```text
font-body
font-display
text-body
text-small
text-lead
text-heading-sm
text-heading-md
text-heading-lg
measure-reading
```

Typography roles should preserve readable line height and measure, not only font size.

## 6. Shape and elevation

Recommended roles:

```text
radius-control
radius-component
radius-card
shadow-component
shadow-elevated
shadow-overlay
```

Elevation indicates hierarchy, not decoration. Avoid many nearly identical shadows.

## 7. Color schemes

A dark or alternate theme overrides raw semantic variables rather than duplicating component CSS:

```css
[data-theme="dark"] {
  --semantic-color-background: oklch(0.17 0.02 255);
  --semantic-color-surface: oklch(0.22 0.025 255);
  --semantic-color-text: oklch(0.96 0.008 255);
}
```

The component API remains unchanged.

## 8. Compatibility and deprecation

Changing a raw value is normally theme customization. Renaming a variable or changing its semantic responsibility changes the public token API.

Deprecation records must include:

- Old token.
- Replacement token.
- First deprecated version.
- Planned removal version.
- Migration example.

## 9. Token review checklist

- Is this a reusable role?
- Is the current value confused with the role name?
- Can existing tokens represent the need?
- Does the token require a Tailwind utility mapping?
- Does it preserve contrast and state distinction?
- Does the change affect light, dark, forced-colors, or print behavior?
- Is the token documented and versioned?
