# TCBasic Example Agent Instructions

> **Status:** Binding for work under `TCbasic/examples/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

Examples demonstrate supported TCBasic usage. They are evidence/examples, not independent authority over the package contracts.

## Rules

Agents MUST:

- keep examples consistent with current public APIs, source detection, package imports, and build contracts;
- keep class candidates statically detectable;
- preserve native semantics and accessibility responsibilities;
- distinguish intentionally simplified demonstration code from production requirements when relevant.

Agents MUST NOT change package contracts merely to make an example easier unless that contract change is separately in scope.

## Validation

Run `npm run build:example` from `TCbasic/` when example markup/source scanning changes, plus applicable tests/builds for related package changes.

## Changelog

Notable example changes that demonstrate changed public behavior update [`../CHANGELOG.md`](../CHANGELOG.md).
