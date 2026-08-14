# WDBASIC Standards Registry

> **Authority:** External standards and status registry  
> **Core entry point:** [`README.md`](README.md)  
> **Review cadence:** At each WDBASIC release and at least annually

This registry identifies the standards and guidance used by WDBASIC. It distinguishes W3C Recommendations and other stable baselines from informative Notes, implementation guidance, and draft material.

External specifications retain their own conformance language. Referencing a standard does not establish conformance.

## 1. WDBASIC requirement language

- **Must**, **must not**, **required**, and **prohibited** identify binding WDBASIC requirements.
- **Should** and **recommended** identify strong defaults requiring a documented reason when not followed.
- **May** identifies a permitted option.

WDBASIC requirements can be stricter than an external baseline but cannot redefine the external standard's conformance model.

## 2. Stable normative and conditional baselines

| Standard | Status used by WDBASIC | Applicability |
|---|---|---|
| WCAG 2.2 | W3C Recommendation | Web-content and web-interface accessibility target and conformance baseline. |
| ISO/IEC 40500:2025 | ISO/IEC International Standard | International publication of the October 2023 WCAG 2.2 version. Record explicitly when a contract or jurisdiction requires this publication rather than the latest W3C errata publication. |
| WAI-ARIA 1.2 | W3C Recommendation | Roles, states, properties, and authoring requirements when native HTML is insufficient. |
| Accessible Name and Description Computation 1.1 | W3C Recommendation | Stable reference for computed accessible names and descriptions until a later version reaches Recommendation. |
| HTML Living Standard | Living Standard | Native document, form, media, and interaction semantics. |
| ATAG 2.0 | W3C Recommendation | Authoring interfaces and support for accessible content production. |
| ACT Rules Format 1.1 | W3C Recommendation, 2026-02-05 | Format for reusable automated and manual accessibility test rules. |
| EPUB Accessibility 1.1 | W3C Recommendation | Applies when a project generates or publishes EPUB 3 content under that version. |
| Applicable stable CSS specifications | W3C Recommendations or supported stable specifications | Presentation, logical properties, media behavior, and user preferences. |
| HTTP Semantics and applicable stable web-platform specifications | Stable IETF or web-platform baseline | Methods, status, redirects, caching, headers, and response meaning. |

Conditional standards apply only when the product uses the governed technology or output format.

WCAG 2.2 conformance at the latest W3C publication and a contractual ISO/IEC 40500:2025 claim may need separate version records because the ISO/IEC 2025 publication corresponds to the October 2023 WCAG 2.2 version.

## 3. WAI-ARIA and accessibility-tree interoperability

Authors must follow WAI-ARIA 1.2 and valid native HTML semantics.

The following documents help explain how names, roles, states, properties, and events are exposed, but their current publication status must be recorded accurately:

- Accessible Name and Description Computation 1.1 is the stable Recommendation baseline.
- Accessible Name and Description Computation 1.2 is draft work until it reaches Recommendation.
- Core Accessibility API Mappings 1.2 is Candidate Recommendation work and must not be represented as a completed Recommendation.
- HTML Accessibility API Mappings 1.0 is draft work.

Draft mapping documents may guide interoperability debugging. They must not silently replace the stable authoring baseline or become the sole justification for a conformance claim.

## 4. Informative W3C guidance

The following resources are informative and do not independently establish product conformance:

- Understanding WCAG 2.2.
- WCAG techniques and common failures.
- WAI-ARIA Authoring Practices Guide.
- WCAG-EM 1.0 evaluation methodology.
- WCAG2ICT guidance for applying WCAG concepts to non-web software and documents.
- *Making Content Usable for People with Cognitive and Learning Disabilities*.
- WAI media-accessibility guidance.
- W3C internationalization guidance.
- W3C accessibility-statement guidance.
- UAAG 2.0 for products that act as browsers, readers, media players, or other user agents.
- Accessibility Maturity Model, 2025 Group Note, for organizational capability and continuous improvement.
- Evaluation and Report Language 1.0 Working Group Notes for optional vendor-neutral exchange of evaluation results.

WDBASIC may turn selected informative guidance into binding WDBASIC requirements. That does not convert the source Note into a W3C Recommendation or WCAG success criterion.

[`compliance/accessibility-maturity.md`](compliance/accessibility-maturity.md) governs organizational maturity records and keeps them separate from product conformance.

## 5. Non-web software and documents

[`non-web-accessibility.md`](non-web-accessibility.md) governs native software, hybrid shells, custom viewers, and exported documents.

WCAG2ICT is informative guidance. A project must separately identify any applicable:

- Platform accessibility requirements.
- Procurement or regulatory standard.
- Contractual requirement.
- Document-format accessibility standard.
- Native application test baseline.

Do not describe native software as WCAG-conformant using the web-page conformance model without a valid basis for that claim.

WCAG2Mobile is draft informative guidance for applying WCAG 2.2 concepts to native, mobile-web, and hybrid applications. It may inform testing but must not be cited as a stable standard or independent conformance baseline.

## 6. ACT test rules

Reusable test rules and procedures follow [`compliance/act-rule-template.md`](compliance/act-rule-template.md).

ACT Rules Format 1.1 supports transparent and repeatable automated and manual rules. A tool result is not durable evidence unless the project can identify:

- Rule identifier and version.
- Rule implementation and version.
- Test subject.
- Environment.
- Outcome.
- Evidence.

A passing ACT rule does not prove an entire WCAG success criterion unless the rule explicitly covers every condition required by that criterion.

Approved, proposed, deprecated, and locally authored ACT rules must be distinguished. An ACT rule is informative evidence; WCAG does not require use of ACT rules to determine conformance.

## 7. Evaluation-result exchange

