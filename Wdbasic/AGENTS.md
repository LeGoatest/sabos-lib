# WDBASIC Agent Instructions

> **Canonical framework entry point:** [`README.md`](README.md)

These instructions apply to every automated agent, coding assistant, reviewer, and contributor editing files governed by WDBASIC.

## 1. Required reading order

Before changing architecture, markup, styling, components, accessibility, conversion behavior, or documentation, read:

1. [`architecture_rules.md`](architecture_rules.md)
2. [`README.md`](README.md)
3. [`../docs/TAILWIND_PATTERN.md`](../docs/TAILWIND_PATTERN.md)
4. Relevant files under [`tokens/`](tokens/)
5. [`components/component-contracts.md`](components/component-contracts.md)
6. The active file under [`profiles/`](profiles/)
7. Product-specific documentation and approved exceptions

The former path `Wdbasic/wdbasic_v2.md` is obsolete. Do not recreate or reference it.

## 2. Authority

- Architecture rules win when documents conflict.
- `README.md` is the canonical WDBASIC v2 entry point and core contract.
- Token contracts govern semantic values, sizing, accessibility, and state roles.
- Component contracts govern reusable markup and fragment behavior.
- Profiles may customize appearance but may not weaken core requirements.
- Product-specific exceptions must be explicit, narrow, owned, and reviewable.
- When requirements appear inconsistent, preserve the stricter requirement until the documentation is corrected.

## 3. Scope resolution

Before editing, determine:

- Which routes, components, fragments, stylesheets, and templates are affected.
- Which WDBASIC documents control the change.
- Which design profile is active.
- Whether the change alters a public workflow, accessibility behavior, search output, conversion path, or reusable contract.
- Whether a documented exception already exists.

Do not infer an active profile from colors alone. Resolve it from project documentation or the adoption record described in [`README.md`](README.md).

## 4. Implementation rules

Agents must:

- Preserve server-rendered primary content.
- Prefer native semantic HTML.
- Use HTMX for server-owned interaction.
- Keep JavaScript local, reconstructable, and non-authoritative.
- Keep reusable styling in semantic Tailwind utilities or component classes.
- Use semantic token roles rather than unexplained values.
- Preserve keyboard, focus, screen-reader, direct-request, and non-JavaScript behavior.
- Implement complete loading, empty, error, success, disabled, hover, focus, active, selected, expanded, and read-only states when relevant.
- Return accurate accessible names, roles, states, values, relationships, and announcements after every server render or fragment replacement.
- Keep proof, statistics, credentials, and claims factual and attributable.
- Maintain meaningful responsive source order.
- Preserve correct URLs, HTTP status codes, validation, and authorization boundaries.
- Validate affected paths after changes.

Agents must not:

- Add a client-side router for ordinary server-rendered pages.
- Generate primary public content only in JavaScript.
- Trust client-supplied role, ownership, price, status, or authorization values.
- Use ARIA to imitate semantics already provided by native HTML.
- Add partial ARIA widget patterns.
- Scatter repeated Tailwind utility piles through templates.
- Put reusable styling logic in JavaScript.
- Fabricate reviews, credentials, guarantees, awards, customer logos, project counts, or statistics.
- Weaken contrast, keyboard access, focus visibility, form labeling, or truthful-content requirements.
- Create undocumented token aliases, component forks, or profile exceptions.
- Claim compliance based only on Tailwind, HTMX, semantic class names, or visual similarity.

## 5. Documentation synchronization

When a change alters a reusable rule or contract, update all affected documentation in the same change set.

At minimum, check:

- [`README.md`](README.md) for framework-wide behavior.
- [`architecture_rules.md`](architecture_rules.md) for ownership, rendering, routing, security, or HTTP behavior.
- [`tokens/`](tokens/) for semantic roles or accessibility requirements.
- [`components/component-contracts.md`](components/component-contracts.md) for reusable component or fragment behavior.
- [`profiles/`](profiles/) for market-specific presentation.
- [`../docs/TAILWIND_PATTERN.md`](../docs/TAILWIND_PATTERN.md) for Tailwind organization and naming.

Do not leave stale filenames, broken relative links, duplicated authorities, or contradictory examples.

## 6. Change protocol

For a governed change:

1. Identify the controlling contract.
2. Resolve the active profile and WDBASIC source revision.
3. Inspect the existing implementation and state variants.
4. Identify baseline and enhanced workflows.
5. Change the smallest coherent set of files.
6. Update documentation when a contract or reusable pattern changes.
7. Run available formatting, build, accessibility, behavior, and test commands.
8. Review direct-load, refresh, no-JavaScript, error, and narrow-screen behavior where relevant.
9. Report changed files, validation performed, and unresolved exceptions.

Do not invent a replacement architecture or styling pattern when an existing WDBASIC contract applies.

## 7. Required report

A completed agent report should state:

```text
Controlling contracts:
Active profile:
Files changed:
Behavior changed:
Validation performed:
Accessibility checks:
Fallback verified:
Exceptions or unresolved risks:
```

Do not report a check as passed unless it was actually performed.

## 8. Review stop conditions

Stop and surface the issue rather than silently proceeding when:

- The active profile cannot be determined and the decision materially changes implementation.
- A requested change conflicts with architecture, security, accessibility, or truthful-content requirements.
- Required proof or business data is unavailable.
- A fragment depends on client state the server cannot reconstruct.
- A custom widget lacks a complete keyboard and semantic pattern.
- An exception is necessary but has no owner, fallback, or review condition.

A partial implementation must be labeled as partial and must not be described as WDBASIC-conformant.
