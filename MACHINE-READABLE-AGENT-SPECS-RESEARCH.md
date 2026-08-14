# Machine-Readable Agent Specifications: Evidence Review

> **Status:** Informative research record  
> **Scope:** SABOS Lib, with specific application to WDBASIC and SEObasic  
> **Research date:** 2026-08-14  
> **Question:** Is there credible evidence that a dedicated machine-readable `agents/` directory containing YAML/JSON manifests, rules, profiles, components, design tokens, schemas, validation/conformance definitions, and evidence mappings is useful compared with relying on Markdown/`AGENTS.md` alone?

## Executive answer

Yes, but only for some parts of the proposed system.

The strongest evidence supports **machine-readable specifications for things that can be validated, exchanged, resolved, or enforced mechanically**: schemas, design tokens, component contracts, enumerated rules, metric definitions, conformance assertions, and evidence/provenance mappings.

The evidence does **not** establish that a dedicated directory named `agents/` is itself beneficial. Current empirical work supports keeping persistent agent instruction context small and scoped. Several studies show that repository context files can increase cost, exploration, and complexity without improving correctness. The best-supported architecture is therefore a hybrid:

```text
AGENTS.md
    -> short discovery/bootstrap/routing layer

human-readable Markdown
    -> rationale, interpretation, examples, tradeoffs, research, practitioner positions

machine-readable specifications
    -> schemas, stable IDs, tokens, contracts, enumerations, validation rules, provenance/evidence links

executable checks in adopting projects
    -> CI, schema validation, linters, structural checks, tests
```

For SABOS Lib, machine-readable specifications should be introduced only where a real consumer or validation use case exists. They should not be created merely to mirror every Markdown document.

## Evidence classification

This review separates:

- **Direct evidence** — research about coding-agent context files or executable agent constraints.
- **Analogous evidence** — standards and software-engineering practice showing benefits of machine-readable schemas, design tokens, provenance models, policy-as-code, or structured specifications.
- **Counterevidence** — findings that additional context or duplicated configuration can reduce agent performance or increase maintenance burden.

There is currently no published empirical study showing that a repository folder specifically named `agents/` containing YAML/JSON versions of WDBASIC/SEObasic would improve task success.

## Hypothesis-by-hypothesis findings

### 1. Machine-readable normative rules improve deterministic validation/enforcement

**Evidence strength: Strong.**

Natural-language agent instructions are advisory context, not enforcement. ContextCov directly addresses this gap by compiling natural-language agent constraints into executable checks. Across 723 repositories it synthesized more than 46,000 checks with 99.997% syntax validity, supporting the principle that stable constraints benefit from mechanical enforcement rather than prompt-only compliance.

Relevant source:

- Reshabh K. Sharma, **ContextCov: Deriving and Enforcing Executable Constraints from Agent Instruction Files** (2026): https://arxiv.org/abs/2603.00822

This supports machine-readable or executable representations for rules such as:

- permitted/forbidden structural relationships;
- required metadata fields;
- schema conformance;
- page-type requirements;
- required evidence identifiers;
- token type/value constraints;
- metric semantics;
- component state requirements.

It does **not** mean every prose rule should be converted into YAML. Ambiguous, contextual, or judgment-heavy requirements are poor candidates for deterministic enforcement.

### 2. Structured specs improve agent comprehension/adherence

**Evidence strength: Mixed.**

There is evidence that agents pay attention to repository instructions, but not that more structure automatically improves correctness.

Gloaguen et al. found repository context files generally produced no task-success improvement while increasing inference cost by more than 20%. The files caused broader exploration and more testing, showing that agents did follow the added instructions, but the additional behavior did not reliably produce better results.

Relevant source:

- Thibaud Gloaguen, Niels Mündler, Mark Müller, Veselin Raychev, Martin Vechev, **Evaluating AGENTS.md: Are Repository-Level Context Files Helpful for Coding Agents?** (2026): https://arxiv.org/abs/2602.11988
- Venue record: https://www.sri.inf.ethz.ch/publications/gloaguen2026agentsmd

