# TCBasic Agent Instructions

> **Status:** Binding for automated changes to `TCbasic/`  
> **Canonical entry point:** [`README.md`](README.md)  
> **Knowledge index:** [`docs/README.md`](docs/README.md)

TCBasic is a Tailwind CSS semantic-architecture knowledge framework with canonical reference CSS. SABOS Lib does not build, package, publish, or release TCBasic.

## Required reading order

Before changing TCBasic:

1. Read [`README.md`](README.md).
2. Read [`docs/architecture/rules.md`](docs/architecture/rules.md).
3. Read [`docs/standards.md`](docs/standards.md).
4. Read [`docs/AGENTS.md`](docs/AGENTS.md).
5. Read the nearest applicable nested `AGENTS.md`.
6. Read applicable contracts and explicit positions.
7. Consult `src/` and examples only for their intended reference roles.

## Scope resolution

Before editing, identify:

- which knowledge domain owns the change;
- whether the change affects a binding contract, practitioner position, upstream/standards record, glossary, reference source, or example;
- which semantic classes, token roles, architecture layers, integration expectations, or adopter assumptions are affected;
- whether the change intentionally mutates an established TCBasic contract;
- whether documentation, reference CSS, examples, and `CHANGELOG.md` must change together.

## Required behavior

Agents MUST:

- preserve Tailwind CSS v4 CSS-first concepts unless an explicit governed change says otherwise;
- keep templates readable and intent-oriented;
- preserve the distinction between raw semantic variables, Tailwind theme mappings, semantic classes, variants, and states;
- use static, complete Tailwind candidates in reference/example material;
- prefer native HTML semantics and attributes before invented styling-state hooks;
- preserve accessibility responsibilities including visible focus, keyboard operation, reduced motion, forced colors, and no-JavaScript access where applicable;
- keep `src/` as canonical reference CSS rather than generated output;
- keep examples illustrative rather than authoritative;
- distinguish adopter tooling guidance from SABOS Lib repository requirements;
- update the nearest changelog when notable framework knowledge changes.

## Prohibited behavior

Agents MUST NOT:

- recreate npm-package metadata, `dist/`, release archives, or repository build pipelines without explicit governed scope;
- add a `tailwind.config.js` as the normal TCBasic architecture;
- use Tailwind v3 directives as current TCBasic guidance;
- add Sass, Less, Stylus, Vite, PostCSS, npm, or another build dependency merely because adopter guidance mentions it;
- construct Tailwind classes from dynamic fragments in reference/example material;
- treat examples, historical references, or upstream vendor guidance as automatic TCBasic contracts;
- scatter business-specific names into reusable reference architecture;
- silently change canonical terminology or public semantic responsibilities.

## Change protocol

1. Resolve the governing knowledge type and domain.
2. Inspect the relevant contract/position, `src/` reference, and examples.
3. Make the smallest coherent change.
4. Update linked documentation/reference/example material where needed.
5. Check relative links and authority routing for moved documentation.
6. Review reference CSS for internal consistency when it changes.
7. Record notable changes in [`CHANGELOG.md`](CHANGELOG.md).
8. Report evidence actually reviewed; do not claim a build or browser test that SABOS Lib did not run.

## Stop conditions

Do not claim completion when:

- a canonical documentation path is broken;
- a moved local `AGENTS.md` points to the wrong parent authority;
- reference CSS contradicts a binding documented contract without explanation;
- source detection examples depend on dynamic fragments;
- an example is being used to redefine a contract;
- a browser/tooling claim lacks a source/scope distinction;
- package/build machinery was introduced without explicit approval.

## Completion report

Report the relevant parts of:

```text
scope
changed knowledge domains
contract/position impact
reference-source impact
example impact
upstream/standards impact
migration/adopter impact
validation or evidence reviewed
remaining manual review
commit
```
