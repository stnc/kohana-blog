-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.19 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table master.articles
DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `small_title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Dumping data for table master.articles: ~21 rows (approximately)
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `content`, `title`, `name`, `updated_at`, `created_at`, `user_id`, `small_title`) VALUES
	(1, 'dfdsfs', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', '2025-01-24 04:38:16', 1, '1'),
	(2, 'deneme', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', '2025-01-24 04:38:17', 1, 'dsfdsfs'),
	(3, 'deneme', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', NULL, 1, 'dsfdsfs'),
	(4, 'eee', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', '2025-01-24 04:38:18', 1, 'dsfdsfs'),
	(5, 'deneme', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', NULL, 1, 'dsfdsfs'),
	(6, 'deneme', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', NULL, 1, 'dsfdsfs'),
	(7, 'deneme', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', NULL, 1, 'dsfdsfs'),
	(8, 'ertre', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', NULL, 1, 'dsfdsfs'),
	(9, 'deneme', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', NULL, 1, 'dsfdsfs'),
	(10, 'deneme', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', NULL, 1, 'dsfdsfs'),
	(11, 'deneme', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', NULL, 1, 'dsfdsfs'),
	(12, 'deneme', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', NULL, 1, 'dsfdsfs'),
	(13, 'deneme', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', NULL, 1, 'dsfdsfs'),
	(14, 'rtret', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', NULL, 1, 'dsfdsfs'),
	(15, 'deneme', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', NULL, 1, 'dsfdsfs'),
	(16, 'deneme', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', NULL, 1, 'dsfdsfs'),
	(17, 'deneme', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', NULL, 1, 'dsfdsfs'),
	(18, 'deneme', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', NULL, 1, 'dsfdsfs'),
	(19, 'deneme', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', NULL, 1, 'dsfdsfs'),
	(20, 'deneme', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', NULL, 1, 'dsfdsfs'),
	(21, 'deneme', 'sdfdsf', 'dsfdsf', '2025-01-24 04:36:12', NULL, 1, 'dsfdsfs');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Dumping structure for table master.images
DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `photographer` varchar(255) NOT NULL,
  `uploaded` varchar(255) NOT NULL,
  `uploader` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table master.images: ~0 rows (approximately)
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;

-- Dumping structure for table master.log_controllers
DROP TABLE IF EXISTS `log_controllers`;
CREATE TABLE IF NOT EXISTS `log_controllers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `controller` varchar(255) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_log_controllers_user_id` (`user_id`),
  CONSTRAINT `fk_log_controllers_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table master.log_controllers: ~0 rows (approximately)
/*!40000 ALTER TABLE `log_controllers` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_controllers` ENABLE KEYS */;

-- Dumping structure for table master.log_models
DROP TABLE IF EXISTS `log_models`;
CREATE TABLE IF NOT EXISTS `log_models` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `model` varchar(255) NOT NULL,
  `model_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `method` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_log_models_user_id` (`user_id`),
  CONSTRAINT `fk_log_models_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table master.log_models: ~0 rows (approximately)
/*!40000 ALTER TABLE `log_models` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_models` ENABLE KEYS */;

