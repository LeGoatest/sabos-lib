# READMEbasic Resources

> **Status:** Informative  
> **Purpose:** Curated external references for README structure, GitHub Markdown behavior, examples, badges, visual assets, changelogs, and authoring tools.

These resources support README work but do not override [`README.md`](README.md), [`AGENTS.md`](AGENTS.md), repository governance, or the project being documented.

Use resources according to their authority:

1. **Official platform/specification guidance** — authoritative for platform behavior and syntax.
2. **Established standards and templates** — useful structural references, not mandatory checklists.
3. **Curated examples** — inspiration and comparative evidence.
4. **Badge/visual/tooling resources** — presentation helpers only; they do not justify project claims.

## Official GitHub and Markdown guidance

### GitHub — About the repository README file

https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes

Use for GitHub-specific README behavior, automatic outlines, relative links/images, recognized README locations, and GitHub's baseline questions a README should answer.

### GitHub Flavored Markdown specification

https://github.github.com/gfm/

Use for Markdown syntax and rendering behavior rather than guessing which Markdown features GitHub supports.

### GitHub Docs — Writing and formatting

https://docs.github.com/en/get-started/writing-on-github

Use for current GitHub authoring guidance, links, code blocks, alerts, tables, images, diagrams, and other supported presentation features.

## README standards and templates

### Best-README-Template

https://github.com/othneildrew/Best-README-Template

A widely used open-source README scaffold. Useful as a **section inventory** and example of polished GitHub presentation.

READMEbasic does not require every Best-README-Template section. Remove generic contact, roadmap, acknowledgements, badge, TOC, or other template sections when they do not serve the project's actual audience.

### Standard Readme

https://github.com/RichardLitt/standard-readme

A structured README specification emphasizing predictable placement of background, installation, usage, contribution, and licensing information. Particularly useful for libraries and packages.

### Awesome README

https://github.com/matiassingers/awesome-readme

A curated collection of real-world READMEs, architecture examples, articles, tools, and presentation patterns. Use it to compare how successful projects solve specific documentation problems instead of copying one universal layout.

### readme.so

https://readme.so/

Interactive README section editor. Useful for quickly exploring or arranging a README structure. Generated content still requires repository-specific verification before use.

## Badges and visual resources

### Badges4-README.md-Profile

https://github.com/alexandresanlim/Badges4-README.md-Profile

Large curated badge collection covering technologies, platforms, tooling, social links, and related visual elements.

**READMEbasic use rule:** treat this as a badge syntax/design reference, not as permission to create a badge wall. The repository is profile-oriented, while project READMEs should normally prefer badges that communicate verified project state such as build status, version, license, runtime/framework compatibility, or other adoption-relevant facts.

### Shields.io

https://shields.io/

Primary badge-generation service for static and dynamic project badges. Use dynamic badges only when the backing endpoint or repository state is real and expected to remain stable.

Static badge documentation:

https://shields.io/docs/static-badges

### Simple Icons

https://simpleicons.org/

Brand icon catalog commonly used with Shields.io and README visuals. Check brand/trademark guidance where applicable; an available icon is not automatically permission to imply affiliation or endorsement.

## Changelog and project-health companions

### Keep a Changelog

https://keepachangelog.com/

Human-oriented changelog convention. Current guidance retains `Unreleased`, ISO `YYYY-MM-DD` dates, and grouped change types while emphasizing curated notable changes rather than raw git logs.

READMEbasic treats README and changelog responsibilities separately:

- `README.md` — current orientation and first-success path.
- `CHANGELOG.md` — notable evolution over time.

A README should link to the changelog when release/change history matters, rather than duplicating it.

### Semantic Versioning

https://semver.org/

Use when a project actually follows semantic versioning. Do not claim SemVer merely because a changelog template mentions it.

## Resource-selection rules

Agents and authors MUST NOT treat an external resource as evidence that the local project supports a command, feature, version, badge, workflow, integration, maintainer, or status.

Before adopting material from a resource:

1. Identify the local README audience/profile.
2. Determine whether the resource is authoritative guidance, a template, an example, or presentation tooling.
3. Extract the relevant pattern rather than copying the entire source structure.
4. Verify every local claim against repository evidence.
5. Remove placeholders, generic sections, and decorative elements that do not serve the project.
6. Prefer repository-relative links for local documentation.
7. Keep visuals and badges subordinate to project identity, purpose, status, and first-success information.

## Maintenance

Review this catalog when a major resource becomes abandoned, materially changes purpose, or is replaced by better official guidance.

Adding a resource should answer at least one practical README need; this file should not become an uncurated link dump.
