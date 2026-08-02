# Browser and Build Matrix

> **Baseline reviewed:** 2026-08-02

## 1. Browser baseline

TCBasic inherits Tailwind CSS v4's official minimum browser targets:

| Browser | Minimum | TCBasic status |
| --- | ---: | --- |
| Chrome | 111 | Required baseline |
| Safari | 16.4 | Required baseline |
| Firefox | 128 | Required baseline |

Official reference: https://tailwindcss.com/docs/compatibility

A consumer may support newer versions only. A consumer may not claim older-version support without a separate tested compatibility plan.

## 2. Feature review

Tailwind v4 relies on modern features including cascade layers, `@property`, and `color-mix()`. Some optional utilities expose newer platform features with narrower support.

Record optional feature use:

| Feature | Used | Fallback or policy | Evidence |
| --- | --- | --- | --- |
| Container queries | yes/no | Baseline or alternate layout | |
| `@starting-style` | yes/no | Non-motion baseline | |
| `field-sizing` | yes/no | Fixed/auto sizing fallback | |
| 3D transforms | yes/no | Flat presentation | |
| P3/OKLCH colors | yes/no | Browser conversion or fallback | |
| `text-wrap: balance` | yes/no | Normal wrapping | |

## 3. Build adapters

| Adapter | Command or configuration | Status |
| --- | --- | --- |
| CLI | `npm run build` | Core |
| CLI example | `npm run build:example` | Core |
| PostCSS | `postcss.config.mjs` with `@tailwindcss/postcss` | Core integration |
| Vite | `@tailwindcss/vite` in consumer | Optional |
| Standalone CLI | Consumer-specific | Optional |

## 4. Package tests

Required automated checks:

- Every local import in `src/index.css` exists.
- Public package export targets exist.
- Source naming boundaries are respected.
- Compiled CSS contains required selectors.
- Compiled CSS contains no unresolved `@apply`.
- Required governance documents exist.
- Relative documentation links resolve.

## 5. Manual review

Automated checks do not replace:

- Visual review of components.
- Keyboard and focus review.
- Forced-colors review.
- Reduced-motion review.
- Consumer framework integration review.
- Browser testing for optional platform features.

## 6. Evidence template

```yaml
matrix:
  source_ref: <commit-or-tag>
  tailwind: 4.3.3
  node: <version>
  operating_system: <runner>
  automated:
    npm_test: passed | failed
    build: passed | failed
    example_build: passed | failed
    package_exports: passed | failed
    documentation_links: passed | failed
  browsers:
    chrome_111_plus: passed | not_tested
    safari_16_4_plus: passed | not_tested
    firefox_128_plus: passed | not_tested
  optional_features: []
  exceptions: []
```
