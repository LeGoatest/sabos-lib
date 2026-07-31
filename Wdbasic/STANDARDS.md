# WDBASIC Standards Registry

> **Authority:** Normative-source registry  
> **Core entry point:** [`README.md`](README.md)  
> **Review cadence:** At each WDBASIC release and at least annually

This registry identifies the external standards and guidance used by WDBASIC. It distinguishes binding baselines from informative implementation guidance and draft material.

## 1. Interpretation

The terms **must**, **must not**, **required**, and **prohibited** identify binding WDBASIC requirements.

The terms **should** and **recommended** identify strong defaults that require a documented reason when not followed.

External specifications retain their own conformance language. WDBASIC does not redefine an external standard or imply conformance merely by referencing it.

## 2. Normative baselines

| Standard | WDBASIC use | Status handling |
|---|---|---|
| WCAG 2.2 | Accessibility conformance baseline for web content and interfaces | A formal claim requires all applicable Level A and AA criteria across the declared scope and complete processes. |
| WAI-ARIA 1.2 | Roles, states, properties, and accessibility API semantics | Native HTML remains preferred. ARIA must remain truthful and complete. |
| HTML Living Standard | Document structure, elements, attributes, forms, media, and interaction semantics | Use valid native HTML behavior before custom replacements. |
| ATAG 2.0 | Authoring-interface accessibility and accessible-content production | Applies whenever a product creates, edits, templates, imports, transforms, or publishes web content. |
| CSS specifications supported by the project browser baseline | Presentation, layout, media queries, logical properties, and user preferences | Features must degrade to a functional baseline when support is incomplete. |
| HTTP Semantics and applicable web-platform standards | Request, response, status, cache, redirect, and method behavior | Server responses must represent the actual outcome. |

## 3. Informative implementation guidance

The following explain or demonstrate standards but do not independently establish conformance:

- Understanding WCAG 2.2.
- WCAG techniques and failures.
- WAI-ARIA Authoring Practices Guide.
- WAI media accessibility guidance.
- WAI cognitive and learning accessibility guidance.
- WCAG-EM 1.0 evaluation methodology.
- W3C internationalization guidance.
- W3C accessibility-statement guidance.
- OWASP cheat sheets and implementation guidance.

An example pattern is not automatically suitable for every product. Implementation must still satisfy WDBASIC architecture, accessibility, security, and product requirements.

## 4. Draft and experimental material

Draft specifications may inform progressive enhancement but may not become the only path to required content or operation.

Examples include:

- Draft media-query preference features not consistently supported by the declared browser baseline.
- WCAG-EM 2.0 work in progress.
- Web Sustainability Guidelines while published as draft group guidance rather than a W3C Recommendation.
- Experimental HTML, CSS, accessibility, privacy, or browser APIs.

Every draft-dependent feature must document:

- Support detection.
- Functional fallback.
- Accessibility impact.
- Security and privacy impact.
- Removal or stabilization condition.

## 5. Security and privacy references

WDBASIC uses these external baselines where applicable:

- OWASP Application Security Verification Standard for testable application-security requirements.
- OWASP Top 10 for risk awareness, not as a complete verification program.
- Content Security Policy and other browser security mechanisms as defense in depth.
- W3C Privacy Principles for data minimization, purpose limitation, user agency, and avoidance of deceptive practices.

The adopting project records its selected security verification level and applicable legal or contractual obligations.

## 6. Conformance claims

A project may state that it **targets** a standard before evaluation is complete.

A project may state that it **conforms** only when:

- The scope is explicit.
- Applicable requirements have been evaluated.
- Complete processes have been tested.
- Relied-upon technologies are accessibility-supported.
- Evidence is retained.
- Known failures are not concealed by exceptions.

Use the testing and reporting contracts under [`compliance/`](compliance/).

## 7. Standards update protocol

When a referenced standard changes:

1. Record the old and new version or status.
2. Identify affected WDBASIC requirements.
3. Determine compatibility and migration impact.
4. Update the coverage matrix and test methodology.
5. Update examples and templates.
6. Publish the change under semantic versioning.
7. Do not silently redefine an existing conformance claim.

## 8. Project standards record

Each adopting project should maintain:

```yaml
standards:
  wdbasic_ref: <tag-or-commit>
  wcag_target: "2.2 AA"
  wcag_claim_status: target | evaluated | conformant | non-conformant
  aria_baseline: "1.2"
  atag_applicable: true | false
  security_baseline: <standard-and-level>
  supported_browsers: <path>
  supported_assistive_technology: <path>
  last_reviewed: <ISO-8601-date>
  owner: <role-or-team>
```
