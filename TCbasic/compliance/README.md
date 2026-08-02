# TCBasic Validation and Compliance

TCBasic compliance means the package satisfies its declared architecture, build, source-detection, browser, documentation, and release contracts. It is not a claim that every consuming application is accessible, secure, or standards-conformant.

## Documents

- [`browser-and-build-matrix.md`](browser-and-build-matrix.md) — browser baseline, adapters, commands, and evidence fields.
- [`migration-checklist.md`](migration-checklist.md) — controlled v3-to-v4 and utility-to-semantic migration.
- [`release-checklist.md`](release-checklist.md) — required release evidence.

## Conformance levels

### Source-conformant

The canonical source follows TCBasic architecture, naming, token, and component rules.

### Build-conformant

Tests and documented build commands pass, exports resolve, and distributions are generated from the same source revision.

### Package-conformant

The packed artifact includes documented exports, license, source, distributions, and public documentation.

### Integration-validated

A named consumer integration has passed its adapter, source-detection, browser, and application-level tests.

Integration validation is scoped to that consumer and does not extend automatically to other frameworks or browsers.

## Unresolved outcomes

Use explicit status values:

```text
passed
failed
not_applicable
blocked
manual_review_required
not_tested
```

Do not convert blocked, manual, or untested work into a pass.

## Minimum evidence

- Commit or tag.
- Tailwind and Node versions.
- Commands executed.
- Test results.
- Generated distribution review.
- Export and package-content review.
- Browser baseline review.
- Known exceptions.
