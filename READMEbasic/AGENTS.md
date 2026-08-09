# READMEbasic Agent Instructions

> **Status:** Binding for automated README creation and maintenance  
> **Scope:** README files governed by READMEbasic  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md) and [`../governance/`](../governance/README.md)

These instructions specialize repository governance for agents that create, rewrite, or materially update README files.

## Mission

> **Create the shortest README that accurately gets the intended reader oriented and productive without hiding important status, limitations, or entrypoints.**

A README is not permission to redesign the project it documents.

## Required inspection

Before writing or materially restructuring a README, inspect enough repository evidence to verify:

- Project/repository name and purpose.
- Intended audience.
- Current maturity/status when relevant.
- License.
- Package or application manifests.
- Actual installation/build/test/run commands.
- Supported runtime/framework versions when claimed.
- Primary source, package, or subsystem entrypoints.
- Existing architecture and governance documents.
- Existing contribution/support documents if referenced.
- Generated artifacts when the README describes them.
- Relevant workflows when adding CI/status badges.

For a subsystem README, also read the nearest applicable `AGENTS.md` and canonical subsystem entrypoint.

## Choose a README profile

Classify the README before selecting its structure:

1. **Application**
2. **Library/package**
3. **Multi-system repository/monorepo**
4. **Documentation/governance repository**
5. **Subsystem/component**

Do not force every optional section from [`TEMPLATE.md`](TEMPLATE.md) into every profile.

## Required top-level information

A published README SHOULD make the following discoverable with minimal scanning:

- What the project is.
- Why it is useful or what problem it solves.
- Current status or maturity when that affects adoption.
- How to get started or where the authoritative start point lives.
- Where deeper documentation lives.
- License.

For executable software or packages, include a verified path to first successful use when repository evidence supports one.

## Evidence rules

Agents MUST NOT invent or infer unsupported:

- Commands.
- Package names.
- Versions.
- Ports.
- Environment variables.
- Configuration paths.
- Features.
- Roadmap commitments.
- CI status.
- Benchmarks.
- Security guarantees.
- Compatibility claims.
- Contact information.
- Maintainer identities.
- Release state.

If evidence is unavailable, omit the claim or label the gap accurately.

Do not convert TODOs, roadmap items, examples, or design intentions into completed features.

## Structure rules

Agents SHOULD:

- Put project identity and value before navigation mechanics.
- Use meaningful headings and GitHub Flavored Markdown.
- Use relative links for repository-local files.
- Put the shortest verified getting-started path before deep reference material.
- Use concrete examples where they improve comprehension.
- Link to canonical architecture, API, governance, contribution, security, changelog, and license documents rather than duplicating them.
- State material caveats or maturity early enough to affect adoption decisions.
- Keep paragraphs and sections scannable.

Agents SHOULD NOT:

- Add a manually maintained table of contents when GitHub's generated outline is sufficient.
- Add decorative badge walls.
- Duplicate a complete architecture specification.
- Copy full license text into the README.
- Copy an entire CONTRIBUTING guide into the README.
- Add generic acknowledgments/contact/roadmap sections merely because a template includes them.
- Leave template placeholders, example usernames, fake links, TODO badges, or sample API keys in a final README.
- Use screenshots or diagrams as the only source of critical instructions.

## Badge policy

A badge must communicate useful project state and must be supported by a real source.

Common valid uses:

- CI/build status from an existing workflow.
- Published release/package version.
- License.
- Supported runtime/framework version.

Do not add badges for technologies merely to create a visual technology stack unless that presentation materially helps the target reader.

Broken, placeholder, speculative, or stale badges are documentation defects.

## Manual table-of-contents policy

GitHub already creates a heading-based outline for Markdown files.

Use a manual TOC only when the README is long/complex enough that an in-document TOC materially improves navigation.

If used, validate every anchor after heading changes.

## README change protocol

1. Resolve audience and README profile.
2. Inspect authoritative repository evidence.
3. Identify inaccurate, stale, missing, duplicated, or overly detailed content.
4. Preserve authoritative terminology and project identity.
5. Draft the smallest coherent README structure.
6. Verify every command, path, version, badge, and material capability claim.
7. Verify repository-relative links.
8. Check that deeper material is routed to canonical documentation instead of duplicated.
9. Check that no implementation or governance contract was silently changed to make the prose simpler.
10. Report unverifiable or unresolved claims separately.

## Regression protection

README maintenance is subject to the same anti-regression rules as implementation work.

Agents MUST NOT:

- Remove documented capabilities without verifying whether the capability was actually removed.
- Rename established terminology for stylistic preference.
- Change installation or usage commands because another workflow seems cleaner.
- Rewrite status/maturity to sound more favorable than evidence supports.
- Replace precise limitations with marketing language.
- Change implementation, package, architecture, or governance solely to match a preferred README structure without passing the repository mutation gate.

If documentation and implementation disagree, identify which source is authoritative before changing either side.

## Definition of done

A README task is complete only when, as applicable:

- The intended audience can identify the project and purpose quickly.
- The current status is represented accurately.
- Getting-started commands are verified against repository sources.
- Usage examples reflect real behavior.
- Local links resolve to existing paths.
- Badges are real and high-signal.
- Placeholder/template debris is removed.
- Deep material is linked rather than unnecessarily duplicated.
- Material limitations are not hidden.
- No unapproved implementation or governance mutation was introduced.

## Governing maxim

> **Do not write the README the project ought to have. Write the README the project can prove.**
