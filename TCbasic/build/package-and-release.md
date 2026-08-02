# Package and Release Contract

This contract governs npm contents, package exports, generated CSS, semantic versioning, and GitHub releases.

## 1. Package root

`TCbasic/` is the npm package root. `package.json`, `README.md`, `LICENSE`, source, distributions, examples, and published documentation are resolved relative to this directory.

## 2. Required package contents

The package must include:

- `src/`
- `dist/`
- `examples/`
- Public documentation and subsystem directories.
- `README.md`
- `CHANGELOG.md`
- `LICENSE`
- `postcss.config.mjs`

Tests may remain repository-only unless a consumer needs them.

## 3. Export contract

Supported exports include:

| Export | Purpose |
| --- | --- |
| `.` | Default package entry with browser style and source fallback. |
| `./source` | Tailwind-processable source entry. |
| `./dist` | Readable compiled browser CSS. |
| `./dist/min` | Minified compiled browser CSS. |
| `./tokens` | Raw semantic variable source. |
| `./theme` | Tailwind theme mapping source. |

Every export target must exist in the packed artifact.

## 4. Generated CSS

Before release:

```bash
npm test
npm run build
```

Generated files must:

- Contain no `@apply` directives.
- Contain expected public selectors.
- Match the current source revision.
- Preserve readable and minified variants.
- Include the current package banner or metadata policy.

## 5. Package inspection

Use npm's pack inspection before publication:

```bash
npm pack --dry-run
```

Review:

- Included file list.
- Archive size.
- Package version.
- License.
- Export target existence.
- Absence of development-only artifacts and generated example output.

## 6. Semantic versioning

### Patch

Use for fixes that preserve documented class, token, export, and adapter contracts.

### Minor

Use for additive public classes, tokens, exports, supported adapters, or documentation contracts.

### Major

Use for removals, renamed classes or variables, changed semantics, browser-baseline changes, export removal, or incompatible source/build behavior.

Deprecations should normally appear in a minor release before removal in a major release.

## 7. Release tag

A release tag uses `v<package-version>` and must exactly match `package.json`.

```text
package version: 0.2.0
release tag:     v0.2.0
```

## 8. Release archive

The GitHub release archive is created from the `TCbasic/` subtree so consumers receive a clean package root rather than the separate WDBASIC standards system.

Release attachments include:

- Readable CSS distribution.
- Minified CSS distribution.
- TCBasic source archive.

## 9. Changelog requirements

Record:

- Added public classes, tokens, exports, adapters, and contracts.
- Changed semantics or output.
- Deprecated APIs with replacements.
- Removed APIs.
- Fixed build, compatibility, accessibility, or source-detection defects.
- Security-relevant build or supply-chain corrections.

## 10. Release checklist

The binding release checklist is [`../compliance/release-checklist.md`](../compliance/release-checklist.md).

## 11. Release evidence

```yaml
release:
  version: <semver>
  tag: <tag>
  source_commit: <sha>
  npm_test: passed | failed
  build: passed | failed
  example_build: passed | failed
  pack_dry_run: passed | failed
  export_check: passed | failed
  dist_review: passed | failed
  changelog_updated: true | false
  browser_matrix_reviewed: true | false
```
