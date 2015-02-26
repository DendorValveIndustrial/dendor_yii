CREATE TABLE IF NOT EXISTS `PropertyDir` (
  `id` int(11) NOT NULL AUTO_INCREMENT,

  `name` varchar(255) DEFAULT '',
  `description` text,

  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `Property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dir_id` int(11) NOT NULL,

  `system_name` varchar(255) DEFAULT '',

  `type` tinyint(4) DEFAULT '1',
  `required` tinyint(1) DEFAULT '0',
  `main` tinyint(1) DEFAULT '0',

  `sorting` smallint(6) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',

  `name` varchar(255) DEFAULT '',
  `description` text,

  PRIMARY KEY (`id`),
  KEY `dir_id` (`dir_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `PropertyValue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,

  `value` text,

  PRIMARY KEY (`id`),
  KEY `property_id` (`property_id`),
  KEY `entity_id` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

ALTER TABLE `PropertyValue`
  ADD CONSTRAINT `property_value` FOREIGN KEY (`property_id`) REFERENCES `Property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS `PropertyDirTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,

  `name` varchar(255) DEFAULT '',
  `description` text,

  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

ALTER TABLE `PropertyDirTranslate`
  ADD CONSTRAINT `property_dir_translate` FOREIGN KEY (`object_id`) REFERENCES `PropertyDir` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS `PropertyTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,

  `name` varchar(255) DEFAULT '',
  `description` text,

  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

ALTER TABLE `PropertyTranslate`
  ADD CONSTRAINT `property_translate` FOREIGN KEY (`object_id`) REFERENCES `Property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

CREATE TABLE IF NOT EXISTS `PropertyValueTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,

  `value` text,

  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

ALTER TABLE `PropertyValueTranslate`
  ADD CONSTRAINT `property_value_translate` FOREIGN KEY (`object_id`) REFERENCES `PropertyValue` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
