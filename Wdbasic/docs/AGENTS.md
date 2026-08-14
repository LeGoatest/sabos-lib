# WDBASIC Documentation Agent Instructions

> **Status:** Binding for automated work under `Wdbasic/docs/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Knowledge index:** [`README.md`](README.md)

WDBASIC documentation contains binding invariants/contracts, standards records, practitioner positions, content strategies, technology profiles, design profiles, evidence templates, glossaries, and cross-cutting implementation knowledge.

## Routing

Before changing a subject:

1. Read [`../AGENTS.md`](../AGENTS.md).
2. Read [`core-invariants.md`](core-invariants.md).
3. Read [`README.md`](README.md).
4. Read [`architecture_rules.md`](architecture_rules.md) when implementation/state/request behavior is affected.
5. Read the nearest local `AGENTS.md`.
6. Read the controlling contract/standard/content strategy/technology profile for the subject.
7. Preserve the distinction between binding WDBASIC requirements, external standards, practitioner positions, heuristics, and informative guidance.

## Hardened taxonomy

Route changes into the correct layer:

- **Core invariants** — semantics, accessibility, security/privacy, truthful content, HTTP/URL integrity, resilience, measurable evidence.
- **Experience evaluation** — discoverability, intent alignment, usability, trust, conversion, performance.
- **Content strategies** — PAS when applicable, comparison, informational, transactional, and other intent models.
- **Technology profiles** — HTMX/hypermedia, SSR, static, JS application, Tailwind/TCbasic, hybrid/native.

Do not move technology-specific or persuasion-specific preferences into core invariants unless deliberate evidence-backed change control establishes that they are truly universal WDBASIC requirements.

## Structural rule

Moving WDBASIC knowledge under `docs/` does not weaken its authority. Local `AGENTS.md` files continue to specialize the parent instructions.

When canonical paths move, update root routing, cross-links, and changelogs. Do not rewrite substantive requirements merely to make path cleanup easier.

## Governing maxim

> **Keep core invariants universal, keep diagnostics non-compensatory, keep content strategy intent-dependent, and keep technology rules inside technology profiles.**
