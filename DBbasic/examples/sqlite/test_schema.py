"""DBbasic SQLite illustrative integrity tests. Run: python3 -m unittest -v test_schema.py"""
from pathlib import Path
import sqlite3
import unittest

DDL = Path(__file__).with_name('schema.sql').read_text(encoding='utf-8')


class SQLiteSchemaTests(unittest.TestCase):
    def setUp(self):
        self.db = sqlite3.connect(':memory:')
        self.db.execute('PRAGMA foreign_keys = ON')
        self.assertEqual(self.db.execute('PRAGMA foreign_keys').fetchone()[0], 1)
        self.db.executescript(DDL)
        self.db.executemany('INSERT INTO organizations (id, name) VALUES (?, ?)',
                            [(1, 'North'), (2, 'South')])
        self.db.executemany('INSERT INTO app_users (id, email, display_name) VALUES (?, ?, ?)',
                            [(1, 'one@example.invalid', 'One'), (2, 'two@example.invalid', 'Two'),
                             (3, 'three@example.invalid', 'Three')])
        self.db.executemany('INSERT INTO memberships (organization_id, user_id, role) VALUES (?, ?, ?)',
                            [(1, 1, 'owner'), (1, 2, 'field'), (2, 3, 'owner')])
        self.db.executemany('INSERT INTO locations (id, organization_id, label) VALUES (?, ?, ?)',
                            [(11, 1, 'North warehouse'), (22, 2, 'South warehouse')])
        self.db.execute('INSERT INTO photos (id, organization_id, location_id, uploader_user_id, storage_key) VALUES (101,1,11,1,\'north/a.jpg\')')
        self.db.execute('INSERT INTO tags (id, organization_id, label) VALUES (201,1,\'repair\')')
        self.db.execute('INSERT INTO tags (id, organization_id, label) VALUES (202,2,\'repair\')')
        self.db.commit()

    def tearDown(self):
        self.db.close()

    def test_valid_photo_generates_audit_record(self):
        self.assertEqual(self.db.execute("SELECT count(*) FROM audit_events WHERE organization_id=1 AND subject_id=101 AND event_type='created'").fetchone()[0], 1)

    def test_location_cannot_cross_tenant(self):
        with self.assertRaises(sqlite3.IntegrityError):
            self.db.execute("INSERT INTO photos (id,organization_id,location_id,uploader_user_id,storage_key) VALUES (102,1,22,1,'north/b.jpg')")

    def test_uploader_must_be_member_of_same_tenant(self):
        with self.assertRaises(sqlite3.IntegrityError):
            self.db.execute("INSERT INTO photos (id,organization_id,location_id,uploader_user_id,storage_key) VALUES (102,1,11,3,'north/b.jpg')")

    def test_cross_tenant_tag_and_duplicate_relationship_rejected(self):
        with self.assertRaises(sqlite3.IntegrityError):
            self.db.execute('INSERT INTO photo_tags VALUES (1,101,202)')
        self.db.execute('INSERT INTO photo_tags VALUES (1,101,201)')
        with self.assertRaises(sqlite3.IntegrityError):
            self.db.execute('INSERT INTO photo_tags VALUES (1,101,201)')

    def test_case_insensitive_tag_uniqueness_in_tenant(self):
        with self.assertRaises(sqlite3.IntegrityError):
            self.db.execute("INSERT INTO tags (organization_id,label) VALUES (1,'REPAIR')")

    def test_share_recipient_must_be_member(self):
        self.db.execute('INSERT INTO photo_shares (organization_id,photo_id,recipient_user_id,shared_by_user_id) VALUES (1,101,2,1)')
        with self.assertRaises(sqlite3.IntegrityError):
            self.db.execute('INSERT INTO photo_shares (organization_id,photo_id,recipient_user_id,shared_by_user_id) VALUES (1,101,3,1)')

    def test_message_requires_conversation_participation_and_same_tenant(self):
        self.db.execute('INSERT INTO conversations (id,organization_id,started_by_user_id) VALUES (301,1,1)')
        self.db.execute('INSERT INTO conversation_participants (organization_id,conversation_id,user_id) VALUES (1,301,1)')
        self.db.execute("INSERT INTO messages (id,organization_id,conversation_id,sender_user_id,body) VALUES (401,1,301,1,'Hello')")
        self.db.execute('INSERT INTO message_photos VALUES (1,401,101)')
        with self.assertRaises(sqlite3.IntegrityError):
            self.db.execute("INSERT INTO messages (id,organization_id,conversation_id,sender_user_id,body) VALUES (402,1,301,2,'Not a participant')")
        with self.assertRaises(sqlite3.IntegrityError):
            self.db.execute('INSERT INTO message_photos VALUES (2,401,101)')

    def test_failed_insert_does_not_create_audit(self):
        prior = self.db.execute('SELECT count(*) FROM audit_events').fetchone()[0]
        with self.assertRaises(sqlite3.IntegrityError):
            self.db.execute("INSERT INTO photos (id,organization_id,location_id,uploader_user_id,storage_key) VALUES (102,1,22,1,'invalid.jpg')")
        self.assertEqual(self.db.execute('SELECT count(*) FROM audit_events').fetchone()[0], prior)

    def test_soft_deleted_photo_retains_references_until_purged(self):
        self.db.execute("UPDATE photos SET deleted_at = CURRENT_TIMESTAMP WHERE id=101")
        self.assertEqual(self.db.execute('SELECT count(*) FROM photos WHERE id=101').fetchone()[0], 1)
        self.assertEqual(self.db.execute('PRAGMA foreign_key_check').fetchall(), [])

    def test_integrity_checks(self):
        self.assertEqual(self.db.execute('PRAGMA integrity_check').fetchone()[0], 'ok')
        self.assertEqual(self.db.execute('PRAGMA foreign_key_check').fetchall(), [])


if __name__ == '__main__':
    unittest.main()
