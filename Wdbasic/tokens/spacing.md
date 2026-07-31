# WDBASIC Spacing, Shape, and Elevation Tokens

Spacing tokens establish rhythm, density, readable widths, shape, and elevation.

## Required roles

```text
space-1
space-2
space-3
space-4
space-5
space-6
space-8
space-10
space-12
space-16
space-section-sm
space-section-md
space-section-lg
content-narrow
content-default
content-wide
control-height-sm
control-height-md
control-height-lg
radius-control
radius-card
radius-panel
radius-pill
shadow-card
shadow-elevated
shadow-overlay
```

## Rules

- Use a deliberate scale instead of unrelated one-off values.
- Section spacing communicates hierarchy and should not create oversized empty areas.
- Content widths are selected by reading and task requirements, not by viewport width alone.
- Forms and data-heavy interfaces may use denser spacing than marketing sections while preserving touch and readability requirements.
- Radius and shadow roles must be consistent within the active profile.
- Elevation must communicate layering or interaction, not decorate every surface.

## Suggested mapping

```css
@theme {
  --spacing-1: 0.25rem;
  --spacing-2: 0.5rem;
  --spacing-3: 0.75rem;
  --spacing-4: 1rem;
  --spacing-5: 1.25rem;
  --spacing-6: 1.5rem;
  --spacing-8: 2rem;
  --spacing-10: 2.5rem;
  --spacing-12: 3rem;
  --spacing-16: 4rem;

  --container-narrow: 42rem;
  --container-default: 72rem;
  --container-wide: 90rem;

  --radius-control: 0.5rem;
  --radius-card: 0.75rem;
  --radius-panel: 1rem;
}
```

Profiles may alter values while preserving semantic roles.

## Layout guidance

- Use `content-narrow` for focused forms and long-form text.
- Use `content-default` for ordinary page sections.
- Use `content-wide` for galleries, comparison layouts, and data-heavy screens.
- Avoid compressing desktop grids onto mobile.
- Sticky controls must reserve enough space to avoid obscuring content.
- Responsive source order must remain logical.
