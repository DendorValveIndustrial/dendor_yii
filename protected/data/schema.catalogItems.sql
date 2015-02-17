CREATE TABLE IF NOT EXISTS `CatalogItems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `modification_id` int(11) DEFAULT NULL,

  `created` datetime DEFAULT NULL,
  `publish` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,

  `url` varchar(255) DEFAULT '',
  `image` varchar(255) DEFAULT '',
  `price` decimal(12,2) DEFAULT NULL,

  `active` tinyint(1) DEFAULT '1',
  `sorting` smallint(6) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',

  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `modification_id` (`modification_id`),
  KEY `url` (`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `CatalogItemsTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT '',
  `short_description` text,
  `full_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

ALTER TABLE `CatalogItemsTranslate`
  ADD CONSTRAINT `items_translate` FOREIGN KEY (`object_id`) REFERENCES `CatalogItems` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
