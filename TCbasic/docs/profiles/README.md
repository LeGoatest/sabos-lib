# TCBasic Adoption Profiles

A profile describes how an adopting project applies TCBasic without weakening the core architecture.

## Available profiles

- [`semantic-application.md`](semantic-application.md) — default profile for new applications using semantic classes as the primary template-facing styling API.
- [`legacy-migration.md`](legacy-migration.md) — transitional profile for incremental migration from utility-heavy, Tailwind v3, or legacy CSS systems.

## Profile rules

A profile may specialize:

- how quickly semantic classes replace repeated utility groups;
- which tooling/build adapter the **consumer project** uses;
- how reference CSS is adapted into the consumer;
- how migration exceptions are recorded;
- which examples/checks apply to that adopter.

A profile may not weaken:

- Tailwind v4 architectural assumptions adopted by current TCBasic guidance;
- static class-candidate requirements;
- native HTML and accessibility responsibilities;
- semantic token/component responsibilities;
- browser/support honesty;
- the distinction between reference source and adopter implementation evidence.

## Adoption record

```yaml
tcbasic_adoption:
  profile: semantic-application | legacy-migration
  tcbasic_source_ref: <commit-or-tag>
  reference_strategy: copy | adapt | reimplement-contracts | other
  consumer_build_adapter: cli | postcss | vite | standalone | framework | other | none
  token_source: <project-path>
  stylesheet_entrypoint: <project-path>
  source_detection_record: <path-or-note>
  exceptions: []
```

This record belongs to the adopting project. It is not a SABOS Lib package-installation record.
