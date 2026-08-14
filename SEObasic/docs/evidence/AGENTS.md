# SEObasic Evidence Agent Instructions

> **Status:** Binding for work under `SEObasic/docs/evidence/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Domain entrypoint:** [`README.md`](README.md)  
> **Claim contract:** [`../invariants/evidence-classification.md`](../invariants/evidence-classification.md)

Evidence preserves why a claim is believed and how far it can be generalized.

Agents MUST:

- preserve evidence class and source provenance;
- prefer primary platform documentation for current platform behavior;
- prefer primary papers/proceedings/publisher records for scholarly findings;
- check records labeled `preprint` for later peer-reviewed publication before advancing review status;
- preserve contrary, null, and mixed findings;
- preserve method, sample, model, domain, geography, time, and platform limitations when material;
- distinguish practitioner positions from external standards or platform facts;
- preserve historical excerpts as historical records rather than rewriting them to match current conclusions.

Agents MUST NOT:

- convert one study, benchmark, crawler rule, or platform statement into a universal requirement;
- treat Google Scholar, Semantic Scholar, DBLP, Crossref, OpenAlex, Scopus, or Web of Science as substantive proof by themselves;
- call platform guidance a formal standard merely because it is stored beside standards/protocol references;
- suppress evidence because it contradicts a current SEObasic position;
- silently promote evidence into an invariant.

## Promotion rule

When evidence justifies changing a strategy, surface profile, measurement interpretation, or invariant, make that authority change explicitly in the owning role and record the material correction.

## Changelog

Material evidence-framework or classification changes update [`../../CHANGELOG.md`](../../CHANGELOG.md).
