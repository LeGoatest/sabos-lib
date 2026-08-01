# WDBASIC Form Validation Contract

> **Authority:** Binding validation contract for all WDBASIC forms  
> **Form entry point:** [`README.md`](README.md)  
> **Security dependency:** [`security.md`](security.md)  
> **Accessibility dependency:** [`../tokens/accessibility.md`](../tokens/accessibility.md)

This contract defines how form values are constrained, normalized, validated, reported, preserved, and tested.

## 1. Validation model

Validation has five distinct layers:

1. **Native browser constraints** improve immediate user feedback.
2. **Client enhancement** may provide local formatting and asynchronous advisory checks.
3. **Server syntactic validation** verifies submitted shape, type, length, range, and allowed structure.
4. **Server semantic validation** verifies domain meaning, cross-field consistency, current state, and business rules.
5. **Persistence constraints** preserve invariants under concurrency and unexpected code paths.

The server remains authoritative. Client validation can be bypassed and is never a security boundary.

Validation does not replace:

- Authentication or authorization.
- CSRF protection.
- Parameterized queries and safe APIs.
- Context-sensitive output encoding.
- Rich-content sanitization.
- Rate limiting or abuse prevention.
- File-content verification.

## 2. Rule ownership

Every validation rule must have:

- Stable identifier.
- Field or object scope.
- Plain-language purpose.
- Syntactic or semantic classification.
- Required inputs and dependencies.
- Normalization assumptions.
- Machine-readable error code.
- User-visible message and correction guidance.
- Privacy and logging classification.
- Tests and evidence.
- Version or change history when reused across products.

Do not duplicate the same business rule independently in the browser, controller, model, and database without identifying one canonical definition and synchronization strategy.

## 3. Decode and canonicalize once

Input must be decoded according to the declared content type and character encoding before validation.

Rules:

- Reject malformed encodings rather than guessing silently.
- Define how duplicate parameter names are handled.
- Define scalar versus list expectations.
- Define maximum nesting depth, field count, and aggregate size.
- Normalize line endings when appropriate.
- Apply Unicode normalization only when required by the field contract.
- Do not collapse distinct user identifiers, names, addresses, or free text without a documented business reason.
- Do not trim, lowercase, transform, or normalize passwords or cryptographic secrets.
- Preserve the original user-facing value when the normalized value is stored separately.

Canonicalization must not create a value that passes validation but means something different from what the user submitted.

## 4. Syntactic validation

Syntactic validation verifies that a value is well formed.

Check applicable:

- Presence or absence.
- Scalar, list, object, or file shape.
- Data type.
- Minimum and maximum length.
- Minimum and maximum count.
- Numeric range and precision.
- Date and time syntax.
- Allowed enumeration values.
- Character repertoire where genuinely required.
- Identifier structure.
- File count, size, extension, and detected type.

Prefer allowlists for structured values. A denylist may supplement but must not be the primary acceptance rule.

Regular expressions must be anchored where appropriate, bounded, reviewed for catastrophic backtracking, and tested with adversarial-length input.

## 5. Semantic and business validation

Semantic validation verifies that a syntactically valid value is acceptable in context.

Examples:

- Start date precedes end date.
- Selected service is available for the location.
- Coupon is active for the current account and order.
- Referenced record exists and belongs to the authorized tenant.
- Quantity does not exceed current inventory or policy.
- Email or username uniqueness remains true at commit time.
- A requested transition is valid from the current state.

Semantic checks that can change between validation and persistence must be repeated or enforced atomically during the state change.

A successful asynchronous availability check is advisory until final submission.

## 6. HTML constraint validation

Use native HTML constraints when they accurately describe the field:

- Correct `type`.
- `required`.
- `minlength` and `maxlength`.
- `min` and `max`.
- `step`.
- `pattern` for appropriate textual syntax.
- `multiple` where multiple values are accepted.
- `accept` as user guidance for uploads, not as server-side file validation.

Rules:

- The server mirrors or exceeds every security-relevant constraint.
- Native types are selected for semantics and input assistance, not merely visual appearance.
- Do not use `type="number"` for identifiers, postal codes, payment-card numbers, telephone numbers, or other values that are not quantities.
- Do not use a restrictive pattern when reasonable international or Unicode input must be accepted.
- `novalidate` requires an equivalent accessible error experience.
- `setCustomValidity()` messages are cleared when the value becomes valid.
- Form-associated custom elements synchronize `ElementInternals` validity, form value, reset, restore, disabled, and required behavior.

## 7. Field-type baseline

| Field type | Baseline validation |
|---|---|
| Plain text | Requiredness, bounded length, permitted control characters, field-specific normalization. |
| Name | Bounded length and Unicode support; do not require one cultural name structure. |
| Email | Bounded syntax validation; semantic verification through confirmation when required. |
| Telephone | Bounded flexible input; normalize separately; do not require numeric control semantics. |
| URL | Parse using a trusted URL parser; restrict schemes and destinations according to purpose. |
| Date/time | Parse into a canonical value; define locale display and time-zone semantics. |
| Number | Parse strictly; define range, precision, rounding, units, and NaN/infinity handling. |
| Money | Use decimal or integer minor units; define currency and rounding; avoid binary floating-point assumptions. |
| Boolean | Require the expected submitted representation; absence and false must not be confused. |
| Enumeration | Match a server-controlled allowlist; reject unsupported values. |
| Identifier | Parse the declared identifier type; never treat existence as authorization. |
| Password | Enforce policy without trimming or normalization; support long values and password managers. |
| Free-form message | Bound length and control characters; encode on output; sanitize only when rich content is allowed. |
| Rich text | Use a reviewed sanitizer and explicit element/attribute policy; preserve accessibility semantics deliberately. |
| File | Apply the full upload controls in [`security.md`](security.md). |

