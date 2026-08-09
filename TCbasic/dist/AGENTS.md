# TCBasic Distribution Agent Instructions

> **Status:** Binding for work under `TCbasic/dist/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

`dist/` contains generated package output. It is evidence/artifact, not canonical source.

## Rules

Agents MUST NOT hand-edit generated CSS as a substitute for changing `src/` and rebuilding.

When distribution output is wrong:

1. identify the canonical source/build cause;
2. change the source or build contract;
3. rebuild from the same source revision;
4. inspect the generated diff for unrelated churn.

Generated output must correspond to current source, package exports, and build contracts.

## Validation

Use `npm run build` from `TCbasic/` and applicable package/export tests. Public generated-output changes may require `CHANGELOG.md` updates.
