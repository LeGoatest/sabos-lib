# PAS Content Architecture Position

> **Status:** Practitioner position informed by current SEO guidance and research  
> **Scope:** Conversion-oriented public pages, landing pages, service pages, and location pages  
> **Reviewed:** 2026-08-14  
> **Parent authority:** [`README.md`](README.md)

This position records how WDBASIC applies **Problem–Agitate–Solution (PAS)** as a content-architecture philosophy rather than as a short-form copywriting trick.

It does **not** claim that PAS is a Google ranking factor, an industry standard, a W3C requirement, or an academic model. The external sources below support specific underlying principles such as problem recognition, audience intent, consequence framing, efficacy, trust, buyer-stage alignment, and conversion clarity. The WDBASIC synthesis remains a practitioner framework.

## 1. WDBASIC interpretation of PAS

WDBASIC treats PAS as a progression of user understanding:

```text
Search/User Intent
    ↓
Problem Recognition
    ↓
Relevant Consequence
    ↓
Solution
    ↓
Validation / Proof
    ↓
Objection Resolution
    ↓
Action
```

The goal is not to repeat the same pain point in different wording. Each section should perform a distinct semantic job and advance the user toward a better-informed decision.

### Problem

The page identifies the situation, need, failure, risk, inconvenience, or desired outcome that brought the visitor to the page.

Problem framing should help the intended visitor answer:

> Is this about my situation?

### Agitate

WDBASIC defines agitation narrowly and ethically:

> Explain the relevant consequences, inconvenience, risk, cost, delay, or missed outcome associated with leaving the identified problem unresolved. Claims must remain proportional, supportable, and directly connected to the problem.

Agitation is **not** permission to manufacture fear, fake urgency, catastrophize, or restate the same pain repeatedly.

### Solution

The page explains what can be done, how the offered service or product addresses the identified problem, what outcome is reasonably expected, and what the user can do next.

The solution should help the visitor answer:

> What can actually be done about this?

## 2. PAS is distributed across the page

PAS does not need to appear as one literal three-paragraph block.

A component may perform one or more semantic roles:

| Component | Typical PAS role |
|---|---|
| Hero | Problem + Solution + primary action |
| Problem section | Problem recognition |
| Consequence section | Agitate / consequence |
| Services or capabilities | Solution |
| Process | Solution + uncertainty reduction |
| Case study | Solution + validation |
| Review / proof strip | Validation |
| FAQ | Objection resolution + validation |
| Estimate/contact form | Action |
| Final CTA | Action |

A page that consists primarily of `Hero → Services → Services → Services → CTA` may contain plenty of copy while still being weak in problem recognition, consequence, validation, and objection handling.

## 3. Semantic progression and anti-repetition rule

A later component should not merely paraphrase the semantic job already completed by an earlier component unless it introduces at least one of the following:

- new evidence;
- greater specificity;
- new context;
- a new user question;
- a new decision criterion;
- a concrete example;
- a materially different stage of the buyer decision process.

Preferred progression:

```text
Problem
→ Consequence
→ Solution
→ Detail
→ Evidence
→ Objection resolution
→ Action
```

This is intended to prevent AI-generated content from padding pages by rewording the same claim repeatedly.

## 4. Direct PAS calculation

WDBASIC may score PAS directly as a weighted practitioner heuristic:

```text
PAS = (wP × P) + (wA × A) + (wS × S)
```

Where:

- `P` = quality of problem recognition;
- `A` = quality of agitation / consequence framing;
- `S` = quality of solution alignment;
- `wP + wA + wS = 1`.

### Preservation note

The exact coefficient set used in an earlier exploratory analysis has not been reliably recovered from the conversation record. It must **not** be reconstructed by guessing and then attributed to that earlier analysis.

Until the historical weights are recovered or WDBASIC deliberately adopts a new coefficient set, the equation above defines the scoring structure but not canonical weights.

### Suggested evaluation dimensions

#### Problem (`P`)

Evaluate whether the page:

- identifies the correct audience;
- identifies a real user problem or desired outcome;
- reflects the likely search/user intent;
- uses enough context for the visitor to recognize the situation;
- avoids generic or interchangeable pain statements.

