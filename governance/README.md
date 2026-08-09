# Repository Governance

> **Status:** Binding  
> **Scope:** Entire repository  
> **Purpose:** Define the authority, invariants, change-control process, and validation expectations that agent instructions route into.

The repository uses a layered governance model:

```text
AGENTS.md
    ↓
governance/
    ├── authority.md
    ├── invariants.md
    ├── change-control.md
    ├── validation.md
    └── research-basis.md
    ↓
subsystem contracts
    ├── Wdbasic/
    ├── TCbasic/
    └── SEObasic/
    ↓
implementation + tests + generated output
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
5. **Evidence** — tests, builds, rendered output, generated artifacts, or other observable results showing that the implementation satisfies the contract.

## Document map

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
- Nested instructions contain rules specific to their subsystem.
- Detailed architecture, standards, and procedures remain in their canonical documents.
- Build and test commands remain in the package/configuration that actually owns them when possible.
- Mechanical requirements should migrate into tests, CI, schema validation, linters, or other executable checks when practical.

This avoids turning persistent agent context into a duplicate encyclopedia of the repository.

## Relationship to subsystem governance

Subsystems retain authority over their own domain:

- `Wdbasic/` — architecture, semantics, accessibility, security, implementation behavior, and related web-framework contracts.
- `TCbasic/` — Tailwind/package implementation contracts and executable tooling owned by that subsystem.
- `SEObasic/` — search visibility, structured data, content-discovery, entity relationships, and the canonical T.E.S.T.I.N.G. content philosophy.

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
- repository-specific linters.

The governance documents remain the human-readable source for why the check exists and what authority it protects.
