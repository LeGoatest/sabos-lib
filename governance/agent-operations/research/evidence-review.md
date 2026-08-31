# Agent Operations Evidence Review

> **Status:** Informative research synthesis  
> **Research date:** 2026-08-31  
> **Question:** What evidence supports repository-grounded context engineering, scoped agent instructions, continuity of task state, small coherent changes, context freshness, durable checkpoints, and mechanical validation for coding agents?

## Executive conclusion

The strongest cross-source conclusion is not that agents need more instructions. It is that **agent effectiveness depends on the quality, relevance, structure, provenance, freshness, and enforceability of context**.

Evidence from DORA, OpenAI, GitHub, Google/Gemini, Anthropic, empirical AGENTS.md studies, repository-retrieval research, repository-level planning research, established software-engineering practice, and practitioner literature converges on the following pattern:

```text
concise persistent guidance
        +
selective retrieval of relevant repository state
        +
clear authority and scope boundaries
        +
fresh/supersession-aware durable knowledge
        +
small, reviewable changes
        +
durable task state when work is genuinely long-running/resumable
        +
independent/executable validation
        ↓
safer and more effective agent-assisted work
```

The evidence also contains meaningful counterevidence: repository context files can reduce task success and increase cost when they add unnecessary requirements or excessive context. Therefore, the governance conclusion is **progressive disclosure and selective retrieval**, not indiscriminate context expansion.

## Evidence classes

This review intentionally distinguishes:

- **Primary vendor/platform guidance** — authoritative for how the named product or capability behaves, not universal law.
- **DORA/software-delivery research** — empirical organizational/software-delivery evidence with broader applicability, but not a direct specification for agent prompts.
- **Peer-reviewed or scholarly research** — empirical evidence about repository agents, retrieval, planning, or agent interfaces.
- **Preprint research** — useful current evidence whose claims require appropriate caution.
- **Established engineering practice** — mature software-development guidance applicable by analogy or directly to AI-generated changes.
- **Practitioner literature** — informed professional synthesis that can reveal emerging consensus but is not itself a binding standard.

## Finding 1 — Repository knowledge should be durable and accessible

**Evidence strength: Strong.**

DORA's AI-accessible internal data capability describes context engineering as gathering relevant internal information so AI can work against current organizational knowledge and standards. It recommends retrieval mechanisms that return relevant chunks rather than indiscriminately dumping large documents into context.

OpenAI independently reports an operationally similar lesson from agent-first development: a large monolithic `AGENTS.md` created context pressure, diluted important guidance, became stale, and was difficult to verify. OpenAI moved to a short agent entrypoint that routes into structured repository knowledge treated as the system of record.

Anthropic likewise separates concise project instructions from scoped rules/skills and provides repository-scoped memory mechanisms.

**Governance implication:** durable architecture, contracts, decisions, procedures, and implementation facts should be recoverable from versioned repository sources. Conversation history is useful task context but should not be the only durable project record.

## Finding 2 — Context should be scoped and selectively retrieved

**Evidence strength: Strong.**

GitHub supports repository-wide, path-specific, and agent instruction scopes. Gemini CLI implements hierarchical and just-in-time context discovery. Anthropic recommends moving specialized material out of always-loaded instructions into path-scoped rules or skills.

Academic evidence gives the same warning from another direction. Gloaguen et al. found that repository context files tended to reduce task success while increasing inference cost by more than 20%, concluding that human-written files should contain minimal requirements. dos Santos et al. identified Context Bloat and Conflicting Instructions as common configuration smells. Khatri's two-agent ablation likewise found no measurable correctness gain from context-file strategy in the evaluated tasks.

RepoCoder shows that repository-level retrieval can improve code completion when relevant context is found. Repoformer shows that retrieval is not uniformly beneficial and that selective retrieval can avoid harmful or unnecessary context.

**Governance implication:** retrieve the smallest sufficient working set. Broader context is justified by dependency impact or uncertainty, not by a general belief that more tokens are safer.