#### Agitate (`A`)

Evaluate whether the page:

- explains a real consequence of the problem;
- keeps severity proportional to available evidence;
- adds decision value rather than repetition;
- avoids fabricated urgency and fearmongering;
- connects consequence directly to the recognized problem.

#### Solution (`S`)

Evaluate whether the page:

- directly corresponds to the stated problem;
- makes the offered outcome understandable;
- explains useful differences, process, scope, or constraints;
- provides evidence or validation where appropriate;
- offers a feasible next step.

WDBASIC should generally favor helping the visitor understand and solve the problem over maximizing emotional intensity.

## 5. Efficacy/threat diagnostic

Fear-appeal research is useful as a **secondary diagnostic** for aggressive agitation, not as a PAS formula.

The Extended Parallel Process Model distinguishes perceived threat from perceived efficacy. WDBASIC can borrow that distinction when reviewing high-risk or fear-heavy messaging:

```text
Threat = perceived severity + perceived susceptibility/relevance
Efficacy = response efficacy + self-efficacy/actionability
```

The practical WDBASIC question is:

> Does the page make the problem feel more overwhelming than the proposed action feels credible and achievable?

This diagnostic does not replace PAS scoring and is not a Google or Semrush metric.

## 6. Research-supported rationale

### Problem recognition

Bruner and Pomazal describe problem recognition as the trigger for the consumer decision process and emphasize that a purchase cannot occur unless a problem is recognized. This supports WDBASIC's decision to place problem recognition before solution presentation.

### Consequence and efficacy

Witte's Extended Parallel Process Model formalizes the relationship between perceived threat and efficacy. It supports a distinction between raising the perceived importance of a problem and giving the audience a credible, achievable response.

Tannenbaum et al.'s meta-analysis of 127 papers, 248 independent samples, and 27,372 participants found that fear appeals had an average positive effect and that messages containing efficacy statements were more effective than those without them. This evidence comes primarily from risk and health communication, so WDBASIC uses it as a cautionary analogy rather than direct evidence for local-service landing-page conversion.

### Search and people-first usefulness

Google's current Search guidance emphasizes helpful, reliable, people-first content, first-hand expertise, satisfying the user's goal, and trust. Google also advises using the words people use to search in prominent and descriptive locations. These principles support aligning page content to user intent and useful subject coverage rather than mechanically repeating a target phrase.

### Audience-led content and originality

Semrush's 2026 content-gap guidance says modern content analysis should be audience-led and identifies intent, quality, and originality gaps. It specifically flags content that is thin, unclear, misaligned, or mostly repeats competing pages. This aligns closely with WDBASIC's anti-repetition rule and its requirement that later sections add new decision value.

### Buyer-stage alignment

Semrush's 2026 content-funnel guidance recommends grounding personas in real behavior, identifying pain points, triggers, success criteria, and objections, then matching content to the questions asked at each stage. This supports distributed PAS rather than forcing the full persuasion sequence into every component.

### Landing-page conversion clarity

Semrush's 2026 landing-page optimization guidance emphasizes clearly communicating the offer and making conversion easy. Its CRO and content-optimization guidance also supports trust signals, specific CTAs, and matching CTA language to user intent and journey stage.

## 7. WDBASIC conversion sequence

For conversion-oriented pages, the preferred sequence is:

```text
Intent
→ Problem
→ Consequence
→ Solution
→ Validation
→ Objection
→ Action
```

The sequence may be compressed, expanded, or distributed when the content type or user intent warrants it. It is a semantic progression, not a mandatory visual template.

### CTA-intent rule

CTA intensity should match user readiness.

An early-research visitor may need to view services, compare options, see examples, or request information before being asked for a high-commitment action. A high-intent service visitor may appropriately receive an estimate or contact CTA immediately.

## 8. Relationship to SEO

WDBASIC should treat search intent as the observable expression of a problem, need, question, or desired outcome.

Preferred model:

```text
Search intent
→ Problem
→ Consequence
→ Solution
→ Evidence
→ Conversion
```

