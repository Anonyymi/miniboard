-- add table `csam_scanner` to database
-- used to identify potential csam material by perceptual hashing

CREATE TABLE IF NOT EXISTS csam_scanner (
  `id` int unsigned NOT NULL auto_increment,
  `sha256` binary(32) NOT NULL,
  `type` varchar(32) NOT NULL,
  `algorithm` varchar(32) NOT NULL,
  `hash` blob NOT NULL,
  `quality` int unsigned NOT NULL,
  `originator` varchar(32) NOT NULL,
  `upvotes` int unsigned NOT NULL,
  `downvotes` int unsigned NOT NULL,
  `timestamp` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY (`algorithm`, `hash`),
  KEY `sha256` (`sha256`),
  KEY `quality` (`quality`),
  KEY `originator` (`originator`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB
CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
