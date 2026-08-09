# WDBASIC Typography Tokens

> **Authority:** Binding typography and readable-rendering contract  
> **Core entry point:** [`../README.md`](../README.md)  
> **Accessibility dependency:** [`accessibility.md`](accessibility.md)

Typography tokens define semantic hierarchy, readable density, resilient font loading, and consistent text behavior across profiles and components.

## 1. Required roles

```text
font-display
font-body
font-mono
font-ui
text-xs
text-sm
text-base
text-lg
text-xl
text-heading-sm
text-heading-md
text-heading-lg
text-display
text-label
text-caption
text-code
leading-tight
leading-heading
leading-body
leading-relaxed
measure-narrow
measure-body
measure-wide
weight-regular
weight-medium
weight-semibold
weight-bold
tracking-tight
tracking-normal
tracking-wide
```

Profiles may map multiple semantic roles to the same value. They must not remove the semantic distinction.

## 2. Baseline requirements

- Default body text should generally be `16px` to `18px`.
- Mobile form controls and primary buttons must be at least `16px`.
- Body line height should generally remain between `1.5` and `1.65`.
- Long-form text should target approximately `50` to `75` characters per line.
- Ultra-light body weights are prohibited.
- Extended all-capital copy is prohibited.
- Headings follow a clear consistent scale.
- Font loading must not hide essential content.
- System fallbacks are required.
- Text remains usable at browser zoom and with increased text spacing.
- Visual size does not replace semantic heading structure.

## 3. Suggested fluid scale

```css
:root {
  --font-display: "Inter", ui-sans-serif, system-ui, sans-serif;
  --font-body: "Inter", ui-sans-serif, system-ui, sans-serif;
  --font-mono: ui-monospace, "SFMono-Regular", Consolas, monospace;
}

@theme inline {
  --font-display: var(--font-display);
  --font-body: var(--font-body);
  --font-mono: var(--font-mono);

  --text-xs: 0.75rem;
  --text-sm: 0.875rem;
  --text-base: 1rem;
  --text-lg: 1.125rem;
  --text-xl: 1.25rem;
  --text-heading-sm: clamp(1.5rem, 2vw, 2rem);
  --text-heading-md: clamp(2rem, 4vw, 3.25rem);
  --text-heading-lg: clamp(2.5rem, 6vw, 4.5rem);
  --text-display: clamp(3rem, 8vw, 6rem);
}
```

Values may be adjusted by profile, but hierarchy, line wrapping, zoom behavior, and mobile readability remain stable.

Avoid a display size that consumes the complete initial mobile viewport or forces essential actions below excessive empty space.

## 4. Font-family rules

A robust sans-serif family is the default for interfaces. Broadly applicable choices include Inter, Public Sans, Roboto, Source Sans 3, and carefully defined system stacks.

A serif display face may be introduced when it supports the brand and does not reduce clarity. Typography must not depend on a font solely because it is fashionable.

Every font selection documents:

- Semantic role.
- Available weights and styles.
- System fallback.
- Loading source.
- Licensing and distribution constraints.
- Language and character coverage.
- Metric or layout-shift considerations.

Do not include a font file in a repository unless its license permits that distribution.

## 5. Loading and fallback

- Prefer local or privacy-appropriate delivery when practical.
- Define `font-display` behavior.
- Include metric-compatible fallbacks where useful.
- Avoid loading unused weights, subsets, and styles.
- Preload only fonts needed for the initial view.
- Do not delay primary text while waiting for a webfont.
- Do not place essential symbols only in a custom icon font.
- Account for layout changes between fallback and loaded fonts.

A font-loading failure must leave the page readable and correctly structured.

## 6. Hierarchy contract

Typography communicates hierarchy through a controlled combination of:

- Semantic heading level.
- Size.
- Weight.
- Line height.
- Spacing.
- Measure.
- Contrast.

Do not use color or size alone to represent document structure.

Use one primary page heading unless a documented application structure requires another pattern. Section headings must form a logical outline independent of their visual treatment.

## 7. Content measure

Use semantic measure roles:

```text
measure-narrow  focused forms, notices, compact explanations
measure-body    long-form paragraphs and ordinary prose
measure-wide    tables, galleries, comparisons, and data-dense layouts
```

Long-form prose should not span the full width of a large screen.

Short labels and headings may use wider visual containers, but their line wrapping must be tested with long words, localization, and increased text spacing.

## 8. Interface text

- Use sentence case for most interface text.
- Keep action labels specific and concise.
- Use consistent labels for the same action.
- Avoid justified body text.
- Avoid extreme tracking in long text.
- Avoid low-contrast uppercase eyebrow text.
- Avoid relying on placeholder text as an input label.
- Use tabular numbers only where aligned numeric comparison benefits.
- Preserve unit, currency, date, and time clarity.

Button labels should describe the result, such as `Request estimate`, rather than generic labels such as `Submit` when a more specific action is available.

## 9. Numbers, code, and technical text

Use `font-mono` only when monospacing improves interpretation, including:

- Code.
- Identifiers.
- File paths.
- Fixed-width technical values.
- Aligned logs or terminal output.

Do not use monospace as a decorative brand treatment for long-form body text.

Numeric displays must preserve readable grouping, units, signs, and accessible context.

## 10. Responsive and zoom behavior

- Type scales fluidly without sudden oversized jumps.
- Text wraps rather than clipping or requiring horizontal scrolling.
- Controls expand for translated or increased-spacing labels.
- Fixed-height text containers are avoided.
- Headings do not overlap media or controls.
- Sticky regions do not obscure enlarged text or focus.
- Mobile inputs retain at least `16px` text to avoid involuntary browser zoom behavior.

Test at the review widths defined in [`../README.md`](../README.md) and at browser zoom.

## 11. Localization and content expansion

Typography and component layouts must tolerate:

- Longer translated labels.
- Non-Latin scripts supported by the product.
- Right-to-left layout when the product claims support.
- Different word-breaking behavior.
- User names, addresses, and business terms longer than examples.
- Variable currency, number, date, and time formats.

A profile font that lacks required character coverage is non-compliant for that locale.

## 12. Profile record

Each active profile documents:

- Display, body, UI, and mono role mapping.
- Available weights.
- System fallbacks.
- Size and line-height adjustments.
- Measure mapping.
- Loading and privacy behavior.
- Language coverage.
- Any justified serif or specialty usage.

## 13. Review checklist

- Are semantic type roles defined?
- Is body text at least `16px` in ordinary use?
- Are controls at least `16px` on mobile?
- Is line height readable?
- Is long-form measure controlled?
- Does heading order remain semantic?
- Are fallbacks defined and usable?
- Are unused weights avoided?
- Does the layout survive zoom, text spacing, localization, and long labels?
- Does font licensing permit the selected delivery method?
