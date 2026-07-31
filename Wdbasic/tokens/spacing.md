# WDBASIC Spacing, Shape, and Elevation Tokens

> **Authority:** Binding spacing, sizing, shape, elevation, and layering contract  
> **Core entry point:** [`../README.md`](../README.md)  
> **Accessibility dependency:** [`accessibility.md`](accessibility.md)

These tokens establish rhythm, density, readable widths, control sizing, shape, elevation, and predictable layering.

## 1. Required roles

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
space-20
space-24
space-section-sm
space-section-md
space-section-lg
content-narrow
content-default
content-wide
control-height-sm
control-height-md
control-height-lg
target-min
radius-control
radius-card
radius-panel
radius-pill
shadow-card
shadow-elevated
shadow-overlay
layer-base
layer-sticky
layer-dropdown
layer-overlay
layer-modal
layer-toast
layer-tooltip
```

Profiles may adjust values while preserving the semantic roles and ordering relationships.

## 2. Rules

- Use a deliberate scale instead of unrelated one-off values.
- Section spacing communicates hierarchy and must not create oversized empty areas.
- Content widths are selected by reading and task requirements, not viewport width alone.
- Forms and data-heavy interfaces may use denser spacing than marketing sections while preserving touch and readability requirements.
- Radius and shadow roles remain consistent within the active profile.
- Elevation communicates layering or interaction, not decoration on every surface.
- Layer values follow a controlled order and do not escalate through arbitrary large numbers.
- Sticky and fixed content reserve space and do not obscure focus, text, or primary actions.
- Target size is an accessibility requirement, not merely a visual preference.

## 3. Suggested mapping

```css
:root {
  --space-1: 0.25rem;
  --space-2: 0.5rem;
  --space-3: 0.75rem;
  --space-4: 1rem;
  --space-5: 1.25rem;
  --space-6: 1.5rem;
  --space-8: 2rem;
  --space-10: 2.5rem;
  --space-12: 3rem;
  --space-16: 4rem;
  --space-20: 5rem;
  --space-24: 6rem;

  --content-narrow: 42rem;
  --content-default: 72rem;
  --content-wide: 90rem;

  --control-height-sm: 2.25rem;
  --control-height-md: 2.75rem;
  --control-height-lg: 3.25rem;
  --target-min: 2.75rem;

  --radius-control: 0.5rem;
  --radius-card: 0.75rem;
  --radius-panel: 1rem;
  --radius-pill: 9999px;

  --layer-base: 0;
  --layer-sticky: 20;
  --layer-dropdown: 30;
  --layer-overlay: 40;
  --layer-modal: 50;
  --layer-toast: 60;
  --layer-tooltip: 70;
}

@theme inline {
  --spacing-1: var(--space-1);
  --spacing-2: var(--space-2);
  --spacing-3: var(--space-3);
  --spacing-4: var(--space-4);
  --container-narrow: var(--content-narrow);
  --container-default: var(--content-default);
  --container-wide: var(--content-wide);
  --radius-control: var(--radius-control);
  --radius-card: var(--radius-card);
  --radius-panel: var(--radius-panel);
}
```

The exact values are profile decisions. The semantic relationships are core requirements.

## 4. Spacing rhythm

Use spacing to communicate:

- Relationship.
- Grouping.
- Section boundaries.
- Reading sequence.
- Action hierarchy.

Closer spacing implies stronger relationship. Larger spacing implies a new group or section.

Avoid using borders, cards, and shadows to compensate for weak spacing hierarchy.

## 5. Section spacing

Recommended intent:

```text
space-section-sm  compact support sections, notices, secondary bands
space-section-md  ordinary content sections
space-section-lg  major page transitions and high-priority conversion sections
```

A section must not use large vertical padding solely to create visual drama. On mobile, essential content and the primary action should remain reachable without an unnecessarily tall hero or spacer.

## 6. Content width

Use:

- `content-narrow` for focused forms, notices, and long-form reading.
- `content-default` for ordinary page sections.
- `content-wide` for galleries, comparison layouts, and data-heavy screens.

A wide container may contain narrower text measures. Do not force paragraphs to span the complete content container.

## 7. Control and target sizing

Control height and target size are related but not identical.

- Text inputs, selects, and primary buttons use a touch-friendly height.
- Icon-only controls provide sufficient target area even when the visible icon is smaller.
- Inline text links may be smaller than the general target recommendation when surrounding spacing prevents accidental activation.
- Dense interfaces document justified reductions and retain keyboard and zoom usability.
- Adjacent small controls include enough spacing to remain distinguishable.

Use [`accessibility.md`](accessibility.md) for target-size and focus requirements.

## 8. Radius

Radius roles describe component category, not arbitrary preference.

```text
radius-control  inputs, buttons, compact controls
radius-card     cards and grouped content
radius-panel    large panels, drawers, and modal surfaces
radius-pill     badges, chips, and deliberate capsule controls
```

Do not mix many unrelated radius values in one profile. A pill shape is not the default for every action or field.

## 9. Elevation and shadow

Use elevation only when it clarifies:

- Layering.
- Interactivity.
- Temporary surfaces.
- Separation from an adjacent surface.

```text
shadow-card      subtle persistent surface separation
shadow-elevated  dropdowns, raised panels, and active floating controls
shadow-overlay   dialogs and high-priority temporary surfaces
```

A border or surface change is often preferable to a heavy shadow.

Shadows must not be the only indication of component boundaries or focus.

## 10. Layering

Use semantic layer roles rather than arbitrary `z-index` values.

Expected order:

```text
base < sticky < dropdown < overlay < modal < toast < tooltip
```

Rules:

- A component uses the lowest layer that satisfies its behavior.
- Child stacking contexts are considered before increasing a global layer.
- Tooltips must not appear behind dialogs that own the current interaction.
- Toasts must not obscure modal actions or field errors.
- Sticky navigation and mobile action bars must not cover focused content.
- Background content is inert or unreachable while a modal is active.

## 11. Responsive behavior

- Avoid compressing desktop grids onto mobile.
- Reduce section spacing proportionately rather than eliminating hierarchy.
- Controls wrap or stack before labels become cramped.
- Sticky controls reserve enough space to avoid obscuring content.
- Responsive source order remains logical.
- Fixed-width cards and controls do not create horizontal scrolling.
- Long text, localization, and increased text spacing are tested.

## 12. Density modes

A product may define comfortable and compact density modes when the distinction is real and documented.

A compact mode may reduce internal spacing but must preserve:

- Minimum readable type.
- Keyboard focus.
- Target size where required.
- Error and hint visibility.
- Clear grouping.
- Consistent component meaning.

Marketing pages should not adopt dense administrative spacing merely for consistency with dashboards.

## 13. Profile record

Each active profile documents:

- Base spacing scale.
- Section spacing values.
- Content widths.
- Control sizes.
- Radius character.
- Border and shadow character.
- Layer mapping.
- Density variations.
- Any justified exceptions.

## 14. Review checklist

- Is a deliberate spacing scale used?
- Does spacing communicate grouping and hierarchy?
- Are sections substantial without excessive empty space?
- Are text measures appropriate?
- Are controls and targets usable on touch and at zoom?
- Are radius and shadow values consistent?
- Does elevation communicate real layering?
- Are semantic layer roles used instead of arbitrary z-index escalation?
- Do sticky and fixed elements avoid obscuring content and focus?
- Does the layout survive long content, localization, narrow widths, and increased text spacing?
