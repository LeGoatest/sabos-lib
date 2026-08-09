# TCBasic Integration Agent Instructions

> **Status:** Binding for work under `TCbasic/docs/integrations/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Integration entry point:** [`README.md`](README.md)

Integrations adapt TCBasic to server-rendered systems and component frameworks without redefining the framework core.

## Rules

Agents MUST preserve the framework-independent architecture and keep integration-specific dependencies/assumptions isolated to the adopting environment.

An integration may translate TCBasic contracts into a host framework; it MUST NOT silently redefine semantic classes, token meanings, accessibility responsibilities, or source-detection rules.

Do not promote an optional adapter or framework dependency into a SABOS Lib requirement merely because one integration uses it.

## Review

Review the integration against:

- relevant TCBasic contracts;
- source-detection/tooling guidance;
- reference CSS under [`../../src/`](../../src/);
- host-framework semantics and responsibilities;
- adopter-specific validation evidence when available.

## Changelog

Notable integration/compatibility changes update [`../../CHANGELOG.md`](../../CHANGELOG.md).
