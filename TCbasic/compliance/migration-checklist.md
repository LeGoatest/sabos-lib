# Migration Checklist

Use this checklist for Tailwind CSS v3-to-v4 upgrades and for moving utility-heavy templates into the TCBasic semantic layer.

Official upstream guide: https://tailwindcss.com/docs/upgrade-guide

## 1. Preparation

- Create a dedicated branch.
- Record current Tailwind, Node, plugins, browser targets, and build adapter.
- Capture current generated CSS size and critical visual states.
- Inventory JavaScript configuration, plugins, safelists, and source paths.
- Run the existing test and production build before changing anything.

## 2. Toolchain migration

- Upgrade Node.js to 20 or later.
- Replace v3 CLI usage with `@tailwindcss/cli`.
- Replace the v3 PostCSS plugin with `@tailwindcss/postcss`.
- Remove Tailwind-only `postcss-import` and Autoprefixer dependencies when no other plugin needs them.
- Use `@tailwindcss/vite` only when the consumer already uses Vite.
- Run `npx @tailwindcss/upgrade` when appropriate and review every generated change.

## 3. CSS-first configuration

- Replace `@tailwind` directives with `@import "tailwindcss"`.
- Move theme configuration into `@theme` or `@theme inline`.
- Load any unavoidable legacy config explicitly with `@config`.
- Load compatible legacy plugins with `@plugin`.
- Replace deprecated `theme()` usage with CSS variables where possible.
- Replace v3 safelists with controlled `@source inline()` candidates.

## 4. Source detection

- Verify all templates, fragments, components, and scripts are detected.
- Replace dynamic class fragments with complete literal maps.
- Add explicit `@source` paths for nonstandard or package templates.
- Exclude generated output that causes watch loops.
- Build an example and confirm expected selectors exist.

## 5. Breaking utility changes

Review at minimum:

- Renamed shadow, blur, radius, and ring utilities.
- `outline-none` versus `outline-hidden`.
- Default ring width.
- Default border color using `currentColor`.
- `space-*` and `divide-*` selector changes.
- Left-to-right variant stacking.
- Important modifier placement at the end of the candidate.
- CSS-variable arbitrary value syntax using parentheses.
- Gradient behavior and `via-none`.
- Removed deprecated utilities.
- Container configuration moved to `@utility`.

## 6. Preflight

- Review removed default margins.
- Review border resets and third-party widgets.
- Review heading, list, button, input, and dialog defaults.
- Import Tailwind parts individually only when intentionally disabling Preflight.

## 7. Semantic-layer migration

- Inventory repeated utility groups.
- Classify each abstraction as foundation, element, layout, component, pattern, state, or limited utility.
- Introduce stable semantic classes incrementally.
- Keep local responsive utilities in markup only when they are not recurring contracts.
- Replace literal color/page names with semantic roles.
- Map tokens before copying component rules.

## 8. Browser review

- Confirm the application accepts the Tailwind v4 browser baseline.
- Identify optional modern utilities with narrower support.
- Test required interactions without hover.
- Test reduced motion, forced colors, zoom, and narrow width.

## 9. Validation

```bash
cd TCbasic
npm test
npm run build
npm run build:example
npm pack --dry-run
```

Also perform consumer-specific visual and interaction regression testing.

## 10. Completion record

```yaml
migration:
  from_tailwind: <version>
  to_tailwind: <version>
  build_adapter_before: <adapter>
  build_adapter_after: <adapter>
  automated_upgrade_used: true | false
  dynamic_classes_resolved: true | false
  browser_baseline_accepted: true | false
  visual_regression: passed | failed | pending
  accessibility_review: passed | failed | pending
  deprecated_api_remaining: []
  exceptions: []
```
