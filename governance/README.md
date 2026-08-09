# Repository Governance

> **Status:** Binding  
> **Scope:** Entire repository  
> **Purpose:** Define the authority, invariants, change-control process, and validation expectations that agent instructions route into.

The repository uses a layered governance model:

```text
AGENTS.md
    ↓
governance/
    ├── AGENTS.md
    ├── authority.md
    ├── invariants.md
    ├── change-control.md
    ├── validation.md
    └── research-basis.md
    ↓
subsystem knowledge + contracts
    ├── Wdbasic/
    ├── TCbasic/
    ├── SEObasic/
    └── READMEbasic/
    ↓
implementation / campaigns / documentation
    ↓
measurement + validation evidence
```

The root `AGENTS.md` is intentionally a compact operational entrypoint. It is not the complete governance manual.

## Governance doctrine

> **Agents may implement within established contracts. They may not silently redefine those contracts.**

The operating rule is:

> **Preserve invariants. Minimize scope. Validate independently. Escalate mutations.**

## Governance primitives

The framework uses five primitives:

1. **Authority** — who or what is allowed to decide a rule or contract.
2. **Invariant** — behavior or structure that must not change implicitly.
3. **Scope** — the smallest area governed or changed by a rule or task.
4. **Mutation** — an intentional change to an invariant, architecture, public contract, or governance rule.
5. **Evidence** — tests, builds, rendered output, generated artifacts, measurements, research records, platform records, or other observable results used to evaluate a contract or decision.

## Document map

### [`AGENTS.md`](AGENTS.md)
Defines agent behavior for editing governance itself.

### [`authority.md`](authority.md)
Defines instruction hierarchy, human authority, subsystem ownership, and the limits of agent discretion.

### [`invariants.md`](invariants.md)
Defines repository-wide truths that ordinary implementation work must preserve.

### [`change-control.md`](change-control.md)
Defines when a normal implementation becomes a governed mutation and what approval is required.

### [`validation.md`](validation.md)
Defines the evidence model and the Thorough, Early, Systematic, Transparent, Independent, Non-destructive, Gradual implementation philosophy.

### [`research-basis.md`](research-basis.md)
Records the external and internal evidence used to design this governance model. It is informative rather than normative.

## Layering rule

Governance should be loaded progressively rather than copied into every agent instruction file.

- Root instructions contain only high-salience repository-wide rules and routing.
- Subsystem root instructions route work into the correct local knowledge/contract boundary.
- Nested `AGENTS.md` files specialize behavior where a subject establishes a distinct authority, evidence, terminology, measurement, or contract boundary.
- Detailed architecture, standards, research, references, glossaries, examples, measurements, and procedures remain in their canonical locations.
- Build and test commands remain in the package/configuration that actually owns them when possible.
- Mechanical requirements should migrate into tests, CI, schema validation, linters, or other executable checks when practical.

This avoids turning persistent agent context into a duplicate encyclopedia of the repository while preserving deep subject knowledge.

## Relationship to subsystem governance

Subsystems retain authority over their own domain:

- `Wdbasic/` — web architecture, semantics, accessibility, security, implementation behavior, validation, profiles, glossaries, and related contracts.
- `TCbasic/` — Tailwind/package implementation contracts, executable tooling, tests, build/token/component/integration knowledge, examples, and glossaries.
- `SEObasic/` — search/discovery/marketing knowledge spanning websites, technical SEO, content, local search/GBP/maps, organic social, paid media/PPC, YouTube, entities, measurement/analytics semantics, contracts, research, standards, references, and glossaries.
- `READMEbasic/` — README/documentation knowledge, integrity contracts, templates, research/best practices, resources, glossaries, and agent behavior for accurate project entrypoints.

A subsystem may strengthen repository-wide requirements but may not silently weaken repository invariants.

## Enforcement direction

Markdown establishes intent and authority but is not sufficient enforcement by itself.

Where a rule is stable and mechanically testable, prefer encoding it in:

- tests;
- CI checks;
- structural validation;
- schema validation;
- build checks;
- generated-output checks;
- metric/schema validation;
- repository-specific linters.

The governance documents remain the human-readable source for why the check exists and what authority it protects.
