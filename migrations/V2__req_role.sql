-- add column ´req_role´ to posts table
-- used to handle access control based on user role

ALTER TABLE posts ADD COLUMN IF NOT EXISTS `req_role` tinyint unsigned NULL AFTER `board_id`,
                  ADD INDEX (`req_role`);
