# WDBASIC Typography Tokens

Typography tokens define semantic hierarchy and reliable rendering.

## Required roles

```text
font-display
font-body
font-mono
text-xs
text-sm
text-base
text-lg
text-xl
text-heading-sm
text-heading-md
text-heading-lg
text-display
leading-tight
leading-heading
leading-body
measure-narrow
measure-body
measure-wide
```

## Baseline requirements

- Default body text should generally be `16px` to `18px`.
- Mobile form controls and primary buttons must be at least `16px`.
- Body line height should generally remain between `1.5` and `1.65`.
- Long-form text should target approximately `50` to `75` characters per line.
- Ultra-light body weights are prohibited.
- Extended all-capital copy is prohibited.
- Headings must follow a clear consistent scale.
- Font loading must not hide essential content.
- System fallbacks are required.

## Suggested fluid scale

```css
@theme {
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

Values may be adjusted by profile, but hierarchy and mobile readability must remain stable.

## Font-family rules

A robust sans-serif family is the default for interfaces. Approved broadly applicable choices include Inter, Public Sans, Roboto, Source Sans 3, and carefully defined system stacks.

A serif display face may be introduced when it supports the brand and does not reduce clarity. Typography must not depend on a font solely because it is fashionable.

## Loading

- Prefer local or privacy-appropriate delivery when practical.
- Define `font-display` behavior.
- Include metric-compatible fallbacks where useful.
- Avoid loading unused weights and styles.
- Do not place essential symbols only in a custom icon font.

## Content rules

- Use sentence case for most interface text.
- Keep action labels specific and concise.
- Avoid justified body text.
- Avoid extreme tracking in long text.
- Preserve heading hierarchy independently of visual size.
