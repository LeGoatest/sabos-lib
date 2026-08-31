# Repository Governance Agent Instructions

> **Scope:** `governance/`  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md)

Governance documents define repository-wide authority and invariants. They are not ordinary explanatory documentation.

## Required reading

Before changing governance, read:

1. [`README.md`](README.md)
2. [`authority.md`](authority.md)
3. [`invariants.md`](invariants.md)
4. [`change-control.md`](change-control.md)
5. [`validation.md`](validation.md)
6. [`agent-operations/README.md`](agent-operations/README.md) when context acquisition, repository recovery, approval semantics, task continuity, or agent execution state is affected
7. [`research-basis.md`](research-basis.md) or the applicable agent-operations research record when rationale/evidence is relevant

## Governance mutation rule

Agents MUST NOT weaken or broaden their own authority through a governance edit.

A material governance change MUST:

- identify the rule or authority boundary changing;
- explain why existing governance is insufficient or incorrect;
- identify affected subsystems/contracts;
- preserve stronger unaffected invariants;
- update dependent governance documentation atomically where practical;
- update [`CHANGELOG.md`](CHANGELOG.md);
- follow [`change-control.md`](change-control.md) when explicit approval is required.

## Research rule

Research can justify governance changes but does not automatically become governance.

- Keep root-level governance rationale in `research-basis.md`.
- Keep detailed agent-context/execution evidence under `agent-operations/research/`.
- Keep practitioner conventions under `agent-operations/positions/`.
- Keep adopted binding behavior under `agent-operations/contracts/`.

Do not turn source count into authority. Prefer convergence across independent evidence classes and preserve counterevidence/limitations.

## Context rule

Do not solve instruction or memory problems by expanding always-loaded governance indiscriminately. Keep root routing concise and move detailed agent-operation material into the scoped domain.

## Regression rule

Do not rewrite governance merely to legitimize an implementation regression or an agent-preferred architecture.
