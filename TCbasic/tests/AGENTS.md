# TCBasic Test Agent Instructions

> **Status:** Binding for work under `TCbasic/tests/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

Tests are regression evidence for package contracts and expected behavior.

## Rules

Agents MUST NOT delete, weaken, or rewrite assertions merely because a new implementation fails them.

When an intentional public behavior change requires a test update:

1. identify the old expected behavior;
2. identify the new intended behavior and controlling contract;
3. update implementation, documentation, migration/version analysis, and tests coherently;
4. verify unrelated behavior remains intact.

Fixtures and expected outputs must remain representative of the contract they claim to test.

## Validation

Run `npm test` from `TCbasic/`; run builds/examples as required by the changed behavior.
