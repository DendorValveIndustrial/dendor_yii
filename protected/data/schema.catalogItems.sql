CREATE TABLE IF NOT EXISTS `CatalogItems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `modification_id` int(11) NOT NULL DEFAULT '0',

  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',

  `url` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',

  `active` tinyint(1) NOT NULL DEFAULT '1',
  `sorting` smallint(6) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',

  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `modification_id` (`modification_id`),
  KEY `url` (`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `CatalogItemsTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `short_description` text,
  `full_description` text,
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_keywords` varchar(255) NOT NULL DEFAULT '',
  `meta_description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

ALTER TABLE `CatalogItemsTranslate`
  ADD CONSTRAINT `items_translate` FOREIGN KEY (`object_id`) REFERENCES `CatalogItems` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
