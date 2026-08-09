# WDBASIC ACT Test-Rule Contract

> **Authority:** Binding format for reusable accessibility test rules  
> **Core entry point:** [`../README.md`](../README.md)  
> **Evaluation methodology:** [`testing-methodology.md`](testing-methodology.md)  
> **External baseline:** Accessibility Conformance Testing Rules Format 1.1

This contract governs accessibility procedures that are published, automated, reused across products, or cited as conformance evidence.

ACT Rules Format 1.1 became a W3C Recommendation on 2026-02-05. WDBASIC uses it to make test logic transparent, versioned, reproducible, and reviewable.

A one-time exploratory note does not need to claim ACT compatibility. A reusable rule, automated checker rule, or manual procedure presented as repeatable evidence must follow this contract.

## 1. Rule types

Use one of these rule types:

- **Atomic rule:** Tests one accessibility expectation against defined input aspects.
- **Composite rule:** Combines outcomes from other identified rules.

Do not hide multiple unrelated expectations inside one rule merely to reduce rule count.

## 2. Required rule information

Each reusable rule must define:

- Descriptive title.
- Stable rule identifier.
- Plain-language description.
- Rule type.
- Accessibility-requirement mapping.
- Rule input.
- Applicability.
- Expectations.
- Background.
- Assumptions.
- Accessibility-support considerations.
- Passing, failing, inapplicable, and uncertain examples.
- Rule version.
- ACT Rules Format version.
- Terms requiring a glossary definition.

The rule may also identify related rules, external resources, known issues, implementations, and acknowledgements.

## 3. Requirements mapping

A rule must distinguish:

- **Conformance requirements:** Requirements for which the rule outcome contributes directly to a conformance determination.
- **Secondary requirements:** Related requirements that improve interpretation but are not the rule's direct conformance target.

For WCAG mappings, record:

- Success criterion.
- Conformance level.
- Whether the rule tests a sufficient technique, failure condition, or narrower implementation expectation.
- Limitations preventing the rule from determining the complete success criterion.

A rule passing does not prove that the complete mapped success criterion passes unless the rule explicitly covers every required condition.

## 4. Applicability and expectations

Applicability must identify the exact subject under test.

Examples include:

- Images with a non-empty accessible name.
- Buttons rendered inside a named component.
- Form fields in a submitted error state.
- Dialogs while open.
- HTMX fragments after replacement.
- A complete process under a specified environment.

Expectations must be objective enough that two trained evaluators can reach consistent outcomes. When human judgment is unavoidable, define the decision factors and permit an uncertain outcome.

## 5. Outcome vocabulary

WDBASIC records these outcomes:

- `passed` — Every applicable expectation passed.
- `failed` — One or more applicable expectations failed.
- `inapplicable` — The rule did not apply to the test subject.
- `cantTell` — Applicability or an expectation could not be determined with available evidence.
- `untested` — The subject was in scope but the rule was not executed.

Do not collapse `cantTell` or `untested` into `passed`.

A WCAG conformance claim cannot rely on unresolved `cantTell`, `untested`, or failed results for applicable requirements.

## 6. Rule template

```yaml
act_rule:
  title: <descriptive-title>
  id: <stable-uri-or-repository-id>
  version: <semantic-version>
  act_rules_format: "1.1"
  type: atomic | composite
  description: <plain-language-purpose>
  requirements:
    conformance:
      - standard: WCAG 2.2
        criterion: <criterion>
        level: A | AA | AAA
        relationship: <failure-sufficient-or-other>
    secondary: []
  input:
    aspects: []
    rules: []
  applicability: <subjects-and-conditions>
  expectations: []
  assumptions: []
  accessibility_support: <environment-dependencies>
  privacy_considerations: <none-or-description>
  security_considerations: <none-or-description>
  related_rules: []
  implementations: []
  owner: <role-or-team>
  last_reviewed: <ISO-8601-date>
```

## 7. Examples

Each rule must include enough examples to validate implementation behavior:

- At least one passing example.
- At least one failing example for each distinct expectation.
- An inapplicable example when applicability is not obvious.
- An uncertain example when the rule permits `cantTell`.
- Composite input examples when the rule combines other rules.

Examples must use minimal markup or steps that isolate the tested condition.

## 8. Execution record

Every execution retained as evidence should record:

```yaml
act_result:
  rule_id: <id>
  rule_version: <version>
  implementation: <tool-or-manual-procedure>
  implementation_version: <version>
  subject: <route-component-node-or-workflow>
  environment: <browser-os-assistive-technology>
  outcome: passed | failed | inapplicable | cantTell | untested
  evidence: <path-or-record>
  evaluator: <role-or-tool>
  executed_at: <ISO-8601-timestamp>
  notes: <optional>
```

Results without a rule version and subject cannot serve as durable conformance evidence.

## 9. Automation boundaries

Automated implementations must disclose:

- DOM, accessibility-tree, CSS, screenshot, network, or source inputs used.
- Browser or rendering dependencies.
- Known false-positive and false-negative conditions.
- States the tool cannot open or reach.
- Whether human review is required.

Automated output must not invent a manual pass for semantics, alternative-text quality, cognitive clarity, focus behavior, or other judgment-dependent requirements.

## 10. Privacy and security

Test rules and evidence must not expose:

- Credentials or session secrets.
- Private customer records.
- Unredacted sensitive form values.
- Authentication tokens.
- Internal paths or stack traces unnecessary to reproduce the defect.

A test implementation must not weaken production security controls merely to collect evidence.

## 11. Rule governance

When a rule changes:

1. Increment its version.
2. Record the changed applicability, expectation, mapping, or assumption.
3. Identify whether old results remain comparable.
4. Re-run affected evidence when interpretation materially changes.
5. Update dependent composite rules.
6. Preserve historical versions when prior claims cite them.

A project must pin the ruleset revision used for an evaluation.