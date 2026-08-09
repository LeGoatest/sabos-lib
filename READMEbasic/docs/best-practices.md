# READMEbasic Best Practices and Research Basis

> **Status:** Informative  
> **Research date:** 2026-08-08  
> **Purpose:** Record the real-world guidance, supplied README comparisons, and empirical findings used to shape READMEbasic.

This document is evidence and rationale. [`README.md`](README.md) and [`AGENTS.md`](AGENTS.md) define the current READMEbasic framework and agent behavior.

## 1. Primary conclusion

A strong README is not the longest or most visually elaborate README.

The best recurring pattern across official guidance, established templates, practitioner guidance, empirical research, and the supplied examples is:

```text
identity + value
      ↓
status / decision-critical context
      ↓
quick start
      ↓
concrete usage
      ↓
orientation / architecture when necessary
      ↓
links to deeper canonical documentation
      ↓
contribution / support / license when applicable
```

The README should act as a **front door and activation path**, while detailed reference material remains in dedicated canonical documents.

## 2. Supplied README structure analysis

Three supplied README structures were compared during development of this framework.

### Reference A — detailed Orion data-orchestration README

Observed structure:

- Project title and large badge group.
- One-paragraph product description.
- Manual table of contents.
- About / built-with / architecture / key-components / data-flow sections.
- Prerequisites, installation, and configuration.
- Web and CLI usage.
- Roadmap, contributing, license, and contact.

#### Strong patterns

- Gives the reader substantial technical context.
- Provides setup and concrete usage commands.
- Architecture and data-flow sections make a complex system understandable.
- Separates prerequisites, installation, configuration, and usage.

#### Risks

- The badge wall competes with the project explanation.
- Large architecture/detail sections make the root README expensive to maintain.
- Placeholder badges, usernames, links, and contact fields create obvious publication defects if not removed.
- The manual TOC duplicates navigation GitHub can already derive from headings.
- Deep implementation detail can become stale faster than higher-level project orientation.

#### What READMEbasic adopts

- Verified quick start.
- Concrete usage.
- Architecture/data-flow only when they materially help orientation.

#### What READMEbasic rejects as a default

- Technology-logo badge walls.
- Placeholder content in a published README.
- Treating the root README as the complete architecture manual.

### Reference B — SAGE README

Observed structure:

- Best-README-Template-style header and shields.
- Strong centered project statement and primary documentation links.
- Manual table of contents.
- Core philosophy and governance concepts.
- Getting started.
- Governance usage hierarchy.
- Repository structure.
- Roadmap, contributing, license, and contact.

#### Strong patterns

- Clear project identity and value statement.
- High-value links are visible early.
- Strong explanation of conceptual purpose.
- Repository structure is useful for a governance-heavy project.

#### Risks

- The root README duplicates a large amount of canonical governance hierarchy.
- Generic template sections such as contact/roadmap/contribution can remain even when the repository already has more precise canonical locations.
- Placeholder project links and shields reduce trust.
- Enumerating every governance document in the root README increases drift risk.

#### What READMEbasic adopts

- Strong first-screen project positioning.
- Prominent routes to deeper documentation.
- Conceptual explanation before implementation detail.
- Repository map when directory authority matters.

#### What READMEbasic rejects as a default

- Copying the complete governance/document hierarchy into the root README.
- Keeping generic template sections merely because a scaffold contains them.

### Reference C — concise Orion cognitive-runtime README

Observed structure:

- Project title and three high-signal badges.
- Immediate two-paragraph project explanation.
- Core philosophy.
- Key features.
- Architecture and storage summary.
- Use cases.
- Roadmap, vision, and license.

#### Strong patterns

- Fastest of the supplied examples to understand.
- Strong conceptual hierarchy and narrative flow.
- Small badge set.
- Clear features and architecture without excessive low-level detail.
- Scannable and visually quiet.

#### Gaps

