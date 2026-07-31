# WDBASIC Agent Instructions

These instructions apply to every automated agent, coding assistant, reviewer, and contributor editing files governed by WDBASIC.

## Required reading order

Before changing architecture, markup, styling, components, accessibility, or conversion behavior, read:

1. `Wdbasic/architecture_rules.md`
2. `Wdbasic/wdbasic_v2.md`
3. `docs/TAILWIND_PATTERN.md`
4. Relevant files under `Wdbasic/tokens/`
5. `Wdbasic/components/component-contracts.md`
6. The active file under `Wdbasic/profiles/`
7. Product-specific documentation

## Authority

- Architecture rules win when documents conflict.
- WDBASIC core governs universal presentation, accessibility, trust, conversion, and component behavior.
- Token contracts govern semantic values and state roles.
- Component contracts govern reusable markup and fragment behavior.
- Profiles may customize appearance but may not weaken core requirements.
- Product-specific exceptions must be documented and narrowly scoped.

## Implementation rules

Agents must:

- Preserve server-rendered primary content.
- Prefer native semantic HTML.
- Use HTMX for server-owned interaction.
- Keep JavaScript local and non-authoritative.
- Keep reusable styling in semantic Tailwind utilities or component classes.
- Use semantic token roles rather than unexplained values.
- Preserve keyboard, focus, screen-reader, and non-JavaScript behavior.
- Implement complete loading, empty, error, success, disabled, hover, focus, active, and selected states when relevant.
- Keep proof and claims factual.
- Maintain meaningful responsive source order.
- Validate affected paths after changes.

Agents must not:

- Add a client-side router for ordinary server-rendered pages.
- Generate primary public content only in JavaScript.
- Use ARIA to imitate semantics already provided by native HTML.
- Add partial ARIA widget patterns.
- Scatter repeated Tailwind utility piles through templates.
- Put styling logic in JavaScript.
- Fabricate reviews, credentials, guarantees, awards, customer logos, or statistics.
- weaken contrast, keyboard access, focus visibility, or form labeling.

## Change protocol

For a governed change:

1. Identify the controlling contract.
2. Inspect the existing implementation and state variants.
3. Change the smallest coherent set of files.
4. Update documentation when a contract or reusable pattern changes.
5. Run available formatting, build, accessibility, and test commands.
6. Report changed files, validation performed, and any unresolved exception.

Do not invent a replacement architecture or styling pattern when an existing WDBASIC contract applies.
