# TCBasic Build Agent Instructions

> **Status:** Binding for work under `TCbasic/build/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Build entry point:** [`README.md`](README.md)

This directory owns source detection, build adapters, package contents, generated distributions, and release contracts.

## Preserve

Agents MUST preserve:

- Tailwind CSS v4 CSS-first build behavior;
- `src/` as canonical source and `dist/` as generated output;
- static/detectable class candidates;
- CLI and PostCSS as core adapters unless the governing contract changes;
- optional adapters as optional rather than required runtime dependencies;
- package exports and release/version integrity.

Do not hand-edit `dist/` as a substitute for rebuilding from source.

## Validation

Run applicable commands from `TCbasic/`:

```sh
npm test
npm run build
npm run build:example
```

Release-related changes must also verify package contents/exports and version/tag consistency as defined by the build contracts.

## Changelog

Notable build/package contract changes update [`../CHANGELOG.md`](../CHANGELOG.md).
