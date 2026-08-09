# SEObasic Entities Agent Instructions

> **Scope:** `SEObasic/docs/entities/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

## Preserve meaning before graph density

Agents MUST preserve human meaning and useful navigation ahead of link-count, entity-count, or keyword metrics.

Agents MUST NOT:

- link every occurrence of a term;
- create relationships solely to increase graph density;
- force exact-match anchor text;
- create entities without a defensible canonical identity;
- auto-link ambiguous aliases without sufficient context;
- use entity relationships to justify doorway or thin pages;
- rewrite quotations, code, headings, or author intent merely to insert links.

## Evidence

Automatic extraction or link generation SHOULD retain enough evidence to explain why an entity or relationship was proposed.

Material changes to entity extraction, canonical entity mapping, or broad internal-link rules are behavioral changes and require validation against affected pages and graph outputs.

## Contracts

Stable relationship rules SHOULD be formalized under this domain's future `contracts/` directory when they become reusable implementation obligations.

## Changelog

Material changes require an entry in [`../../CHANGELOG.md`](../../CHANGELOG.md).
