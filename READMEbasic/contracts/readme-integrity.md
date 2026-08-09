# README Integrity Contract

> **Status:** Binding  
> **Scope:** README files governed by READMEbasic  
> **Owner:** READMEbasic

## Requirement

README claims that a user may rely on MUST be supported by repository/project evidence and MUST remain synchronized with the implementation or authoritative project record.

This includes, where applicable:

- install/build/test/run commands;
- package names and exports;
- supported runtime/framework versions;
- configuration paths and required settings;
- feature/status/maturity claims;
- local file/document links;
- CI/release/license badges;
- security/compatibility statements;
- contribution/support destinations.

Agents MUST NOT invent missing facts merely to make a README appear complete.

## Rationale

A README is often the first operational contract between a project and a user. A plausible but incorrect command, version, path, or capability is a documentation regression with direct user cost.

## Evidence basis

This contract reflects READMEbasic practitioner position, GitHub documentation guidance, analysis of established README templates, and empirical work showing README inconsistency/bug patterns.

See [`../best-practices.md`](../best-practices.md) and [`../resources.md`](../resources.md) for the informative evidence layer.

## Validation

Where practical:

- verify commands against manifests/task runners/workflows;
- verify paths and relative links;
- verify versions against package/configuration sources;
- verify badges against real endpoints/workflows;
- distinguish planned/TODO capabilities from implemented behavior;
- mechanically check README facts that frequently drift.

## Exceptions

Clearly labeled examples/placeholders may exist in [`../TEMPLATE.md`](../TEMPLATE.md), but template placeholders MUST be removed or replaced with verified project facts before publication.
