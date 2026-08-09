# TCBasic Integration Agent Instructions

> **Status:** Binding for work under `TCbasic/integrations/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Integration entry point:** [`README.md`](README.md)

Integrations adapt TCBasic to server-rendered systems and component frameworks without redefining the package core.

## Rules

Agents MUST preserve the framework-independent package core and keep integration-specific dependencies/assumptions isolated.

An integration may translate TCBasic contracts into a host framework; it MUST NOT silently redefine semantic classes, token meanings, accessibility requirements, source detection rules, or package exports.

Do not promote an optional adapter to a required package dependency merely because one integration uses it.

## Validation

Validate the integration against its host framework plus applicable TCBasic package, source-detection, component, and accessibility contracts.

## Changelog

Notable integration/public compatibility changes update [`../CHANGELOG.md`](../CHANGELOG.md).
