# Research Basis for Repository Agent Governance

> **Status:** Informative  
> **Research date:** 2026-08-08  
> **Purpose:** Record the evidence used to justify the repository's governance architecture. This file explains why the binding governance is structured as a small agent entrypoint plus scoped authoritative contracts and executable validation.

This research intentionally distinguishes **instruction context** from **governance** and **enforcement**.

## 1. Primary conclusion

The evidence supports a layered model:

```text
small persistent agent instructions
        ↓
scoped repository governance and architecture
        ↓
implementation-specific procedures
        ↓
mechanical tests, CI, linters, schema checks, and output validation
```

The root `AGENTS.md` should act primarily as a map, high-salience invariant list, and mutation/validation gate. Detailed knowledge should remain in scoped, versioned sources of truth rather than being copied into every agent session.

## 2. OpenAI / Codex

### Harness engineering: leveraging Codex in an agent-first world

Source: https://openai.com/index/harness-engineering/

OpenAI reports that a monolithic `AGENTS.md` failed in practice because it consumed scarce context, diluted important guidance, became stale, and was difficult to verify mechanically. The team moved to a roughly 100-line `AGENTS.md` that acts as a map into a structured repository knowledge base.

The same report emphasizes:

- repository-local knowledge as the system of record;
- progressive disclosure rather than loading all context up front;
- mechanical enforcement of architectural invariants;
- strict boundaries with local implementation autonomy;
- feedback loops that turn repeated review findings into documentation or executable tooling.

This is the strongest direct industry evidence for the architecture adopted here.

### Introducing Codex

Source: https://openai.com/index/introducing-codex/

OpenAI describes `AGENTS.md` as a place for repository navigation, test commands, and project practices. Codex's documented instruction model also supports directory-scoped `AGENTS.md` files, with more deeply nested files providing more specific instructions for files in their scope.

### Unrolling the Codex agent loop

Source: https://openai.com/index/unrolling-the-codex-agent-loop/

OpenAI documents that Codex aggregates repository instruction files from the project root toward the working directory, subject to a context-size limit. This supports hierarchical and scoped instruction design rather than one repository-wide encyclopedia.

## 3. Anthropic / Claude Code

### How Claude remembers your project

Source: https://code.claude.com/docs/en/memory

Anthropic states that persistent project instructions are context rather than enforced configuration. It recommends specific, concise, well-structured instructions and targets **under 200 lines per CLAUDE.md**. Multi-step procedures and content that applies only to one area should be moved to scoped rules or skills.

Anthropic's model supports:

- project-level instructions;
- hierarchical/nested instructions;
- path-specific rules;
- on-demand procedural skills;
- hooks/settings when deterministic enforcement is required.

This reinforces the separation between **behavioral guidance** and **mechanical enforcement**.

## 4. GitHub Copilot

### Repository custom instructions

Source: https://docs.github.com/en/copilot/how-tos/configure-custom-instructions-in-your-ide/add-repository-instructions-in-your-ide

GitHub supports multiple `AGENTS.md` files within a repository and documents nearest-file precedence for applicable work. It also supports path-specific instruction files.

This supports placing subsystem-specific details near the subsystem rather than inflating global instructions.

### Custom-instruction support matrix

Source: https://docs.github.com/en/copilot/reference/custom-instructions-support

GitHub supports repository-wide, path-specific, and agent instruction mechanisms across different Copilot surfaces. The repository should therefore maintain one canonical governance model rather than duplicate conflicting vendor-specific policy files.

## 5. Google / Gemini CLI

### Provide context with GEMINI.md files

Source: https://geminicli.com/docs/cli/gemini-md/

Gemini CLI uses hierarchical instructional context and supports just-in-time context files discovered when tools enter a relevant component. It can also be configured to recognize `AGENTS.md` as a context filename.

This is direct support for **progressive disclosure**: load global rules globally and component-specific knowledge only when that component is touched.

## 6. Empirical research on agent context files

The academic evidence is mixed. That is important: it argues against treating an instruction file itself as sufficient governance.

### Evaluating AGENTS.md: Are Repository-Level Context Files Helpful for Coding Agents?

Gloaguen, Mündler, Müller, Raychev, Vechev. 2026.

Source: https://arxiv.org/abs/2602.11988

The study found that repository context files often reduced task-success rates and increased inference cost by more than 20%, while also causing broader exploration and more testing. The authors conclude that unnecessary requirements make tasks harder and recommend that human-written context files contain only **minimal requirements**.

Governance implication: keep persistent context small and high-salience.

### Configuration Smells in AGENTS.md Files

dos Santos, Costa, Montandon, Silva, Valente. 2026.

Source: https://arxiv.org/abs/2606.15828

Across 100 popular open-source repositories, the study found widespread configuration smells, including:

- Lint Leakage: 62%
- Context Bloat: 42%
- Skill Leakage: 35%

