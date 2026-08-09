# READMEbasic Agent Instructions

> **Status:** Binding for automated README creation and maintenance  
> **Scope:** README files governed by READMEbasic  
> **Parent authority:** [`../AGENTS.md`](../AGENTS.md), [`../governance/`](../governance/README.md), and [`../governance/knowledge-system-model.md`](../governance/knowledge-system-model.md)

These instructions specialize repository governance for agents that create, rewrite, or materially update README files.

## Mission

> **Create the shortest README that accurately gets the intended reader oriented and productive without hiding important status, limitations, or entrypoints.**

A README is not permission to redesign the project it documents.

## Required READMEbasic sources

Before material README work, read:

1. [`contracts/readme-integrity.md`](contracts/readme-integrity.md).
2. The applicable guidance in this file and [`README.md`](README.md).
3. Applicable practitioner positions under [`positions/`](positions/README.md) when the task touches an explicit READMEbasic preference.
4. The matching profile under [`profiles/`](profiles/README.md) when one applies.
5. [`TEMPLATE.md`](TEMPLATE.md) only as an adaptable scaffold, not a checklist.
6. [`standards/`](standards/README.md) when platform/specification behavior controls the question.
7. [`research/`](research/README.md), [`references/`](references/README.md), [`examples/`](examples/README.md), [`resources.md`](resources.md), or [`best-practices.md`](best-practices.md) only when that evidence/source type is relevant.
8. [`glossaries/`](glossaries/README.md) when terminology is ambiguous.

Follow the nearest nested `AGENTS.md` for work inside those knowledge domains.

## Knowledge-source discipline

READMEbasic distinguishes:

- practitioner experience and best-practice synthesis;
- explicit practitioner positions/bias;
- audience/repository profiles;
- contracts;
- formal standards/specifications;
- platform/vendor guidance;
- research evidence;
- historical/comparative references;
- examples;
- templates/resources/tooling;
- glossary terminology.

Do not flatten these into one category called “best practice.” A template or example is not a contract. A research paper is not automatically a contract. Platform behavior is authoritative only for that platform/scope. A practitioner preference should be represented as a position rather than mislabeled as an external requirement.

## Position rule

When a documented READMEbasic position applies, read [`positions/AGENTS.md`](positions/AGENTS.md) and the applicable position record.

Agents MUST NOT:

- erase a documented preference merely because a popular README template uses another structure;
- present a READMEbasic preference as GitHub/GFM behavior;
- silently convert a preference into a binding contract;
- silently replace a position when new evidence challenges it.

Conflicting evidence should trigger explicit review, not automatic normalization.

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
- Existing changelog when release/change history is relevant.
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

Use [`profiles/`](profiles/README.md) as profile-specific knowledge grows.

Do not force every optional section from [`TEMPLATE.md`](TEMPLATE.md) into every profile.

When templates, examples, badges, visual assets, or authoring tools would help, consult [`resources.md`](resources.md). External resources are pattern references only; they do not prove anything about the local repository.

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

Do not convert TODOs, roadmap items, examples, design intentions, template sections, or available badge designs into completed project capabilities.

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
- Duplicate changelog history in the README.
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

Resources such as [Badges4-README.md-Profile](https://github.com/alexandresanlim/Badges4-README.md-Profile), [Shields.io](https://shields.io/), and [Simple Icons](https://simpleicons.org/) may be used to identify syntax or presentation options. Their catalogs do not establish that a technology, status, affiliation, or capability applies to the project.

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
4. Preserve authoritative terminology, project identity, and applicable practitioner positions.
5. Draft the smallest coherent README structure.
6. Verify every command, path, version, badge, and material capability claim.
7. Verify repository-relative links.
8. Check that deeper material is routed to canonical documentation instead of duplicated.
9. Check that release/change history is linked to the changelog rather than copied into the README when applicable.
10. Check that no implementation or governance contract was silently changed to make the prose simpler.
11. Report unverifiable or unresolved claims separately.

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
- Changelog/change-history routing is accurate when relevant.
- Material limitations are not hidden.
- No unapproved implementation or governance mutation was introduced.

## Governing maxim

> **Do not write the README the project ought to have. Write the README the project can prove.**
