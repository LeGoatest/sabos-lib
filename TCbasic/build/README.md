# TCBasic Build Contracts

This directory governs how TCBasic is scanned, compiled, tested, packaged, and released.

## Documents

- [`source-detection.md`](source-detection.md) — automatic scanning, explicit sources, exclusions, and safelisting.
- [`tooling.md`](tooling.md) — CLI, PostCSS, Vite, and adapter boundaries.
- [`package-and-release.md`](package-and-release.md) — package contents, exports, generated distributions, and release procedure.

## Core rules

1. Run package commands from `TCbasic/`.
2. Use Tailwind CSS v4 build packages.
3. Treat `src/` as source and `dist/` as generated output.
4. Keep class candidates statically detectable.
5. Keep optional framework adapters out of package runtime dependencies.
6. Test package exports and generated CSS before release.
7. Pin the package version and verify the release tag matches it.

## Supported build paths

| Adapter | Support | Package |
| --- | --- | --- |
| Tailwind CLI | Core | `@tailwindcss/cli` |
| PostCSS | Core | `@tailwindcss/postcss` and `postcss` |
| Vite | Optional | `@tailwindcss/vite` in the consuming project |
| Standalone CLI | Optional consumer path | Official Tailwind standalone executable |
| Play CDN | Demonstration only | Not for production |

## Required validation

```bash
cd TCbasic
npm install
npm test
npm run build
npm run build:example
```

A release additionally verifies package contents and the semantic version tag.
