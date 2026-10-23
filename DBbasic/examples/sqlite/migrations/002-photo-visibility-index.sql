-- Illustrative forward-only additive SQLite migration.
-- This is NOT a production migration runner; do not reapply against arbitrary DBs.
-- Applied-version records, data backups, migration locking and application-version
-- compatibility must be implemented in the adopting project.

PRAGMA foreign_keys = ON;
BEGIN IMMEDIATE;
CREATE INDEX IF NOT EXISTS idx_photos_active_recent
ON photos(organization_id, captured_at DESC, id DESC)
WHERE deleted_at IS NULL;
PRAGMA user_version = 2;
COMMIT;

-- Post-deployment checks (run separately):
-- PRAGMA integrity_check;
-- PRAGMA foreign_key_check;
-- EXPLAIN QUERY PLAN SELECT id FROM photos WHERE organization_id = 1
--   AND deleted_at IS NULL ORDER BY captured_at DESC, id DESC LIMIT 30;