Context Bloat, Skill Leakage, and Conflicting Instructions frequently co-occurred.

Governance implication: do not copy lint manuals, tutorials, specialized procedures, or all architectural documentation into global agent context.

### Agent READMEs: An Empirical Study of Context Files for Agentic Coding

Chatlatanagulchai et al. 2025.

Source: https://arxiv.org/abs/2511.12884

The study analyzed 2,303 agent context files from 1,925 repositories. Developers commonly encoded build/run commands, implementation details, and architecture, while security and performance requirements were far less frequent.

Governance implication: context files are useful operational maps, but important non-functional constraints require deliberate governance and enforcement rather than assuming they will appear naturally.

### Do Context Files Help Coding Agents? A Two-Agent Ablation Study on Real Repositories

Khatri. 2026.

Source: https://arxiv.org/abs/2607.27250

This controlled ablation found no measurable correctness gain attributable to context strategy across the studied Codex and Claude tasks.

Governance implication: `AGENTS.md` is not a correctness mechanism by itself. Correctness must come from architecture, tests, validation, and explicit boundaries.

## 7. Established software-engineering evidence

### Google Engineering Practices — Small CLs

Source: https://google.github.io/eng-practices/review/developer/small-cls.html

Google recommends small, focused changes and generally separating refactors from feature changes and bug fixes. It also expects tests for changed logic and recommends test coverage before behavior-preserving refactors when coverage is missing.

This supports repository invariants for:

- smallest coherent scope;
- no opportunistic refactoring;
- preserving behavior during refactors;
- establishing test evidence before structural change.

### Google SRE — Canarying Releases

Source: https://sre.google/workbook/canarying-releases/

Google SRE describes canarying as partial, time-limited exposure of a change followed by evaluation before broader rollout. It also emphasizes automated release processes, observable state, and rollback capability.

This supports the repository's **Gradual**, **Transparent**, and **Non-destructive** validation principles and the rule to increase risk only as confidence increases.

## 8. Internal reference: SAGE

Repository: https://github.com/LeGoatest/SAGE

SAGE provides a useful internal governance reference because it already separates agent onboarding from canonical authority.

### Patterns adopted from SAGE

#### Authority separation

SAGE's root `AGENTS.md` explicitly identifies itself as non-canonical and routes the agent toward canonical governance.

Adopted principle: agent instructions should route to authority rather than impersonate the entire authority system.

#### System axioms

Reference: `.docs/canon/SYSTEM_AXIOMS.md`

Useful concepts include:

- explicit rule governance;
- specification before execution for material work;
- sovereign component boundaries;
- explicit contracts across boundaries.

Adopted principle: subsystem authority and cross-boundary contracts should be explicit.

#### Invariant model

Reference: `.docs/canon/INVARIANT_MODEL.md`

SAGE treats invariants as core truths that must survive changes and associates violations with enforcement behavior.

Adopted principle: anti-regression and anti-drift requirements should be expressed as named invariants rather than scattered advice.

#### Mutation process

Reference: `.docs/canon/MUTATION_PROCESS.md`

SAGE requires explicit human approval before canonical governance mutation and expects dependent governance artifacts to remain synchronized.

Adopted principle: an agent may work inside a contract but may not silently redefine the contract to make its implementation easier.

#### Version locking

Reference: `.docs/canon/VERSION_LOCKING.md`

SAGE anchors work against explicit canon versions to prevent architectural drift.

Adopted direction: governed implementations should be able to identify the WDBASIC/SEObasic/governance version or commit they were designed against when reproducibility matters.

### Patterns intentionally not copied wholesale

SAGE is itself a governance engine, so its large constitutional hierarchy is appropriate to that project. Applying the entire SAGE state-machine, task-group, canonical compilation, and specification ceremony to every ordinary website or library task would conflict with the evidence favoring minimal persistent context and proportional process.

This repository therefore adopts SAGE's **authority, invariant, mutation, boundary, and traceability concepts** without requiring the full SAGE constitutional runtime for ordinary implementation work.

## 9. Resulting governance model

The evidence supports five repository governance primitives:

1. **Authority** — determine who may decide.
2. **Invariant** — identify what ordinary work must preserve.
3. **Scope** — constrain each task to the smallest coherent area.
4. **Mutation** — require deliberate authorization to redefine a contract.
5. **Evidence** — use observable validation to prove the result.

The resulting doctrine is:

> **Agents may implement within established contracts. They may not silently redefine those contracts.**

And the operational form is:

> **Preserve invariants. Minimize scope. Validate independently. Escalate mutations.**

## 10. Maintenance rule

This evidence record SHOULD be reviewed when major coding-agent instruction systems materially change or when new empirical evidence contradicts the current design.

Do not change binding governance merely because a vendor changes terminology. A governance amendment should be based on demonstrated impact on repository reliability, clarity, or enforceability.
