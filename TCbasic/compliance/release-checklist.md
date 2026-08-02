# TCBasic Release Checklist

A release is complete only when every applicable item has evidence.

## 1. Scope and version

- [ ] Release scope is documented.
- [ ] Public class, token, export, build, browser, and documentation impact is classified.
- [ ] Version follows semantic versioning.
- [ ] `package.json` version is updated.
- [ ] Release tag will exactly match `v<version>`.
- [ ] `CHANGELOG.md` describes the release.

## 2. Source and architecture

- [ ] `src/index.css` import order remains valid.
- [ ] New source files are in the correct layer.
- [ ] No page-, customer-, or business-specific names entered the package.
- [ ] Tokens follow raw-to-theme-to-component flow.
- [ ] Public component changes have updated contracts and fixtures.
- [ ] Dynamic class fragments were not introduced.

## 3. Automated validation

Run from `TCbasic/`:

```bash
npm install --no-audit --no-fund
npm test
npm run build
npm run build:example
npm pack --dry-run
```

- [ ] Structural tests pass.
- [ ] Documentation tests pass.
- [ ] Package export tests pass.
- [ ] Readable CSS builds.
- [ ] Minified CSS builds.
- [ ] Basic example builds.
- [ ] Pack inspection passes.

## 4. Generated CSS

- [ ] `dist/` was generated from the release source revision.
- [ ] No unresolved `@apply` remains.
- [ ] Required public selectors exist.
- [ ] Removed selectors match the declared version impact.
- [ ] Readable and minified files are attached to the release.
- [ ] Output-size change is understood.

## 5. Documentation

- [ ] README paths and commands are current.
- [ ] Standards registry versions are current.
- [ ] New directives, adapters, tokens, and classes are documented.
- [ ] Deprecated APIs include replacements and timelines.
- [ ] Migration guidance is provided for breaking or behavior-changing work.
- [ ] Relative Markdown links resolve.

## 6. Compatibility

- [ ] Tailwind version is verified.
- [ ] Node.js requirement is verified.
- [ ] Chrome, Safari, and Firefox baseline is reviewed.
- [ ] Optional modern CSS features are recorded.
- [ ] CLI and PostCSS paths remain valid.
- [ ] Optional Vite or framework guidance is accurate.

## 7. Accessibility and interaction

For affected components:

- [ ] Native element contract is correct.
- [ ] Visible focus is preserved.
- [ ] Disabled, loading, invalid, and selected states are accurate.
- [ ] Required behavior does not depend on hover.
- [ ] Reduced-motion behavior is reviewed.
- [ ] Forced-colors behavior is reviewed.
- [ ] Narrow-width and zoom behavior is reviewed.

## 8. Package and release artifact

- [ ] Package includes source, dist, examples, license, and public docs.
- [ ] Package excludes development-only or generated example artifacts.
- [ ] Every export target exists in the packed artifact.
- [ ] GitHub archive contains only the `TCbasic/` subtree as package root.
- [ ] Release notes identify breaking changes and migration requirements.

## 9. Sign-off record

```yaml
release_signoff:
  version: <version>
  commit: <sha>
  reviewer: <name-or-role>
  npm_test: passed | failed
  build: passed | failed
  example_build: passed | failed
  pack_review: passed | failed
  documentation_links: passed | failed
  browser_review: passed | failed
  accessibility_review: passed | failed | not_applicable
  exceptions: []
  approved_at: <ISO-8601>
```
