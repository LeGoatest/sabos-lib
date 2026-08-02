# Contributing to TCBasic

## Required reading

Before changing package source, public classes, tokens, exports, examples, tests, or documentation, read:

1. [`architecture_rules.md`](architecture_rules.md)
2. [`README.md`](README.md)
3. [`STANDARDS.md`](STANDARDS.md)
4. [`AGENTS.md`](AGENTS.md) when automated tooling is involved
5. Applicable subsystem contracts
6. The active adoption profile

## Development setup

Run package commands from `TCbasic/`:

```bash
npm install
npm test
npm run build
npm run build:example
npm pack --dry-run
```

## Contribution rules

1. Keep the package framework-independent; framework dependencies belong in consumer projects or isolated examples.
2. Use Tailwind CSS v4 CSS-first syntax.
3. Use semantic, reusable class names rather than page-, color-, customer-, or sequence-specific names.
4. Keep raw values in `src/foundation/tokens.css` and Tailwind theme mappings in `src/foundation/theme.css`.
5. Use `@apply` where it improves stable semantic classes; use `@utility` when a custom primitive should participate in variants.
6. Keep class candidates complete and statically detectable.
7. Prefer native HTML and attributes before state classes or ARIA.
8. Preserve visible focus, disabled, error, loading, reduced-motion, forced-colors, and no-JavaScript behavior.
9. Do not hand-edit `dist/`; rebuild it from the same source revision.
10. Update documentation, fixtures, tests, package metadata, and `CHANGELOG.md` with public API changes.

## Public API review

Before opening a pull request, classify changes to:

- Package exports.
- Semantic classes and modifiers.
- Raw semantic variables.
- Tailwind-facing theme variables.
- Required component anatomy.
- Browser baseline.
- Build adapter or source-detection behavior.

State whether the release impact is patch, minor, or major.

## Pull requests

A pull request should include:

- What changed and why.
- Public API and migration impact.
- Build and browser impact.
- Validation commands actually run.
- Generated files updated.
- Examples or fixtures for new components and patterns.
- Remaining manual review or exceptions.

Use the checklists under [`compliance/`](compliance/README.md). Do not report a check as passed unless it was performed.
