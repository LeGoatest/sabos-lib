# SEObasic Entity Relationship Agent Instructions

> **Scope:** `SEObasic/docs/strategies/entity-relationships/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

## Preserve meaning before graph density

Agents MUST preserve human meaning, truthful entity identity, and useful navigation ahead of link-count, entity-count, or keyword metrics.

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

Material changes to entity extraction, canonical entity mapping, or broad internal-link rules are behavioral strategy changes and require validation against affected pages and graph outputs.

Platform-specific claims about entity interpretation belong under [`../../evidence/`](../../evidence/README.md) and [`../../surfaces/`](../../surfaces/README.md), not in this strategy merely because the strategy uses entities.

## Invariant boundary

Truthful entity identity is a cross-domain concern, but the current entity-relationship documents are strategy guidance. Do not silently promote the entire domain into an invariant. Formalize reusable binding identity/relationship obligations under the appropriate invariant or local contract only when substantive requirements justify it.

## Measurement

Link counts, referring domains, graph density, proprietary authority scores, visibility, and ranking are distinct measurements. Use [`../../measurement/`](../../measurement/README.md) rather than redefining them here.

## Changelog

Material changes require an entry in [`../../../CHANGELOG.md`](../../../CHANGELOG.md).
