# Vendor and Platform Guidance

> **Status:** Informative research record  
> **Research date:** 2026-08-31

Vendor/platform guidance is authoritative only for the named product or program within its stated scope. Cross-vendor convergence may support a broader practitioner position, but no vendor defines SABOS Lib governance by itself.

## DORA / Google Cloud

### AI-accessible internal data

Source: https://dora.dev/capabilities/ai-accessible-internal-data/

Relevant findings:

- DORA frames context engineering as automatically gathering relevant internal information for AI workflows.
- It recommends retrieving relevant chunks rather than dumping large documents wholesale.
- It emphasizes access controls and least privilege for AI retrieval.
- It treats codebases, documentation, standards, and operational knowledge as valuable AI-accessible internal data.

Governance relevance:

- supports repository-grounded context;
- supports selective retrieval/context harvesting;
- supports least-privilege retrieval;
- supports separating context infrastructure from one-off prompting.

### Version control

Source: https://dora.dev/capabilities/version-control/

Relevant findings:

- DORA describes version control as a safety net for AI-accelerated, nondeterministic work.
- It explicitly recommends versioning AI prompts and agent configuration artifacts along with application/configuration/deployment assets.
- It emphasizes reproducibility, traceability, and frequent recoverable checkpoints.

Governance relevance:

- supports durable repository records;
- supports traceability and rollback;
- supports keeping material agent configuration under version control.

### Working in small batches

Source: https://dora.dev/capabilities/working-in-small-batches/

Relevant findings:

- DORA identifies small batches as a core AI capability.
- It describes small batches as a countermeasure to AI-associated delivery instability.
- It emphasizes fast feedback, reviewability, and course correction.

Governance relevance:

- strongly supports smallest-coherent-change rules;
- supports early validation and incremental scope.

### Clear and communicated AI stance

Source: https://dora.dev/capabilities/clear-and-communicated-ai-stance/

Relevant finding:

- Clear expectations around AI use reduce ambiguity and amplify positive outcomes.

Governance relevance:

- supports explicit repository-level rules and authority rather than invisible expectations.

## OpenAI / Codex

### Harness engineering: leveraging Codex in an agent-first world

Source: https://openai.com/index/harness-engineering/

Relevant findings:

- OpenAI reports that a large monolithic `AGENTS.md` failed because context is scarce, excessive guidance dilutes important guidance, monolithic instructions become stale, and large blobs are difficult to verify.
- The reported replacement is a short `AGENTS.md` acting as a map into a structured repository knowledge base treated as the system of record.
- The repository knowledge base includes indexed design documentation, active/completed execution plans, generated documentation, product specifications, and references.
- OpenAI reports mechanically checking documentation structure, cross-links, and freshness, and using recurring documentation gardening to detect stale material.
- The article emphasizes mechanical architectural constraints and feedback loops that turn repeated review findings into durable documentation or tooling.

Governance relevance:

- direct support for concise routing instructions;
- direct support for repository knowledge as durable context;
- direct support for progressive disclosure;
- supports context-freshness/supersession maintenance;
- supports mechanical enforcement and validation.

### Using PLANS.md for multi-hour problem solving

Source: https://developers.openai.com/cookbook/articles/codex_exec_plans

Relevant findings:

- OpenAI distinguishes lightweight ephemeral plans from versioned execution plans for complex/multi-hour work.
- Execution plans are intended to be self-contained enough for an agent to continue from the plan rather than depending on prior chat context.
- Progress, discoveries, decisions, and outcomes are maintained as the work evolves.

Governance relevance:

- direct vendor evidence for durable checkpoints/plans when work is sufficiently complex or long-running;
- supports recording progress and decisions without requiring every small task to create a plan artifact;
- supports repository-resumable work independent of one interaction window.

## GitHub Copilot

### Repository custom instructions

Sources:

