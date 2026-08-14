# WDBASIC Cognitive Accessibility Contract

> **Authority:** Binding WDBASIC usability and cognitive-accessibility contract  
> **Core entry point:** [`README.md`](README.md)  
> **Accessibility dependency:** [`tokens/accessibility.md`](tokens/accessibility.md)

This contract supplements WCAG 2.2 with requirements informed by W3C's *Making Content Usable for People with Cognitive and Learning Disabilities*.

These requirements improve access for people with cognitive, learning, language, attention, memory, and executive-function disabilities. They are WDBASIC requirements where applicable, but they must not be represented as additional WCAG 2.2 success criteria.

## 1. Clear purpose and task orientation

Every page, view, dialog, and workflow should make its purpose and next action apparent.

- Use specific page and step titles.
- State what the user can accomplish.
- Present the primary action near the information needed to decide.
- Explain prerequisites before the user begins.
- Distinguish required actions from optional enhancements.
- Show completion, remaining work, and recovery options.

Do not require users to infer the purpose of a screen from visual branding or iconography alone.

## 2. Language and instructions

Use familiar, literal, concise language appropriate to the audience.

- Prefer common words over unexplained jargon.
- Define unavoidable technical, legal, or trade terms.
- Avoid idioms when their meaning may be unclear or difficult to translate.
- Use short paragraphs and descriptive headings.
- Put instructions before the action they govern.
- Use examples to clarify formats without making the example the only instruction.
- Keep control labels consistent across the product.

Plain language must not remove legally or operationally necessary precision.

## 3. Information structure

- Group related information visually and semantically.
- Present one major decision per local region where practical.
- Use lists, steps, tables, diagrams, or summaries when they improve comprehension.
- Avoid dense undifferentiated walls of text.
- Keep important instructions and consequences visible rather than hidden in tooltips.
- Repeat critical context when a user may reasonably arrive without previous-page memory.

Decorative card grids must not fragment one coherent explanation into unrelated visual units.

## 4. Memory and recognition

Prefer recognition over recall.

- Preserve entered information after recoverable errors.
- Carry previously supplied information through a process or make it selectable.
- Show the object, account, location, or record affected by an action.
- Keep recent context available in multi-step workflows.
- Allow users to review before a consequential submission.
- Provide save-and-resume for long or interruptible tasks where practical.
- Do not require users to memorize instructions from another page or transient message.

Security-sensitive information may require re-entry, but the reason and recovery path must be clear.

## 5. Predictability and consistency

- Keep navigation, help, search, and account controls in consistent locations.
- Use the same component, icon, and label for the same purpose.
- Avoid unexpected navigation, submission, media playback, or context changes.
- Make destructive, irreversible, or external actions visually and textually distinct.
- Do not repurpose familiar icons for unrelated actions.
- Preserve user-selected preferences across sessions when appropriate and consented.

## 6. Forms and complex processes

Forms and workflows must:

- Explain the expected outcome and approximate effort when material.
- Break long tasks into understandable steps.
- Show progress without creating artificial urgency.
- Use persistent labels and clear examples.
- Explain errors in plain language and identify correction steps.
- Place errors near affected controls and provide a summary for complex forms.
- Avoid requesting information that is not needed.
- Provide review, correction, and cancellation paths.
- Preserve recoverable work through validation, interruption, and reauthentication where security permits.

Do not use completion speed as a quality signal unless speed is genuinely relevant to the task.

## 7. Authentication and identity

Authentication follows the accessible-authentication requirements in [`tokens/accessibility.md`](tokens/accessibility.md).

Additionally:

- Support password managers and paste.
- Make one-time codes easy to enter or autofill.
- Avoid puzzle solving or transcription as the only path.
- Explain why additional verification is required.
- Provide accessible account recovery.
- Avoid security questions based on obscure personal memory.
- Give clear notice before session expiration and preserve work where possible.

## 8. Timing, interruptions, and attention

- Avoid unnecessary time limits.
- Allow users to pause or dismiss noncritical notifications.
- Do not repeatedly interrupt a primary task with marketing, chat, survey, or permission prompts.
- Preserve task state after recoverable interruption.
- Keep urgent notices specific, factual, and proportional.
- Avoid flashing, rapid movement, fake countdowns, and manufactured scarcity.
- Do not automatically move focus for passive updates.

## 9. Help and human support

Provide help at the point where users are likely to need it.

- Keep help mechanisms in a consistent relative location.
- Provide task-specific guidance rather than only a generic knowledge base.
- Make contact or escalation paths clear for high-impact services.
- Explain expected response times accurately.
- Allow the user to return to the interrupted task after seeking help.
- Do not force disclosure of disability or diagnosis to receive ordinary assistance.

## 10. Personalization and adaptation

Do not block user adaptation without a documented reason.

Support, where practical:

- Browser zoom and text customization.
- Reduced motion and high-contrast settings.
- User-selected density or simplified views.
- Remembered language and communication preferences.
- Hiding nonessential animation or distraction.
- Alternative representations of complex information.

A simplified view must preserve essential information, actions, and security context.

## 11. Icons, imagery, and data

- Pair unfamiliar, high-impact, or ambiguous icons with text.
- Use imagery to support understanding, not replace required instructions.
- Explain charts and complex visualizations in text.
- Provide summaries before detailed data when appropriate.
- Keep status language explicit: for example, `Payment failed` rather than a red icon alone.
- Avoid decorative imagery that competes with critical content.

## 12. Safety and high-impact decisions

Health, financial, legal, safety, employment, housing, authentication, and destructive workflows require heightened review.

They must:

- Identify consequences before commitment.
- Provide review and correction.
- Avoid coercive urgency.
- Make cancellation and recovery visible.
- Provide an accessible human-help path where the service supports one.
- Avoid ambiguous success states.

## 13. Authoring tools

Authoring interfaces must help authors create cognitively clear content.

They should provide:

- Meaningful heading and step structures.
- Warnings for unusually dense or ambiguous content where reliable.
- Preview of forms, errors, and workflow sequence.
- Consistent templates and component labels.
- Guidance against fake urgency and unsupported claims.
- Human review for AI-generated summaries, instructions, labels, and help text.

Automated readability scores are advisory and must not be treated as proof of understandability.

## 14. Evaluation

Evaluate critical workflows with people who have relevant cognitive and learning access needs where feasible.

Test for:

- Understanding of page purpose and next action.
- Ability to recover from errors.
- Memory burden between steps.
- Clarity of labels and instructions.
- Predictability of navigation and state changes.
- Ability to pause, resume, cancel, and seek help.
- Comprehension of consequential-action warnings.

User evaluation complements but does not replace WCAG conformance testing.

## 15. Adoption record

```yaml
cognitive_accessibility:
  status: applicable | limited | not-applicable-with-rationale
  critical_workflows: []
  plain_language_owner: <role>
  help_paths: []
  save_resume_supported: true | false | not-applicable
  user_evaluation: <path-or-none>
  known_limitations: []
  last_reviewed: <ISO-8601-date>
```
