# TCBasic Documentation Agent Instructions

> **Status:** Binding for automated work under `TCbasic/docs/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)  
> **Knowledge index:** [`README.md`](README.md)

TCBasic documentation is a governed knowledge system, not a package manual.

## Required routing

Before changing a subject:

1. Read [`../AGENTS.md`](../AGENTS.md).
2. Read [`README.md`](README.md).
3. Read the nearest nested `AGENTS.md`.
4. Read the subject README and applicable contracts/positions.
5. Consult standards, references, or examples only when relevant.

## Preserve knowledge type

Agents MUST preserve the distinction between:

- binding contracts;
- practitioner positions;
- upstream/platform behavior;
- standards;
- historical/project-specific references;
- glossary definitions;
- illustrative examples;
- the canonical reference implementation under [`../src/`](../src/).

Do not promote a reference/example into a universal contract merely because it contains strong language in its original context.

## Reference implementation boundary

`../src/` is retained to demonstrate the documented architecture.

Agents MUST NOT:

- treat SABOS Lib as an npm package or compiled application;
- invent repository build/release requirements;
- regenerate or recreate a `dist/` tree unless explicitly requested;
- add package publication metadata merely because Tailwind commonly uses npm tooling;
- turn example tooling into a repository dependency without a governed reason.

## Documentation changes

When moving or renaming documentation:

- update relative links and parent authority references;
- preserve canonical terminology and substantive knowledge;
- update [`../CHANGELOG.md`](../CHANGELOG.md) for notable changes;
- keep the framework root [`../README.md`](../README.md) concise and route depth here.

## Governing maxim

> **Preserve the knowledge. Clarify its authority. Do not recreate package machinery around it.**
