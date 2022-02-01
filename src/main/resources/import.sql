DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`login`),
  UNIQUE KEY `id_UNIQUE` (`id`)
);
--
INSERT INTO `user` VALUES (1, 'test', '$2y$10$QsqKTe51lIM7yAkkZJDhNur167ys3W7OBm0ISCoYAzQIAwHj9iOoy');
--
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_name_unique` (`name`)
);

INSERT INTO `role` VALUES (1,'administrator');

DROP TABLE IF EXISTS `assigned_role`;
CREATE TABLE `assigned_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `assigned_roles_user_id_foreign` (`user_id`),
  KEY `assigned_roles_role_id_foreign` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8;

INSERT INTO `assigned_role` VALUES (1,1,1);
