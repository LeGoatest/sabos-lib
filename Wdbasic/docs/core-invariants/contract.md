# WDBASIC v2.1 Core Contract

> **Status:** Binding router contract  
> **Primary authority:** [`README.md`](README.md)

This contract routes WDBASIC v2.1 through its four-domain model rather than duplicating technology, content-strategy, and evaluation rules in one monolithic document.

## 1. Core obligations

An adopting implementation must resolve every applicable invariant under:

- semantics;
- accessibility;
- security/privacy;
- truthful content;
- HTTP/URL integrity;
- resilience;
- measurable evidence.

Known failures remain failures. Unknown or untested conditions remain unresolved.

## 2. Architecture selection

WDBASIC is framework-independent. Select the applicable implementation profile under [`../technology-profiles/`](../technology-profiles/README.md). A technology profile may specialize how invariants are satisfied but may not weaken them.

## 3. Experience evaluation

After invariant gates are resolved, use [`../experience-evaluation/`](../experience-evaluation/README.md) to diagnose discoverability, intent alignment, usability, trust, conversion, and performance.

Experience dimensions are non-compensatory diagnostics, not a universal summed quality score.

## 4. Content strategy selection

Select content structure according to actual user intent and decision stage under [`../content-strategies/`](../content-strategies/README.md).

PAS is one strategy. It is not the default architecture for every page.

## 5. External standards and evidence

External standards retain their own scopes, applicability, and conformance language. WDBASIC may adopt stricter internal requirements but may not rewrite an external failure into a pass.

The standards/evidence registry is [`measurable-evidence/standards.md`](measurable-evidence/standards.md), with research and correction history under [`measurable-evidence/research/`](measurable-evidence/research/README.md).

## 6. Exceptions

An exception records the rule bypassed, reason, scope, accessibility/security/privacy/search/performance impact as applicable, owner, review condition, fallback, and remediation path.

An exception cannot falsify an external conformance claim, erase a known invariant failure, create false evidence, or turn untrusted client state into a trusted security boundary.

## Governing doctrine

> Be strict about outcomes, evidence, truth, access, integrity, and recovery; be flexible about implementation technology and persuasion sequence when multiple valid approaches satisfy the invariants.
