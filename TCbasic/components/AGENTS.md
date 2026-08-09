# TCBasic Component Agent Instructions

> **Status:** Binding for work under `TCbasic/components/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Component entry point:** [`README.md`](README.md)

This directory governs TCBasic public component anatomy, semantic classes, variants, states, accessibility responsibilities, and compatibility.

## Rules

Agents MUST preserve stable semantic class names and documented component/state behavior unless a public API change is intentional.

Prefer native HTML semantics and attributes before custom state classes or ARIA. Keep reusable appearance in CSS and templates readable/intent-oriented.

Do not treat generated CSS as canonical source or change expected public selectors solely to match a new implementation preference.

## Validation

Review source, examples, tests, generated CSS, state/variant behavior, accessibility responsibilities, and migration/version impact. Rebuild `dist/` when source CSS changes.

## Changelog

Notable component/public API changes update [`../CHANGELOG.md`](../CHANGELOG.md).
