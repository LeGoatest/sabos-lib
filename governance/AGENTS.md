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
6. [`research-basis.md`](research-basis.md) when rationale/evidence is relevant

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

Research can justify governance changes but does not automatically become governance. Keep informative evidence in `research-basis.md` or another appropriate evidence record and make the adopted rule explicit in the binding file.

## Regression rule

Do not rewrite governance merely to legitimize an implementation regression or an agent-preferred architecture.
