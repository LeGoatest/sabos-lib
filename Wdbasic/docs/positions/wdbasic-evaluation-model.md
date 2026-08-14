# WDBASIC Evaluation Model Position

> **Status:** Practitioner evaluation model; non-standard heuristic  
> **Scope:** Public websites, landing pages, service pages, location pages, and conversion-oriented content surfaces  
> **Reviewed:** 2026-08-14  
> **Parent authority:** [`README.md`](README.md)  
> **Related PAS position:** [`pas-content-architecture.md`](pas-content-architecture.md)

This document preserves the broader WDBASIC evaluation findings developed during the 2026-08-14 research and analysis work.

The scoring systems in this document are **WDBASIC practitioner heuristics**. They are not Google, Semrush, WCAG, W3C, academic, CRO-industry, or search-engine scoring systems. External research and guidance may support individual principles, but the combined model and its weights are WDBASIC synthesis.

## 1. Working definition of WDBASIC

For evaluation purposes, WDBASIC can be summarized as:

> A declarative, evidence-led web-design philosophy in which architecture, content, SEO, accessibility, trust, and conversion are designed as one system around the user's problem and intended outcome.

This working definition complements, but does not replace, WDBASIC's binding contracts.

## 2. Core evaluation equation

A practical WDBASIC audit can be represented as:

```text
WDBASIC = D + P + X + T + A + C
```

Where:

- `D` = Discoverability / search architecture
- `P` = Problem–solution alignment
- `X` = Experience / usability
- `T` = Trust / validation
- `A` = Accessibility
- `C` = Conversion clarity

### Proposed 100-point allocation

| Dimension | Weight |
|---|---:|
| Discoverability / SEO | 20 |
| Problem–solution alignment | 20 |
| Experience / usability | 15 |
| Trust / validation | 15 |
| Accessibility | 15 |
| Conversion clarity | 15 |
| **Total** | **100** |

These weights are intentionally balanced around two primary questions:

1. Can the right user discover and understand the page?
2. Does the page help that user make an informed decision and take an appropriate next step?

The weights are not empirically validated coefficients and must not be represented as such.

## 3. Discoverability / SEO — 20 points

Evaluate whether the page and site provide:

- server-rendered primary public content;
- crawlable internal links;
- correct indexability and canonical behavior;
- semantic headings and document structure;
- a clear title and primary heading aligned to the page subject;
- useful content aligned to search/user intent;
- unique subject coverage rather than thin or doorway-like duplication;
- natural use of audience terminology rather than phrase repetition;
- relevant local context where a location is genuinely part of the service proposition;
- descriptive image context and alternative text where applicable;
- coherent internal linking;
- correct status behavior for missing and redirected routes.

### Failure patterns

Examples include:

- JavaScript-only primary content;
- duplicate location pages with city names substituted;
- false `200` responses for missing pages;
- keyword repetition without subject depth;
- pages that target a query but fail to answer the underlying need;
- disconnected or orphaned service/location content.

## 4. Problem–solution alignment — 20 points

This dimension asks whether the page actually understands the user's situation and connects that situation to a credible solution.

A later experimental subscore was proposed:

```text
PSA = P(7) + A(5) + S(8)
```

Where:

- `Problem = 7`
- `Agitate / consequence = 5`
- `Solution = 8`

The weighting intentionally gives **Solution** the largest share and **Agitation** the smallest share.

### Rationale for the experimental weights

#### Problem — 7

Problem recognition matters because the visitor must be able to identify the page as relevant to their situation. Evaluate:

- correct audience;
- real problem, need, or desired outcome;
- search/user intent match;
- useful situational context;
- specificity rather than generic pain statements.

#### Agitate — 5

Agitation is useful only when it adds relevant decision value. Evaluate:

- real consequence;
- proportional severity;
- no repetitive restatement;
- no fabricated urgency;
- no unsupported fear claim;
- direct connection between consequence and problem.

Agitation receives the lowest weight because WDBASIC should not reward emotional escalation for its own sake.

#### Solution — 8

The page exists to help the visitor understand what can be done. Evaluate:

- direct correspondence to the problem;
- understandable outcome;
- useful process/scope/differentiation;
- feasibility;
- proof where appropriate;
- a clear next step.

Solution receives the highest weight because WDBASIC should prioritize helping over frightening.

### Status of this subscore

`P(7) + A(5) + S(8)` is an **experimental WDBASIC heuristic**, not the unrecovered formula from the earlier mistaken WDBASIC analysis. It is preserved separately to avoid conflating the two.

## 5. Experience / usability — 15 points

Evaluate whether the page supports low-friction comprehension and use through:

