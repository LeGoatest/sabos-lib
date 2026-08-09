# TCBasic Component Agent Instructions

> **Status:** Binding for work under `TCbasic/docs/components/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Component entry point:** [`README.md`](README.md)

This directory governs TCBasic component anatomy, semantic classes, variants, states, accessibility responsibilities, and compatibility expectations.

## Rules

Agents MUST preserve stable semantic responsibilities unless an intentional contract change is in scope.

Prefer native HTML semantics and attributes before custom state classes or ARIA added only for styling. Keep reusable appearance in CSS and templates readable/intent-oriented.

The canonical reference implementation lives under [`../../src/components/`](../../src/components/). Reference CSS demonstrates component contracts; it does not override them.

## Review

When component knowledge changes, review:

- component contracts and catalog;
- affected token responsibilities;
- reference CSS;
- examples;
- accessibility/state behavior;
- adopter migration impact.

Do not recreate generated `dist/` output, package APIs, or repository build tests as validation requirements.

## Changelog

Notable component/semantic API changes update [`../../CHANGELOG.md`](../../CHANGELOG.md).
