# WDBASIC Semantic Color Tokens

> **Authority:** Binding semantic color and state contract  
> **Core entry point:** [`../README.md`](../README.md)  
> **Accessibility dependency:** [`accessibility.md`](accessibility.md)

Color tokens describe purpose, not a literal hue, campaign, page, trade, or implementation detail.

## 1. Required roles

```text
brand-primary
brand-secondary
brand-accent
action-primary
action-primary-hover
action-primary-active
action-primary-text
action-secondary
action-secondary-hover
action-secondary-active
action-secondary-text
surface
surface-muted
surface-strong
surface-inverse
surface-overlay
text-primary
text-secondary
text-muted
text-inverse
text-link
text-link-hover
border
border-strong
border-interactive
focus
focus-offset
success
success-text
success-surface
warning
warning-text
warning-surface
danger
danger-text
danger-surface
info
info-text
info-surface
disabled
on-disabled
selection
on-selection
```

A profile may add specialized semantic roles when a real reusable need exists, but it must not replace universal roles with literal color names.

## 2. Rules

- Components consume semantic roles, not raw palette names.
- Values are centrally configurable.
- Every foreground/background pair is tested in context.
- State roles define hover, active, focus, disabled, error, selected, and success behavior where relevant.
- No information is communicated by color alone.
- Action color remains scarce enough to preserve hierarchy.
- Danger is reserved for destructive actions and errors.
- Success is reserved for confirmed positive state.
- Warning communicates caution, not decoration.
- Muted text still meets the required contrast for its size and context.
- Brand colors that fail contrast may remain decorative but may not carry required text, control, status, or focus meaning.

## 3. Token layers

Use three conceptual layers:

```text
Raw palette → semantic role → component contract
```

Example:

```text
blue-800 → brand-primary → site-header
orange-700 → action-primary → site-button--primary
slate-50 → surface-muted → proof-strip
```

A component must not bypass the semantic layer to consume a palette color directly unless the value is purely decorative and the exception is documented.

## 4. Tailwind mapping example

```css
:root {
  --brand-primary: oklch(0.38 0.09 250);
  --action-primary: oklch(0.55 0.18 45);
  --action-primary-hover: oklch(0.49 0.17 45);
  --action-primary-text: white;
  --surface: white;
  --surface-muted: oklch(0.98 0.005 250);
  --text-primary: oklch(0.20 0.025 250);
  --text-secondary: oklch(0.37 0.025 250);
  --focus: oklch(0.58 0.19 255);
}

@theme inline {
  --color-brand-primary: var(--brand-primary);
  --color-action-primary: var(--action-primary);
  --color-action-primary-hover: var(--action-primary-hover);
  --color-action-primary-text: var(--action-primary-text);
  --color-surface: var(--surface);
  --color-surface-muted: var(--surface-muted);
  --color-text-primary: var(--text-primary);
  --color-text-secondary: var(--text-secondary);
  --color-focus: var(--focus);
}
```

Use `@theme inline` when semantic Tailwind tokens reference runtime CSS variables. Keep raw palette ownership separate from semantic aliases.

## 5. State matrix

Every interactive component identifies the roles used for:

| State | Required consideration |
|---|---|
| Default | Text, icon, surface, and border contrast. |
| Hover | Detectable without becoming the only signal. |
| Focus-visible | Visible against the component and adjacent surface. |
| Active | Distinct from hover and selected state. |
| Selected/current | Communicated through more than color alone. |
| Disabled | Understandable and not confused with low-contrast enabled content. |
| Loading | Maintains action identity and communicates pending state. |
| Error/danger | Includes text, icon, or semantic wording in addition to color. |
| Success | Represents confirmed state, not anticipated outcome. |

## 6. Surface pairing

Document intended foreground roles for each reusable surface.

Example:

```yaml
surfaces:
  surface:
    text: text-primary
    secondary_text: text-secondary
    border: border
  surface-inverse:
    text: text-inverse
    secondary_text: text-inverse-muted
    border: border-inverse
  danger-surface:
    text: danger-text
    icon: danger
```

Do not assume a token passes because it passed against a different surface.

## 7. Contrast validation

Validate at minimum:

- Body text on each surface.
- Muted text on each surface.
- Links in default, hover, visited, active, and focus states.
- Primary and secondary action text.
- Icon-only controls.
- Disabled controls.
- Borders and meaningful graphical objects.
- Focus indicators against both the control and surrounding surface.
- Status text, icons, and surfaces.
- Selected rows, tabs, cards, and navigation items.
- Text over images, gradients, or video.

Color alone must never distinguish success, warning, error, selection, required state, current navigation, availability, or destructive meaning.

## 8. Dark and alternate themes

An alternate theme remaps semantic roles; it does not introduce a second unrelated component palette.

Each theme must define and validate:

- Every required role.
- Browser-native control treatment.
- Focus and selection colors.
- Status surfaces and text.
- Media overlays.
- Disabled content.
- Forced-colors fallback where appropriate.

Do not infer dark-mode values by mechanically inverting light-mode colors.

## 9. Forced colors and system adaptation

Components must remain understandable when user-agent or operating-system colors replace authored colors.

- Do not remove outlines without an equivalent focus indicator.
- Use borders or system-compatible indicators for selected and checked state.
- Avoid background images as the only control boundary.
- Review icons and SVGs under forced-color conditions.

## 10. Profile record

Each active design profile documents:

- Values for all required roles.
- Foreground and surface pairings.
- Action hierarchy.
- Status color policy.
- Alternate-theme mappings when supported.
- Contrast validation results or test location.
- Any decorative raw palette values and their limited purpose.

## 11. Review checklist

- Are components consuming semantic rather than literal roles?
- Are all required roles defined?
- Are real foreground/background combinations tested?
- Are hover, focus, active, selected, and disabled states distinguishable?
- Is information conveyed through more than color?
- Are status roles used only for truthful state?
- Do alternate themes preserve the same semantic meaning?
- Does forced-colors behavior remain understandable?
