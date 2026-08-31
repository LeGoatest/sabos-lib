# Pattern: Scoped Agent Entrypoint

> **Status:** Informative reusable pattern  
> **Purpose:** Keep persistent agent instructions concise, operationally specific, and scoped while routing detailed knowledge to canonical repository sources.

This pattern is intended for repository-level or subtree-level instruction files such as `AGENTS.md`, path-scoped Copilot instructions, agent rules, or equivalent vendor adapters.

## Design rule

Persistent instructions should answer only the questions an agent must know **before it can safely discover the rest**:

1. What scope does this file govern?
2. What authority/architecture must not be violated?
3. Where is deeper context located?
4. Which exact commands or command sources govern work here?
5. What high-risk constraints apply?
6. What workflow/validation boundary must be preserved?

Do not duplicate long standards, research, examples, or reference material into the persistent file.

## Suggested shape

```markdown
# <Repository or Subsystem> Agent Instructions

> Scope: <path / subsystem>
> Parent authority: <link when nested>

## Mission

<One sentence describing the primary invariant.>

## Read first

1. <nearest architecture / governance router>
2. <local README or contract index>
3. <nearest binding contract>

Load research, examples, historical records, and deep reference material only when relevant.

## Architecture / ownership

- <canonical source or layer>
- <generated output boundary>
- <dependency direction that must hold>

## Commands

Do not guess commands.

- Build: `<exact command>` — source: <manifest/workflow/docs>
- Test: `<exact command>` — source: <manifest/workflow/docs>
- Validate: `<exact command>` — source: <manifest/workflow/docs>

If this scope owns no command, say so and link to the owning scope instead.

## High-risk constraints

- MUST ...
- MUST NOT ...

Include only rules whose omission is likely to cause material failure or scope drift.

## Required workflow

inspect
→ recover only relevant local context
→ identify direct dependencies/consumers
→ make the smallest coherent change
→ run prerequisite checks in dependency order
→ validate independently
→ report performed vs unperformed checks

## Escalation

<when approval or architecture decision is required>
```

## Scoping rules

- Put repository-wide invariants at the root.
- Put subsystem-specific rules near the subsystem.
- Put path-specific constraints at the narrowest stable boundary that owns them.
- Prefer links/routing over copied text.
- Do not create a local instruction file merely for symmetry.
- When a local instruction conflicts with a higher authority, resolve the authority conflict rather than merging both sets of prose.

## Operational specificity

A concise file is not useful if it is vague. Where they actually exist, include or route to:

- architecture/layer ownership;
- exact build/test/validation command sources;
- language/framework/package/tool versions that are contractual;
- coding conventions whose violation causes real incompatibility;
- generated-source ownership;
- prohibited mutation/dependency paths;
- review/deployment boundaries.

Avoid generic advice such as “write clean code” unless the repository defines a concrete local meaning.

## Maintenance rule

Treat persistent instructions as versioned operational configuration:

- update them when controlling architecture/commands change;
- remove superseded requirements rather than accumulating contradictory history;
- preserve rationale/history in appropriate decision/changelog records instead of bloating the active instruction file;
- use mechanical checks for stable enforceable rules when practical.

## Related contracts

- [`../contracts/context-engineering.md`](../contracts/context-engineering.md)
- [`../contracts/context-freshness.md`](../contracts/context-freshness.md)
- [`../contracts/execution-verification.md`](../contracts/execution-verification.md)