-- Dumping structure for table master.payments
DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_system_id` int(11) NOT NULL,
  `payment_details` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(19,2) NOT NULL,
  `status` enum('created','approved','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'created',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table master.payments: ~0 rows (approximately)
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;

-- Dumping structure for table master.payment_systems
DROP TABLE IF EXISTS `payment_systems`;
CREATE TABLE IF NOT EXISTS `payment_systems` (
  `id` bigint(20) unsigned NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table master.payment_systems: ~7 rows (approximately)
/*!40000 ALTER TABLE `payment_systems` DISABLE KEYS */;
INSERT INTO `payment_systems` (`id`, `title`) VALUES
	(1, 'Visa'),
	(2, 'Master Card'),
	(3, 'aaa'),
	(4, 'asdsda'),
	(5, 'asd'),
	(6, 'tests'),
	(7, 'test');
/*!40000 ALTER TABLE `payment_systems` ENABLE KEYS */;

-- Dumping structure for table master.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table master.roles: ~2 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `description`) VALUES
	(1, 'login', 'Login privileges, granted after account confirmation'),
	(2, 'admin', 'Administrative user, has access to everything.');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table master.roles_users
DROP TABLE IF EXISTS `roles_users`;
CREATE TABLE IF NOT EXISTS `roles_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table master.roles_users: ~2 rows (approximately)
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` (`user_id`, `role_id`) VALUES
	(1, 1),
	(1, 2);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;

-- Dumping structure for table master.rules
DROP TABLE IF EXISTS `rules`;
CREATE TABLE IF NOT EXISTS `rules` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `rule` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table master.rules: ~5 rows (approximately)
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
INSERT INTO `rules` (`id`, `type`, `key`, `rule`) VALUES
	(1, 'controller', 'user_management', 'role:admin'),
	(2, 'controller', 'user_logs', 'role:admin'),
	(3, 'controller', 'user_config', 'role:admin'),
	(4, 'controller', 'user_logs', 'role:user'),
	(5, 'controller', 'user_config', 'role:user');
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;

-- Dumping structure for table master.sessions
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `session_id` varchar(24) NOT NULL,
  `last_active` int(10) unsigned NOT NULL,
  `contents` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_active` (`last_active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- Dumping data for table master.sessions: 0 rows
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Dumping structure for table master.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `password` varchar(65) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table master.users: ~3 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `password`, `salt`) VALUES
	(1, 'admin@demo.com', 'David', 'Stutz', '8d5f8aeeb64e3ce20b537d04c486407eaf489646617cfcf493e76f5b794fa080', NULL),
	(2, 'user@demo.com', 'David', 'Stutz', '856c44c23fa1396cbb2cc565ea287aedc328169a0455df31b251dbb293ba2985', NULL),
	(3, 'user2@demo.com', '', '', '856c44c23fa1396cbb2cc565ea287aedc328169a0455df31b251dbb293ba2985', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table master.users_user_roles
DROP TABLE IF EXISTS `users_user_roles`;
CREATE TABLE IF NOT EXISTS `users_user_roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `user_role_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_users_user_roles_user_id` (`user_id`),
  KEY `fk_users_user_roles_user_role_id` (`user_role_id`),
  CONSTRAINT `fk_users_user_roles_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_user_roles_user_role_id` FOREIGN KEY (`user_role_id`) REFERENCES `user_roles` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table master.users_user_roles: ~2 rows (approximately)
/*!40000 ALTER TABLE `users_user_roles` DISABLE KEYS */;
INSERT INTO `users_user_roles` (`id`, `user_id`, `user_role_id`) VALUES
	(1, 1, 1),
	(2, 2, 2);
/*!40000 ALTER TABLE `users_user_roles` ENABLE KEYS */;

-- Dumping structure for table master.user_config
DROP TABLE IF EXISTS `user_config`;
CREATE TABLE IF NOT EXISTS `user_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_config_user_id` (`user_id`),
  CONSTRAINT `fk_user_config_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table master.user_config: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_config` ENABLE KEYS */;

-- Dumping structure for table master.user_logins
DROP TABLE IF EXISTS `user_logins`;
CREATE TABLE IF NOT EXISTS `user_logins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(65) NOT NULL,
  `agent` varchar(65) NOT NULL,
  `login` varchar(255) NOT NULL,
  `created` int(11) unsigned NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- Dumping data for table master.user_logins: ~11 rows (approximately)
/*!40000 ALTER TABLE `user_logins` DISABLE KEYS */;
INSERT INTO `user_logins` (`id`, `ip`, `agent`, `login`, `created`, `user_id`) VALUES
	(1, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737698320, NULL),
	(2, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737698335, NULL),
	(3, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737698362, NULL),
	(4, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737698387, NULL),
	(5, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737698744, NULL),
	(6, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737698995, NULL),
	(7, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737699051, NULL),
	(8, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737699079, NULL),
	(9, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737699114, NULL),
	(10, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737699185, NULL),
	(11, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737699994, NULL),
	(12, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737700074, NULL),
	(13, 'd0c5c267365c771a1bed92ba355dcf100511e34ded4a2500fa501a874b30e13c', '30269475f9966909fde59b038d6997c3dfe99a176b150532b9b5ab9be3d00fb3', 'admin@demo.com', 1737700110, NULL);
/*!40000 ALTER TABLE `user_logins` ENABLE KEYS */;

-- Dumping structure for table master.user_roles
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE IF NOT EXISTS `user_roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table master.user_roles: ~2 rows (approximately)
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` (`id`, `name`) VALUES
	(1, 'admin'),
	(2, 'user');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

-- Dumping structure for table master.user_tokens
DROP TABLE IF EXISTS `user_tokens`;
CREATE TABLE IF NOT EXISTS `user_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(40) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `user_agent` varchar(64) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expires` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_token` (`token`),
  KEY `fk_user_tokens_user_id` (`user_id`),
  CONSTRAINT `fk_user_tokens_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table master.user_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_tokens` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
