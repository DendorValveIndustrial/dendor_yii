CREATE TABLE IF NOT EXISTS `PropertyItem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,

  `system_name` varchar(255) DEFAULT '',
  `tag_name` varchar(255) DEFAULT '',
  `default_value` varchar(255) DEFAULT '',

  `type` tinyint(4) DEFAULT '1',
  `display_on_item` tinyint(1) DEFAULT '1',
  `required` tinyint(1) DEFAULT '0',

  `sorting` smallint(6) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',

  PRIMARY KEY (`id`),
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `PropertyItemTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,

  `name` varchar(255) DEFAULT '',
  `description` text,

  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

ALTER TABLE `PropertyItemTranslate`
  ADD CONSTRAINT `property_item_translate` FOREIGN KEY (`object_id`) REFERENCES `PropertyItem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
