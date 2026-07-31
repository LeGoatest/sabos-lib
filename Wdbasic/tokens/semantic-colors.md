# WDBASIC Semantic Color Tokens

Color tokens describe purpose, not a literal hue or industry.

## Required roles

```text
brand-primary
brand-secondary
action-primary
action-primary-hover
action-primary-active
action-secondary
action-secondary-hover
surface
surface-muted
surface-strong
surface-inverse
text-primary
text-secondary
text-muted
text-inverse
border
border-strong
focus
success
success-surface
warning
warning-surface
danger
danger-surface
info
info-surface
disabled
```

## Rules

- Components consume semantic roles, not raw palette names.
- Values are centrally configurable.
- Every foreground/background pair is tested in context.
- State roles define hover, active, focus, disabled, error, and success behavior where relevant.
- No information is communicated by color alone.
- Action color remains scarce enough to preserve hierarchy.
- Danger is reserved for destructive actions and errors.
- Success is reserved for confirmed positive state.
- Muted text must still meet the required contrast for its size and context.

## Tailwind mapping example

```css
@theme {
  --color-brand-primary: var(--brand-primary);
  --color-brand-secondary: var(--brand-secondary);
  --color-action-primary: var(--action-primary);
  --color-action-primary-hover: var(--action-primary-hover);
  --color-surface: var(--surface);
  --color-surface-muted: var(--surface-muted);
  --color-text-primary: var(--text-primary);
  --color-text-secondary: var(--text-secondary);
  --color-border: var(--border);
  --color-focus: var(--focus);
  --color-success: var(--success);
  --color-warning: var(--warning);
  --color-danger: var(--danger);
  --color-info: var(--info);
}
```

## Palette separation

A project may retain raw palette tokens for authoring, but public component contracts should consume semantic aliases.

```text
Raw palette → semantic role → component
```

Changing the profile should ordinarily require remapping roles, not editing every component.

## Contrast validation

Validate at minimum:

- Body text on each surface.
- Muted text on each surface.
- Links in default, hover, visited, and focus states.
- Primary and secondary action text.
- Disabled controls.
- Borders and meaningful graphical objects.
- Focus indicators against adjacent colors.
- Status text and icons.

Color alone must never distinguish success, warning, error, selection, required state, or current navigation.
