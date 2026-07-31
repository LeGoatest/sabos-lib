# WDBASIC ATAG 2.0 Authoring-Tool Contract

> **Authority:** Binding when a product creates, edits, templates, imports, transforms, or publishes web content  
> **Core entry point:** [`../README.md`](../README.md)  
> **Output contract:** [`accessible-output.md`](accessible-output.md)  
> **Reusable rule contract:** [`../compliance/act-rule-template.md`](../compliance/act-rule-template.md)

ATAG 2.0 has two responsibilities:

- **Part A:** The authoring-tool user interface is accessible.
- **Part B:** The tool supports production of accessible content.

A product must address both when both apply.

WDBASIC normally targets ATAG 2.0 Level AA for applicable authoring functionality while also applying the current WDBASIC WCAG 2.2 Level AA accessibility contract to the authoring interface. The project must record its actual ATAG target and evaluation status rather than implying conformance from feature presence.

## 1. Applicability

This contract applies to:

- Content management systems.
- Page and theme editors.
- WYSIWYG and rich-text editors.
- Form builders.
- Navigation and menu editors.
- Media libraries.
- Template and component builders.
- Document, email, or code generators.
- Import, migration, transformation, and publishing tools.
- AI-assisted authoring features.
- Accessibility checkers and repair tools integrated into authoring.

A tool exposing only a narrow configuration surface must still evaluate the authoring actions and generated output it provides.

## 2. ATAG target and status

Use:

```text
target
part-a-evaluated
part-b-evaluated
evaluated-conformant
evaluated-nonconformant
not-applicable-with-rationale
```

Record Part A and Part B separately when their evaluation status differs.

Do not describe a tool as ATAG-conformant merely because:

- Its interface passes selected WCAG checks.
- It generates some accessible templates.
- It includes an automated checker.
- Its output can be repaired manually after publication.

A formal ATAG claim requires evaluation against the applicable ATAG conformance requirements and declared level.

## 3. Part A — Accessible authoring interface

The authoring interface follows WDBASIC accessibility, cognitive, component, security, privacy, and internationalization contracts.

It must provide:

- Keyboard operation.
- Visible and unobscured focus.
- Accurate names, roles, states, and values.
- Logical navigation and headings.
- Accessible dialogs, menus, tables, trees, grids, tabs, and editors.
- Zoom, reflow, text-spacing, high-contrast, and reduced-motion resilience.
- Accessible authentication and recovery.
- Clear errors and recovery.
- Non-drag alternatives.
- Accessible preview and publishing workflows.
- Predictable help and task context.
- Accessible native-shell and web-view boundaries when applicable.

Editing functionality must not require pointer precision, hover, color perception, memorization, inaccessible canvas interaction, or one sensory mode without an equivalent method.

## 4. Editing views

Structured content remains understandable in the editing view.

Authors can identify:

- Heading level.
- List structure.
- Link destination and purpose.
- Image alternative-text status.
- Decorative-image status.
- Table headers and relationships.
- Language and direction.
- Form labels, instructions, autocomplete purpose, and errors.
- Landmark or region role where applicable.
- Component state and variant.
- Media caption, transcript, and description status.
- Custom-element accessibility contract where author configuration affects it.
- Whether content is first-party, imported, generated, or uncontrolled third-party content.

Visual styling alone must not be the only indication of semantic structure.

## 5. Accessible templates and defaults

Templates, starter content, components, generated examples, and default settings must be accessible by default.

Do not ship defaults containing:

- Empty links or buttons.
- Missing labels.
- Invalid heading structures.
- Low-contrast text.
- Placeholder-only labels.
- Autoplay audio.
- Partial ARIA patterns.
- Keyboard-inoperable controls.
- Inaccessible CAPTCHA as the only form path.
- Custom elements with no failed-upgrade fallback.
- Fabricated proof.
- Image-only document exports where structured output is expected.

An author should not need expert accessibility knowledge to avoid a predictable default failure.

## 6. Accessibility prompts

The tool requests necessary accessibility information at the point of authoring.

Examples:

- Alternative text or explicit decorative status for images.
- Caption, transcript, and audio-description status for media.
- Header cells for data tables.
- Link purpose for ambiguous links.
- Language and direction when content differs from page language.
- Accessible name for icon-only actions.
- Error and help relationships for form controls.
- Accessibility alternative for CAPTCHA or human verification.
- Format-specific metadata for EPUB, PDF, or document exports.
- Text equivalent for charts, diagrams, and canvas content.

Prompts explain what information is needed and why in author-appropriate language.

Prompts must not imply that an automatically generated suggestion is verified content.

## 7. Checking and repair

