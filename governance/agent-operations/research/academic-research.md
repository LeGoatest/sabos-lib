# Academic and Empirical Research

> **Status:** Informative research record  
> **Research date:** 2026-08-31

This record summarizes research relevant to repository-agent context, retrieval, planning, and enforceable constraints. Preprints are identified as such; a citation does not automatically create a SABOS Lib rule.

## Evaluating AGENTS.md: Are Repository-Level Context Files Helpful for Coding Agents?

Gloaguen, Mündler, Müller, Raychev, Vechev (2026).  
Source: https://arxiv.org/abs/2602.11988

Key findings:

- repository context files tended to reduce task success compared with no repository context in the evaluated settings;
- inference cost increased by more than 20%;
- agents did react to the instructions through broader exploration/testing;
- unnecessary requirements made tasks harder;
- the authors recommend minimal requirements in human-written context files.

Governance relevance:

- direct counterevidence against indiscriminately expanding persistent context;
- supports concise, high-salience instructions and selective retrieval.

## Configuration Smells in AGENTS.md Files

dos Santos, Costa, Montandon, Silva, Valente (2026).  
Source: https://arxiv.org/abs/2606.15828

Key findings across 100 popular repositories:

- Lint Leakage: 62%;
- Context Bloat: 42%;
- Skill Leakage: 35%;
- Context Bloat, Skill Leakage, and Conflicting Instructions frequently co-occurred.

Governance relevance:

- supports separating global rules from specialized procedures;
- supports local/scoped instructions and avoiding duplicated instruction manuals.

## Agent READMEs: An Empirical Study of Context Files for Agentic Coding

Chatlatanagulchai et al. (2025).  
Source: https://arxiv.org/abs/2511.12884

Key findings:

- studied 2,303 context files from 1,925 repositories;
- context files evolve like configuration artifacts rather than static prose;
- build/run commands, implementation details, and architecture dominate their content;
- security and performance requirements appear much less frequently.

Governance relevance:

- supports treating agent instructions as maintained configuration-like artifacts;
- supports deliberately governing non-functional constraints rather than assuming they will emerge naturally.

## RepoCoder: Repository-Level Code Completion Through Iterative Retrieval and Generation

Zhang et al. (EMNLP 2023).  
Sources:

- https://aclanthology.org/2023.emnlp-main.151/
- https://arxiv.org/abs/2303.12570

Key findings:

- iterative retrieval-generation improved repository-level code completion over in-file baselines;
- useful repository information is often distributed across files;
- retrieval quality materially affects output quality.

Governance relevance:

- supports repository-wide retrieval when the task actually depends on nonlocal context.

## Repoformer: Selective Retrieval for Repository-Level Code Completion

Wu et al. (2024).  
Source: https://arxiv.org/abs/2403.10059

Key findings:

- retrieval is not uniformly helpful;
- irrelevant/noisy retrieved context can harm code-language-model performance;
- selective retrieval improved efficiency without sacrificing evaluated performance.

Governance relevance:

- supports the rule that relevant context beats abundant context;
- supports deciding whether retrieval is necessary before expanding the active context set.

## CodePlan: Repository-level Coding using LLMs and Planning

Bairi et al. (FSE / Proceedings of the ACM on Software Engineering, 2024).  
Sources:

- https://www.microsoft.com/en-us/research/publication/codeplan-repository-level-coding-using-llms-and-planning-2/
- https://arxiv.org/abs/2309.12499

Key findings:

- repository-level changes are framed as a planning problem because files are interdependent and repository context is too large to provide naively;
- the system combines dependency analysis, change-impact analysis, and adaptive multi-step planning;
- planning substantially outperformed the evaluated non-planning baselines on repository-level validity checks.

Governance relevance:

- supports explicit task state/planning for material cross-file changes;
- does not justify heavyweight planning for every small edit.

## SWE-agent: Agent-Computer Interfaces Enable Automated Software Engineering

Yang et al. (NeurIPS 2024).  
Sources:

- https://arxiv.org/abs/2405.15793
- https://openreview.net/forum?id=7b9425730150fb166d4e6c77995f67ea38638fca

Key finding:

- the design of the agent-computer interface materially affected the agent's ability to navigate repositories, edit files, and execute tests/programs.

Governance relevance:

- supports treating repository navigation, tools, and validation surfaces as part of the engineered agent environment.

## ContextCov: Deriving and Enforcing Executable Constraints from Agent Instruction Files

Sharma (2026 preprint).  
Source: https://arxiv.org/abs/2603.00822

Key findings reported by the paper:

- natural-language agent instructions are passive and can drift during autonomous execution;
- the proposed system derives executable checks including AST analysis, shell interception, and architectural validators;
- the work reports large-scale synthesis of executable constraints and improved compliance over prompt-only approaches in its evaluations.

Governance relevance:

- direct support for moving stable, testable constraints into mechanical checks where practical;
- preprint status means results should not be treated as settled universal evidence.

## Research synthesis

Together, these studies reject two simplistic claims:

1. **"More context always improves agents."** False in the reviewed evidence.
2. **"Repository context is unnecessary."** Also false; relevant repository retrieval and repository-aware planning can materially help.

The more defensible operating position is:

> **Use minimal persistent requirements, retrieve repository context selectively, preserve task/dependency state for material work, and validate stable rules mechanically where possible.**
