# Repository Knowledge System Model

> **Status:** Binding structural governance  
> **Scope:** Repository `*basic` knowledge systems and comparable governed subject frameworks  
> **Purpose:** Define how accumulated practitioner knowledge, explicit positions, contracts, standards, research, references, examples, glossaries, and agent instructions are organized without flattening their authority.

## 1. Principle

A `*basic` system is not a checklist or a documentation dump.

It is a versioned body of professional knowledge intended to preserve:

- accumulated practitioner experience;
- lessons from successful and failed implementations;
- explicitly preferred approaches and acknowledged bias;
- formal contracts and invariants;
- industry practices;
- platform/vendor guidance;
- formal standards/specifications;
- empirical and scholarly research;
- historical source material and decisions;
- examples and implementation evidence;
- subject terminology and disambiguation.

These knowledge types MUST remain distinguishable because they do not have equal authority.

## 2. Knowledge-to-contract flow

```text
practitioner experience + historical lessons
                +
industry practice + platform/vendor guidance
                +
formal standards + research evidence
                ↓
        documented understanding
                ↓
     explicit practitioner position
                ↓
          binding contract
                ↓
 implementation / campaign / documentation practice
                ↓
        validation and outcomes
                ↓
       additional knowledge
```

The flow is not automatic. Research does not become a contract merely because it is published. A practitioner preference does not become universal truth merely because it is intentional. An example does not become authority merely because it works once.

## 3. Core knowledge types

### Canonical philosophy or definition

User-authored or explicitly adopted wording whose identity matters and which must not be silently rewritten into a more familiar industry interpretation.

### Practitioner experience

Observed lessons accumulated through actual work. Experience may support a position but should preserve enough context to understand where the lesson came from.

### Practitioner position

An explicit preferred approach or bias adopted by the framework after considering experience, tradeoffs, evidence, or project values.

A position may deliberately diverge from common industry practice. That divergence SHOULD be documented rather than normalized away.

### Contract

A binding normative obligation defining what a governed implementation, workflow, document, campaign, measurement system, or agent MUST, SHOULD, or MUST NOT do.

Contracts should be used when reinterpretation or silent drift would be harmful.

### Industry practice

A common professional convention or pattern. It may inform a position but is not automatically normative.

### Platform/vendor guidance

Documentation, policy, recommendations, or behavior defined by an external platform/vendor. It is authoritative for the platform behavior/policy within its stated scope, not universal law.

### Formal standard/specification

A standard or specification with an identifiable owner, version/status, and scope. Its normative force is limited to the actual applicability of that standard.

### Research evidence

Empirical, scholarly, experimental, observational, or systematic evidence. Method, population, date, limitations, and conflicting findings SHOULD remain visible when they affect interpretation.

### Historical reference

Prior decisions, source excerpts, recovered discussions, older implementations, and historical examples preserved for context. Historical material does not automatically override current contracts.

### Example

An illustrative implementation or case. Examples demonstrate possibilities and may provide evidence, but they are not authority by existence alone.

### Glossary

A terminology/disambiguation layer. Glossaries are informative unless a binding contract explicitly adopts a glossary definition.

## 4. Required system-root files

A governed top-level knowledge system SHOULD contain:

```text
<System>basic/
├── README.md
├── AGENTS.md
├── CHANGELOG.md
└── glossaries/
```

### `README.md`

Human entrypoint. Defines purpose, scope, authority map, domain map, core positions/contracts, and where deeper knowledge lives.

### `AGENTS.md`

Agent entrypoint. Routes automated work to the correct local authority, contracts, terminology, evidence, validation, and change-control requirements. It should remain operational rather than duplicate the full knowledge base.

### `CHANGELOG.md`

Human-curated history of notable framework changes. It does not replace git history.

### `glossaries/`

Subject terminology. A system glossary SHOULD identify ambiguous, provider-specific, proprietary, historical, or easily conflated terms when those distinctions affect implementation or analysis.

## 5. Recommended domain layers

Use only layers justified by the subject. Common examples include:

```text
contracts/
positions/
principles/
standards/
research/
references/
examples/
profiles/
patterns/
anti-patterns/
compliance/
```

