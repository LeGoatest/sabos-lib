# TCBasic Validation and Evidence

TCBasic validation separates **internal framework consistency** from **adopter implementation evidence**. SABOS Lib does not compile, package, browser-test, or release TCBasic as a product.

## Documents

- [`browser-and-reference-matrix.md`](browser-and-reference-matrix.md) — upstream browser baseline, reference-feature assumptions, and adopter evidence fields.
- [`migration-checklist.md`](migration-checklist.md) — controlled Tailwind v3-to-v4 and utility-to-semantic migration guidance for adopting projects.

## Evidence layers

### Documentation-consistent

The relevant TCBasic documents agree on terminology, authority, architecture, and responsibility boundaries.

### Reference-consistent

The canonical CSS under [`../../src/`](../../src/) demonstrates the documented architecture without contradicting binding contracts.

### Example-consistent

An example under [`../../examples/`](../../examples/) demonstrates current TCBasic concepts and correctly distinguishes host-environment behavior from TCBasic responsibilities.

### Integration-validated

A named consumer implementation has passed its own build, source-detection, browser, accessibility, visual, or application-level checks.

Integration validation is scoped to that consumer. It does not become a repository-wide claim.

## Explicit outcomes

Use honest status values such as:

```text
passed
failed
not_applicable
blocked
manual_review_required
not_tested
```

Do not convert blocked, manual, or untested work into a pass.

## Minimum evidence context

When reporting material validation, preserve enough context to interpret it:

- TCBasic commit/tag or document revision;
- adopting project/environment when applicable;
- Tailwind/tool versions when relevant;
- commands or review procedures actually performed;
- browser/framework scope;
- known exceptions and limitations.

An upstream support statement is not proof of adopter validation. A TCBasic reference file is not proof that a consumer build works.
