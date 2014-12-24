DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(6) NOT NULL,
  `locale` varchar(6) NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT 1,
  `img_flag` varchar(255),
  `active` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

INSERT INTO `languages` (`name`, `code`, `locale`, `img_flag`) VALUES ('Poland', 'pl', 'pl_PL', 'pl.gif');
INSERT INTO `languages` (`name`, `code`, `locale`, `default`, `img_flag`) VALUES ('Русский', 'ru', 'ru_RU', '0', 'ru.gif');
INSERT INTO `languages` (`name`, `code`, `locale`, `default`, `img_flag`) VALUES ('English', 'en', 'en_US', '0', 'en.gif');
