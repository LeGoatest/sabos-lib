# WDBASIC Security and Privacy Contract

> **Authority:** Binding interface security and privacy contract  
> **Core entry point:** [`README.md`](README.md)  
> **Architecture dependency:** [`architecture_rules.md`](architecture_rules.md)  
> **Accessibility dependency:** [`tokens/accessibility.md`](tokens/accessibility.md)

This contract supplements server-side application security with browser policy, privacy, consent, telemetry, third-party, device, anti-abuse, and user-agency requirements.

## 1. Verification baseline

Each adopting application selects and pins a testable application-security baseline, normally an applicable OWASP ASVS version and level, and records its scope.

The OWASP Top 10 may inform risk awareness but does not replace verification requirements.

Security controls remain within accessibility and cognitive-accessibility scope. A control that prevents legitimate disabled users from authenticating, recovering, or submitting is not acceptable merely because it reduces abuse.

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

Security policy must not silently block required captions, fonts, assistive scripts, authentication callbacks, or accessible fallbacks. Required resources must be explicitly governed rather than broadly exempted.

## 3. Script and resource governance

Maintain an inventory of:

- First-party scripts.
- Third-party scripts.
- Stylesheets and fonts.
- Frames and embeds.
- Analytics and advertising tools.
- Chat, CAPTCHA, map, video, payment, identity, and scheduling providers.

For each resource record:

- Purpose.
- Data accessed.
- Domains contacted.
- Load condition.
- Consent requirement.
- Accessibility impact.
- Failure behavior.
- Security and privacy owner.
- Removal path.

Do not load a third-party resource merely because a template includes it.

A third-party integration does not inherit trust merely because it is widely used.

## 4. Secrets and configuration

- Never expose secrets in HTML, JavaScript, CSS, source maps, logs, or client-visible configuration.
- Public identifiers must not be represented as secrets.
- Environment-specific values remain outside committed public output when sensitive.
- Key rotation and revocation must be possible.
- Build-time substitution must not leak server credentials.
- Example and test configuration must not contain usable production credentials.

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

Accessibility preferences, assistive-technology information, barrier reports, and accommodation requests may reveal sensitive information and require deliberate access, retention, and disclosure rules.

## 6. Consent and user agency

Consent interfaces must:

- Use plain language.
- Separate necessary and optional purposes.
- Avoid preselected optional consent.
- Make refusal no harder than acceptance.
- Preserve the service when optional processing is refused where practical.
- Provide a withdrawal mechanism.
- Avoid deceptive color, placement, urgency, obstruction, or repeated prompting.
- Remain keyboard, screen-reader, zoom, and speech-input accessible.

Dark patterns are prohibited.

## 7. Telemetry and fingerprinting

Telemetry requires an inventory and purpose.

- Minimize identifiers.
- Avoid browser fingerprinting unless strictly required, proportionate, disclosed, and reviewed.
- Do not treat a device fingerprint as reliable identity or authorization evidence.
- Retain raw event data only as long as necessary.
- Separate operational diagnostics from marketing analytics.
- Avoid recording sensitive field values in analytics, logs, replay, or error tools.
- Do not infer disability, health status, or assistive-technology use for marketing or eligibility decisions.

Session-replay tooling requires explicit privacy, security, and accessibility review.

## 8. Permissions and device APIs

Request camera, microphone, location, notifications, contacts, clipboard, storage, biometrics, or motion access only in direct response to a relevant user action.

Before requesting permission:

- Explain the purpose.
- Explain the result of refusal.
- Avoid requesting permissions unrelated to the current task.
- Provide a recovery path after denial where possible.
- Ensure the requesting control and explanation are accessible.

Permission denial must not leave the user in an empty, unlabeled, or unrecoverable state.

Native and hybrid permission flows also follow [`non-web-accessibility.md`](non-web-accessibility.md).

## 9. Forms and sensitive data

- Mark sensitive fields for appropriate autocomplete behavior.
- Support password managers and paste unless a documented tested security requirement proves otherwise.
- Do not put sensitive data in URLs.
- Do not retain recoverable sensitive values longer than necessary.
- Prevent accidental duplicate submission.
- Confirm consequential actions proportionate to risk.
- Avoid exposing whether a private account or record exists when that creates enumeration risk.
- Preserve non-sensitive form work after a recoverable security or challenge failure where practical.

## 10. Authentication and recovery

Authentication and recovery must balance security with accessible operation.

- Do not make memorization, transcription, puzzle solving, or one sensory mode the only path.
- Support accessible one-time-code entry and autofill where appropriate.
- Explain additional verification and its recovery path.
- Make lockout, expiration, and retry states understandable.
- Avoid inaccessible security questions based on obscure personal memory.
- Provide an accessible support or escalation method for account recovery.
- Do not weaken authorization merely to improve interface convenience.

## 11. CAPTCHA, risk scoring, and bot defense

Prefer layered server-side defenses such as rate limiting, honeypots, timing analysis, request validation, reputation signals, and risk-based escalation over universal interactive challenges.

When a challenge is used:

- Follow the CAPTCHA and human-verification requirements in [`tokens/accessibility.md`](tokens/accessibility.md).
- Provide an accessible alternative and recovery path.
- Preserve entered data after failure or timeout.
- Provide fallback when the provider is unavailable or blocked.
- Document data sent to the provider.
- Review cookies, fingerprinting, cross-origin requests, and retention.
- Avoid treating privacy tools or assistive technology as proof of abuse.
- Allow legitimate users to complete the task without disclosing a disability or diagnosis.

An inaccessible challenge must not be the only path to a primary form, account, or service.

## 12. Uploads and media

Uploads require validation of authorization, size, type, actual content, filename, storage destination, and later access.

Strip or preserve metadata deliberately. Location, device, and identity metadata must not be published accidentally.

Scanning and processing failures must produce accessible status and recovery rather than silent rejection.

## 13. Third-party failure and fallback

A failed optional integration must not prevent access to primary content.

Document fallback for:

- Maps.
- Video.
- CAPTCHA or bot defense.
- Scheduling.
- Chat.
- Payments.
- Identity verification.
- Analytics.
- External fonts and icons.

A privacy-preserving and accessible alternative should be available when practical.

A third-party limitation may prevent an external conformance claim even when a workaround exists; claim handling follows [`STANDARDS.md`](STANDARDS.md).

## 14. Incident and audit behavior

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

Accessibility barrier reports and challenge failures should be distinguishable from malicious events without storing unnecessary disability information.

## 15. Adoption record

```yaml
security_privacy:
  verification_baseline: <standard-version-and-level>
  threat_model: <path>
  data_inventory: <path>
  third_party_inventory: <path>
  accessibility_impact_review: <path>
  csp_policy: <path-or-header-test>
  retention_policy: <path>
  consent_required: true | false
  captcha_or_bot_defense: <path-or-none>
  authentication_recovery_review: <path>
  incident_owner: <role>
  validation_commands: []
  last_reviewed: <ISO-8601-date>
```