A framework MUST NOT create empty bureaucracy merely to make directory trees symmetrical.

Create a directory when it represents a real knowledge, authority, evidence, workflow, or terminology boundary expected to accumulate material.

## 6. Local `AGENTS.md` rule

A substantive subject directory SHOULD have its own `AGENTS.md` when the directory establishes one or more of:

- local authority;
- binding contracts;
- distinct terminology;
- a distinct evidence model;
- specialized validation;
- a different source-of-truth relationship;
- generated-vs-source behavior;
- platform-specific constraints;
- high-risk mutation boundaries.

The local file MUST inherit parent governance and may strengthen but not silently weaken it.

Not every implementation leaf directory requires its own `AGENTS.md`. Avoid duplicating identical instructions into folders that introduce no additional authority or behavior.

## 7. Local README rule

A substantive knowledge directory SHOULD have a `README.md` when readers need orientation to understand:

- what the directory owns;
- what it does not own;
- controlling contracts or evidence;
- its internal document map;
- relationships to adjacent domains.

A directory containing only implementation/source files does not require a README merely for structural symmetry.

## 8. Contract formation

A contract SHOULD identify, as applicable:

- status;
- scope;
- owner/domain;
- normative requirements;
- rationale;
- evidence or source basis;
- validation/evidence requirements;
- exceptions;
- related contracts;
- change/mutation implications.

Contracts MUST NOT hide uncertainty in their rationale. If research is mixed or a rule is primarily a practitioner position, say so.

Normative keywords such as MUST, MUST NOT, SHOULD, SHOULD NOT, and MAY should be used deliberately rather than as decorative emphasis.

## 9. Position and bias recording

The framework SHOULD preserve explicit practitioner bias when it materially affects recommendations.

A position record may include:

```yaml
position:
  subject: <subject>
  stance: <preferred approach>
  basis:
    - practitioner-experience
    - research
    - standard
    - platform-guidance
  tradeoffs: <known costs>
  divergence: <where it differs from common practice>
  confidence: <optional qualitative assessment>
  last_reviewed: <date-or-version>
```

This prevents agents from erasing deliberate preferences merely because another approach is more fashionable or common.

## 10. Research discipline

Research records SHOULD distinguish:

- source/citation;
- publication date;
- source type;
- research question;
- method/population when relevant;
- findings;
- limitations;
- applicability to the framework;
- conflicts with existing evidence/positions;
- whether the result changed a contract or position.

Research folders are evidence collections and synthesis layers, not automatic sources of law.

## 11. Standards discipline

Standards records SHOULD preserve:

- owner/publisher;
- exact standard/specification/policy name;
- version or publication status;
- normative vs informative status;
- scope/applicability;
- relevant framework contracts or positions;
- review date when the source can change.

Do not describe draft, deprecated, platform-specific, or informative material as universally binding.

## 12. Reference discipline

Historical/source material should preserve provenance and wording where accuracy matters.

Do not silently rewrite old source excerpts to match current terminology. Current contracts can supersede historical guidance without altering the historical record.

## 13. Example discipline

Examples should state what they demonstrate and which contracts they are expected to satisfy.

Examples MUST NOT become hidden normative requirements through copy/paste. If a pattern should become mandatory, adopt it deliberately as a contract or position.

## 14. Glossary discipline

Glossaries SHOULD separate:

- formal definitions;
- platform/provider-specific definitions;
- proprietary metrics or terminology;
- framework-defined terms;
- common shorthand;
- ambiguous terms requiring contextual qualification.

A binding document should still provide enough local context to understand a critical obligation without requiring a glossary lookup.

## 15. Changelog traceability

Notable changes to knowledge, contracts, positions, terminology, or authority MUST follow repository changelog governance.

Moving material without changing its substance should be recorded as structural change when it materially changes canonical paths or authority routing.

## 16. Governing doctrine

> **Preserve what was learned, preserve where it came from, distinguish what is believed from what is required, and make binding rules explicit.**

The purpose of structure is not bureaucracy. It is to prevent accumulated professional knowledge from being flattened, forgotten, hallucinated, or silently rewritten by future contributors and agents.