Avoid treating SEO as:

```text
Keyword
→ repeat keyword
→ rephrase keyword
→ CTA
```

Keywords remain useful signals of the language people use, but the subject and user need should determine coverage depth and structure.

## 9. Broader WDBASIC audit context

PAS is one dimension of a broader WDBASIC review. A practical audit may evaluate:

- discoverability / search architecture;
- problem–solution alignment;
- experience and usability;
- trust and validation;
- accessibility;
- conversion clarity.

Any numerical weighting across those domains is a WDBASIC heuristic unless separately supported and validated. Heuristic scores must not be represented as Google, Semrush, academic, WCAG, or industry-standard scores.

## 10. Source record

### Google Search Central

1. **Creating helpful, reliable, people-first content** — Google Search Central. Last updated 2025-12-10.  
   https://developers.google.com/search/docs/fundamentals/creating-helpful-content

2. **Google Search Essentials** — Google Search Central.  
   https://developers.google.com/search/docs/essentials

### Semrush

3. Carlos Silva. **What Is Landing Page Optimization? And How to Do It.** Semrush, 2026-03-11.  
   https://www.semrush.com/blog/landing-page-optimization/

4. Vlado Pavlik. **Content gap analysis: A step-by-step guide.** Semrush, 2026-06-23.  
   https://www.semrush.com/blog/content-gap-analysis/

5. Cecilia Meis. **Content marketing funnel: stages, templates & metrics.** Semrush, 2026-04-29.  
   https://www.semrush.com/blog/content-marketing-funnel/

6. Cecilia Meis. **6 Steps to Perform Conversion Rate Optimization.** Semrush, 2025-09-23.  
   https://www.semrush.com/blog/conversion-rate-optimization/

7. **Content Optimization: 15 Tactics to Boost SEO & AI Visibility.** Semrush, 2025.  
   https://www.semrush.com/blog/content-optimization/

8. **The Buyer's Journey: What It Is & How to Map It.** Semrush.  
   https://www.semrush.com/blog/buyers-journey/

### Academic / scholarly research

9. Bruner, G. C., & Pomazal, R. J. **Problem Recognition: the Crucial First Stage of the Consumer Decision Process.** *Journal of Product & Brand Management*, 1(2), 1992.  
   DOI: 10.1108/EUM0000000002969

10. Witte, K. **Putting the fear back into fear appeals: The extended parallel process model.** *Communication Monographs*, 59(4), 329–349, 1992.  
    DOI: 10.1080/03637759209376276

11. Tannenbaum, M. B., Hepler, J., Zimmerman, R. S., Saul, L., Jacobs, S., Wilson, K., & Albarracín, D. **Appealing to fear: A meta-analysis of fear appeal effectiveness and theories.** *Psychological Bulletin*, 141(6), 1178–1204, 2015.  
    DOI: 10.1037/a0039729

## 11. Evidence boundaries

The sources above support the following concepts with different levels of directness:

| WDBASIC concept | Evidence relationship |
|---|---|
| Problem recognition precedes solution evaluation | Directly supported by consumer-decision research |
| Content should address real audience needs and intent | Directly supported by Google and Semrush guidance |
| Repetitive/unclear/misaligned content is a quality problem | Directly supported by Semrush content-gap guidance |
| Trust and proof support conversion | Supported by Semrush conversion/content guidance and Google's trust emphasis |
| CTA should match journey/intent | Supported by Semrush guidance |
| Consequence framing should be paired with credible efficacy | Supported indirectly through fear-appeal research |
| PAS as a named page architecture | WDBASIC practitioner synthesis |
| PAS weighted scoring equation | WDBASIC practitioner heuristic |
| Any specific PAS coefficients | Not established by the cited sources |

## 12. Position summary

WDBASIC treats PAS as a semantic decision architecture:

> Recognize the user's problem, explain only the consequences that materially matter, present a credible solution, validate it with evidence, resolve objections, and make the next action clear.

Every section should add understanding, evidence, context, or decision value. Repetition is not depth, agitation is not fearmongering, and a score is not evidence unless its basis is explicitly documented.
