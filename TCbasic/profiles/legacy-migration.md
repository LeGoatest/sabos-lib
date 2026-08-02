# Legacy Migration Profile

> **Status:** Transitional profile

This profile supports incremental migration from Tailwind CSS v3, JavaScript configuration, utility-heavy templates, or a legacy CSS system.

## 1. Time-bounded use

The profile requires:

- A named owner.
- A migration inventory.
- A target TCBasic profile.
- Review dates.
- Explicit remaining exceptions.

It is not a permanent excuse for mixed architecture.

## 2. Allowed transitional behavior

Temporarily allowed when documented:

- Explicit `@config` loading of a legacy JavaScript config.
- Coexistence of legacy styles and TCBasic source.
- Utility-heavy markup that has not yet been classified.
- Adapter-specific compatibility rules.
- Deprecated class aliases.

## 3. Prohibited transitional behavior

Still prohibited:

- Dynamic Tailwind class fragments.
- Tailwind v3 and v4 build packages mixed unpredictably.
- Unreviewed browser-support claims.
- Hand-editing compiled distributions.
- New page-specific utility piles where a semantic contract is already known.
- Removing focus, labels, or native semantics to match legacy appearance.

## 4. Migration sequence

1. Stabilize the current build and tests.
2. Upgrade the Tailwind toolchain.
3. Establish CSS-first theme mappings.
4. Resolve source detection and dynamic candidates.
5. Introduce TCBasic source alongside legacy styles.
6. Migrate tokens.
7. Migrate repeated layout primitives.
8. Migrate components and states.
9. Migrate larger patterns.
10. Remove aliases, legacy config, and obsolete styles.
11. Adopt the semantic application profile.

## 5. Component migration record

```yaml
component_migration:
  name: <component>
  legacy_source: <path>
  target_contract: <path>
  token_mapping: <path>
  templates_migrated: []
  visual_review: passed | failed | pending
  interaction_review: passed | failed | pending
  legacy_alias_remove_by: <version-or-date>
```

## 6. Exit criteria

The legacy profile ends when:

- No unsupported v3 directives remain.
- Legacy JavaScript config is removed or permanently justified.
- Dynamic class fragments are resolved.
- Repeated templates use semantic contracts.
- Deprecated aliases have removal plans or are removed.
- Browser and build matrices pass.
- The adoption record selects `semantic-application`.