## Finding 3 — Repository-level work benefits from explicit planning and dependency awareness

**Evidence strength: Moderate to strong.**

CodePlan frames repository-wide coding as a planning problem involving dependency analysis, change-impact analysis, previous edits, and adaptive multi-step work. Its FSE evaluation reports 5/7 repositories passing validity checks while its non-planning baselines passed none in that setting.

SWE-agent demonstrates that the interface through which an agent navigates, edits, and validates a repository materially affects agent performance. This supports treating repository search, editing, test execution, and context discovery as part of the engineered operating environment rather than incidental tooling.

**Governance implication:** material cross-file work should preserve an actionable task state and dependency-aware plan when needed. Planning should remain proportional; small local changes do not require heavyweight ceremony.

## Finding 4 — Passive natural-language rules are insufficient enforcement

**Evidence strength: Strong in principle; emerging for agent-specific enforcement.**

GitHub explicitly notes that custom instructions are nondeterministic and may not always be followed. Anthropic describes project instructions as context rather than enforced configuration and recommends hooks/permissions for constraints that must hold deterministically.

ContextCov directly studies this problem and reports converting natural-language agent constraints into executable guardrails such as AST checks, shell interception, and architectural validation.

Established engineering practice already reaches the same conclusion through tests, CI, static analysis, review, and build validation.

**Governance implication:** stable and mechanically testable invariants should move into executable checks in the adopting implementation when practical. Markdown remains necessary for authority and rationale but should not be mistaken for deterministic enforcement.

## Finding 5 — Small coherent changes are a safety control for AI-assisted development

**Evidence strength: Strong.**

DORA identifies working in small batches as a core AI capability and describes it as a countermeasure to AI-associated software-delivery instability. DORA also describes comprehensive version control as an increasingly important safeguard as AI increases change velocity and nondeterminism, and explicitly includes AI prompts/configuration as versioned artifacts.

Google Engineering Practices independently recommends small, self-contained changes because they are easier to review, reason about, test, merge, and roll back; it also recommends separating significant refactors from feature/bug changes.

**Governance implication:** smallest-coherent-change and no-opportunistic-refactor rules have strong external support and should remain repository-wide invariants.

## Finding 6 — Exact conversational shorthand semantics are a practitioner convention

**Evidence strength for underlying principle: Moderate.**  
**Evidence strength for exact words: Not established.**

The broader evidence supports preserving task context, avoiding unnecessary rework, planning material changes, versioning durable state, and continuing from reliable repository evidence.

However, no reviewed source establishes that the literal words `proceed` or `continue` carry universal coding-agent semantics.

**Governance implication:** SABOS Lib may deliberately define these shorthand commands as an interaction contract, but it must label that choice as an adopted practitioner convention rather than an external standard or research finding.

## Finding 7 — Context engineering has an emerging practitioner consensus, with cautions

**Evidence strength: Moderate.**

Thoughtworks/Martin Fowler practitioner literature describes context engineering as curating what an agent sees, distinguishes always-on instructions from on-demand context interfaces, and warns against indiscriminately filling context windows. It also emphasizes that context remains probabilistic guidance and should be paired with deterministic controls where appropriate.

This aligns with the independent vendor and empirical evidence but is treated as practitioner synthesis rather than formal authority.

## Finding 8 — Repository context needs freshness and supersession semantics

**Evidence strength: Moderate to strong.**

OpenAI's agent-first case study identifies instruction/documentation rot as a direct operational failure mode and reports using indexed documentation with verification status, mechanical checks for structure/cross-links/freshness, and recurring documentation gardening.

Established decision-record practice from Fowler, Thoughtworks, AWS, and Microsoft likewise emphasizes preserving historical decisions while making current status and supersession explicit rather than rewriting history.

**Governance implication:** repository-first retrieval must not become "trust every repository document." Agents need to distinguish current, historical, superseded, and uncertain material and reconcile contradictions with current implementation/authority.

