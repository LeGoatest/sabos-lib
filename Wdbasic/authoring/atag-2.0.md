# WDBASIC ATAG 2.0 Authoring-Tool Contract

> **Authority:** Binding when a product creates, edits, templates, imports, transforms, or publishes web content  
> **Core entry point:** [`../README.md`](../README.md)  
> **Output contract:** [`accessible-output.md`](accessible-output.md)

ATAG has two responsibilities:

- **Part A:** The authoring-tool user interface is accessible.
- **Part B:** The tool supports production of accessible content.

A product must address both when both apply.

## 1. Applicability

This contract applies to:

- Content management systems.
- Page and theme editors.
- WYSIWYG and rich-text editors.
- Form builders.
- Navigation and menu editors.
- Media libraries.
- Template and component builders.
- Document or code generators.
- Import, migration, transformation, and publishing tools.
- AI-assisted authoring features.

A tool that only exposes a narrow configuration surface must still evaluate the authoring actions it provides.

## 2. Part A — Accessible authoring interface

The authoring interface must follow WDBASIC accessibility and component contracts.

It must provide:

- Keyboard operation.
- Visible and unobscured focus.
- Accurate names, roles, states, and values.
- Logical navigation and headings.
- Accessible dialogs, menus, tables, trees, tabs, and editors.
- Zoom, reflow, text-spacing, and high-contrast resilience.
- Accessible authentication and recovery.
- Clear errors and recovery.
- Non-drag alternatives.
- Accessible preview and publishing workflows.

Editing functionality must not require pointer precision, hover, color perception, or inaccessible canvas interaction without an equivalent method.

## 3. Editing views

Structured content must remain understandable in the editing view.

Authors must be able to identify:

- Heading level.
- List structure.
- Link destination and purpose.
- Image alternative-text status.
- Table headers and relationships.
- Language and direction.
- Form labels, instructions, and errors.
- Landmark or region role where applicable.
- Component state and variant.

Visual styling alone must not be the only indication of semantic structure.

## 4. Accessible templates and defaults

Templates, starter content, components, and generated examples must be accessible by default.

Do not ship defaults containing:

- Empty links or buttons.
- Missing labels.
- Invalid heading order.
- Low-contrast text.
- Placeholder-only labels.
- Auto-playing audio.
- Partial ARIA patterns.
- Keyboard-inoperable controls.
- Fabricated proof.

An author should not need expert accessibility knowledge to avoid a known default failure.

## 5. Accessibility prompts

The tool must request necessary accessibility information at the point of authoring.

Examples:

- Alternative text or explicit decorative status for images.
- Caption, transcript, and audio-description status for media.
- Header cells for data tables.
- Link purpose for ambiguous links.
- Language and direction when content differs from the page language.
- Accessible name for icon-only actions.
- Error and help relationships for form controls.

Prompts must explain what information is needed and why, in author-appropriate language.

## 6. Checking and repair

Accessibility checking must be discoverable and integrated into ordinary authoring and publishing workflows.

A finding should identify:

- Rule or risk.
- Affected content.
- Severity.
- Why it matters.
- Repair options.
- Whether human judgment is required.
- Whether publication is blocked, warned, or allowed.

Automatic repair must not invent alternative text, heading meaning, labels, or claims without author review.

## 7. Preservation

The tool must preserve accessibility information during:

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

Do not silently remove labels, alternative text, captions, language, table headers, IDs, or relationships.

## 8. Source editing

When raw HTML, Markdown, code, or templates are editable:

- Preserve valid accessible markup.
- Warn about known high-confidence failures.
- Do not rewrite semantics solely for visual consistency.
- Escape or sanitize untrusted content according to the security contract.
- Make generated output inspectable.
- Identify content that the editor cannot safely validate.

## 9. AI-assisted authoring

AI assistance must not be treated as authoritative accessibility evidence.

AI-generated:

- Alternative text requires review against the image and context.
- Captions and transcripts require accuracy review.
- Headings and labels require semantic review.
- Claims, credentials, reviews, and statistics require verified sources.
- Code and components require accessibility and security validation.

The interface must distinguish generated suggestions from verified content.

## 10. Documentation and help

Author documentation must explain:

- How to create accessible headings, links, lists, tables, forms, images, and media.
- How accessibility checking works.
- Which issues require manual judgment.
- How templates and components preserve semantics.
- How to report authoring-tool barriers.
- Known output limitations.

Help must be consistently located and keyboard accessible.

## 11. Publishing gate

Projects may configure blocking or warning rules.

At minimum, the publishing workflow should prevent or prominently warn on high-confidence failures such as:

- Missing required form labels.
- Missing required image decision.
- Empty interactive controls.
- Invalid required media-equivalence status.
- Broken heading or table semantics produced by the tool.
- Known inaccessible component variants.

A bypass must be authorized, recorded, and reviewable.

## 12. Evaluation record

```yaml
atag:
  applicable: true
  authoring_surfaces: []
  part_a_evidence: <path>
  part_b_evidence: <path>
  template_inventory: <path>
  checker_rules: <path>
  publishing_gate: <path>
  known_limitations: []
  owner: <role>
  last_reviewed: <ISO-8601-date>
```