A project may use Evaluation and Report Language (EARL) 1.0 terms to exchange tool results in a vendor-neutral format.

EARL 1.0 Schema and its Developer Guide are W3C Working Group Notes, not Recommendations. An EARL serialization does not establish the validity of the test rule, the accuracy of the result, or conformance.

When EARL is used, retain the equivalent WDBASIC fields for rule version, implementation, subject, environment, outcome, evidence, and execution date.

## 8. Draft and experimental material

Draft specifications may inform research or progressive enhancement but may not become the only path to required content or operation.

Examples include:

- WCAG 3.0, Working Draft dated 2026-03-03.
- WCAG-EM 2.0 work in progress.
- WCAG2Mobile draft guidance.
- Accessible Name and Description Computation 1.2 while draft.
- Core Accessibility API Mappings 1.2 before Recommendation.
- HTML Accessibility API Mappings 1.0 while draft.
- WAI-Adapt draft Notes and modules.
- Draft media-query preference features not supported by the declared browser baseline.
- Web Sustainability Guidelines while published as draft group guidance.
- Experimental HTML, CSS, accessibility, privacy, and device APIs.

WCAG 3 does not replace WCAG 2 while it remains a Working Draft. It has a developing and materially different conformance model. WDBASIC may monitor it and run exploratory gap assessments, but it must not make a WCAG 3 conformance claim or silently rewrite WCAG 2.2 evidence around draft requirements.

Every draft-dependent feature or exploratory requirement must document:

- Exact specification and publication status.
- Reason for use.
- Support detection.
- Functional fallback.
- Accessibility, security, privacy, and evidence impact.
- Stabilization, replacement, or removal condition.

## 9. Personalization and WAI-Adapt

WDBASIC supports user-controlled simplification, reduced distraction, language preference, contrast, motion, and other adaptive presentation where practical.

WAI-Adapt documents may inform future semantic personalization, but their draft status must be preserved. Draft WAI-Adapt attributes or taxonomies must not be required for access to primary content and must have a functional semantic baseline.

Personalization must remain user-controlled, privacy-preserving, and non-discriminatory.

## 10. Security and privacy references

WDBASIC uses these external references where applicable:

- OWASP Application Security Verification Standard as a testable application-security baseline.
- OWASP Top 10 for risk awareness, not as a complete verification program.
- Content Security Policy and browser security mechanisms as defense in depth.
- W3C Privacy Principles for data minimization, purpose limitation, user agency, and avoidance of deceptive practices.

The adopting project records the exact security baseline version and verification level it claims.

## 11. WCAG conformance requirements

A WCAG 2.2 conformance determination requires all five conformance requirements:

1. The claimed level is met in full.
2. Full pages conform, including responsive variations.
3. Complete processes conform.
4. Only accessibility-supported ways of using relied-upon technologies are used to satisfy criteria.
5. Non-conforming technologies do not interfere with access to the rest of the page.

Conformance claims are optional. When a claim is made, it must include:

- Date of the claim.
- Guidelines title, version, and URI.
- Level satisfied.
- Concise description of the pages or URI scope.
- Technologies relied upon.

Recommended additional information includes tested user agents and assistive technologies, technologies used but not relied upon, criteria met beyond the claimed level, and accessibility characteristics.

## 12. Statements of partial conformance

“Partially conformant” is not a general WCAG conformance level.

A Statement of Partial Conformance may be used only under WCAG's defined conditions:

- Uncontrolled third-party or user-contributed content that is clearly identified.
- Lack of accessibility support for a human language, using the prescribed language-related statement.

A third-party statement must state that the page **does not conform**, but would conform at the stated level if the identified uncontrolled content were removed.

Do not use a partial-conformance statement for:

- Known first-party defects.
- Missing manual testing.
- Incomplete remediation.
- Unsupported internal components.
- Budget or schedule constraints.

Use `evaluated-nonconformant` for an evaluated scope with ordinary known failures.

## 13. Accessibility maturity

Accessibility maturity describes the organization's repeatable ability to create and sustain accessible outcomes. It does not prove product conformance.

Use [`compliance/accessibility-maturity.md`](compliance/accessibility-maturity.md) to assess:

- Communications.
- ICT development lifecycle.
- Knowledge and skills.
- Oversight and culture.
- Personnel.
- Procurement.
- Support.

Maturity claims require scope, proof points, dimension-level results, adaptations, and review dates.

## 14. Standards update protocol

When a referenced standard changes:

1. Record the old and new version or publication status.
2. Identify affected WDBASIC requirements.
3. Determine compatibility and migration impact.
4. Update matrices, ACT rules, methodology, examples, and templates.
5. Re-evaluate affected evidence.
6. Publish the change under semantic versioning.
7. Do not silently redefine an existing claim.

## 15. Project standards record

```yaml
standards:
  wdbasic_ref: <tag-or-commit>
  wcag_target: "2.2 AA"
  wcag_publication: <W3C-version-date-or-ISO-publication>
  wcag_claim_status: target | evaluated-conformant | evaluated-nonconformant | partial-statement-third-party | partial-statement-language
  wcag_claim: <path-or-none>
  wcag3_monitoring: none | exploratory
  aria_baseline: "1.2"
  accessible_name_baseline: "1.1"
  atag_applicable: true | false
  act_rules_format: "1.1"
  act_ruleset: <path-or-none>
  earl_export: true | false
  non_web_applicable: true | false
  non_web_baselines: []
  wcag2mobile_guidance_used: true | false
  cognitive_contract: applicable | limited | not-applicable-with-rationale
  maturity_assessment: <path-or-none>
  security_baseline: <standard-version-and-level>
  supported_browsers: <path>
  supported_assistive_technology: <path>
  last_reviewed: <ISO-8601-date>
  owner: <role-or-team>
```
