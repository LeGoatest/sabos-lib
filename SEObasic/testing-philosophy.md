# T.E.S.T.I.N.G. Engineering Philosophy

> **Scope:** engineering, software architecture, reliability, validation, build pipelines, content engines, search systems, graph systems, and other technical systems governed or supported by SEObasic.

This document defines the engineering form of **T.E.S.T.I.N.G.**. It is intentionally separate from the content-development [`T.E.S.T.I.N.G. Method`](testing-method.md).

The two frameworks share a name but serve different purposes:

- **Content T.E.S.T.I.N.G.** governs how useful source material is gathered, discussed, developed, and connected with an audience.
- **Engineering T.E.S.T.I.N.G.** governs how software and systems are validated without allowing testing to become ad hoc, opaque, destructive, or dependent on the same assumptions used during implementation.

## Acronym

- **T — Thorough**
- **E — Early**
- **S — Systematic**
- **T — Transparent**
- **I — Independent**
- **N — Non-destructive**
- **G — Gradual**

## T — Thorough

Testing covers meaningful paths, states, boundaries, and failure conditions rather than only the expected success path.

Typical layers include:

- Unit tests.
- Integration tests.
- System tests.
- Edge cases.
- Invalid and malformed input.
- Error handling and recovery.
- Boundary conditions.
- Security- and authorization-relevant states where applicable.

The goal is to reduce unknown failure modes, not merely demonstrate that one expected example works.

For a content or knowledge engine, thorough coverage may include:

- Markdown parsing.
- Frontmatter and metadata parsing.
- Table-of-contents generation.
- Wiki-link parsing.
- Backlink generation.
- Tag generation.
- Entity extraction.
- Internal-link resolution.
- Canonical URL generation.
- Search indexing.
- Graph relationships.
- Rendering.
- HTTP routes and status behavior.

## E — Early

Testing begins as early as possible in development and content-processing pipelines.

Examples:

- Validate assumptions before building dependent features.
- Validate metadata while loading source content.
- Test parsers before integrating rendering and indexing.
- Test modules before system-wide integration.
- Detect architectural conflicts before large migrations or refactors depend on them.

A defect found near its source is normally cheaper and safer to correct than the same defect discovered after multiple layers depend on it.

For SEObasic implementations, invalid frontmatter, impossible canonical URLs, malformed links, duplicate identifiers, and unsupported structured-data inputs should be rejected or surfaced near ingestion rather than silently propagated into generated output.

## S — Systematic

Testing follows a defined, repeatable methodology instead of relying on ad hoc manual inspection.

A systematic process uses:

- Defined test cases.
- Repeatable test suites.
- Deterministic fixtures where practical.
- Controlled environments.
- Named expected outcomes.
- Automated execution where appropriate.
- Versioned test behavior when shared across projects.

A test that cannot be repeated under known conditions is weak evidence.

For buildable systems, tests should run automatically before producing or publishing a release artifact where practical.

## T — Transparent

Test behavior and results must be observable and understandable.

This includes:

- Clear logs.
- Explicit pass, fail, skipped, blocked, and unresolved states.
- Reproducible failures.
- Traceable reports.
- Useful error messages that identify the failing input or subsystem.
- Preservation of enough evidence to diagnose a regression.

Tests must not convert unknown, skipped, blocked, or indeterminate states into successful results merely to make a build appear healthy.

For content pipelines, an error should identify the affected source, field, link, route, or generated artifact whenever that information is available.

## I — Independent

Testing should not depend exclusively on the same assumptions, implementation path, or validation logic used to build the system.

Independence may come from:

- Separate validation logic.
- Independent test fixtures.
- External validators or testing frameworks.
- Independent reviewers.
- Testing generated output rather than only testing the generator's internal state.
- Cross-checking derived graph or index data against source content.

The purpose is to reduce confirmation bias and prevent an implementation defect from being duplicated in its own test oracle.

Independence does not require every test to use a different technology. It requires meaningful separation between what is being asserted and the assumptions that produced it.

## N — Non-destructive

Tests should not permanently alter, corrupt, delete, publish, or otherwise damage the system or data being tested unless the test explicitly operates in an isolated disposable environment designed for destructive validation.

Preferred mechanisms include:

- Sandboxes.
- Temporary directories.
- Fixtures.
- Mocks or fakes where they accurately model the required boundary.
- Disposable databases.
- Transactions and rollbacks.
- Reversible test operations.
- Isolated test indexes and generated-output directories.

Production data, canonical content, and published search indexes must not be used as disposable test state.

When destructive behavior itself must be tested, isolate it and prove cleanup or rollback behavior.

## G — Gradual

Testing increases in scope and complexity as confidence in lower layers grows.

A typical progression is:

```text
unit tests
    ↓
integration tests
    ↓
system tests
    ↓
load and performance tests
    ↓
resilience or chaos testing where justified
```

Each stage validates deeper interactions. Higher-level testing does not replace lower-level testing, and lower-level passing tests do not prove the integrated system is correct.

The progression should be proportionate to the system. A small static content generator may not require chaos engineering, while a distributed or high-availability system may.

## Application to a Go + Markdown knowledge engine

A practical T.E.S.T.I.N.G. application can include:

### Thorough

Test:

- Markdown parsing.
- Frontmatter parsing.
- TOC generation.
- Wiki-link parsing.
- Backlinks.
- Tags.
- Entity relationships.
- Internal links.
- Search indexing.
- Rendering.
- HTTP routes.

### Early

Validate metadata, identifiers, dates, canonical paths, and link syntax during content ingestion before indexing or rendering depends on them.

### Systematic

Run deterministic test suites automatically before building or publishing the binary or generated site output.

### Transparent

Return actionable errors and reports that identify the failing content file, metadata field, route, relationship, or test case.

### Independent

Validate generated HTML, JSON-LD, links, indexes, and graphs independently of the functions that generated them where practical.

### Non-destructive

Build and test against fixtures, temporary directories, isolated indexes, disposable databases, or rollbackable operations rather than canonical production data.

### Gradual

Validate parsers and pure functions first, then relationships and indexes, then full rendering and routes, then performance and resilience behavior appropriate to the deployment model.

## Relationship to SEObasic

SEObasic-generated artifacts are testable outputs. Implementations should be able to validate at least:

- Metadata completeness and validity.
- Canonical URL uniqueness and consistency.
- Internal-link resolution.
- Broken links.
- Orphaned pages.
- Sitemap inclusion and exclusion rules.
- Structured-data syntax and page-type compatibility.
- Breadcrumb hierarchy.
- Entity references and graph integrity.
- Duplicate or conflicting identifiers.
- Generated page HTTP behavior.

Search optimization is not exempt from engineering discipline. Automatically generated SEO output must be testable, observable, reversible, and traceable to source content.

## Governance rule

A refactor, generator change, parser change, schema change, entity-extraction change, indexing change, or routing change must not weaken existing validated behavior silently.

When a change intentionally alters established behavior:

1. State what behavior changes.
2. State why it changes.
3. Update the relevant tests and documentation deliberately.
4. Preserve evidence that the new expected behavior is intentional rather than an unnoticed regression.

Tests are a regression boundary, not an obstacle to be rewritten automatically until a build passes.
