-- Single active session per admin user
-- Date: 2026-02-03
--
-- This migration adds a DB-backed session token to the `admin` table.
-- On each admin login the application overwrites `session_token`, which
-- automatically invalidates any previous device/session.

ALTER TABLE `admin`
  ADD COLUMN `session_token` VARCHAR(128) NULL AFTER `password`,
  ADD COLUMN `session_token_created_at` DATETIME NULL AFTER `session_token`;

-- Optional indexes (helpful for audits / troubleshooting / large tables).
CREATE INDEX `idx_admin_session_token` ON `admin` (`session_token`);
