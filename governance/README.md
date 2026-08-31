# Repository Governance

> **Status:** Binding  
> **Scope:** Entire repository  
> **Purpose:** Define the authority, invariants, knowledge-system structure, change-control process, agent-operation contracts, and validation expectations that agent instructions route into.

The repository uses a layered governance model:

```text
AGENTS.md
    ↓
governance/
    ├── AGENTS.md
    ├── authority.md
    ├── invariants.md
    ├── knowledge-system-model.md
    ├── change-control.md
    ├── validation.md
    ├── research-basis.md
    └── agent-operations/
        ├── contracts/
        ├── positions/
        ├── patterns/
        ├── research/
        └── references/
    ↓
subsystem entrypoints
    ├── Wdbasic/
    ├── TCbasic/
    ├── SEObasic/
    └── READMEbasic/
    ↓
docs/ knowledge + subject artifacts + examples
    ↓
implementation / campaigns / documentation practice
    ↓
measurement + validation evidence
```

The root `AGENTS.md` is intentionally a compact operational entrypoint. It is not the complete governance manual.

## Governance doctrine

> **Agents may implement within established contracts. They may not silently redefine those contracts.**

The operating rule is:

> **Preserve invariants. Minimize scope. Validate independently. Escalate mutations.**

For agent context and execution state, the complementary rule is:

> **Retrieve selectively. Preserve established task state. Keep durable context current. Distinguish authority from evidence.**

## Governance primitives

The framework uses five primitives:

1. **Authority** — who or what is allowed to decide a rule or contract.
2. **Invariant** — behavior or structure that must not change implicitly.
3. **Scope** — the smallest area governed or changed by a rule or task.
4. **Mutation** — an intentional change to an invariant, architecture, public contract, artifact role, or governance rule.
5. **Evidence** — tests, builds, rendered output, artifacts, measurements, research records, platform records, or other observable results used to evaluate a contract or decision.

Agent operations applies these primitives to context acquisition, freshness, task-state continuity, checkpointing, approval semantics, and repository recovery; it does not create a competing authority hierarchy.

## Document map

### [`AGENTS.md`](AGENTS.md)
Defines agent behavior for editing governance itself.

### [`authority.md`](authority.md)
Defines instruction hierarchy, human authority, subsystem ownership, and the limits of agent discretion.

### [`invariants.md`](invariants.md)
Defines repository-wide truths that ordinary implementation work must preserve.

### [`knowledge-system-model.md`](knowledge-system-model.md)
Defines how the `*basic` systems preserve practitioner experience, explicit positions/bias, contracts, industry practice, standards, platform guidance, research, references, examples, glossaries, subject artifacts, local agent authority, and changelog history without flattening their source or authority.

### [`change-control.md`](change-control.md)
Defines when normal work becomes a governed mutation and what approval is required.

### [`validation.md`](validation.md)
Defines the evidence model and the Thorough, Early, Systematic, Transparent, Independent, Non-destructive, Gradual engineering-validation philosophy.

### [`agent-operations/`](agent-operations/README.md)
Defines how repository agents selectively recover context, distinguish current from historical/superseded material, preserve task state, checkpoint resumable work, interpret concise approvals, and separate evidence retrieval from authority resolution. Binding operational contracts are separated from practitioner positions, reusable patterns, and research evidence.

### [`research-basis.md`](research-basis.md)
Records the external and internal evidence used to design the root governance model. It is informative rather than normative; detailed current agent-operation evidence is maintained under [`agent-operations/research/`](agent-operations/research/).

## Knowledge-system rule

The repository's `*basic` directories are evolving professional knowledge systems, not flat checklists.

As defined by [`knowledge-system-model.md`](knowledge-system-model.md), they may preserve:

- canonical practitioner philosophies/definitions;
- practitioner experience and explicit positions/bias;
- contracts;
- industry practice;
- platform/vendor guidance;
- formal standards/specifications;
- research evidence;
- historical references;
- examples;
- profiles/patterns/anti-patterns;
- subject glossaries;
- subject artifacts such as reference source, templates, playbooks, or schemas;
- implementation and validation evidence.

A knowledge type or artifact does not gain authority merely because it exists. Binding obligations must be adopted deliberately as contracts or controlling governance.

## Root/docs/artifact rule

Where it improves clarity, a top-level knowledge system separates:

```text
root        identity / authority routing / changelog
docs/       accumulated governed knowledge
artifact    concrete reusable subject material when real
examples/   illustrative usage/cases
```

