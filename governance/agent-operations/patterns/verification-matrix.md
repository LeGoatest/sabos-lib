# Pattern: Verification Matrix

> **Status:** Informative reusable pattern  
> **Purpose:** Convert important prose constraints into an explicit map from requirement to observable or mechanical evidence.

Use this pattern when a repository has multiple agent-visible rules and needs to distinguish what is merely documented from what is actually enforced or independently verified.

## Suggested shape

| Requirement / invariant | Authority source | Scope | Enforcement / check | Prerequisite | Failure behavior | Evidence produced |
| --- | --- | --- | --- | --- | --- | --- |
| `<rule>` | `<contract/file>` | `<path/component>` | `<test/CI/schema/lint/manual independent check>` | `<required setup/build or none>` | `<block / warn / report>` | `<log/artifact/result>` |

## Classification

Classify each important rule as one of:

- **Mechanical** — deterministically checked by tests, CI, schema validation, static analysis, hooks, dependency rules, or equivalent tooling.
- **Independent observable** — verified through runtime/rendered/generated behavior outside the implementation path.
- **Manual review** — requires human or fresh-context review because reliable automation is not available.
- **Guidance only** — useful instruction whose compliance is probabilistic and not independently proven.
- **Not applicable** — intentionally outside the adopting project's scope.

Do not label guidance-only prose as enforced.

## Priority rules for automation

Automate first when a rule is:

1. high impact if violated;
2. stable over time;
3. objectively testable;
4. repeatedly relevant;
5. cheap enough to run at the appropriate stage.

Strong candidates include:

- architecture dependency boundaries;
- generated-output freshness;
- required schema/metadata fields;
- package/tool/version consistency;
- forbidden mutation paths or commands;
- link/status/supersession consistency;
- security/static checks;
- accessible markup checks with reliable automation.

Avoid creating fragile automation for subjective style preferences merely to increase coverage percentage.

## Prerequisite gating

The matrix should make dependency order explicit.

Example:

| Requirement / invariant | Enforcement / check | Prerequisite | Failure behavior |
| --- | --- | --- | --- |
| Generated CSS matches source | build + diff/checksum | dependencies installed | block downstream rendered validation if build fails |
| Route returns expected output | integration/browser check | application starts successfully | report start failure; do not claim route failure |
| Structured data is valid | schema validator | page/render generation succeeds | block schema claim when output cannot be produced |

Checks that do not depend on the failed prerequisite may continue when they still provide valid evidence.

## Maintenance

- Keep the authority source linked so automation never becomes an unexplained rule.
- Update the matrix when a rule, command, or owning scope changes.
- Remove obsolete checks when their governing requirement is superseded.
- Preserve historical rationale in decision/changelog records rather than keeping dead checks active.
- Report gaps explicitly; absence of automation is preferable to fake enforcement.

## Related contracts

- [`../contracts/execution-verification.md`](../contracts/execution-verification.md)
- [`../../validation.md`](../../validation.md)
- [`../contracts/context-freshness.md`](../contracts/context-freshness.md)