Developer-written context was better than automatically generated context in that study, but still increased cost and steps. The practical implication is that **high-salience, human-curated instructions help more than indiscriminate context expansion**.

A second controlled study found no measurable correctness gain from context strategy across Claude Code and Codex tasks, again suggesting that repository context is not a correctness mechanism by itself.

- Prakhar Khatri, **Do Context Files Help Coding Agents? A Two-Agent Ablation Study on Real Repositories** (2026): https://arxiv.org/abs/2607.27250

Therefore, structured machine-readable files should be used because tools can consume or validate them, not because JSON/YAML is assumed to be intrinsically easier for an LLM to understand than well-written Markdown.

### 3. Modular manifests and references improve context selection and reduce irrelevant context

**Evidence strength: Moderate to strong, but mostly indirect.**

Empirical studies show that context bloat is a real problem. A 2026 study of 100 popular repositories found common configuration smells in agent instruction files, including:

- Lint Leakage: 62%
- Context Bloat: 42%
- Skill Leakage: 35%

Context Bloat, Skill Leakage, and conflicting instructions frequently co-occurred.

Source:

- Helio Victor F. dos Santos, Vitor Costa, Joao Eduardo Montandon, Luciana Lourdes Silva, Marco Tulio Valente, **Configuration Smells in AGENTS.md Files: Common Mistakes in Configuring Coding Agents** (2026): https://arxiv.org/abs/2606.15828

The broader empirical study **Agent READMEs** analyzed 2,303 agent context files from 1,925 repositories and found that these files behave like actively maintained configuration artifacts rather than static documentation. It also found that security and performance requirements were much less commonly represented than implementation and architecture context.

Source:

- Worawalan Chatlatanagulchai et al., **Agent READMEs: An Empirical Study of Context Files for Agentic Coding** (2025): https://arxiv.org/abs/2511.12884

These findings support **progressive disclosure and scoped references**. A small bootstrap file can route an agent toward domain-specific material only when needed.

They do not prove that YAML manifests are superior to Markdown links. The benefit comes from **scope and selectivity**, not the serialization format itself.

### 4. Schemas improve consistency and prevent invalid specifications

**Evidence strength: Strong.**

This is one of the clearest reasons to adopt machine-readable artifacts.

Formal schema systems make it possible to validate field presence, types, enumerations, nesting, references, and other structural invariants without relying on an LLM to interpret prose correctly.

Structured-output research also shows that unconstrained LLMs can produce syntactically valid but structurally invalid output. Grammar- and schema-constrained generation systems substantially reduce these failures.

Relevant research:

- Shubham Ugare et al., **SynCode: LLM Generation with Grammar Augmentation** (TMLR, 2025): https://openreview.net/forum?id=HiUZtgAPoH

SynCode reports eliminating JSON syntax errors in its evaluated structured-generation setting and reducing Python/Go syntax errors by 96.07%, illustrating the broader value of executable grammar/schema constraints.

For SABOS Lib, schemas are appropriate for artifacts such as:

- WDBASIC component contracts;
- page-type definitions;
- design-token files;
- conformance reports;
- SEObasic metric definitions;
- evidence records;
- structured-data requirements;
- profile manifests;
- rule registries with stable identifiers.

### 5. Evidence mappings improve provenance and auditability

**Evidence strength: Strong as a general engineering principle; indirect for coding agents.**

The W3C PROV family exists specifically to represent provenance relationships in a machine-processable form. A structured evidence mapping can connect a rule or recommendation to its source, evidence type, date, scope, and authority without forcing readers or tools to reconstruct provenance from prose.

Source:

- W3C, **PROV-O: The PROV Ontology**: https://www.w3.org/TR/prov-o/

For SEObasic in particular, this is useful because claims may come from different authority classes:

- Google documentation;
- search-engine statements;
- formal standards;
- peer-reviewed or preprint research;
- practitioner observations;
- vendor-specific measurements;
- internal experiments.

A machine-readable evidence record can preserve those distinctions and prevent a citation from silently becoming a binding rule.

Recommended fields include:

```yaml
id:
claim_id:
source_type:
source_url:
title:
author_or_publisher:
published_at:
retrieved_at:
evidence_strength:
scope:
supports:
contradicts:
notes:
```

The YAML itself should not decide authority. Authority must remain defined by governance.

### 6. Design tokens/components/page-type contracts improve generation consistency

**Evidence strength: Strong for interoperability and consistency; indirect for LLM quality.**

The Design Tokens Community Group published a stable 2025.10 format specifically to exchange design decisions across tools and technologies. The specification defines machine-readable token structure, types, groups, references, aliases, inheritance, and validation behavior.

Source:

- W3C Design Tokens Community Group, **Design Tokens Format Module 2025.10**: https://www.w3.org/community/reports/design-tokens/CG-FINAL-format-20251028/

This strongly supports machine-readable WDBASIC design tokens because tokens are inherently structured data that can be reused by design tools, code generators, validators, documentation tooling, and adopting implementations.

The same logic applies to component/page contracts where fields are finite and testable, for example:

```yaml
component: faq
required_semantics:
  - heading
  - disclosure_trigger
  - disclosure_panel
required_states:
  - default
  - focus
  - expanded
accessibility:
  keyboard_required: true
  min_target_px: 44
```

The benefit is not that an LLM prefers YAML. The benefit is that **multiple consumers share one explicit contract**.

### 7. A dedicated `agents/` directory provides discoverability or ecosystem benefits beyond `AGENTS.md`

**Evidence strength: Weak / unsupported.**

There is strong ecosystem recognition for files such as:

- `AGENTS.md`
- `CLAUDE.md`
- platform-specific instruction files

There is no equivalent broadly recognized convention for a repository-wide `agents/` directory containing machine-readable domain standards.

A dedicated directory can still be useful internally if SABOS Lib defines and documents the convention, but the directory name itself does not create interoperability.

This matters because WDBASIC and SEObasic are not merely agent configuration systems. Their schemas, evidence records, tokens, metrics, and contracts may be consumed by humans, validators, generators, CI, and other tools. Calling all of that `agents/` risks incorrectly implying that the artifacts exist only for AI agents.

**Evidence-weighted recommendation:**

- Keep root and nested `AGENTS.md` files as the recognized discovery/bootstrap layer.
- Put machine-readable domain specifications under a neutral artifact name such as `spec/`, `schemas/`, or another subsystem-owned contract directory when real artifacts exist.
- Reserve an `agents/` directory, if one is ever added, for agent-specific manifests, adapters, routing, context indexes, or tool instructions rather than making it the universal home of WDBASIC/SEObasic truth.

### 8. Making machine-readable files normative while Markdown is explanatory reduces or increases ambiguity/drift

**Evidence strength: Conditional.**

A machine-readable normative source can reduce ambiguity **only if it is genuinely the single source of truth for the fields it owns**.

A dual-maintained architecture where the same rule is independently written in both Markdown and YAML creates a predictable drift problem. The agent-context literature already shows that instruction/configuration files evolve frequently and can become bloated or conflicting.

The safe pattern is:

```text
one authoritative representation per fact
        ↓
stable IDs/references
        ↓
other representations link to or are generated from it
```

Examples:

- A design-token value is authoritative in the token file; Markdown explains how and why to use it.
- A metric identifier and unit are authoritative in a schema/registry; Markdown explains interpretation and examples.
- A conformance rule identifier and machine-testable assertion are authoritative in the rule registry; Markdown provides rationale and exceptions.
- A practitioner philosophy or judgment-heavy recommendation remains authoritative in Markdown and is referenced by ID from machine-readable indexes rather than rewritten as pseudo-formal YAML.

## Direct contradiction in the current AGENTS.md evidence

Two 2026 empirical studies reach apparently different conclusions about `AGENTS.md` efficiency, which is important to preserve rather than flatten.

### Efficiency improvement study

Lulla et al. analyzed 10 repositories and 124 pull requests under conditions with and without `AGENTS.md`. They report:

- median runtime reduction: **28.64%**;
- median output-token reduction: **16.58%**;
- mean wall-clock time: **162.94 s without** vs **129.91 s with** `AGENTS.md`;
- comparable task-completion behavior in their evaluation.

