-- DBbasic illustrative SQLite prepared-statement patterns.
-- Bind named placeholders in a trusted application's database API.
-- These queries do NOT replace server-side authorization and role policies.
-- Caller-supplied organization IDs are untrusted until independently verified.

-- Photo list visible to a tenant member according to this toy role/share policy.
-- The role mapping here is illustrative, NOT a PhotoSync access contract.
SELECT p.id, p.location_id, p.storage_key, p.captured_at
FROM photos AS p
JOIN memberships AS actor
  ON actor.organization_id = p.organization_id
 AND actor.user_id = :authenticated_user_id
WHERE p.organization_id = :authorized_org_id
  AND p.deleted_at IS NULL
  AND (
       actor.role IN ('owner', 'manager')
       OR p.uploader_user_id = actor.user_id
       OR EXISTS (
           SELECT 1 FROM photo_shares AS s
           WHERE s.organization_id = p.organization_id
             AND s.photo_id = p.id
             AND s.recipient_user_id = actor.user_id
             AND s.revoked_at IS NULL
       )
  )
ORDER BY p.captured_at DESC, p.id DESC
LIMIT :page_size;

-- Tenant-scoped structured tag search (not full-text search).
SELECT p.id, p.storage_key
FROM photos AS p
JOIN photo_tags AS pt
  ON pt.organization_id = p.organization_id AND pt.photo_id = p.id
JOIN tags AS t
  ON t.organization_id = pt.organization_id AND t.id = pt.tag_id
WHERE p.organization_id = :authorized_org_id
  AND t.label = :tag_label
  AND p.deleted_at IS NULL
ORDER BY p.id DESC;

-- Conversation listing requiring membership in the specific conversation.
SELECT m.id, m.body, m.sent_at
FROM messages AS m
JOIN conversation_participants AS cp
  ON cp.organization_id = m.organization_id
 AND cp.conversation_id = m.conversation_id
WHERE m.organization_id = :authorized_org_id
  AND m.conversation_id = :conversation_id
  AND cp.user_id = :authenticated_user_id
ORDER BY m.sent_at DESC, m.id DESC
LIMIT :page_size;

-- Share creation: the trusted app must authorize the sender and recipient
-- before running this statement within an atomic business transaction.
INSERT INTO photo_shares
  (organization_id, photo_id, recipient_user_id, shared_by_user_id)
VALUES
  (:authorized_org_id, :photo_id, :recipient_user_id, :authenticated_user_id);

-- Revoke an existing grant in the same tenant.
UPDATE photo_shares SET revoked_at = CURRENT_TIMESTAMP
WHERE organization_id = :authorized_org_id
  AND photo_id = :photo_id
  AND recipient_user_id = :recipient_user_id
  AND revoked_at IS NULL;

-- Each query's execution plan must be validated with realistic distributions.
-- The list query above is role-sensitive and intentionally not exhaustive.
