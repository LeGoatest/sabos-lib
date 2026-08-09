# Changelog

All notable changes to repository governance will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/2.0.0/).

## [Unreleased]

### Added

- `README.md` defining the layered governance model and five governance primitives: Authority, Invariant, Scope, Mutation, and Evidence.
- `AGENTS.md` defining rules for automated edits to repository governance itself.
- `authority.md` defining repository and subsystem authority boundaries.
- `invariants.md` defining anti-regression and anti-drift rules.
- `knowledge-system-model.md` defining the repository-wide model for practitioner experience, explicit positions/bias, contracts, standards, platform guidance, research, references, examples, profiles/patterns, glossaries, local `AGENTS.md`, and changelog ownership across `*basic` systems.
- `change-control.md` defining governed mutations and the explicit approval gate.
- `validation.md` defining evidence expectations and progressive validation principles.
- `research-basis.md` documenting vendor guidance, empirical research, Google engineering/SRE practices, and SAGE patterns used to justify the model.
- Changelog traceability invariant requiring notable subsystem changes to update the nearest changelog and cross-subsystem changes to update the root changelog.
- This governance changelog.

### Changed

- Reduced the root `AGENTS.md` from a full governance manual to a compact operational entrypoint and router.
- Moved detailed governance rationale and rules into scoped canonical files so persistent agent context remains focused.
- Expanded subsystem authority to recognize deep `*basic` knowledge systems, nested `AGENTS.md` files, contracts, glossaries, research/standards/references, profiles/examples, and domain-owned measurement semantics.
- Clarified that evidence, research, platform guidance, measurements, examples, and industry practice have interpretive weight but do not become binding contracts automatically.
- Clarified that local `AGENTS.md` files should correspond to real authority, terminology, evidence, validation, source-of-truth, or contract boundaries rather than being duplicated mechanically into every leaf directory.
