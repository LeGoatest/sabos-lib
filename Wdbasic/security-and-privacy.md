# WDBASIC Security and Privacy Contract

> **Authority:** Binding interface security and privacy contract  
> **Core entry point:** [`README.md`](README.md)  
> **Architecture dependency:** [`architecture_rules.md`](architecture_rules.md)

This contract supplements server-side application security with browser policy, privacy, consent, telemetry, third-party, and user-agency requirements.

## 1. Verification baseline

Each adopting application must select a testable application-security baseline, normally an applicable OWASP ASVS level, and record its scope.

The OWASP Top 10 may inform risk awareness but does not replace verification requirements.

## 2. Browser security policy

Document and validate as applicable:

- Content Security Policy.
- Strict Transport Security.
- Referrer Policy.
- Permissions Policy.
- Frame and embedding restrictions.
- MIME-sniffing protection.
- Cross-origin isolation or resource policy where required.
- Secure, HttpOnly, and SameSite cookie attributes.
- Allowed origins for APIs, forms, and integrations.

Content Security Policy is defense in depth. It does not replace output encoding, validation, or authorization.

## 3. Script and resource governance

Maintain an inventory of:

- First-party scripts.
- Third-party scripts.
- Stylesheets and fonts.
- Frames and embeds.
- Analytics and advertising tools.
- Chat, CAPTCHA, map, video, payment, and scheduling providers.

For each resource record:

- Purpose.
- Data accessed.
- Domains contacted.
- Load condition.
- Consent requirement.
- Failure behavior.
- Security owner.
- Removal path.

Do not load a third-party resource merely because a template includes it.

## 4. Secrets and configuration

- Never expose secrets in HTML, JavaScript, CSS, source maps, logs, or client-visible configuration.
- Public identifiers must not be represented as secrets.
- Environment-specific values remain outside committed public output when sensitive.
- Key rotation and revocation must be possible.
- Build-time substitution must not leak server credentials.

## 5. Privacy principles

Collect and process only data required for a defined purpose.

Document:

- Purpose.
- Legal or contractual basis where applicable.
- Data fields.
- Retention period.
- Access roles.
- Recipients and processors.
- Export and deletion path.
- Security classification.

Do not collect optional information by default merely because storage is available.

## 6. Consent and user agency

Consent interfaces must:

- Use plain language.
- Separate necessary and optional purposes.
- Avoid preselected optional consent.
- Make refusal no harder than acceptance.
- Preserve the service when optional processing is refused where practical.
- Provide a withdrawal mechanism.
- Avoid deceptive color, placement, urgency, obstruction, or repeated prompting.

Dark patterns are prohibited.

## 7. Telemetry and fingerprinting

Telemetry requires an inventory and purpose.

- Minimize identifiers.
- Avoid browser fingerprinting unless strictly required, proportionate, disclosed, and reviewed.
- Do not treat a device fingerprint as reliable identity or authorization evidence.
- Retain raw event data only as long as necessary.
- Separate operational diagnostics from marketing analytics.
- Avoid recording sensitive field values in analytics, logs, replay, or error tools.

Session-replay tooling requires explicit privacy and security review.

## 8. Permissions and device APIs

Request camera, microphone, location, notifications, contacts, clipboard, storage, or motion access only in direct response to a relevant user action.

Before requesting permission:

- Explain the purpose.
- Explain the result of refusal.
- Avoid requesting permissions unrelated to the current task.
- Provide a recovery path after denial where possible.

## 9. Forms and sensitive data

- Mark sensitive fields for appropriate autocomplete behavior.
- Do not put sensitive data in URLs.
- Do not retain recoverable sensitive values longer than necessary.
- Prevent accidental duplicate submission.
- Confirm consequential actions proportionate to risk.
- Avoid exposing whether a private account or record exists when that creates enumeration risk.

## 10. Uploads and media

Uploads require validation of authorization, size, type, actual content, filename, storage destination, and later access.

Strip or preserve metadata deliberately. Location, device, and identity metadata must not be published accidentally.

## 11. Third-party failure and fallback

A failed optional integration must not prevent access to primary content.

Document fallback for:

- Maps.
- Video.
- CAPTCHA or bot defense.
- Scheduling.
- Chat.
- Payments.
- Analytics.
- External fonts and icons.

A privacy-preserving alternative should be available when practical.

## 12. Incident and audit behavior

Security- or privacy-sensitive actions should produce records sufficient for investigation without logging secrets or unnecessary personal content.

Document:

- Event type.
- Actor or system identity.
- Time.
- Object affected.
- Outcome.
- Correlation identifier.
- Retention.
- Access controls.

## 13. Adoption record

```yaml
security_privacy:
  verification_baseline: <standard-and-level>
  threat_model: <path>
  data_inventory: <path>
  third_party_inventory: <path>
  csp_policy: <path-or-header-test>
  retention_policy: <path>
  consent_required: true | false
  incident_owner: <role>
  validation_commands: []
```