## Finding 9 — Complex/resumable work benefits from durable checkpoints, but not every task needs one

**Evidence strength: Moderate.**

OpenAI reports treating plans as first-class repository artifacts for complex work: lightweight plans remain ephemeral for small changes, while multi-hour execution plans persist progress and decision logs so agents can continue without relying on external context.

Anthropic documents that context compaction can summarize away conversational/path-scoped material while root project instructions are re-read from disk and relevant scoped material can later reload. This demonstrates a concrete tool-level reason not to assume conversation-only task state is durable across context-management boundaries.

CodePlan provides research evidence that multi-step repository work benefits from preserving prior edits and task context across a plan, although it does not study human-agent checkpoint files directly.

**Governance implication:** require durable resumable state only when losing the active interaction would create material rediscovery or ambiguity. Exact checkpoint format/thresholds remain a repository governance choice.

## Finding 10 — Durable decision records reduce reconstruction cost

**Evidence strength: Strong as established engineering practice; indirect for coding-agent task success.**

Architecture Decision Record practice across Fowler, Thoughtworks, AWS, Microsoft, and the ADR community consistently records a consequential decision together with its context and consequences, keeps the record with project documentation/source control, and uses explicit lifecycle/supersession rather than silently rewriting accepted history.

OpenAI's agent-first repository model independently reports that decisions and execution plans must become repository-legible if agents are expected to reason about them later.

**Governance implication:** consequential project decisions that future work depends on should be durably recoverable. SABOS Lib should provide a lightweight pattern without requiring an ADR for every implementation detail.

## Consensus model

SABOS Lib should treat consensus as **convergence across independent evidence classes**, not source count.

A claim gains confidence when, for example:

- empirical research observes a behavior;
- multiple independent vendors expose mechanisms consistent with that behavior;
- established engineering practice supports the operational consequence;
- practitioner reports observe similar outcomes in real use;
- internal repository outcomes do not materially contradict it.

Repeated articles ultimately deriving from the same vendor statement are not independent confirmation.

## Adopted governance consequences

This evidence review supports the following adopted rules:

1. Keep persistent instructions concise and high-salience.
2. Treat repository knowledge as durable project context where appropriate.
3. Retrieve relevant local context progressively rather than loading everything.
4. Separate authority resolution from context retrieval.
5. Treat repository-local context as potentially stale and preserve supersession/history.
6. Preserve task state across analysis, approval, implementation, validation, and resumption.
7. Persist a minimal checkpoint when complex/resumable work cannot safely depend on interaction state alone.
8. Use shorthand approval only against an identifiable actionable scope.
9. Keep exact shorthand semantics labeled as a practitioner convention.
10. Work in the smallest coherent change set.
11. Version important AI/repository configuration and durable project artifacts.
12. Move stable testable constraints into mechanical enforcement where practical.
13. Keep evidence provenance and limitations visible.
14. Preserve consequential decisions in lightweight durable records when future work depends on their rationale.

## Counterevidence and limitations

- Context files do not reliably improve correctness by themselves.
- More context can increase cost, exploration, and confusion.
- Vendor behavior changes rapidly and may differ by product surface.
- Repository retrieval/completion benchmarks do not perfectly model long-running human-agent collaboration.
- Planning studies often target larger cross-file tasks and should not justify excessive ceremony for small edits.
- Durable checkpoint and decision-record practices have strong operational/engineering rationale but limited direct controlled evidence measuring coding-agent success from those artifacts alone.
- Practitioner reports are valuable but subject to selection bias and tool/version effects.

These limitations are reasons to keep governance empirical, versioned, and reviewable rather than treating current agent practices as permanent law.

## Sources

See [`../references/source-registry.md`](../references/source-registry.md) for the source registry and [`vendor-guidance.md`](vendor-guidance.md), [`academic-research.md`](academic-research.md), and [`practitioner-consensus.md`](practitioner-consensus.md) for categorized notes.
