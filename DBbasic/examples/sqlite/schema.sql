-- DBbasic illustrative SQLite schema. Not the PhotoSync production schema.
-- Connection setup: PRAGMA foreign_keys = ON; on every connection.
PRAGMA foreign_keys = ON;

CREATE TABLE organizations (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL CHECK (length(trim(name)) > 0)
);

CREATE TABLE app_users (
    id INTEGER PRIMARY KEY,
    email TEXT NOT NULL UNIQUE,
    display_name TEXT NOT NULL
);

CREATE TABLE memberships (
    organization_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    role TEXT NOT NULL CHECK (role IN ('owner', 'manager', 'field')),
    joined_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (organization_id, user_id),
    FOREIGN KEY (organization_id) REFERENCES organizations(id) ON DELETE RESTRICT,
    FOREIGN KEY (user_id) REFERENCES app_users(id) ON DELETE RESTRICT
);

CREATE TABLE locations (
    id INTEGER PRIMARY KEY,
    organization_id INTEGER NOT NULL,
    label TEXT NOT NULL CHECK (length(trim(label)) > 0),
    UNIQUE (organization_id, id),
    FOREIGN KEY (organization_id) REFERENCES organizations(id) ON DELETE RESTRICT
);

CREATE TABLE photos (
    id INTEGER PRIMARY KEY,
    organization_id INTEGER NOT NULL,
    location_id INTEGER NOT NULL,
    uploader_user_id INTEGER NOT NULL,
    storage_key TEXT NOT NULL,
    sha256_digest TEXT,
    captured_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    deleted_at TEXT,
    UNIQUE (organization_id, id),
    UNIQUE (organization_id, storage_key),
    CHECK (sha256_digest IS NULL OR length(sha256_digest) = 64),
    FOREIGN KEY (organization_id, location_id)
        REFERENCES locations(organization_id, id) ON DELETE RESTRICT,
    FOREIGN KEY (organization_id, uploader_user_id)
        REFERENCES memberships(organization_id, user_id) ON DELETE RESTRICT
);

CREATE TABLE tags (
    id INTEGER PRIMARY KEY,
    organization_id INTEGER NOT NULL,
    label TEXT NOT NULL COLLATE NOCASE CHECK (length(trim(label)) > 0),
    UNIQUE (organization_id, id),
    UNIQUE (organization_id, label),
    FOREIGN KEY (organization_id) REFERENCES organizations(id) ON DELETE RESTRICT
);

CREATE TABLE photo_tags (
    organization_id INTEGER NOT NULL,
    photo_id INTEGER NOT NULL,
    tag_id INTEGER NOT NULL,
    PRIMARY KEY (organization_id, photo_id, tag_id),
    FOREIGN KEY (organization_id, photo_id)
        REFERENCES photos(organization_id, id) ON DELETE CASCADE,
    FOREIGN KEY (organization_id, tag_id)
        REFERENCES tags(organization_id, id) ON DELETE RESTRICT
);

CREATE TABLE photo_shares (
    organization_id INTEGER NOT NULL,
    photo_id INTEGER NOT NULL,
    recipient_user_id INTEGER NOT NULL,
    shared_by_user_id INTEGER NOT NULL,
    shared_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    revoked_at TEXT,
    PRIMARY KEY (organization_id, photo_id, recipient_user_id),
    FOREIGN KEY (organization_id, photo_id)
        REFERENCES photos(organization_id, id) ON DELETE CASCADE,
    FOREIGN KEY (organization_id, recipient_user_id)
        REFERENCES memberships(organization_id, user_id) ON DELETE RESTRICT,
    FOREIGN KEY (organization_id, shared_by_user_id)
        REFERENCES memberships(organization_id, user_id) ON DELETE RESTRICT
);

CREATE TABLE conversations (
    id INTEGER PRIMARY KEY,
    organization_id INTEGER NOT NULL,
    started_by_user_id INTEGER NOT NULL,
    created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (organization_id, id),
    FOREIGN KEY (organization_id, started_by_user_id)
        REFERENCES memberships(organization_id, user_id) ON DELETE RESTRICT
);

CREATE TABLE conversation_participants (
    organization_id INTEGER NOT NULL,
    conversation_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    joined_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (organization_id, conversation_id, user_id),
    FOREIGN KEY (organization_id, conversation_id)
        REFERENCES conversations(organization_id, id) ON DELETE CASCADE,
    FOREIGN KEY (organization_id, user_id)
        REFERENCES memberships(organization_id, user_id) ON DELETE RESTRICT
);

CREATE TABLE messages (
    id INTEGER PRIMARY KEY,
    organization_id INTEGER NOT NULL,
    conversation_id INTEGER NOT NULL,
    sender_user_id INTEGER NOT NULL,
    body TEXT NOT NULL CHECK (length(trim(body)) > 0),
    sent_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    UNIQUE (organization_id, id),
    FOREIGN KEY (organization_id, conversation_id, sender_user_id)
        REFERENCES conversation_participants(organization_id, conversation_id, user_id)
        ON DELETE RESTRICT
);

CREATE TABLE message_photos (
    organization_id INTEGER NOT NULL,
    message_id INTEGER NOT NULL,
    photo_id INTEGER NOT NULL,
    PRIMARY KEY (organization_id, message_id, photo_id),
    FOREIGN KEY (organization_id, message_id)
        REFERENCES messages(organization_id, id) ON DELETE CASCADE,
    FOREIGN KEY (organization_id, photo_id)
        REFERENCES photos(organization_id, id) ON DELETE RESTRICT
);

CREATE TABLE audit_events (
    id INTEGER PRIMARY KEY,
    organization_id INTEGER NOT NULL,
    event_type TEXT NOT NULL,
    subject_type TEXT NOT NULL,
    subject_id INTEGER NOT NULL,
    recorded_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (organization_id) REFERENCES organizations(id) ON DELETE RESTRICT
);

-- Audit entries deliberately retain subject IDs after a subject is hard-deleted.
-- This trigger records a DB event, not a verified authenticated HTTP actor.
CREATE TRIGGER audit_photo_created AFTER INSERT ON photos
BEGIN
    INSERT INTO audit_events (organization_id, event_type, subject_type, subject_id)
    VALUES (NEW.organization_id, 'created', 'photo', NEW.id);
END;

CREATE INDEX idx_memberships_by_user ON memberships(user_id, organization_id);
CREATE INDEX idx_photos_location_recent ON photos(organization_id, location_id, captured_at DESC, id DESC);
CREATE INDEX idx_photos_uploader ON photos(organization_id, uploader_user_id);
CREATE INDEX idx_photo_tags_by_tag ON photo_tags(organization_id, tag_id, photo_id);
CREATE INDEX idx_photo_shares_by_recipient ON photo_shares(organization_id, recipient_user_id, revoked_at);
CREATE INDEX idx_conversation_participants_by_user ON conversation_participants(organization_id, user_id, conversation_id);
CREATE INDEX idx_messages_in_conversation ON messages(organization_id, conversation_id, sent_at DESC, id DESC);
