# TCBasic Standards Registry

> **Status:** Binding registry  
> **Last reviewed:** 2026-08-02

TCBasic is governed by the versions and source hierarchy recorded here. External documentation explains upstream behavior; TCBasic contracts define how this package uses that behavior.

## 1. Tailwind CSS baseline

| Subject | Baseline | TCBasic rule |
| --- | --- | --- |
| Tailwind CSS | v4.x; package currently tested with 4.3.3 | CSS-first configuration is required. |
| Node.js | 20 or later | Required by package engines and Tailwind upgrade tooling. |
| CLI | `@tailwindcss/cli` v4.x | Core supported build adapter. |
| PostCSS | `@tailwindcss/postcss` v4.x with PostCSS 8.x | Core supported integration adapter. |
| Vite | `@tailwindcss/vite` v4.x | Optional adapter; not a package dependency. |

Official references:

- Tailwind CSS documentation: https://tailwindcss.com/docs
- Functions and directives: https://tailwindcss.com/docs/functions-and-directives
- Theme variables: https://tailwindcss.com/docs/theme
- Source detection: https://tailwindcss.com/docs/detecting-classes-in-source-files
- Custom styles and utilities: https://tailwindcss.com/docs/adding-custom-styles
- Upgrade guide: https://tailwindcss.com/docs/upgrade-guide
- Compatibility: https://tailwindcss.com/docs/compatibility
- CLI installation: https://tailwindcss.com/docs/installation/tailwind-cli
- PostCSS installation: https://tailwindcss.com/docs/installation/using-postcss

## 2. Browser baseline

Tailwind CSS v4 depends on modern CSS features and officially targets:

- Chrome 111 or later.
- Safari 16.4 or later.
- Firefox 128 or later.

TCBasic does not claim support below the upstream baseline. A consumer that requires older browsers must either remain on Tailwind CSS 3.4 or establish and test a separate compatibility profile.

See [`compliance/browser-and-build-matrix.md`](compliance/browser-and-build-matrix.md).

## 3. CSS platform assumptions

TCBasic may rely on:

- Native cascade layers.
- Registered custom properties through `@property`.
- `color-mix()` and OKLCH colors.
- Modern media and feature queries.
- Container queries.
- CSS nesting emitted or handled by the Tailwind build.

Use a feature only when its browser support is compatible with the declared consumer profile. Experimental utilities remain optional even when Tailwind exposes them.

## 4. Directive status

| Directive or function | Status | TCBasic use |
| --- | --- | --- |
| `@import` | Required | Loads Tailwind and local CSS modules. |
| `@theme` / `@theme inline` | Required | Defines or maps design tokens. |
| `@source` | Supported | Adds, removes, or safelists source candidates. |
| `@utility` | Supported | Registers reusable utilities that participate in variants. |
| `@custom-variant` | Supported | Registers recurring state or theme selectors. |
| `@variant` | Supported | Applies Tailwind variants inside custom CSS. |
| `@reference` | Supported where applicable | Makes theme and utility context available without emitting duplicate CSS. |
| `@config` | Legacy-only | Loads an explicitly required JavaScript config during migration. |
| `@plugin` | Legacy/plugin bridge | Loads a compatible JavaScript plugin. |
| `theme()` | Deprecated upstream | Prefer CSS theme variables. |
| `@tailwind` directives | Prohibited | Tailwind v3 syntax. |

## 5. Source authority

Apply sources in this order:

1. [`architecture_rules.md`](architecture_rules.md)
2. [`README.md`](README.md)
3. This registry
4. Binding TCBasic subsystem contracts
5. Active TCBasic profile
6. Package source and tests
7. Official Tailwind CSS documentation
8. Framework-specific documentation
9. Explicit, reviewed exceptions

When upstream behavior changes, update this registry, affected contracts, tests, and compatibility evidence together.

## 6. Version review triggers

Review this registry when:

- Tailwind publishes a new minor or major release.
- The minimum browser matrix changes.
- A directive or function is added, deprecated, or removed.
- CLI, PostCSS, Vite, or framework adapter behavior changes.
- Package exports or Node.js requirements change.
- A new TCBasic release is prepared.

## 7. Evidence record

```yaml
tcbasic:
  tailwind_version: 4.3.3
  node_range: ">=20"
  browser_baseline:
    chrome: 111
    safari: 16.4
    firefox: 128
  core_adapters:
    - cli
    - postcss
  optional_adapters:
    - vite
  last_reviewed: 2026-08-02
  source_ref: <commit-or-tag>
```