Source:

- Jai Lal Lulla et al., **On the Impact of AGENTS.md Files on the Efficiency of AI Coding Agents** (ICSE JAWs 2026): https://arxiv.org/abs/2601.20404

### No-success-gain / higher-cost study

Gloaguen et al. found no overall task-success improvement and inference cost increases above 20% when context files were included, especially for automatically generated files.

Source:

- https://arxiv.org/abs/2602.11988

These are not necessarily irreconcilable. They measure different repositories, tasks, agents, context construction methods, and outcomes. Together they support a narrower conclusion:

> Repository guidance can materially change agent behavior and efficiency, but more context is not inherently better. Quality, scope, task fit, and redundancy matter.

That conclusion favors a small routing layer plus scoped machine-readable artifacts where deterministic consumption is possible.

## Practical recommendation for WDBASIC

### Good machine-readable candidates

- design tokens;
- token aliases/references/types;
- component contracts;
- component states;
- page-type contracts;
- accessibility assertions that can be tested;
- semantic HTML requirements where structurally expressible;
- form-field/state contracts;
- validation/conformance result formats;
- stable rule identifiers;
- profile manifests;
- evidence/source mappings.

### Keep primarily in Markdown

- architecture rationale;
- tradeoffs;
- practitioner positions;
- progressive-enhancement philosophy;
- examples with contextual explanation;
- accessibility interpretation where judgment is required;
- security rationale/threat discussion;
- implementation guidance that depends on framework/project context;
- research reviews.

## Practical recommendation for SEObasic

### Good machine-readable candidates

- metric registry and units;
- provider-specific metric mappings;
- structured-data/schema requirements;
- technical audit assertions;
- page/entity relationship records;
- canonical rule IDs;
- evidence mappings;
- claim/source provenance;
- local SEO/service-area data contracts;
- content/entity inventories;
- conformance/measurement result formats.

### Keep primarily in Markdown

- T.E.S.T.I.N.G. philosophy;
- content strategy;
- pain/agitate/solution guidance;
- E-E-A-T interpretation;
- AEO/GEO research synthesis;
- search-engine behavior caveats;
- practitioner positions;
- competitive-analysis reasoning;
- evidence interpretation and limitations;
- recommendations that require contextual judgment.

## Recommended repository architecture

Do **not** create a broad `agents/` mirror of all documentation.

A better evidence-aligned pattern is:

```text
AGENTS.md                         # small bootstrap / routing layer

governance/                      # human-readable authority and invariants

Wdbasic/
  README.md
  AGENTS.md
  docs/                           # governed human knowledge
  spec/                           # only when real machine-readable contracts exist
    schemas/
    tokens/
    components/
    page-types/
    conformance/

SEObasic/
  README.md
  AGENTS.md
  docs/                           # governed human knowledge
  spec/                           # only when real machine-readable contracts exist
    schemas/
    metrics/
    evidence/
    entities/
    conformance/

agents/                           # optional future adapter layer only
  index.yaml                      # optional pointers/capabilities
  adapters/                       # vendor/tool-specific mappings if needed
```

This follows the existing SABOS Lib rule that artifact directories should exist only when real artifacts exist, rather than for structural symmetry.

## Source-of-truth safeguards

If machine-readable specifications are added, adopt these safeguards:

1. **One fact, one authority.** Do not independently maintain the same normative value in Markdown and YAML/JSON.
2. **Stable IDs.** Give rules, metrics, components, claims, profiles, and evidence records durable identifiers.
3. **Schema validation.** Every machine-readable format should have a schema before being treated as normative.
4. **Explicit versions.** Include schema/spec versions and migration rules when formats evolve.
5. **Generated views where practical.** Generate human tables/reference pages from machine data when the machine data owns the fact.
6. **References instead of duplication.** Markdown should link to IDs; machine files should link back to rationale/source documents.
7. **Authority metadata.** Distinguish binding contract, practitioner position, external standard, platform guidance, research evidence, example, and historical reference.
8. **No automatic promotion.** A machine-readable entry is not binding merely because it is structured.
9. **Consumer-first creation.** Do not create a machine-readable file until there is a validator, generator, indexer, exchange use case, or concrete agent/tool consumer.
10. **Conformance tests.** When a format becomes normative, test both its schema validity and the invariants it claims to represent.

