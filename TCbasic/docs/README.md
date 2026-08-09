# TCBasic Documentation

> **Status:** Canonical TCBasic knowledge index  
> **Framework root:** [`../README.md`](../README.md)  
> **Agent instructions:** [`AGENTS.md`](AGENTS.md)

`TCbasic/docs/` contains the accumulated knowledge, contracts, positions, standards, references, and implementation guidance for TCBasic.

TCBasic is a Tailwind CSS semantic architecture and knowledge framework. SABOS Lib does not build or publish TCBasic as a package. The CSS under [`../src/`](../src/) is the canonical **reference implementation** of the documented architecture, while [`../examples/`](../examples/) demonstrates ways the ideas can be adopted.

## Knowledge map

```text
docs/
├── README.md
├── AGENTS.md
├── standards.md
├── customization.md
├── migration-guide.md
├── architecture/
├── components/
├── tokens/
├── integrations/
├── compliance/
├── profiles/
├── positions/
├── references/
└── glossaries/
```

## Domains

- [`architecture/`](architecture/README.md) — source layers, naming, source detection, Tailwind tooling behavior, and core architectural contracts.
- [`components/`](components/README.md) — public semantic component contracts, catalog, states, variants, and accessibility boundaries.
- [`tokens/`](tokens/README.md) — semantic variables, Tailwind theme mappings, responsive/container concepts, and token contracts.
- [`integrations/`](integrations/README.md) — server-rendered and component-framework adoption guidance.
- [`compliance/`](compliance/README.md) — evidence, compatibility, migration review, and reference-implementation conformance concepts.
- [`profiles/`](profiles/README.md) — adoption profiles.
- [`positions/`](positions/README.md) — deliberate practitioner preferences and tradeoffs.
- [`references/`](references/README.md) — preserved project-specific and historical material that informs TCBasic without automatically becoming a universal contract.
- [`glossaries/`](glossaries/README.md) — terminology and disambiguation.
- [`standards.md`](standards.md) — upstream Tailwind/CSS baseline and applicability record.
- [`customization.md`](customization.md) — customization guidance.
- [`migration-guide.md`](migration-guide.md) — migration guidance.

## Authority model

Documentation types are not interchangeable:

- **Contracts** define adopted obligations.
- **Positions** preserve intentional practitioner preferences and bias.
- **Standards/platform guidance** describe external requirements or behavior within their actual scope.
- **References** preserve source material and historical/project-specific lessons.
- **Examples** illustrate adoption and do not become authority merely because they exist.
- **`src/`** demonstrates the architecture and is not a compiled product distributed by this repository.

See [`../../governance/knowledge-system-model.md`](../../governance/knowledge-system-model.md) for the repository-wide model.

## Governing principle

> **Docs define and explain. `src/` demonstrates. Examples show adoption. None of those roles should be silently conflated.**
