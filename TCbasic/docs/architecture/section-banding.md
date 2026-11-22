# Section Banding: Semantic Surface Styling

> **Status:** Optional adoption guidance; no new public class or token contract  
> **Experience rationale:** [WDBASIC section banding and visual rhythm](../../../Wdbasic/docs/experience-evaluation/section-banding.md)  
> **Reference source:** [Section layout](../../src/layout/section.css)

## Ownership

Section banding combines layout sections with existing surface roles to create visual rhythm. It is a **page-composition choice**, not a reason to add an alternate color system, a mandatory `nth-child` background rule, or a separate card around every section.

WDBASIC owns the experience rationale; TCBasic owns semantic naming and styling architecture. An adopting site owns its section order, media, token values, and exceptions.

## Existing primitives

The TCBasic reference already provides:

- `.layout-section`: responsive vertical spacing, **without** an assigned background color.
- `.layout-section-muted`: optional solid band using the existing `bg-surface-muted` semantic token.
- `.pattern-call-to-action`: a separate existing CTA composition, with its own established background and foreground roles.

For example:

```html
<section class="layout-section" aria-labelledby="intro-heading">
  <h2 id="intro-heading">Introduction</h2>
</section>
<section class="layout-section layout-section-muted" aria-labelledby="details-heading">
  <h2 id="details-heading">Details</h2>
</section>
<section class="layout-section" aria-labelledby="next-heading">
  <h2 id="next-heading">Next steps</h2>
</section>
```

This shows **available styling**, not a required sequence. Inherited canvas and solid bands may repeat wherever the content hierarchy calls for them.

## Media-backed and parallax sections

A media-backed band is an optional **composition** using an appropriate asset and a readable foreground. The adopting project should supply a semantic, reusable class for its real media treatment only when necessary; do not invent an unimplemented universal parallax class in TCBasic.

- Keep readable content in the DOM and meaningful source order; an image background is not a substitute for accessible content.
- Select overlays/foreground colors from established theme roles with verified contrast against the actual media.
- Treat parallax as optional visual enhancement. Provide a still-image fallback for reduced motion and environments without reliable fixed-background support.
- Avoid unnecessary scroll listeners, synchronous layout reads, oversized assets, and deferred rendering of the section's content.
- Never make background-image motion, JavaScript, or exact scroll position a prerequisite for reading or navigation.

## Token and class policy

1. Prefer existing `background`, `surface`, `surface-muted`, and appropriate foreground roles before adding new tokens; see [semantic tokens](../tokens/semantic-tokens.md).
2. Reuse `.layout-section` and its documented modifiers instead of duplicating the same spacing declarations for every page section.
3. Keep specialized visual treatments in a suitable layout/pattern layer and refer to them through complete static class names.
4. Do not use `section:nth-child(even)` as a universal styling rule: section order may change across pages or responsive compositions.
5. Do not force the CTA to share a solid band's color. Its existing semantic composition remains independently owned.

## Review

Confirm section contrast and focus visibility, responsive image crops, reduced-motion behavior, sensible media loading, and continuity at boundaries. A successful Tailwind build does not itself establish readability, motion accessibility, or good page composition.

This guidance introduces **no new CSS classes, tokens, package dependencies, or production workflow requirements**.
