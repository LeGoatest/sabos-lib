# Repository Agent Governance

> **Status:** Binding  
> **Scope:** Entire repository and every automated agent, coding assistant, reviewer, refactoring tool, migration tool, generator, or AI system that reads or modifies repository content.  
> **Primary objective:** Preserve known-good behavior while making the smallest change necessary to satisfy the explicit request.

This file is the repository-level governance contract for agent-assisted work.

The central rule is simple:

> **Do not regress working behavior. Do not refactor, rewrite, rename, reorganize, replace, or broaden scope merely because a different implementation appears cleaner.**

A working implementation is evidence. Agent preference is not.

When a broader architectural or refactoring change is genuinely needed, the agent must explain why, identify the affected scope and regression risk, and obtain explicit user permission before performing that broader change unless the user already explicitly requested that exact refactor or restructuring.

## 1. Authority and inheritance

These root instructions apply everywhere in the repository.

More specific `AGENTS.md` files may add stricter requirements for their directory or subsystem, but they must not weaken this file's regression, scope, permission, evidence, or transparency requirements.

Apply instructions in this order:

1. Explicit user instruction for the current task.
2. This root `AGENTS.md`.
3. The nearest applicable nested `AGENTS.md`.
4. Binding subsystem contracts and architecture documents.
5. Existing implementation patterns and tests.
6. Agent preference.

Agent preference is always the lowest authority.

When instructions conflict, preserve the stricter regression-prevention rule unless the user explicitly authorizes otherwise.

## 2. Prime directive: preserve before improving

Before changing code or documentation, establish what already works and what the user actually asked to change.

Agents must preserve, unless explicitly in scope:

- Existing behavior.
- Existing public interfaces.
- Existing routes and URLs.
- Existing filenames and paths.
- Existing component contracts.
- Existing data shape and persistence behavior.
- Existing styling and layout intent.
- Existing build and deployment assumptions.
- Existing accessibility behavior.
- Existing security controls.
- Existing generated output expectations.
- Existing user workflow.
- Existing tests that represent intentional behavior.

A request to fix or add one behavior is not permission to redesign adjacent behavior.

A request to clean one file is not permission to reorganize the repository.

A request to modernize implementation details is not permission to change appearance, workflow, architecture, naming, framework, or output unless those changes are explicitly part of the request.

## 3. Refactor permission gate

The following actions require explicit user authorization when they are not already explicitly requested:

- Refactoring working code beyond the minimum needed for the requested change.
- Rewriting a working implementation in another style or abstraction.
- Renaming files, directories, classes, functions, routes, CSS classes, tokens, APIs, database fields, or public identifiers.
- Moving files or reorganizing directory structure.
- Consolidating or splitting files solely for cleanliness.
- Replacing libraries, frameworks, build tools, dependencies, or architectural patterns.
- Introducing a new dependency when the current stack can satisfy the request.
- Removing code because it appears unused without proving its usage contract.
- Reformatting large unrelated areas.
- Changing generated-output structure or public markup contracts.
- Altering tests to match a newly preferred implementation rather than preserving established behavior.
- Performing broad cleanup while addressing a narrow bug.

If such a change appears necessary, the agent must first provide:

```text
Proposed change:
Reason it is necessary:
Why the requested work cannot be completed safely without it:
Affected files/behavior:
Regression risk:
Smaller alternative considered:
Validation that would be performed:
```

Then obtain explicit permission before proceeding.

Permission is already satisfied when the user clearly requested the exact refactor, rename, migration, reorganization, replacement, or cleanup being performed.

## 4. No opportunistic refactoring

Agents must not combine unrelated cleanup with requested work.

Prohibited examples include:

- “While I was here, I rewrote...”
- “I modernized the surrounding code...”
- “I normalized the naming...”
- “I replaced the existing approach with a cleaner pattern...”
- “I reorganized these files for maintainability...”
- “I removed this because it looked obsolete...”

unless that work was explicitly requested or separately approved through the refactor permission gate.

If adjacent technical debt is discovered, report it separately. Do not silently fix it.

## 5. Progressive validation philosophy

Repository work follows the WDBASIC engineering-validation principles:

### Thorough

Inspect meaningful success paths, failure paths, boundaries, dependencies, and downstream consumers affected by the change.

Do not validate only the line that changed when the contract extends beyond it.

### Early

Run cheap and high-signal checks before broad edits.

Detect incorrect assumptions, missing files, incompatible architecture, failing baseline tests, or scope conflicts before modifying multiple files.