## Evidence-weighted decision

### Recommended

- Keep `AGENTS.md` as the discovery/bootstrap layer.
- Keep human reasoning, rationale, positions, and research in Markdown.
- Add machine-readable specifications selectively for deterministic contracts.
- Prefer subsystem-owned `spec/`/`schemas/` artifacts over using `agents/` as a universal data directory.
- If an `agents/` directory is added later, use it as an adapter/index layer pointing to canonical domain specs rather than duplicating them.
- Make mechanical rules executable in adopting projects whenever practical.

### Not recommended

- Converting all WDBASIC/SEObasic Markdown into YAML/JSON.
- Loading an entire machine-readable corpus into every agent session.
- Treating YAML/JSON as automatically more understandable to LLMs.
- Maintaining two independent normative copies of the same rule.
- Creating an `agents/` directory only for symmetry or appearance.
- Treating a machine-readable evidence record as proof that the underlying claim is universally true.

## Research-source notes

Google Scholar was included as a discovery target for academic literature. Direct Scholar result pages for several very recent 2026 papers were not indexable through the available search interface, so the review relies on the primary arXiv/OpenReview/venue records and cross-checks such as Semantic Scholar where useful rather than claiming Scholar-specific metadata that could not be verified.

## Selected sources

### Coding-agent context and governance

1. Lulla, Mohsenimofidi, Galster, Zhang, Baltes, Treude. **On the Impact of AGENTS.md Files on the Efficiency of AI Coding Agents**. 2026. https://arxiv.org/abs/2601.20404
2. Gloaguen, Mündler, Müller, Raychev, Vechev. **Evaluating AGENTS.md: Are Repository-Level Context Files Helpful for Coding Agents?** 2026. https://arxiv.org/abs/2602.11988
3. Chatlatanagulchai et al. **Agent READMEs: An Empirical Study of Context Files for Agentic Coding**. 2025. https://arxiv.org/abs/2511.12884
4. Sharma. **ContextCov: Deriving and Enforcing Executable Constraints from Agent Instruction Files**. 2026. https://arxiv.org/abs/2603.00822
5. dos Santos et al. **Configuration Smells in AGENTS.md Files: Common Mistakes in Configuring Coding Agents**. 2026. https://arxiv.org/abs/2606.15828
6. Khatri. **Do Context Files Help Coding Agents? A Two-Agent Ablation Study on Real Repositories**. 2026. https://arxiv.org/abs/2607.27250

### Structured specifications and validation

7. Ugare, Suresh, Kang, Misailovic, Singh. **SynCode: LLM Generation with Grammar Augmentation**. TMLR, 2025. https://openreview.net/forum?id=HiUZtgAPoH
8. W3C Design Tokens Community Group. **Design Tokens Format Module 2025.10**. https://www.w3.org/community/reports/design-tokens/CG-FINAL-format-20251028/
9. W3C. **PROV-O: The PROV Ontology**. https://www.w3.org/TR/prov-o/

### Existing SABOS Lib research basis

10. [`governance/research-basis.md`](governance/research-basis.md) — existing research on scoped `AGENTS.md`, progressive disclosure, governance, and mechanical enforcement, including OpenAI, Anthropic, GitHub, Google/Gemini, academic studies, and internal SAGE comparisons.

## Final judgment

A machine-readable layer is useful for SABOS Lib, but **the useful unit is the machine-readable contract, not the `agents/` folder**.

WDBASIC and SEObasic should gain machine-readable artifacts when a rule/data structure has a concrete need for validation, exchange, generation, indexing, or provenance. `AGENTS.md` should remain the high-salience discovery layer. Markdown should remain the home for human judgment, rationale, research, and practitioner knowledge. A future `agents/` directory should be an adapter/index layer at most, unless later empirical evidence establishes a stronger ecosystem convention.