## 8. Unexpected and missing fields

Each form defines its policy for unexpected fields:

- **Reject** when unexpected input may indicate tampering, version mismatch, or unsafe object binding.
- **Ignore and record** only when compatibility requires it and the ignored value cannot affect behavior.
- **Never bind automatically** to privileged model properties.

Missing fields must be distinguished from empty values, false booleans, empty lists, and fields intentionally omitted because they were not applicable.

Disabled controls are not submitted by browsers. The server must not infer authorization, ownership, or unchanged state from their absence.

## 9. Error model

A validation error record should contain:

```yaml
error:
  code: email.invalid-format
  field: email
  message: Enter an email address in the form name@example.com.
  suggestion: Check for a missing @ sign or domain.
  severity: error
  retryable: true
```

Rules:

- Messages identify the field, problem, and correction.
- Messages use user language, not rule names, regexes, stack traces, or database errors.
- Errors do not reveal protected object existence, account state, internal paths, or defensive thresholds unnecessarily.
- The same field can expose multiple errors only when doing so helps correction; avoid overwhelming users.
- Error codes remain stable enough for clients, tests, analytics, and localization.
- Translation preserves meaning and field relationships.

## 10. Error presentation

After failed submission:

- Return a prominent error summary for multi-field forms.
- State the number of errors when useful.
- Link each summary item to the affected control.
- Place an inline message adjacent to the control.
- Associate help and errors programmatically.
- Set `aria-invalid="true"` when appropriate.
- Preserve visible labels and entered non-sensitive values.
- Move focus to the summary or first invalid field according to the documented form contract.
- Announce dynamically inserted errors without duplicate or excessive alerts.
- Do not rely on color, icons, placeholder text, or a toast alone.

Do not validate aggressively on every keystroke when the user has not had a reasonable opportunity to complete the value. Validate on submit, on deliberate field exit when helpful, or after an appropriate interaction threshold.

## 11. Value preservation

Recoverable validation failure preserves user effort.

Preserve unless prohibited by sensitivity or security policy:

- Text values.
- Selections.
- Checkbox and radio state.
- Multi-step progress.
- Uploaded-file metadata when the file can safely remain staged.

Do not redisplay:

- Passwords.
- One-time codes.
- Full payment-card data.
- Secret answers.
- Tokens or cryptographic material.
- Rejected malicious payloads in an unsafe output context.

When a sensitive field must be re-entered, explain why without implying that other accepted data was lost.

## 12. Consequential actions

For legal, financial, destructive, identity, permission, publication, or other high-impact submissions, provide at least one of:

- Review and confirmation before final submission.
- Reversibility or cancellation after submission.
- Independent validation with an opportunity to correct.

The review step must display the actual values and consequences the server will apply, not stale client-side assumptions.

## 13. HTTP and fragment behavior

Use the response model in [`README.md`](README.md).

Validation responses must distinguish:

- `400` malformed request.
- `409` state or concurrency conflict.
- `413` request too large.
- `415` unsupported content type.
- `422` recoverable semantic validation failure when used by the application.
- `429` rate limit.

An HTMX fragment must return the same authoritative error codes, messages, values, and relationships as the full-page response.

## 14. Persistence constraints

Database or domain constraints backstop application validation for invariants such as:

- Required relationships.
- Uniqueness.
- Foreign-key integrity.
- Allowed state transitions.
- Numeric bounds.
- Non-null requirements.

A persistence exception is translated into a user-safe validation or conflict response when recovery is possible. Raw database messages are never returned to the user.

Validation before persistence does not remove the need to handle races and constraint failures.

## 15. Testing matrix

Test each field and form for:

- Missing, empty, null, false, zero, and whitespace-only values.
- Exact minimum and maximum boundaries.
- One below and one above each boundary.
- Unicode, combining characters, bidirectional text, emoji, and locale-specific input where applicable.
- Malformed encoding and invalid byte sequences.
- Duplicate parameter names.
- Scalar submitted where a list is expected and vice versa.
- Unexpected fields and protected-property names.
- Extremely long input and regex denial-of-service cases.
- Tampered hidden fields and identifiers.
- Client validation bypass.
- No-JavaScript submission.
- HTMX and full-page equivalence.
- Concurrent changes and uniqueness races.
- Expired state and stale multi-step data.
- Error focus, summary links, announcements, and preserved values.
- Localization and right-to-left behavior where supported.

## 16. Validation record

```yaml
form_validation:
  schema_source: <path>
  canonical_rule_source: <path>
  client_constraint_source: <path>
  server_validator: <path-or-library>
  domain_invariants: <path>
  persistence_constraints: <path>
  error_catalog: <path>
  localization_source: <path>
  tests: <path-or-command>
  exceptions: []
  owner: <role>
  last_reviewed: <ISO-8601-date>
```
