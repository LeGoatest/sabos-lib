# Agent Operations Source Registry

> **Status:** Informative provenance registry  
> **Reviewed:** 2026-08-31

This registry records source provenance and evidence class. Inclusion does not make a source binding.

| ID | Source | Class | Primary relevance |
|---|---|---|---|
| AO-SRC-001 | DORA — AI-accessible internal data — https://dora.dev/capabilities/ai-accessible-internal-data/ | empirical program / platform guidance | context engineering, selective retrieval, least privilege |
| AO-SRC-002 | DORA — Version control — https://dora.dev/capabilities/version-control/ | empirical program / established engineering | AI safety net, traceability, versioning AI artifacts |
| AO-SRC-003 | DORA — Working in small batches — https://dora.dev/capabilities/working-in-small-batches/ | empirical program / established engineering | AI delivery stability, small coherent changes |
| AO-SRC-004 | DORA — Clear and communicated AI stance — https://dora.dev/capabilities/clear-and-communicated-ai-stance/ | empirical program | explicit AI-use expectations |
| AO-SRC-005 | OpenAI — Harness engineering: leveraging Codex in an agent-first world — https://openai.com/index/harness-engineering/ | primary vendor case study | repository knowledge as system of record, concise AGENTS.md, documentation freshness, execution plans, mechanical constraints |
| AO-SRC-006 | GitHub Docs — repository custom instructions — https://docs.github.com/en/copilot/how-tos/copilot-on-github/customize-copilot/add-custom-instructions/add-repository-instructions | primary vendor documentation | repository/path/agent instruction scopes |
| AO-SRC-007 | GitHub Docs — custom instruction support — https://docs.github.com/en/copilot/reference/custom-instructions-support | primary vendor documentation | cross-surface instruction support |
| AO-SRC-008 | GitHub Docs — Copilot code review customization — https://docs.github.com/en/copilot/concepts/agents/code-review | primary vendor documentation | standing rules vs path rules vs skills |
| AO-SRC-009 | Gemini CLI — Provide context with GEMINI.md — https://geminicli.com/docs/cli/gemini-md/ | primary vendor documentation | hierarchical/JIT context, context inspection |
| AO-SRC-010 | Gemini CLI — Agent Skill best practices — https://geminicli.com/docs/cli/skills-best-practices/ | primary vendor documentation | progressive disclosure |
| AO-SRC-011 | Anthropic Claude Code — memory/project instructions — https://code.claude.com/docs/en/memory | primary vendor documentation | concise persistent context, scoped rules, memory behavior |
| AO-SRC-012 | Anthropic Claude Code — features overview — https://code.claude.com/docs/en/features-overview | primary vendor documentation | always-on rules vs scoped rules vs skills vs deterministic hooks |
| AO-SRC-013 | Gloaguen et al. — Evaluating AGENTS.md — https://arxiv.org/abs/2602.11988 | scholarly preprint | context-file effectiveness/cost, minimal requirements |
| AO-SRC-014 | dos Santos et al. — Configuration Smells in AGENTS.md Files — https://arxiv.org/abs/2606.15828 | scholarly preprint | context bloat, conflicting instructions, skill leakage |
| AO-SRC-015 | Chatlatanagulchai et al. — Agent READMEs — https://arxiv.org/abs/2511.12884 | scholarly preprint | large-scale context-file usage and maintenance |
| AO-SRC-016 | Zhang et al. — RepoCoder — https://aclanthology.org/2023.emnlp-main.151/ | peer-reviewed research | iterative repository retrieval |
| AO-SRC-017 | Wu et al. — Repoformer — https://arxiv.org/abs/2403.10059 | peer-reviewed research / arXiv record | selective retrieval, harmful irrelevant context |
| AO-SRC-018 | Bairi et al. — CodePlan — https://www.microsoft.com/en-us/research/publication/codeplan-repository-level-coding-using-llms-and-planning-2/ | peer-reviewed research | dependency-aware repository planning |
| AO-SRC-019 | Yang et al. — SWE-agent — https://arxiv.org/abs/2405.15793 | peer-reviewed research / arXiv record | agent-computer interface design, repository navigation/testing |
| AO-SRC-020 | Sharma — ContextCov — https://arxiv.org/abs/2603.00822 | scholarly preprint | executable guardrails from agent instructions |
| AO-SRC-021 | Google Engineering Practices — Small CLs — https://google.github.io/eng-practices/review/developer/small-cls.html | established engineering practice | small changes, separate refactors, test coverage |
| AO-SRC-022 | Böckeler / Thoughtworks / Martin Fowler — Context Engineering for Coding Agents — https://martinfowler.com/articles/exploring-gen-ai/context-engineering-coding-agents.html | authoritative practitioner literature | context curation, context interfaces, context-budget caution |
| AO-SRC-023 | Böckeler / Thoughtworks / Martin Fowler — Harness engineering for coding agent users — https://martinfowler.com/articles/harness-engineering.html | authoritative practitioner literature | feedback loops, sensors, deterministic controls |
| AO-SRC-024 | OpenAI — Using PLANS.md for multi-hour problem solving — https://developers.openai.com/cookbook/articles/codex_exec_plans | primary vendor guidance / operational pattern | durable execution plans, progress/decision logs, resumable complex work |
| AO-SRC-025 | GitHub Docs — Copilot CLI custom instructions — https://docs.github.com/en/copilot/how-tos/copilot-cli/customize-copilot/add-custom-instructions | primary vendor documentation | instruction discovery/inspection, conflict caution |
| AO-SRC-026 | GitHub Docs — response customization — https://docs.github.com/en/copilot/concepts/prompting/response-customization | primary vendor documentation | nondeterministic custom instructions, scoped customization |
| AO-SRC-027 | Anthropic Claude Code — context window — https://code.claude.com/docs/en/context-window | primary vendor documentation | context compaction, reloading/persistence boundaries |
| AO-SRC-028 | Anthropic Claude Code — debug configuration — https://code.claude.com/docs/en/debug-your-config | primary vendor documentation | inspection of loaded instructions, permissions/hooks vs guidance |
| AO-SRC-029 | Khatri — Do Context Files Help Coding Agents? — https://arxiv.org/abs/2607.27250 | scholarly preprint | two-agent ablation, counterevidence against context-file correctness claims |
| AO-SRC-030 | Martin Fowler — Architecture Decision Record — https://martinfowler.com/bliki/ArchitectureDecisionRecord.html | authoritative practitioner literature | lightweight durable decisions, context/consequences, supersession |
| AO-SRC-031 | Thoughtworks — Enterprise Architecture Playbook, Lightweight ADRs — https://www.thoughtworks.com/content/dam/thoughtworks/documents/report/thoughtworks-enterprise-architecture-playbook-v4 | established practitioner guidance | source-controlled decision records, lightweight governance |
| AO-SRC-032 | AWS Prescriptive Guidance — ADR introduction — https://docs.aws.amazon.com/prescriptive-guidance/latest/architectural-decision-records/introduction.html | primary cloud-vendor architecture guidance | decision capture, rationale, handover/reconstruction |
| AO-SRC-033 | AWS Prescriptive Guidance — ADR process — https://docs.aws.amazon.com/prescriptive-guidance/latest/architectural-decision-records/adr-process.html | primary cloud-vendor architecture guidance | decision lifecycle/status, supersession, context/consequences |
| AO-SRC-034 | Microsoft Azure Well-Architected — Maintain an ADR — https://learn.microsoft.com/en-us/azure/well-architected/architect-role/architecture-decision-record | primary cloud-vendor architecture guidance | concise durable decisions, status, rationale, supersession |

## Discovery indexes

Academic discovery systems such as Google Scholar, Semantic Scholar, OpenAlex, Crossref, DBLP, publisher indexes, conference libraries, and arXiv may be used to discover and cross-check research. When a primary paper/publisher record is available, the registry should cite that source rather than treating the discovery index as the substantive evidence.

Discovery indexes are useful for:

- finding related/citing work;
- checking publication/venue metadata;
- identifying later versions or replication work;
- detecting contradictory evidence.

They are not substitutes for reading the primary source when a governance claim depends on the paper's actual method or result.

## Maintenance

When adding or re-reviewing a source:

1. identify its evidence class;
2. prefer the primary publication/vendor/standards record;
3. record the claim it actually supports;
4. preserve limitations and conflicts;
5. check whether a newer version, formal publication, deprecation, or materially changed vendor page exists when freshness matters;
6. do not promote it to binding authority without an explicit governance adoption step.
