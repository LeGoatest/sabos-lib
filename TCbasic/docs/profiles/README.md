# TCBasic Adoption Profiles

A profile selects how a consumer adopts TCBasic without weakening the core architecture.

## Available profiles

- [`semantic-application.md`](semantic-application.md) — default profile for new applications using semantic classes as the template-facing API.
- [`legacy-migration.md`](legacy-migration.md) — temporary profile for incremental migration from utility-heavy or Tailwind v3 projects.

## Profile rules

A profile may specialize:

- How quickly semantic classes replace repeated utility groups.
- Which build adapter the consumer uses.
- Whether TCBasic source or compiled CSS is imported.
- How migration exceptions are recorded.
- Which examples and checks apply.

A profile may not weaken:

- Tailwind v4 syntax requirements.
- Static class-candidate requirements.
- Package export integrity.
- Native HTML and accessibility responsibilities.
- Browser-baseline honesty.
- Generated distribution integrity.
- Public API versioning.

## Adoption record

```yaml
tcbasic_adoption:
  profile: semantic-application | legacy-migration
  source_ref: <tag-or-commit>
  package_import: source | dist
  build_adapter: cli | postcss | vite | standalone
  token_override: <path>
  stylesheet_entrypoint: <path>
  source_detection_record: <path>
  exceptions: []
```
