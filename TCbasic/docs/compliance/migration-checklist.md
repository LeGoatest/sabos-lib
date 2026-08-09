# Migration Checklist

Use this checklist in an **adopting project** for Tailwind CSS v3-to-v4 upgrades and for moving utility-heavy templates toward the TCBasic semantic architecture.

Official upstream guide: https://tailwindcss.com/docs/upgrade-guide

SABOS Lib itself does not run these project build commands; this document describes adopter work.

## 1. Preparation

- Create an appropriate change boundary in the adopting project.
- Record current Tailwind, Node/tooling, plugins, browser targets, and build adapter.
- Capture current generated CSS size and critical visual states when useful.
- Inventory JavaScript configuration, plugins, safelists, and source paths.
- Run the adopter's existing tests/production build before changing anything when available.

## 2. Toolchain migration

- Verify the Node/tool versions required by the Tailwind version being adopted.
- Replace v3 CLI usage with the applicable Tailwind v4 CLI package where CLI is used.
- Replace the v3 PostCSS plugin with `@tailwindcss/postcss` where PostCSS is used.
- Remove Tailwind-only `postcss-import` and Autoprefixer dependencies when the adopter no longer needs them.
- Use `@tailwindcss/vite` only when the consumer already uses Vite and that adapter is appropriate.
- Use Tailwind's upgrade tooling only when appropriate and review generated changes.

## 3. CSS-first configuration

- Replace v3 `@tailwind` directives with the Tailwind v4 import model.
- Move applicable theme configuration into `@theme` or `@theme inline`.
- Load unavoidable legacy configuration explicitly with `@config` during controlled migration.
- Load compatible legacy plugins with `@plugin` when still required.
- Replace deprecated `theme()` usage with CSS variables where appropriate.
- Replace broad safelists with controlled source declarations/candidates.

## 4. Source detection

- Verify all templates, fragments, components, and scripts are detected by the adopter's Tailwind setup.
- Replace dynamic class fragments with complete literal maps.
- Add explicit `@source` paths for nonstandard template locations where needed.
- Exclude generated output that causes watch loops or false candidates.
- Build the adopting project and confirm expected selectors where a real build is available.

See [`../architecture/source-detection.md`](../architecture/source-detection.md).

## 5. Breaking utility changes

Review applicable upstream changes including:

- renamed shadow, blur, radius, and ring utilities;
- `outline-none` versus `outline-hidden`;
- ring defaults;
- border-color behavior;
- `space-*` and `divide-*` selector changes;
- variant stacking/order behavior;
- important modifier placement;
- CSS-variable arbitrary-value syntax;
- gradient behavior;
- removed deprecated utilities;
- container configuration changes.

Do not treat this list as a substitute for the upstream guide for the exact Tailwind version being migrated.

## 6. Preflight

- Review default margin/reset changes.
- Review border resets and third-party widgets.
- Review heading, list, button, input, and dialog defaults.
- Import Tailwind parts individually only when intentionally changing Preflight behavior.

## 7. Semantic-architecture migration

- Inventory repeated utility groups.
- Classify each abstraction as foundation, element, layout, component, pattern, state, or limited utility.
- Introduce stable semantic classes incrementally.
- Keep local responsive utilities in markup only when they remain truly local and readable.
- Replace literal color/page/customer names with semantic roles.
- Map tokens before duplicating or forking component rules.
- Compare decisions with [`../architecture/rules.md`](../architecture/rules.md) and the reference CSS under [`../../src/`](../../src/).

## 8. Browser and accessibility review

- Confirm the adopter accepts the browser baseline implied by its Tailwind/tool choices.
- Identify optional modern features with narrower support.
- Test required interactions without hover.
- Review reduced motion, forced colors, zoom, narrow width, keyboard behavior, and native semantics as applicable.

See [`browser-and-reference-matrix.md`](browser-and-reference-matrix.md).

## 9. Adopter validation

Run the **adopting project's** real validation commands. Examples might include its existing tests, Tailwind build, visual regression, accessibility review, or browser matrix.

Record the commands/procedures actually performed rather than substituting SABOS Lib commands that do not exist.

## 10. Completion record

```yaml
migration:
  adopter: <project-or-environment>
  tcbasic_source_ref: <commit-or-tag>
  from_tailwind: <version>
  to_tailwind: <version>
  build_adapter_before: <adapter-or-none>
  build_adapter_after: <adapter-or-none>
  automated_upgrade_used: true | false
  dynamic_classes_resolved: true | false | not_applicable
  browser_baseline_accepted: true | false | pending
  consumer_build: passed | failed | not_tested
  visual_regression: passed | failed | pending | not_tested
  accessibility_review: passed | failed | pending | not_tested
  deprecated_api_remaining: []
  exceptions: []
```
