# Changelog

All notable changes to repository governance will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/2.0.0/).

## [Unreleased]

### Added

- `README.md` defining the layered governance model and five governance primitives: Authority, Invariant, Scope, Mutation, and Evidence.
- `authority.md` defining repository and subsystem authority boundaries.
- `invariants.md` defining anti-regression and anti-drift rules.
- `change-control.md` defining governed mutations and the explicit approval gate.
- `validation.md` defining evidence expectations and progressive validation principles.
- `research-basis.md` documenting vendor guidance, empirical research, Google engineering/SRE practices, and SAGE patterns used to justify the model.
- Changelog traceability invariant requiring notable subsystem changes to update the nearest changelog and cross-subsystem changes to update the root changelog.
- This governance changelog.

### Changed

- Reduced the root `AGENTS.md` from a full governance manual to a compact operational entrypoint and router.
- Moved detailed governance rationale and rules into scoped canonical files so persistent agent context remains focused.
