# SEObasic Surface Agent Instructions

> **Status:** Binding for work under `SEObasic/docs/surfaces/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Domain entrypoint:** [`README.md`](README.md)

Surface knowledge owns channel/platform-specific mechanics, policies, eligibility, presentation, and implementation context.

Agents MUST:

- name the platform/product surface when behavior is platform-specific;
- preserve current first-party documentation for current platform behavior where available;
- preserve review/freshness context for changing platform rules;
- route cross-surface methods to [`../strategies/`](../strategies/README.md);
- route supporting research/platform evidence to [`../evidence/`](../evidence/README.md);
- route metric definitions to [`../measurement/`](../measurement/README.md);
- preserve [`../invariants/`](../invariants/README.md).

Agents MUST NOT:

- generalize Google behavior to Bing, ChatGPT Search, Perplexity, Maps, YouTube, social, or paid surfaces without evidence;
- infer ranking/citation guarantees from crawler permission;
- treat one platform's metadata/directive support as universal;
- copy attribution or conversion semantics between surfaces without verifying definitions;
- turn a platform recommendation into a universal invariant.

## Changelog

Material surface-taxonomy or platform-mechanics changes update [`../../CHANGELOG.md`](../../CHANGELOG.md).
