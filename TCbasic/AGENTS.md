# TCBasic Agent Instructions

> **Status:** Binding for automated changes to `TCbasic/`  
> **Canonical entry point:** [`README.md`](README.md)  
> **Standards registry:** [`STANDARDS.md`](STANDARDS.md)

These instructions apply to coding agents, automated refactoring tools, reviewers, and contributors that change the TCBasic package, examples, tests, workflows, or documentation.

## 1. Required reading order

Before changing TCBasic, read:

1. [`architecture_rules.md`](architecture_rules.md)
2. [`README.md`](README.md)
3. [`STANDARDS.md`](STANDARDS.md)
4. [`TAILWIND_PATTERN.md`](TAILWIND_PATTERN.md)
5. Applicable documents under [`build/`](build/README.md), [`tokens/`](tokens/README.md), [`components/`](components/README.md), and [`compliance/`](compliance/README.md)
6. The active adoption profile under [`profiles/`](profiles/README.md)
7. Relevant examples and tests

## 2. Scope resolution

Before editing, identify:

- The public class names, package exports, theme variables, source paths, build adapters, examples, and generated distributions affected.
- Whether the change alters CSS output, source detection, browser requirements, package contents, or migration behavior.
- Which semantic layer owns the change: foundation, elements, layout, components, patterns, states, or limited utilities.
- Whether the change is backward-compatible, additive, deprecated, or breaking.
- Whether documentation, examples, fixtures, tests, and `CHANGELOG.md` must change in the same commit.

## 3. Required behavior

Agents must:

- Use Tailwind CSS v4 CSS-first syntax.
- Keep `TCbasic/` as the package root.
- Keep templates readable and intent-oriented.
- Keep reusable utility composition in CSS rather than long repeated class lists in templates.
- Preserve the distinction between raw variables, Tailwind theme variables, semantic classes, variants, and state classes.
- Use static, complete class names in source files so Tailwind can detect them.
- Prefer native HTML semantics and attributes before inventing state classes.
- Preserve visible focus, keyboard operation, reduced-motion behavior, forced-colors usability, and no-JavaScript access to primary content.
- Keep CLI and PostCSS as supported core adapters; treat Vite and framework adapters as optional integrations.
- Run package commands from `TCbasic/`.
- Rebuild `dist/` whenever source CSS changes.
- Update tests and documentation with public API changes.

## 4. Prohibited behavior

Agents must not:

- Add a `tailwind.config.js` file unless a documented legacy integration requires `@config`.
- Use Tailwind v3 directives such as `@tailwind base`, `@tailwind components`, or `@tailwind utilities`.
- Add Sass, Less, or Stylus to the TCBasic build.
- Construct class names dynamically from fragments such as `bg-${color}-500`.
- Treat comments, generated CSS, or minified output as the canonical source.
- Hand-edit `dist/` without rebuilding from the same source revision.
- Hide required interaction behind hover-only behavior.
- use color, location, sequence, or page ownership as the primary basis for reusable class names.
- Put business-specific names into the framework-independent package.
- introduce a build adapter as a required dependency merely because one example uses it.
- claim browser support, build success, package integrity, or migration completeness without evidence.

## 5. Change protocol

1. Resolve the affected public API and governing documents.
2. Inspect the relevant source, examples, and tests.
3. Make the smallest coherent change.
4. Update documentation, fixtures, package metadata, and changelog entries together.
5. Run `npm test` from `TCbasic/`.
6. Run `npm run build` when source CSS or theme configuration changes.
7. Run `npm run build:example` when example scanning or markup changes.
8. Inspect generated CSS for required selectors and absence of unresolved Tailwind directives.
9. Report unresolved browser, framework, or migration risks explicitly.

## 6. Stop conditions

Do not claim completion when:

- A referenced documentation path is broken.
- Source detection depends on dynamically assembled class fragments.
- Package exports point to missing files.
- `dist/` does not correspond to `src/`.
- A build adapter is documented but not represented accurately.
- A public class, token, or export changed without versioning analysis.
- Required tests were not run.
- Browser requirements or Tailwind version assumptions are unknown.

## 7. Completion report

Report:

```text
scope
changed files
public API impact
package export impact
source-detection impact
browser-support impact
migration impact
validation performed
generated files updated
remaining manual review
commit or pull request
```