### Systematic

Use a repeatable workflow:

```text
inspect
→ establish baseline
→ identify governing contracts
→ define smallest change
→ modify
→ validate locally
→ validate integration/output
→ compare against baseline
→ report
```

Do not substitute repeated guessing for a defined investigation process.

### Transparent

State failures, uncertainty, skipped checks, unresolved conflicts, and behavior changes plainly.

Never describe a check as passed unless it was actually performed.

Never hide an unexpected regression behind unrelated cleanup.

### Independent

Where practical, verify the result from outside the implementation path that produced it.

Examples:

- Render or inspect generated output instead of trusting source code alone.
- Exercise a route instead of assuming the handler works.
- Compile the stylesheet instead of only reading the source stylesheet.
- Validate serialized output independently of the serializer implementation.
- Compare behavior before and after the change.

### Non-destructive

Prefer reversible, isolated changes.

Do not overwrite unrelated user work, delete evidence, destroy working state, rewrite history, force-update branches, or use production state as disposable test data.

### Gradual

Increase scope only as evidence supports it.

Start with the smallest viable change. Validate it. Expand only when the next layer is actually required.

The operating principle is:

> **Fail early. Fail visibly. Fail safely. Learn from the failure. Increase scope and risk only as confidence increases.**

See [`Wdbasic/engineering-validation.md`](Wdbasic/engineering-validation.md).

## 6. Required pre-change inspection

Before editing, agents must determine enough of the current state to avoid blind modification.

At minimum, inspect:

- The files directly involved.
- Applicable root and nested agent instructions.
- Relevant architecture or subsystem contracts.
- Existing tests or validation commands covering the affected behavior.
- Direct callers, consumers, imports, references, or generated outputs when changing a shared contract.
- Current branch or target when repository writes are involved.

Do not repeatedly re-inspect the same unchanged material without a concrete reason. Inspection is for resolving uncertainty, not avoiding implementation.

## 7. Baseline before modification

For material behavior changes, establish a baseline before editing whenever practical.

A baseline may include:

- Existing test results.
- Build status.
- Rendered output.
- Current screenshot or layout behavior.
- Current generated CSS, HTML, JSON, schema, or binary output.
- Existing route response.
- Existing API shape.
- Existing file tree.

If the baseline already fails, distinguish pre-existing failure from failure introduced by the current change.

Do not silently take ownership of unrelated baseline failures.

## 8. Smallest coherent change

Agents must prefer the smallest coherent change that fully satisfies the request.

“Smallest” does not mean incomplete. It means no unrelated scope.

A coherent change may update multiple files when a real contract requires it, for example:

- Source plus generated output.
- Implementation plus directly affected test.
- Schema plus required consumer.
- Binding contract plus implementation that must stay synchronized.

Do not touch additional files merely to make the diff look stylistically uniform.

## 9. Tests are regression boundaries

Existing tests are evidence of expected behavior unless proven obsolete or incorrect.

Agents must not:

- Delete a failing test merely to make the suite pass.
- Weaken assertions because a refactor changed behavior unexpectedly.
- Rewrite snapshots automatically without inspecting the behavioral difference.
- Change expected output solely to match newly generated output.
- Treat a test failure after modification as proof that the test is wrong.

When an intentional, user-approved behavior change makes a test obsolete:

1. State the old behavior.
2. State the new intended behavior.
3. Explain why the expectation changes.
4. Update the test deliberately.
5. Validate that unrelated behavior remains intact.

## 10. Regression response protocol

If a requested change causes an unrelated regression:

1. Stop expanding the change.
2. Identify whether the regression is caused by the current edit.
3. Restore or preserve the previously working behavior.
4. Prefer a narrower implementation.
5. Do not “fix forward” by redesigning more of the system unless the user approves that broader scope.
6. Report the regression and the resolution.

A regression is not permission to refactor the affected subsystem.

## 11. Evidence over assumption

Agents must inspect actual repository state rather than inventing it.

Do not assume:

- A file exists because documentation mentions it.
- A branch contains a change because another branch does.
- A generated file is current because its source exists.
- A dependency is installed because it appears in examples.
- A route is active because a controller exists.
- A CSS class is unused because a local search missed generated or dynamic references.
- A migration has run because the migration file exists.
- A workflow passed because the configuration looks correct.

When evidence cannot be obtained, state the limitation.

## 12. Preserve user-established patterns

When the user has established a project convention, agents must follow it unless explicitly asked to change it.

Examples include:

- Naming conventions.
- Directory layout.
- Build tooling.
- Styling strategy.
- Framework constraints.
- Server-rendering requirements.
- Branch strategy.
- Documentation placement.
- Generated-file conventions.

Do not reintroduce a pattern the user previously rejected simply because it is common elsewhere.

## 13. New files and directories

Do not create new files or directories unless they serve a concrete requirement of the task or a binding repository contract.

Before adding one, prefer an existing canonical location when it can cleanly own the content.

Do not create parallel implementations such as:

- `new-*`
- `legacy-*`
- `v2-*`
- `refactored-*`
- duplicate stylesheets
- duplicate configuration files
- alternate component trees

unless the migration strategy explicitly requires coexistence and the user approved it.

## 14. Deletion and removal

Deletion requires stronger evidence than addition.

Before deleting or removing a file, API, style, dependency, route, test, configuration entry, or documented behavior:

1. Prove why it is no longer required.
2. Search for consumers and references.
3. Determine whether it is public, generated, dynamically referenced, or deployment-dependent.
4. Explain the removal when it is outside the user's explicit request.
5. Obtain permission when removal is architectural, broad, or potentially behavior-changing.

“Looks unused” is insufficient evidence.

## 15. Dependency governance

Do not add, remove, or replace dependencies casually.

A new dependency must have a concrete requirement that cannot be reasonably met by the existing stack.

Before changing dependencies, consider:

- Runtime impact.
- Build impact.
- Security impact.
- Licensing.
- Deployment compatibility.
- Lockfile changes.
- Generated output.
- Existing project conventions.

Dependency modernization is not incidental maintenance.

## 16. Formatting and generated files

Avoid whole-file or repository-wide formatting when the requested change is narrow.

Generated files must be regenerated from their canonical source when the project contract requires generated output to remain committed.

Do not hand-edit generated output as a substitute for fixing its source unless the repository explicitly defines that workflow.

After generation, inspect the resulting diff for unrelated churn.

## 17. Documentation governance

Documentation must describe the implementation that actually exists or the explicitly approved target state.

Do not document speculative architecture as completed work.

When recovering historical decisions:

- Distinguish verbatim source material from summaries.
- Preserve original terminology where it is authoritative.
- Mark reinterpretation or inference as such.
- Do not silently replace the user's defined philosophy, acronym, naming, or concept with a more familiar industry interpretation.

## 18. Agent communication protocol

Agents should communicate when it affects user control or confidence, especially when:

- A material regression is discovered.
- The existing implementation differs from the assumed state.
- A requested change requires broader architecture work.
- A refactor permission gate is reached.
- Validation fails.
- A supposedly generated or deployed artifact is stale.
- There are unrelated working-tree changes that could be overwritten.

Do not burden the user with low-level narration of routine operations.

Do not repeatedly ask for information already available in the repository or conversation.

## 19. Explicit stop-and-ask conditions

Stop before modification and obtain user authorization when an unrequested change would:

- Change architecture.
- Change framework or build system.
- Refactor working behavior materially.
- Rename or move public or broadly referenced artifacts.
- Remove a working feature.
- Change database or persistent data semantics.
- Change public API or route contracts.
- Replace a user-established implementation pattern.
- Introduce a migration with meaningful rollback or data risk.
- Require broad destructive cleanup.

This stop condition does not apply when the user explicitly requested that exact category of change.

## 20. Completion requirements

Before claiming completion:

- Confirm the requested behavior was implemented.
- Confirm the intended files were actually written.
- Run the relevant available validation.
- Compare against the baseline where one was established.
- Inspect for unrelated diff or behavioral drift.
- State any checks that could not be performed.
- State any pre-existing failures separately from new failures.
- Confirm no unapproved refactor or scope expansion was introduced.

## 21. Completion report

For material repository changes, report concisely:

```text
Requested scope:
Changed files:
Behavior intentionally changed:
Behavior explicitly preserved:
Validation performed:
Pre-existing failures:
New unresolved failures:
Refactors performed: none | explicitly requested | explicitly approved
Additional issues discovered but not changed:
Commit/branch:
```

Do not call work complete when the requested change is only documented but not implemented, or only implemented but not validated, when validation is available.

## 22. Governing maxim

When uncertain whether to “improve” adjacent code, preserve it.

When uncertain whether a refactor is necessary, attempt the narrower change first.

When a broader change is truly necessary, explain it and ask permission.

When validation fails, do not increase scope blindly.

> **Preserve behavior. Change deliberately. Validate independently. Expand only with evidence or permission.**
