# Tailwind CSS and TCBasic Glossary

> **Status:** Non-normative  
> **Last reviewed:** 2026-08-02

| Term | Meaning in TCBasic |
| --- | --- |
| `@apply` | Tailwind directive that inlines existing utility declarations into custom CSS. Used inside stable semantic classes; not a token or inheritance system. |
| `@config` | Directive that explicitly loads a legacy JavaScript Tailwind configuration. Transitional in TCBasic. |
| `@custom-variant` | Registers a reusable variant selector or at-rule condition. |
| `@import` | CSS import used by Tailwind v4 to load Tailwind and local modules. |
| `@plugin` | Loads a compatible legacy JavaScript plugin. It does not make the plugin part of TCBasic core automatically. |
| `@reference` | Makes theme variables, utilities, and variants available to another stylesheet without duplicating emitted CSS. Common in component-local styles. |
| `@source` | Adds, excludes, or safelists source candidates for Tailwind scanning. |
| `@theme` | Defines Tailwind theme variables that generate utilities and variants. |
| `@theme inline` | Defines Tailwind variables while substituting referenced CSS-variable values into generated output. Used for semantic mappings. |
| `@utility` | Registers a custom utility that participates in Tailwind utility ordering and variants. |
| `@variant` | Applies a Tailwind variant inside custom CSS. |
| Adapter | Build integration that invokes Tailwind, such as CLI, PostCSS, or Vite. |
| Arbitrary value | A one-off value encoded in a utility candidate, such as `w-[37rem]`. Appropriate for local exceptions, not repeated token roles. |
| Arbitrary variant | A one-off selector or at-rule condition encoded in a class candidate. Repeated forms should become a documented custom variant or semantic class. |
| Candidate | A class-like token Tailwind detects and considers for CSS generation. |
| Cascade layer | Native CSS ordering mechanism used for theme, base, components, and utilities. |
| Component | Reusable interface object with a documented semantic class and HTML contract. |
| Container query | Conditional styling based on a containing element's size rather than the viewport. |
| CSS-first configuration | Tailwind v4 configuration expressed primarily through CSS directives and variables rather than a JavaScript config file. |
| Design token | Named design decision such as a color, font, spacing value, radius, shadow, breakpoint, or motion value. |
| Dynamic class fragment | A candidate assembled from partial strings, such as `bg-${color}-500`. Tailwind cannot reliably detect it; prohibited by TCBasic. |
| Foundation | Lowest TCBasic source layer containing tokens, theme mappings, reset, typography, and accessibility defaults. |
| Functional utility | An `@utility` definition that accepts values or modifiers through functions such as `--value()` and `--modifier()`. |
| Pattern | Larger composition built from layout primitives and components. |
| Preflight | Tailwind's opinionated base reset, automatically included by `@import "tailwindcss"` unless Tailwind parts are imported separately. |
| Raw semantic variable | Consumer-overridable `--semantic-*` CSS variable representing a stable role. |
| Safelist | Explicit candidates generated even when no normal source file contains them. In v4, commonly represented with `@source inline()`. |
| Semantic class | Stable class that names intent, such as `button-primary` or `layout-stack`, while Tailwind utilities implement it. |
| Source detection | Tailwind's plain-text scan of project files for complete candidates. |
| State class | Supplemental class such as `is-loading` or `has-error`. Native and ARIA attributes remain authoritative. |
| Tailwind theme variable | CSS variable in an official namespace, such as `--color-*` or `--breakpoint-*`, that controls utility or variant generation. |
| Utility | Small single-purpose CSS API. It may be built into Tailwind or registered with `@utility`. |
| Variant | Conditional prefix or registered condition such as `hover`, `md`, `aria-expanded`, or `motion-reduce`. |
| Vite | Optional build tool with a first-party Tailwind v4 plugin. It is not required by TCBasic. |

## Deprecated or legacy terms

| Term | Status |
| --- | --- |
| `@tailwind base/components/utilities` | Tailwind v3 syntax; replaced by CSS imports in v4. |
| Automatic JavaScript config detection | Not provided in v4; use `@config` when legacy configuration is unavoidable. |
| `theme()` for ordinary token access | Deprecated upstream; use CSS theme variables when possible. |
| `tailwindcss` as the PostCSS plugin | v3 pattern; v4 uses `@tailwindcss/postcss`. |
| `tailwindcss` package as the CLI | v3 pattern; v4 CLI is provided by `@tailwindcss/cli`. |
| Sass/Less/Stylus preprocessing | Not part of the supported Tailwind v4 workflow. |
