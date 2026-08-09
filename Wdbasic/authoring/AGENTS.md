# WDBASIC Authoring Agent Instructions

> **Status:** Binding for work under `Wdbasic/authoring/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

This directory governs authoring tools and generated accessible output.

## Read first

1. [`../README.md`](../README.md)
2. [`atag-2.0.md`](atag-2.0.md)
3. [`accessible-output.md`](accessible-output.md)
4. Applicable architecture, form, component, media, internationalization, security, and non-web contracts

## Preserve

Authoring workflows must preserve author-provided semantics and accessibility metadata, produce usable accessible defaults, and expose enough information for authors to understand material output consequences.

Agents MUST NOT fabricate alternative text, captions, transcripts, labels, conformance evidence, or other human-authored meaning merely to satisfy a checker.

Generated output remains subject to the same accessibility, security, privacy, semantic, and validation contracts as hand-authored output.

## Validation

Inspect generated output, not only generator source. When import/export or transformation rules change, validate preservation of structure, language, direction, labels, media alternatives, form relationships, and other applicable semantics.

## Changelog

Notable authoring-contract changes update [`../CHANGELOG.md`](../CHANGELOG.md).
