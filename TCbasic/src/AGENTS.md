# TCBasic Reference Source Agent Instructions

> **Status:** Binding for work under `TCbasic/src/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

`src/` is the canonical reference CSS implementation of TCBasic's documented architecture. It is not package source awaiting compilation by SABOS Lib.

## Preserve

Agents MUST preserve:

- the documented layer graph;
- Tailwind CSS v4 CSS-first concepts;
- semantic naming and token/component boundaries;
- static, complete Tailwind candidates;
- native semantic/accessibility responsibilities;
- consistency with contracts under [`../docs/`](../docs/README.md).

## Do not

Agents MUST NOT:

- create or regenerate `dist/` merely because source CSS exists;
- introduce repository package/build metadata around this reference source;
- add Tailwind v3 directives as current guidance;
- add dynamic class-name fragments that Tailwind cannot detect;
- introduce project/customer-specific names into reusable reference architecture;
- change a documented class/token responsibility without reviewing the governing contract, migration implications, examples, and changelog.

## Validation

Reference-source validation is primarily consistency review inside SABOS Lib:

- confirm imports/layers remain coherent;
- confirm referenced token/class names exist where expected;
- compare changed source with governing documentation and examples;
- review syntax and Tailwind-v4 assumptions;
- update documentation and [`../CHANGELOG.md`](../CHANGELOG.md) when public reference behavior changes.

Do not claim that SABOS Lib compiled or browser-tested the reference source unless such validation actually occurred in a separately identified adopter environment.
