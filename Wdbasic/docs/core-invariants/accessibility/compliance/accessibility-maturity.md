# WDBASIC Accessibility Maturity Governance

> **Purpose:** Organizational accessibility capability and continuous-improvement record  
> **Core entry point:** [`../README.md`](../README.md)  
> **External guidance:** W3C Accessibility Maturity Model, Group Note, 2025-11-04

This document adapts the W3C Accessibility Maturity Model into WDBASIC governance.

Accessibility maturity and product conformance are different measurements:

- **Product conformance** evaluates a defined product version, scope, and time against technical requirements.
- **Accessibility maturity** evaluates whether an organization or defined subunit has repeatable, evidence-based capability to produce and sustain accessible products and services.

A high maturity level does not prove that a product conforms. A conformant product does not prove that the organization can sustain that outcome.

The W3C Accessibility Maturity Model is a Group Note. It is informative guidance, not a W3C Recommendation or independent product-conformance standard.

## 1. Scope

Define the organizational scope being evaluated:

- Entire organization.
- Business unit.
- Product team.
- Repository or platform program.
- Supplier or contracted service.
- Other explicitly bounded operation.

Record exclusions and rationale. Do not present a limited team assessment as an organization-wide result.

## 2. Dimensions

Evaluate the seven W3C model dimensions where applicable:

1. **Communications** — Accessibility of internal and external communication and accessibility-related information.
2. **ICT Development Life Cycle** — Accessibility throughout research, planning, design, development, testing, release, maintenance, and obsolescence.
3. **Knowledge and Skills** — Training, role competence, communities of practice, and externally sourced expertise.
4. **Oversight and Culture** — Leadership, policy, accountability, decision-making, and organizational behavior.
5. **Personnel** — Accessible employment practices, role definitions, recruiting, accommodations, and lived-experience participation.
6. **Procurement** — Accessibility requirements, supplier evidence, evaluation, contracting, acceptance, and remediation.
7. **Support** — Accessible assistance for employees, customers, authors, operators, and users with disabilities.

A project may tailor terminology and proof points, but it must preserve the dimension mapping and document every adaptation.

## 3. Maturity levels

Use the cumulative W3C model levels:

- **Inactive** — Little or no coordinated awareness, activity, or recognition of need.
- **Launch** — Need is recognized and planning has begun, but activity is not yet cohesive or repeatable.
- **Integrate** — A defined organizational approach and roadmap are in place and used across the assessed scope.
- **Optimize** — Accessibility is incorporated throughout the assessed operation, evaluated consistently, and improved using evidence.

A dimension cannot be assigned a higher level unless the relevant outcomes of lower levels are also supported.

## 4. Proof points

A maturity claim requires current proof points, not intentions alone.

Examples include:

- Accessibility policy and accountable owner.
- WDBASIC adoption records.
- Product and component accessibility requirements.
- WCAG matrices and test evidence.
- ACT rulesets and regression results.
- Disabled-user research records.
- Accessibility statement and feedback process.
- Training curriculum and completion records.
- Role-specific competency expectations.
- Procurement clauses and supplier evaluations.
- Accessibility Conformance Reports where required.
- Issue, remediation, and retest records.
- Accessible templates and communication procedures.
- Support escalation and barrier-reporting records.
- Metrics, trend reports, and corrective action plans.

A document that exists but is not implemented does not by itself prove operational maturity.

## 5. Assessment process

1. Establish a cross-functional review team.
2. Define the scope and dimensions.
3. Identify applicable outcomes and proof points.
4. Gather evidence of current practice.
5. Validate evidence with domain experts and people with disabilities where appropriate.
6. Assign a maturity level per dimension.
7. Record gaps and risks.
8. Create corrective actions with owners and review conditions.
9. Reassess regularly and after significant organizational change.

Do not average dimension scores into a single favorable number that hides an inactive or high-risk dimension.

## 6. Procurement and third parties

Procurement review must address:

- Accessibility requirements before selection.
- Supplier product evidence.
- Limitations and remediation commitments.
- Contract language.
- Acceptance testing.
- Update and regression responsibilities.
- Support and complaint handling.
- Exit or replacement strategy.

A supplier statement or ACR is evidence to review, not proof that the integrated workflow is accessible.

## 7. Lifecycle integration

The ICT Development Life Cycle dimension should include:

- Discovery and disabled-user needs.
- Acceptance criteria.
- Design and content review.
- Component and pattern governance.
- Code and generated-output testing.
- ACT-compatible reusable rules.
- Manual and assistive-technology testing.
- Accessibility-supported technology evidence.
- Release gating.
- Production feedback.
- Remediation, regression, and deprecation.
- Native, web-view, and document-format coverage where applicable.

Accessibility added only during final QA cannot support an optimized lifecycle claim.

## 8. Metrics

Useful metrics may include:

- Coverage of critical workflows.
- Percentage of shared components with current evidence.
- Open and overdue critical barriers.
- Median time to acknowledge and remediate reported barriers.
- Regression rate.
- Training coverage by role.
- Supplier evidence coverage.
- Percentage of releases evaluated before publication.
- User-reported task success and recovery.

Avoid vanity metrics such as raw automated issue count without scope, severity, rule version, or trend context.

## 9. Relationship to claims

Maturity results must not be substituted for:

- WCAG conformance evaluation.
- ATAG evaluation.
- Native-platform evaluation.
- Document-format conformance.
- Security or privacy verification.
- Legal or procurement compliance.

A public maturity statement identifies its scope, date, dimensions, proof-point basis, and limitations.

## 10. Assessment record

```yaml
accessibility_maturity:
  source_guidance: "W3C Accessibility Maturity Model 2025-11-04"
  scope: <organization-team-or-program>
  assessment_date: <ISO-8601-date>
  review_team: []
  adaptations: []
  dimensions:
    communications:
      level: inactive | launch | integrate | optimize
      evidence: []
      gaps: []
    ict_development_lifecycle:
      level: inactive | launch | integrate | optimize
      evidence: []
      gaps: []
    knowledge_and_skills:
      level: inactive | launch | integrate | optimize
      evidence: []
      gaps: []
    oversight_and_culture:
      level: inactive | launch | integrate | optimize
      evidence: []
      gaps: []
    personnel:
      level: inactive | launch | integrate | optimize
      evidence: []
      gaps: []
    procurement:
      level: inactive | launch | integrate | optimize
      evidence: []
      gaps: []
    support:
      level: inactive | launch | integrate | optimize
      evidence: []
      gaps: []
  corrective_actions: <path>
  approved_by: <role>
  next_review: <date-or-condition>
```

## 11. Review triggers

Reassess after:

- Major organizational or ownership change.
- New platform or product family.
- Significant outsourcing or supplier change.
- Repeated accessibility regressions.
- Serious user complaint or legal escalation.
- Changes to the standards baseline.
- Material changes to staffing, training, procurement, or support processes.
