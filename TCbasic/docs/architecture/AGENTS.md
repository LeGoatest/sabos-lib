# TCBasic Architecture Agent Instructions

> **Status:** Binding under `TCbasic/docs/architecture/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Architecture index:** [`README.md`](README.md)

## Preserve

Agents MUST preserve:

- semantic classes as the template-facing API;
- the documented source-layer order;
- `../../src/` as the canonical reference implementation;
- static, complete Tailwind candidates;
- CSS-first Tailwind v4 concepts;
- native semantic attributes as authoritative state where applicable;
- the distinction between repository architecture knowledge and adopter-specific build tooling.

## Do not infer a repository build

Tailwind tooling documentation describes how adopters may implement the architecture. It does not authorize adding package manifests, compiled distributions, release workflows, or repository dependencies to SABOS Lib.

## Contract changes

Material changes to [`rules.md`](rules.md), naming conventions, source-layer responsibility, or public semantic meaning are governed mutations and require the repository change-control rules.

## References

Project-specific or historical patterns belong under [`../references/`](../references/README.md) unless they are intentionally adopted as general TCBasic architecture.