Accessibility checking is discoverable and integrated into ordinary authoring, preview, export, and publishing workflows.

A reusable automated or manual checker rule follows [`../compliance/act-rule-template.md`](../compliance/act-rule-template.md).

A finding identifies:

- Rule identifier and version.
- Affected content and state.
- Outcome.
- Severity and conformance impact.
- Why it matters.
- Repair options.
- Whether human judgment is required.
- Whether publication is blocked, warned, or allowed.
- Evidence and retest status.

Automatic repair must not invent alternative text, heading meaning, labels, captions, claims, or author intent without review.

`cantTell`, `untested`, and manual-pending findings remain unresolved.

## 8. Publishing and export gates

Projects may configure blocking or warning rules.

At minimum, the workflow should prevent or prominently warn on high-confidence failures such as:

- Missing required form labels.
- Missing required image decision.
- Empty interactive controls.
- Invalid required media-equivalence status.
- Broken heading or table semantics produced by the tool.
- Known inaccessible component variants.
- Inaccessible CAPTCHA with no alternative.
- Export settings that discard structure or accessibility metadata.
- Custom elements whose selected target environment lacks required accessibility support.

A bypass must be authorized, recorded, reviewable, and visible in the output evidence.

A bypass does not turn a failed external requirement into a pass.

## 9. Preservation

The tool preserves accessibility information during:

- Editing.
- Copy and paste.
- Duplication.
- Template changes.
- Import and export.
- Format conversion.
- Localization.
- Media replacement.
- Component migration.
- HTMX or server-fragment rendering.
- Custom-element upgrade and serialization.
- Native or hybrid application packaging.

Do not silently remove labels, alternative text, captions, transcripts, language, direction, table headers, IDs, relationships, form semantics, or document metadata.

When preservation is impossible, warn the author before publication or export and provide a review or alternative path.

## 10. Source editing

When raw HTML, Markdown, code, or templates are editable:

- Preserve valid accessible markup.
- Warn about known high-confidence failures.
- Do not rewrite semantics solely for visual consistency.
- Escape or sanitize untrusted content according to the security contract.
- Make generated output inspectable.
- Identify content the editor cannot safely validate.
- Preserve valid custom elements only under an approved contract and sanitizer policy.
- Prevent unsafe source access from becoming an undocumented bypass around publishing gates.

## 11. AI-assisted authoring

AI assistance is not authoritative accessibility evidence.

AI-generated:

- Alternative text requires review against image and context.
- Captions and transcripts require accuracy review.
- Headings, summaries, labels, help, and instructions require semantic and cognitive review.
- Claims, credentials, reviews, and statistics require verified sources.
- Code, custom elements, and components require accessibility and security validation.
- Format conversions require output inspection.

The interface distinguishes generated suggestions from verified content and identifies the human review still required.

## 12. Cognitive author support

Authoring workflows follow [`../cognitive-accessibility.md`](../cognitive-accessibility.md).

The tool should help authors create:

- Clear page purpose and headings.
- Understandable action labels.
- Logical step sequences.
- Plain instructions.
- Predictable error and help content.
- Accurate consequence warnings.
- Consistent terminology.

Automated readability or complexity scores are advisory and do not prove understandability.

## 13. Documentation and help

Author documentation explains:

- How to create accessible headings, links, lists, tables, forms, images, and media.
- How accessibility checking works.
- Which rules are automated and which require judgment.
- How templates and components preserve semantics.
- How custom elements and output formats are evaluated.
- How to report authoring-tool barriers.
- Known output limitations.
- How publishing bypasses and exceptions are governed.

Help remains consistently located and keyboard accessible.

## 14. Generated and non-web output

Generated output follows [`accessible-output.md`](accessible-output.md).

When the tool produces native application content or non-web documents, it also follows [`../non-web-accessibility.md`](../non-web-accessibility.md).

The tool records separate evidence for:

- Web pages and fragments.
- Email.
- EPUB.
- PDF and office documents.
- Native and hybrid shells.
- Other declared formats.

Do not extend an ATAG or WCAG claim to an untested output format.

## 15. Evaluation record

```yaml
atag:
  applicable: true
  target_level: A | AA | AAA
  claim_status: target | part-a-evaluated | part-b-evaluated | evaluated-conformant | evaluated-nonconformant
  authoring_surfaces: []
  part_a_evidence: <path>
  part_b_evidence: <path>
  template_inventory: <path>
  output_inventory: <path>
  checker_ruleset: <path-or-commit>
  act_rules_format: "1.1"
  publishing_gate: <path>
  bypass_records: <path>
  output_formats: []
  known_limitations: []
  owner: <role>
  last_reviewed: <ISO-8601-date>
```