- https://docs.github.com/en/copilot/how-tos/copilot-on-github/customize-copilot/add-custom-instructions/add-repository-instructions
- https://docs.github.com/en/copilot/reference/custom-instructions-support
- https://docs.github.com/en/copilot/concepts/agents/code-review
- https://docs.github.com/en/copilot/how-tos/copilot-cli/customize-copilot/add-custom-instructions
- https://docs.github.com/en/copilot/concepts/prompting/response-customization

Relevant findings:

- GitHub distinguishes repository-wide instructions, path-specific instructions, agent instructions, prompt files, and task-specific skills/workflows.
- Multiple `AGENTS.md` files can exist in a repository; nearest applicable agent instructions take precedence on supported surfaces.
- Copilot CLI exposes `/instructions` so users can inspect instruction files discovered for a session.
- Copilot CLI documentation warns that multiple instruction mechanisms can be combined without a universal precedence order and recommends avoiding conflicts.
- GitHub explicitly warns that AI may not follow custom instructions deterministically.

Governance relevance:

- supports scoped instruction layers;
- supports vendor-neutral `AGENTS.md` as a shared standing-rule surface;
- supports inspectable context when the platform exposes it;
- supports explicit conflict avoidance instead of assuming vendor precedence will resolve contradictory instructions;
- reinforces that instructions are guidance, not mechanical enforcement.

## Google Gemini CLI

### Hierarchical and just-in-time context

Sources:

- https://geminicli.com/docs/cli/gemini-md/
- https://geminicli.com/docs/reference/configuration/
- https://geminicli.com/docs/cli/skills-best-practices/

Relevant findings:

- Gemini CLI loads context hierarchically from global/project/local scopes.
- It supports just-in-time discovery of component-specific context when tools access relevant files/directories.
- It exposes context inspection commands so users can see loaded instructional context.
- Gemini skill guidance explicitly recommends progressive disclosure: small metadata always loaded, skill body loaded when triggered, detailed resources loaded only as needed.

Governance relevance:

- direct support for progressive disclosure;
- supports inspectable context and local scope;
- demonstrates that scoped/JIT context is becoming a cross-vendor design pattern.

## Anthropic Claude Code

### Project memory, rules, skills, and enforcement

Sources:

- https://code.claude.com/docs/en/memory
- https://code.claude.com/docs/en/features-overview
- https://code.claude.com/docs/en/context-window
- https://code.claude.com/docs/en/debug-your-config

Relevant findings:

- Anthropic describes `CLAUDE.md` instructions and auto memory as context, not enforced configuration.
- It recommends concise, specific, structured always-loaded instructions and targets under 200 lines per `CLAUDE.md`.
- Specialized multi-step procedures or narrow-domain guidance should move to path-scoped rules or skills; subdirectory instructions can load when the relevant directory is accessed.
- Skills are appropriate for task-specific knowledge/workflows and load their bodies when used rather than occupying the entire persistent instruction surface.
- Hooks/permissions are positioned as deterministic enforcement where a rule must hold regardless of model interpretation.
- `/memory`, `/skills`, `/hooks`, `/permissions`, and related diagnostics expose loaded/resolved configuration for troubleshooting.
- Anthropic documents that context compaction can summarize away conversation/path-scoped material, while root project instructions are re-read/re-injected and scoped material can reload when its trigger is encountered again.

Governance relevance:

- reinforces context-budget discipline;
- supports on-demand procedural/reference material;
- supports inspectable context/configuration;
- supports treating compaction as a potentially lossy boundary for conversation-only task state;
- reinforces the guidance-vs-enforcement distinction.

## Cross-vendor synthesis

Independent current systems increasingly expose some combination of:

```text
small always-on rules
+ hierarchical/path scope
+ on-demand skills/resources
+ repository/file search
+ inspectable context
+ durable/versioned project artifacts
+ deterministic hooks/tests/checks
```

This convergence supports SABOS Lib's progressive-disclosure, durable-state, and freshness positions. It does not require SABOS Lib to adopt any vendor-specific filename, memory system, plan format, skill format, context-compaction behavior, or precedence rule as universal governance.
