# TCBasic Standards Registry

> **Status:** Binding applicability registry  
> **Last reviewed:** 2026-08-02

TCBasic records upstream Tailwind CSS and web-platform assumptions separately from TCBasic's own practitioner positions and contracts.

SABOS Lib does not install or build Tailwind. Version/tool references below describe the architecture and adopter environment the current reference material was written against; they are not repository dependencies.

## 1. Tailwind CSS baseline

| Subject | Baseline | TCBasic interpretation |
| --- | --- | --- |
| Tailwind CSS | v4.x; reference material reviewed against 4.3.3 | CSS-first configuration concepts are the baseline. |
| CLI | `@tailwindcss/cli` v4.x | Supported adopter tooling option. |
| PostCSS | `@tailwindcss/postcss` v4.x with PostCSS 8.x | Supported adopter tooling option. |
| Vite | `@tailwindcss/vite` v4.x | Optional adopter/toolchain integration. |

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

The current TCBasic guidance records Tailwind CSS v4's modern-browser baseline as:

- Chrome 111 or later.
- Safari 16.4 or later.
- Firefox 128 or later.

This is an upstream/tooling baseline, not proof that any particular adopter application has been tested in those browsers.

See [`compliance/browser-and-reference-matrix.md`](compliance/browser-and-reference-matrix.md).

## 3. CSS platform assumptions

TCBasic guidance may rely on modern CSS concepts including:

- native cascade layers;
- registered custom properties through `@property`;
- `color-mix()` and OKLCH colors;
- modern media and feature queries;
- container queries;
- CSS nesting as supported by the adopter's Tailwind/tooling path.

Use a feature only when its support fits the adopter's declared compatibility profile.

## 4. Directive status

| Directive or function | Status | TCBasic use |
| --- | --- | --- |
| `@import` | Required concept | Loads Tailwind and local CSS modules in adopter implementations. |
| `@theme` / `@theme inline` | Required concept | Defines or maps design tokens. |
| `@source` | Supported | Adds, removes, or safelists source candidates. |
| `@utility` | Supported | Registers reusable utilities that participate in variants. |
| `@custom-variant` | Supported | Registers recurring state or theme selectors. |
| `@variant` | Supported | Applies Tailwind variants inside custom CSS. |
| `@reference` | Supported where applicable | Makes theme/utility context available without duplicate emission. |
| `@config` | Legacy-only | Loads an explicitly required JavaScript config during migration. |
| `@plugin` | Legacy/plugin bridge | Loads a compatible plugin in adopter environments. |
| `theme()` | Deprecated upstream | Prefer CSS theme variables. |
| `@tailwind` directives | Prohibited in TCBasic v4 guidance | Tailwind v3 syntax. |

## 5. Source authority

Apply sources in this order:

1. [`architecture/rules.md`](architecture/rules.md)
2. [`../README.md`](../README.md)
3. This registry
4. Binding TCBasic domain contracts
5. Explicit practitioner positions
6. Active adoption profile
7. Reference source under [`../src/`](../src/)
8. Official Tailwind CSS documentation
9. Framework/tool-specific documentation
10. Explicit reviewed exceptions

When upstream behavior changes, update this registry and affected guidance/contracts intentionally.

## 6. Review triggers

Review this registry when:

- Tailwind publishes a relevant minor or major release;
- upstream browser requirements change;
- a directive or function is added, deprecated, or removed;
- CLI, PostCSS, Vite, or framework-adapter behavior materially changes;
- a TCBasic contract begins relying on a different upstream behavior.

## 7. Evidence record

```yaml
tcbasic:
  tailwind_reference: 4.3.3
  browser_baseline:
    chrome: 111
    safari: 16.4
    firefox: 128
  tooling_documented:
    - cli
    - postcss
    - vite
  last_reviewed: 2026-08-02
  source_ref: <commit-or-tag>
```