- clear hierarchy;
- predictable navigation;
- responsive layouts;
- readable typography and measure;
- appropriate content grouping;
- reasonable form length and effort;
- understandable feedback and errors;
- progressive enhancement;
- no unnecessary dependency on client-only state;
- practical performance and resilience;
- clear recovery from errors or interrupted workflows;
- controls appropriate to touch, keyboard, pointer, and other expected input methods.

Experience is not limited to visual polish. A visually attractive page can score poorly if it creates cognitive, navigation, interaction, or recovery friction.

## 6. Trust / validation — 15 points

Evaluate whether the page gives the user a factual basis for belief through appropriate combinations of:

- authentic reviews;
- real project examples;
- before/after evidence where truthful and applicable;
- case studies;
- business identity;
- real service areas and contact information;
- verified credentials or qualifications where relevant;
- transparent process;
- realistic scope and limitations;
- truthful pricing/process explanations where available;
- author or business accountability;
- evidence for material claims;
- consistency between claim, proof, and offered action.

### Trust rule

A claim without proof should not be upgraded into a proof statement merely because a template expects one.

Unsupported reviews, ratings, project counts, guarantees, certifications, response times, urgency claims, or availability claims remain prohibited under existing WDBASIC content-integrity rules.

## 7. Accessibility — 15 points

Evaluate applicable requirements including:

- semantic headings and landmarks;
- native controls before unnecessary ARIA;
- visible and logical focus;
- labels and instructions;
- programmatic association of errors;
- useful alternative text;
- no color-only communication;
- logical source order;
- usable zoom/text resizing;
- reduced-motion handling where motion is used;
- keyboard operability;
- accessible responsive behavior;
- understandable validation and recovery;
- appropriate media alternatives;
- preservation of user agency.

### Claim boundary

This heuristic dimension is **not a WCAG conformance score**. WCAG conformance retains its formal all-applicable-criteria and conformance-requirement model under WDBASIC's compliance contracts.

## 8. Conversion clarity — 15 points

Evaluate whether the page makes appropriate action clear without manipulation:

- clear primary action;
- CTA visible early when intent warrants it;
- CTA repeated at natural decision points rather than mechanically;
- action wording that describes what happens next;
- CTA intensity matched to user readiness;
- reasonable form friction;
- objections addressed before high-commitment requests where necessary;
- response expectations explained;
- alternative contact paths where appropriate;
- no fake urgency, deceptive defaults, or forced action.

### CTA-intensity rule

> CTA intensity should match user intent.

Examples:

- high-intent service visitor → estimate/contact CTA may be appropriate immediately;
- early-research visitor → service details, examples, comparison, process, or lower-commitment contact may be more appropriate first.

## 9. The seven WDBASIC content/conversion laws

The analysis produced seven proposed laws for conversion-oriented content architecture:

1. **User intent precedes interface.**  
   Begin with the need, problem, question, or desired outcome rather than a preferred component or visual pattern.

2. **Problem precedes solution.**  
   The visitor should be able to understand why the offered solution is relevant to their situation.

3. **Consequence must be proportional.**  
   Explain only consequences that are supportable, relevant, and useful to the decision.

4. **Solutions require evidence.**  
   Material claims should be supported with proof appropriate to their significance.

5. **Every section must advance understanding.**  
   Rephrasing the same semantic job is not depth.

6. **Conversion must follow readiness.**  
   The requested action should fit the visitor's likely stage and available evidence.

7. **The page must remain fundamentally usable without client-side application logic.**  
   Primary public content, navigation, and baseline outcomes remain server-authoritative under WDBASIC architecture.

### Status

These are preserved as **proposed practitioner laws**. They do not automatically override binding WDBASIC contracts. Normative adoption requires deliberate contract change control.

## 10. Semantic job model

Instead of evaluating a page only by visual sections, evaluate the semantic job performed by each component.

| Component | Typical semantic job |
|---|---|
| Hero | Problem + solution + action |
| Proof strip | Validation |
| Problem section | Problem recognition |
| Consequence section | Agitation / consequence |
| Services | Solution |
| Process | Solution + uncertainty reduction |
| Case study | Solution + validation |
| Reviews | Validation |
| FAQ | Objection resolution + validation |
| Estimate/contact form | Conversion/action |
| Final CTA | Conversion/action |

The mapping is contextual. A component name does not guarantee that it actually performs the semantic job.

## 11. Page-deficit detection

A major finding was that content weakness can be diagnosed by **missing semantic jobs**, not merely by word count.

Example:

```text
Hero
→ Services
→ Services
→ Services
→ CTA
```

Possible diagnosis:

```text
Problem recognition: weak
Consequence: absent
Solution: excessive/repetitive
Validation: absent
Objection resolution: absent
Action: present
```

