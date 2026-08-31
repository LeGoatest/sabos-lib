# Governance Authority

> **Status:** Binding  
> **Purpose:** Define who may change what, how local instructions inherit authority, and where agent discretion ends.

## 1. Authority order

Apply authority in this order:

1. Platform, tool, security, and execution constraints that cannot be overridden by repository text.
2. The explicit user request for the current task.
3. Repository-wide invariants in [`invariants.md`](invariants.md).
4. This governance layer and the root `AGENTS.md`.
5. The nearest applicable nested `AGENTS.md` or subsystem instruction file.
6. Binding subsystem contracts, architecture, and standards documents.
7. Existing implementation/reference artifacts, tests/evidence where they exist, public behavior, practitioner records, research, platform guidance, measurements, and examples as evidence of intended behavior.
8. Agent preference.

Agent preference has no authority to override established behavior or contracts.

## 2. Explicit user authority

The user may intentionally authorize a change that would otherwise be prohibited.

An explicit request for the exact rename, refactor, migration, reorganization, framework change, architectural change, or behavior change counts as authorization for that scope.

However, when the requested change alters an invariant, architecture contract, or governance rule, it is still a **governed mutation**. The affected governance or contract documents must be updated deliberately rather than allowing implementation/artifacts and governance to diverge.

Concise approval may authorize an already-explicit actionable proposal according to [`agent-operations/contracts/approval-semantics.md`](agent-operations/contracts/approval-semantics.md). Concision does not broaden the proposal's scope.

## 3. No agent self-amendment

An agent may identify a governance problem and propose an amendment.

An agent must not broaden its own authority by silently editing governance, weakening an invariant, redefining scope, or changing a controlling contract merely because doing so makes work easier.

If governance itself must change, follow [`change-control.md`](change-control.md).

## 4. Scope and local authority

The root governance applies repository-wide.

Nested instructions may specialize behavior for their directory tree. More-specific local instructions govern local details when they do not violate repository-wide invariants or an explicit user instruction.

A local instruction may strengthen a requirement.

A local instruction may not silently waive a repository invariant.

Knowledge-system directories may contain deeper `AGENTS.md` files when a subject establishes its own authority, evidence, terminology, measurement, artifact, or contract boundary.

The shared root/docs/artifact convention is defined in [`knowledge-system-model.md`](knowledge-system-model.md).

## 5. Sovereign subsystem boundaries

Each subsystem owns its authority domain.

### WDBASIC

`Wdbasic/` owns framework-independent web architecture, semantics, accessibility, security, progressive enhancement, component/form behavior, implementation validation, evidence/conformance models, profiles, tokens, subject glossaries, practitioner positions, and related contracts.

Its substantive knowledge is routed under [`../Wdbasic/docs/`](../Wdbasic/docs/README.md). Moving that knowledge under `docs/` does not weaken its contracts.

### TCBasic

`TCbasic/` owns Tailwind CSS semantic-architecture knowledge, contracts, positions, token/component/integration guidance, profiles, compatibility evidence, reference material, examples, and the canonical reference CSS under [`../TCbasic/src/`](../TCbasic/src/).

TCBasic is **not** an npm package/build/release authority in current SABOS Lib. `src/` is a subject artifact demonstrating the governed architecture; it is not generated `dist/` output. Examples illustrate adoption and do not independently redefine contracts.

### SEObasic

`SEObasic/` owns search/discovery/marketing knowledge including websites, technical SEO, content philosophy, entity/internal-link relationships, local search and Google Business Profile/Maps, organic social media, paid media/PPC, YouTube, measurement/analytics semantics, related research/standards/references/glossaries, practitioner positions, examples, and SEObasic contracts.

Its long-form knowledge is routed under [`../SEObasic/docs/`](../SEObasic/docs/README.md); examples remain an illustrative artifact under `SEObasic/examples/`.

SEObasic measurement owns definitions and comparability rules for metrics such as rank, visibility, traffic, conversion, authority/link measures, technical measures, and geographic/geo-grid reporting. Provider-specific metrics remain provider-specific unless an explicit SEObasic mapping contract exists.

SEObasic channel domains may share evidence and strategy but one channel must not silently redefine another channel's mechanics, metrics, or contracts.

### READMEbasic

`READMEbasic/` owns README/documentation entrypoint knowledge including README profiles, structure guidance, README integrity contracts, resource/reference guidance, badge policy, terminology/glossaries, research/standards, and agent behavior for README creation/maintenance.

Long-form knowledge lives under [`../READMEbasic/docs/`](../READMEbasic/docs/README.md). Reusable starting artifacts live under [`../READMEbasic/templates/`](../READMEbasic/templates/README.md), and examples remain illustrative artifacts.

READMEbasic does not own or authorize changes to an implementation merely because a README documents that implementation.

### Repository governance

`governance/` owns repository-wide authority, invariants, knowledge-system structure, agent-operation contracts, change control, validation expectations, and governance research rationale.

[`agent-operations/`](agent-operations/README.md) is a governed subdomain that owns context acquisition and freshness, repository recovery, task continuity and checkpointing, approval semantics, and the related reusable patterns/evidence model. It does not redefine subsystem subject-matter authority.

Cross-subsystem changes must respect the controlling contract of each affected subsystem. One subsystem must not redefine another subsystem's authority by implication.

## 6. Evidence has interpretive weight, not legislative authority

Existing code/reference source, tests where present, rendered output, routes, data shapes, artifacts, practitioner records, research, platform guidance, measurements, and examples may all provide evidence within their scope.

Evidence is not automatically a binding contract.

If evidence conflicts with binding governance or a binding subsystem contract:

1. identify the conflict;
2. identify the evidence/source type and its scope;
3. determine whether the implementation/position is defective or governance is stale;
4. do not silently choose whichever side makes the task easier;
5. use change control if the governing contract must change.

## 7. Ambiguity rule

When authority is ambiguous and the narrower change can preserve existing behavior, preserve existing behavior.

When resolution requires changing an invariant, public contract, architecture, persistent data semantics, user-established pattern, canonical philosophy, measurement definition, subject-artifact role, or binding knowledge-system contract, stop at the mutation gate and obtain explicit authority unless the current request already provides it.

## 8. Context recovery is not authority order

The sequence used to **find** relevant project context is not the same as the sequence used to **resolve conflicts** between sources.

For example:

- current source code may be inspected early because it reveals present implementation state;
- a changelog may be essential to explain a prior migration;
- a handover may identify unfinished work;
- conversation history may help recover recent intent.

None of those facts automatically outranks a current explicit user instruction, repository invariant, or binding contract.

Agents MUST preserve this distinction:

```text
context recovery → discover what is relevant and what happened
authority resolution → determine what controls when sources disagree
```

Repository recovery behavior is governed by [`agent-operations/contracts/repository-recovery.md`](agent-operations/contracts/repository-recovery.md), while freshness/supersession behavior is governed by [`agent-operations/contracts/context-freshness.md`](agent-operations/contracts/context-freshness.md).