This is a responsibility model, not a symmetry requirement.

Current examples:

- `TCbasic/src/` — canonical reference CSS;
- `READMEbasic/templates/` — reusable README starting artifacts;
- `SEObasic/examples/` and `READMEbasic/examples/` — illustrative artifacts.

Do not create artifact directories merely to make trees match. Use `dist/` only for actual generated/distribution output.

Repository governance itself remains a dedicated `governance/` namespace. Structured governance subdomains such as `agent-operations/` are appropriate when they represent a real authority/evidence boundary rather than cosmetic nesting.

## Agent-operations rule

Repository context is not synonymous with authority, and repository-local does not automatically mean current.

- **Authority resolution** determines what controls when sources conflict.
- **Context recovery** determines where an agent should look to reconstruct relevant project state.
- **Context freshness** distinguishes current, historical, completed, deprecated, superseded, and uncertain context.
- **Task continuity** preserves established findings, constraints, approvals, and progress across work phases.
- **Task checkpointing** preserves minimum sufficient resumable state when material work cannot safely depend on one interaction window.
- **Approval semantics** allows concise approvals to inherit a clearly established actionable scope without broadening it.

Detailed contracts live under [`agent-operations/contracts/`](agent-operations/contracts/). Optional reusable operational patterns live under [`agent-operations/patterns/`](agent-operations/patterns/). Research and practitioner positions remain separate so evidence is not silently promoted into law.

## Layering rule

Governance should be loaded progressively rather than copied into every agent instruction file.

- Root instructions contain only high-salience repository-wide rules and routing.
- Subsystem root instructions route work into the correct local knowledge/contract/artifact boundary.
- `docs/AGENTS.md` routes long-form knowledge when the subsystem uses a `docs/` tree.
- Nested `AGENTS.md` files specialize behavior where a subject establishes a distinct authority, evidence, terminology, measurement, source-of-truth, artifact, generated-output, or contract boundary.
- Detailed architecture, standards, research, references, glossaries, examples, measurements, and procedures remain in their canonical locations.
- Agent-operation research remains outside persistent context unless rationale or evidence is material to the task.
- Build/test commands belong to the adopting package/application/tooling context that actually owns them.
- Mechanical requirements should migrate into tests, CI, schema validation, linters, or other executable checks when a real executable context exists and the check is practical.

Not every leaf directory requires its own `AGENTS.md`; local agent files should correspond to real authority/behavior boundaries rather than duplicate identical text throughout the tree.

## Relationship to subsystem governance

Subsystems retain authority over their own domain:

- `Wdbasic/` — framework-independent web architecture, semantics, accessibility, security, implementation behavior, validation/evidence, profiles, tokens, components, positions, glossaries, and related distributed contracts; long-form knowledge is under `Wdbasic/docs/`.
- `TCbasic/` — Tailwind CSS semantic architecture, token/component/integration knowledge, practitioner positions, compatibility guidance, canonical reference CSS under `TCbasic/src/`, and illustrative examples. Current SABOS Lib does not build/package/release TCBasic.
- `SEObasic/` — search/discovery/marketing knowledge spanning websites, technical SEO, content, local search/GBP/Maps, organic social, paid media/PPC, YouTube, entities, measurement/analytics semantics, contracts, research, standards, references, positions, examples, and glossaries; long-form knowledge is under `SEObasic/docs/`.
- `READMEbasic/` — README/documentation knowledge spanning profiles, integrity contracts, positions, research, standards, references, resources, glossaries, templates, examples, and agent behavior; long-form knowledge is under `READMEbasic/docs/`, reusable template artifacts under `READMEbasic/templates/`.

A subsystem may strengthen repository-wide requirements but may not silently weaken repository invariants or agent-operation contracts.

## Enforcement direction

Markdown establishes intent and authority but is not sufficient enforcement by itself when a mechanical check is practical in the actual adopting context.

Where a rule is stable and mechanically testable, prefer encoding it in the implementation/project that owns the behavior through appropriate mechanisms such as:

- tests;
- CI checks;
- structural validation;
- schema validation;
- build checks;
- generated-output checks;
- metric/schema validation;
- link/freshness/status consistency checks for governed durable context;
- repository/project-specific linters.

SABOS Lib itself need not acquire build tooling merely because an adopting project can validate a contract mechanically.

The governance documents remain the human-readable source for why the check exists and what authority it protects.
