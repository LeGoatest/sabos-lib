# Legacy Migration Profile

> **Status:** Transitional profile

This profile supports an adopting project's incremental migration from Tailwind CSS v3, JavaScript configuration, utility-heavy templates, or a legacy CSS system.

## 1. Time-bounded use

The profile requires:

- a named owner in the adopting project;
- a migration inventory;
- a target TCBasic profile;
- review dates or milestones;
- explicit remaining exceptions.

It is not a permanent excuse for mixed architecture.

## 2. Allowed transitional behavior

Temporarily allowed when documented in the adopter:

- explicit `@config` loading of a legacy Tailwind configuration;
- coexistence of legacy styles and TCBasic-style semantic CSS;
- utility-heavy markup that has not yet been classified;
- adapter-specific compatibility rules;
- deprecated class aliases.

## 3. Prohibited transitional behavior

Still prohibited by the TCBasic architecture:

- dynamic Tailwind class fragments that cannot be statically detected;
- unpredictable mixing of incompatible Tailwind toolchain generations;
- unreviewed browser-support claims;
- new page-specific utility piles where a stable semantic responsibility is already known;
- removing focus, labels, native semantics, or required state behavior merely to match legacy appearance.

## 4. Migration sequence

1. Stabilize the adopter's current behavior and evidence.
2. Upgrade its Tailwind/tooling path when that is in scope.
3. Establish CSS-first theme mappings.
4. Resolve source detection and dynamic candidates.
5. Introduce semantic architecture alongside legacy styles.
6. Migrate tokens.
7. Migrate repeated layout primitives.
8. Migrate components and states.
9. Migrate larger patterns.
10. Remove obsolete aliases/config/styles when evidence supports removal.
11. Adopt the semantic application profile.

## 5. Component migration record

```yaml
component_migration:
  adopter: <project>
  name: <component>
  legacy_source: <path>
  target_contract: <path>
  token_mapping: <path>
  templates_migrated: []
  visual_review: passed | failed | pending | not_tested
  interaction_review: passed | failed | pending | not_tested
  legacy_alias_remove_by: <version-date-or-condition>
```

## 6. Exit criteria

The legacy profile ends when:

- unsupported v3 directives are resolved or explicitly isolated;
- legacy configuration is removed or permanently justified;
- dynamic class fragments are resolved;
- repeated templates use semantic responsibilities;
- deprecated aliases have removal plans or are removed;
- applicable consumer validation is complete;
- the adoption record selects `semantic-application`.

See [`../compliance/migration-checklist.md`](../compliance/migration-checklist.md) for the detailed adopter checklist.