The page may therefore contain substantial copy while still functioning mainly as a service list.

### Preferred semantic progression

```text
Problem
→ Consequence
→ Solution
→ Detail
→ Evidence
→ Objection resolution
→ Action
```

The sequence is not a mandatory visual template. It is a method for checking whether the page advances user understanding.

## 12. Semantic duplication rule

A later component should not merely paraphrase the semantic job already completed by an earlier component unless it introduces new:

- evidence;
- specificity;
- context;
- decision value;
- user question;
- example;
- buyer-stage relevance.

This rule is particularly important for AI-assisted authoring, where apparent content expansion can become repeated wording without additional information.

## 13. SEO integration model

Preferred content relationship:

```text
Search intent
→ Problem
→ Consequence
→ Solution
→ Evidence
→ Conversion
```

Avoid the weaker model:

```text
Keyword
→ repeat keyword
→ rephrase keyword
→ CTA
```

The keyword remains useful as language evidence, but the **subject and user need** determine meaningful coverage.

### Conceptual rationale

Search intent can be understood as an external expression of a need, problem, question, task, or desired outcome. WDBASIC therefore connects SEO architecture to the same decision architecture used for conversion rather than treating them as separate systems.

## 14. Full-page conversion sequence

The consolidated sequence is:

```text
Intent
→ Problem
→ Consequence
→ Solution
→ Validation
→ Objection
→ Action
```

Around that sequence sit non-negotiable implementation constraints such as:

- semantic HTML;
- server-rendered primary content;
- progressive enhancement;
- accessibility;
- truthful claims;
- security and privacy;
- performance and resilience;
- reusable architecture;
- search visibility.

The key finding is that SEO, accessibility, performance, trust, and conversion should not be bolted on as unrelated final checklists. They constrain the entire experience.

## 15. Score interpretation rules

When WDBASIC uses heuristic scores:

1. A score is a **diagnostic aid**, not proof of quality.
2. A high score cannot override a known accessibility, security, truthfulness, or architecture failure.
3. External standards retain their own conformance models.
4. Missing evidence must remain missing rather than being scored optimistically.
5. `cantTell`, unknown, untested, or unsupported conditions should not be silently treated as passes.
6. Scores should point reviewers toward specific deficits and remediation, not become vanity metrics.
7. The scoring model itself should be versioned if its weights or definitions materially change.

## 16. Evidence taxonomy

Every finding should be classified as one of the following:

### A. External requirement

A requirement that comes from a named external standard or specification and retains that source's applicability and conformance language.

### B. External guidance / research-supported principle

A principle supported by Google guidance, Semrush guidance, academic research, or another identified source but not necessarily a formal conformance requirement.

### C. Binding WDBASIC contract

A requirement deliberately adopted into WDBASIC's normative contracts.

### D. WDBASIC practitioner position

A preferred approach, design philosophy, tradeoff, or synthesis preserved under `docs/positions/`.

### E. WDBASIC heuristic

A diagnostic equation, weight, score, or review shortcut used to structure analysis but not externally validated as a universal metric.

### F. Unresolved historical finding

A prior finding known to have existed but not recoverable with enough precision to restate without guessing.

This taxonomy prevents research evidence, standards, practitioner philosophy, and heuristic calculations from being collapsed into one authority level.

## 17. Unresolved historical PAS formula

During the first exploratory analysis, before WDBASIC was correctly understood as the user's own web-design philosophy, a **direct PAS formula** was presented.

The conversation record available during the 2026-08-14 consolidation does not preserve the exact coefficients with enough confidence to restate them.

Therefore:

- the existence of the earlier direct PAS formula is preserved;
- its exact coefficients remain **unresolved**;
- no later formula may be retroactively labeled as the original;
- `P(7) + A(5) + S(8)` is a later experimental WDBASIC subscore;
- the generic weighted form `PAS = (wP × P) + (wA × A) + (wS × S)` preserves the mathematical structure without inventing missing coefficients.

## 18. Relationship to the PAS position

Detailed PAS content architecture, source citations, consequence/efficacy rationale, and source boundaries are maintained in:

[`pas-content-architecture.md`](pas-content-architecture.md)

This evaluation model should be read with that document rather than duplicating its entire research record.

## 19. Position summary

The broader WDBASIC evaluation model treats a successful page as a coordinated system:

```text
Discoverable
+ relevant to a real problem
+ easy to use
+ believable
+ accessible
+ clear about the next action
```

Its most important diagnostic principle is:

> More content is not automatically better content. Every component should perform a necessary semantic job, add evidence or decision value, and move the user toward a clearer understanding of the problem, solution, proof, or next action.
