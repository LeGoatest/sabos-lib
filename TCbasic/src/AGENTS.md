# TCBasic Source Agent Instructions

> **Status:** Binding for work under `TCbasic/src/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

`src/` is the canonical CSS source for the TCBasic package.

## Rules

Agents MUST preserve the documented layer graph, Tailwind CSS v4 CSS-first syntax, static class detection, semantic naming, token/component boundaries, and public API compatibility.

Do not:

- use `dist/` as the source of truth;
- introduce Tailwind v3 directives;
- add dynamic class-name fragments that Tailwind cannot detect;
- scatter business-specific/project-specific names into the reusable package;
- change public class/token behavior without reviewing contracts, tests, migration/version impact, and documentation.

## Validation

After source CSS changes, run applicable tests and `npm run build` from `TCbasic/`, inspect generated CSS, and update related documentation/changelog when public behavior changes.
