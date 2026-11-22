# Section Banding and Visual Rhythm

> **Status:** Optional experience-composition pattern; informative, not a core invariant  
> **Domain:** Experience evaluation (hierarchy, grouping, and usability)  
> **Styling specialization:** [TCBasic section banding](../../../TCbasic/docs/architecture/section-banding.md)

## Definition

**Section banding** (also called **alternating section backgrounds**) is the intentional variation of background treatments between page sections. It creates **visual rhythm**: readers can perceive content groups, transitions, and changes in emphasis while scrolling.

Banding is a presentation technique, **not** a content strategy, required page architecture, conversion sequence, or rule that every adjacent section must use a different background.

## Available treatments

- **Default/inherited canvas:** no section-specific background; the section inherits its surrounding page background.
- **Solid surface band:** a background selected from the site's existing semantic surface roles, rather than an invented color for each section.
- **Media-backed band:** a photograph, illustration, or other suitable image with a legible foreground treatment.
- **Parallax enhancement:** optional depth/motion applied to a media-backed band. The image and content must remain usable without motion or JavaScript.
- **Distinct call to action:** an existing CTA treatment may close the sequence when its content and visual prominence warrant it; banding does not prescribe its color.

An illustrative, **non-mandatory** composition is:

```text
Hero → inherited → solid surface → media-backed (optional parallax)
     → solid surface → inherited → CTA
```

The number of sections, their semantic order, and their backgrounds belong to the actual page's content and established design system. Two adjacent sections may legitimately share the same treatment.

## When to use

Consider banding when a page has multiple substantial content sections and visual grouping improves scanning, orientation, or comprehension. Choose breaks based on information hierarchy, content relationships, and user tasks—not a rigid even/odd selector.

Avoid artificial alternation on short pages, placing every section inside its own card, introducing near-identical new background colors, or relying on color alone to convey meaning.

## Evaluation and safeguards

Review the rendered experience at relevant viewport sizes:

1. **Hierarchy:** background changes support recognizable content boundaries without competing with the headings or primary action.
2. **Tokens:** reuse existing semantic surface/color roles; a new role needs a reusable purpose, not just a new section.
3. **Readability:** text, links, controls, focus indicators, and image overlays retain appropriate contrast in every band.
4. **Semantics:** background treatments do not replace headings, landmark/section semantics, or meaningful DOM order.
5. **Motion:** parallax is progressive enhancement; respect reduced-motion preferences and provide a static, readable fallback. Do not make content or actions depend on the effect.
6. **Performance:** background assets use appropriate dimensions and loading behavior; avoid scroll effects that cause jank or delayed content appearance.
7. **Continuity:** inspect boundaries and transitions, especially at mobile breakpoints and alongside the hero and CTA.

These are qualitative review prompts, not a universal scoring formula or proof of accessibility conformance. Applicable [core invariants](../core-invariants/README.md) continue to govern.

## Responsibility boundary

WDBASIC describes **when and why** a visual grouping pattern can improve the experience. [TCBasic](../../../TCbasic/docs/architecture/section-banding.md) describes semantic Tailwind implementation conventions, and an adopting project's design system selects the actual tokens, images, and composition.