- No verified installation/quick-start path.
- No concrete usage example.
- No contribution/help/documentation routing.
- Status is only implied by a release badge rather than explained.

#### What READMEbasic adopts

- Concept-first readability.
- Small high-signal badge set.
- Concise architecture summary.
- Strong scannability.

#### What READMEbasic adds

- Verified quick start.
- Concrete first-success example.
- Documentation routing.
- Explicit maturity/status when relevant.

## 3. Best-README-Template

Source: https://github.com/othneildrew/Best-README-Template

The Best-README-Template provides a useful reusable scaffold with:

- project identity/hero area;
- badges;
- documentation/demo/bug/feature links;
- about/built-with sections;
- getting started;
- prerequisites and installation;
- usage;
- roadmap;
- contributing;
- license;
- contact;
- acknowledgments.

### What works

- It prevents writers from forgetting common open-source sections.
- It makes installation and usage first-class concerns.
- It is modular enough to remove sections.
- It demonstrates high-value top-of-page links.

### What should not be copied blindly

Its blank template explicitly contains placeholder usernames, project names, API-key examples, contact details, roadmap items, and generic prose. These are scaffolding, not final content.

The template also predates some current GitHub affordances and therefore uses a hand-maintained table of contents and repeated “back to top” links that are not necessary for many current GitHub READMEs.

READMEbasic therefore treats Best-README-Template as a **section inventory and visual reference**, not a mandatory final structure.

## 4. GitHub official guidance

### About repository READMEs

Source: https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes

GitHub says READMEs typically communicate:

- what the project does;
- why the project is useful;
- how users get started;
- where users get help;
- who maintains/contributes.

GitHub also documents:

- automatic heading-based outlines;
- repository-relative links;
- README display precedence;
- a 500 KiB rendering truncation limit;
- the recommendation that longer documentation live outside the README.

READMEbasic implication: the root README should optimize for orientation and activation, not documentation completeness.

### GitHub Copilot README generator guidance

Source: https://docs.github.com/en/copilot/tutorials/customization-library/prompt-files/create-readme

GitHub's own README-generation prompt emphasizes:

- analyze the actual workspace/codebase first;
- explain what the project does and why it is useful;
- provide setup and usage examples;
- point to help and contribution resources;
- use GitHub Flavored Markdown;
- use relative repository links;
- keep detailed API docs, troubleshooting, full license text, and detailed contribution policy elsewhere.

READMEbasic implication: agents must inspect evidence before writing and must not turn the README into a duplicate reference manual.

### GitHub documentation writing guidance

Source: https://docs.github.com/en/contributing/writing-for-github-docs/best-practices-for-github-docs

GitHub's documentation guidance emphasizes:

- define the audience and core purpose;
- put information in the order users need it;
- use progressive disclosure;
- use meaningful headings;
- use plain language and active voice;
- optimize for scanning with lists, tables, visuals, and code blocks where useful.

READMEbasic implication: README structure should be audience-driven rather than template-driven.

## 5. Standard Readme

Source: https://github.com/RichardLitt/standard-readme

Standard Readme emphasizes the README as the entry point to a module and organizes common content around background, install, usage, contributing, and license.

It also argues that documented interfaces allow implementation internals to evolve without forcing consumers to inspect code.

READMEbasic adopts:

- predictable information locations;
- install and usage as first-class sections;
- documentation as a user-facing contract;
- restrained badge use.

READMEbasic does not require Standard Readme's exact section set because this repository must also cover applications, governance repositories, and multi-system repositories.

## 6. Art of README

Source: https://github.com/hackergrrl/art-of-readme

Art of README frames the README as the consumer's first and possibly only interaction with a project. Its useful recurring rules include:

- explain what the project is in context;
- show it in action;
- show how to use it;
- include relevant details and caveats;
- keep the README as short as possible without becoming insufficient.

Its checklist also emphasizes runnable usage, installation, caveats, and not depending on images to convey critical information.

