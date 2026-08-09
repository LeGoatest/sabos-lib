# Changelog

All notable repository-wide changes will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/2.0.0/). Subsystem-specific details remain in the changelog owned by each top-level system.

## [Unreleased]

### Added

- Repository-wide `governance/` layer for authority, invariants, change control, validation, and research evidence.
- Compact root `AGENTS.md` that routes automated work into scoped governance instead of duplicating the full policy surface.
- `SEObasic/` for search visibility, structured data, entity relationships, internal linking, and the canonical T.E.S.T.I.N.G. philosophy.
- `READMEbasic/` for evidence-based README structure, agent instructions, reusable templates, best practices, and resources.
- `READMEbasic/resources.md` with curated GitHub guidance, README standards/templates, real-world examples, badge resources including Badges4-README.md-Profile, Shields.io, changelog guidance, and README tooling.
- Top-level subsystem changelogs for WDBASIC, SEObasic, READMEbasic, and repository governance. TCBasic retains its existing changelog.
- Repository changelog-traceability governance requiring notable subsystem changes to update their own changelog and repository-wide/cross-subsystem changes to update this root changelog.

### Changed

- Reworked the root `README.md` into a concise repository entrypoint with system boundaries, verified TCBasic quick-start commands, governance routing, changelog discovery, README resources, and canonical documentation links.
- Separated detailed governance and research from persistent agent instruction context to reduce duplication and instruction bloat.
