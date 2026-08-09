# TCBasic Example Agent Instructions

> **Status:** Binding for work under `TCbasic/examples/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

Examples demonstrate ways TCBasic ideas can be adopted. They are illustrative evidence, not independent authority over TCBasic contracts and not repository build targets.

## Rules

Agents MUST:

- keep examples consistent with current semantic classes, token responsibilities, source-detection guidance, and relevant integration contracts;
- keep Tailwind class candidates complete and statically detectable;
- preserve native semantics and accessibility responsibilities;
- distinguish host-framework behavior from TCBasic responsibilities;
- label intentionally simplified demonstration behavior when it could otherwise be mistaken for production requirements.

Agents MUST NOT:

- change a TCBasic contract merely to make an example easier;
- infer that an example dependency/toolchain is required by SABOS Lib;
- recreate package imports that no longer exist as a TCBasic distribution contract;
- treat successful rendering in one example as universal browser/framework validation.

## Review

When example markup changes, compare it with:

- [`../docs/`](../docs/README.md);
- relevant integration/component/token contracts;
- canonical reference CSS under [`../src/`](../src/).

If the example exposes an inconsistency, resolve the actual authority conflict rather than silently changing the contract around the example.

## Changelog

Notable example changes that demonstrate changed TCBasic behavior update [`../CHANGELOG.md`](../CHANGELOG.md).