READMEbasic adopts the concept of **cognitive funneling**: introduce the minimum concept first, then progressively expose detail.

## 7. README-Driven Development

Source: https://tom.preston-werner.com/2010/08/23/readme-driven-development.html

Tom Preston-Werner argues that writing the README forces a project to define the user-facing problem and interface before implementation becomes overcommitted.

READMEbasic does not require every project to literally write the README before code, but adopts the deeper principle:

> If the project cannot be explained clearly enough for a README, its user-facing purpose or interface may still be underspecified.

## 8. Empirical research

### Categorizing the Content of GitHub README Files

Prana, Treude, Thung, Atapattu, Lo. 2018.

Source: https://arxiv.org/abs/1802.06997

The study manually analyzed 4,226 README sections from 393 GitHub repositories and found that “what” and “how” information is common, while purpose and project status are often missing.

READMEbasic implication: include **why/purpose** and material **status**, not only implementation and usage.

### An Empirical Study on README Contents for JavaScript Packages

Ikeda, Ihara, Kula, Matsumoto. 2018.

Source: https://arxiv.org/abs/1802.08391

The study examined 43,900 JavaScript packages and found recurring themes including usage, installation, and license, with content varying by project type.

READMEbasic implication: README profiles should vary by application/library/repository type rather than enforce one universal section list.

### The Introduction of README and CONTRIBUTING Files in Open Source Software Development

Gaughan, Champion, Hwang, Shaw. 2025.

Source: https://arxiv.org/abs/2502.18440

The study reports that open-source projects often create concise, standardized README instructions early, while contribution documentation emerges separately.

READMEbasic implication: keep README and contribution-policy roles distinct.

### READU: Inconsistency-Driven Just-in-Time Detection and Repair of README Bugs

Baek, Krampf, Pradel. 2026.

Source: https://arxiv.org/abs/2607.15780

READU studies README bugs as inconsistencies between documentation and repository/external sources of truth. Across 6,000 recent commits from six popular repositories, the authors report detecting hundreds of true documentation inconsistencies and repairing many of them automatically.

READMEbasic implication: installation commands, paths, versions, configuration, and other executable/documentable facts should be treated as **consistency-sensitive contracts** and mechanically checked when practical.

## 9. Synthesis: recommended README architecture

For a typical open-source project:

```text
# Project
one-line value statement
small verified status/badge set
short context paragraph

## Why / capabilities
## Status                     # when decision-critical
## Quick start
## Usage
## Architecture / structure   # only when orientation requires it
## Documentation
## Development / contributing
## Support                    # only if a real channel exists
## License
```

For a multi-system repository, prioritize the subsystem map immediately after the overview and put subsystem-specific install/usage commands in their own canonical READMEs.

For a documentation/governance repository, replace application-style “Usage” with adoption, authority, reading order, or implementation entrypoints.

## 10. Anti-patterns

READMEbasic considers the following warning signs:

- Badge/logo walls before the project explanation.
- Placeholder usernames, links, contacts, API keys, or TODO badges.
- Claims unsupported by manifests, source, tests, workflows, or authoritative documentation.
- Installation commands copied from convention rather than verified.
- Roadmap items presented as current features.
- Long internal architecture copied into the README when a canonical architecture document already exists.
- Full contribution/security/license/changelog documents duplicated into the README.
- Manual TOCs maintained without a real navigation need.
- Generic template sections retained only for visual completeness.
- Screenshots used instead of textual instructions.
- Technology lists that explain tooling but not the problem the project solves.
- Marketing adjectives that conceal experimental or incomplete status.

## 11. Maintenance rule

README structure should evolve when reader needs or repository boundaries change, but it should not churn for fashion.

When changing a README materially:

1. Verify repository facts first.
2. Preserve authoritative terminology.
3. Prefer smaller, clearer sections.
4. Route deep information to canonical sources.
5. Validate commands and links.
6. Treat documentation/implementation inconsistencies as defects to investigate, not invitations to guess.
