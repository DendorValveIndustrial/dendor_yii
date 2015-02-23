-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 24 2015 г., 02:51
-- Версия сервера: 5.5.41-log
-- Версия PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `dendor_yii1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `CatalogGroup`
--

CREATE TABLE IF NOT EXISTS `CatalogGroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `sorting` smallint(6) NOT NULL DEFAULT '0',
  `page_size` smallint(6) NOT NULL DEFAULT '10',
  `upload_path` varchar(255) NOT NULL DEFAULT '',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `url` (`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `CatalogGroup`
--

INSERT INTO `CatalogGroup` (`id`, `parent_id`, `image`, `url`, `active`, `sorting`, `page_size`, `upload_path`, `deleted`) VALUES
(1, 0, 'group.png', 'butterfly-valves', 1, 0, 10, 'butterfly-valves', 0),
(2, 0, 'group.png', 'cast-iron-valves', 1, 0, 10, 'cast-iron-valves', 0),
(3, 0, 'group.png', 'check-valves', 1, 0, 10, 'check-valves', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `CatalogGroupTranslate`
--

CREATE TABLE IF NOT EXISTS `CatalogGroupTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `CatalogGroupTranslate`
--

INSERT INTO `CatalogGroupTranslate` (`id`, `object_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
(1, 1, 1, 'Przepustnice zwrotne', 'Przepustnice zwrotne znajdują szerokie zastosowanie ze względu na niskie koszty instalacji oraz swoją budowę umożliwiającą szczelność odcinania w obu kierunkach przepływu. Stosowanie przepustnic produkcji Dendor Valve Industrial pozwala zastąpić następujące elementy: zasuwy, zawory, kurki kulowe oraz inne urządzenia armatury zaporowo-regulacyjnej. Przepustnice te są wykonane z żeliwa i w zależności od średnicy są dostarczane w komplecie z dźwignią, kółkiem bądź napędem elektrycznym.', 'Przepustnice zwrotne', 'Przepustnice zwrotne znajdują szerokie zastosowanie ze względu na niskie koszty instalacji oraz swoją budowę umożli', ''),
(2, 1, 2, 'Затворы дисковые', 'Наиболее распространенным видом запорной трубопроводной арматуры во всем мире является поворотный дисковый затвор. Преимущества этого изделия очевидны – это низкая стоимость монтажа и герметичное перекрытие потока в обоих направлениях. Дисковый затвор имеет минимум подвижных деталей, поэтому срок его службы значительно выше, чем у более сложных запорных систем. Дисковые поворотные затворы производства Dendor Valve Industrial с успехом заменяют задвижки, вентили, клапаны, шаровые краны и другие элементы запорно-регулирующей арматуры.', 'Затворы дисковые', 'Затворы дисковые поворотные фланцевые производства Dendor Valve Industrial', ''),
(3, 1, 3, 'Przepustnice zwrotne', 'Przepustnice zwrotne znajdują szerokie zastosowanie ze względu na niskie koszty instalacji oraz swoją budowę umożliwiającą szczelność odcinania w obu kierunkach przepływu. Stosowanie przepustnic produkcji Dendor Valve Industrial pozwala zastąpić następujące elementy: zasuwy, zawory, kurki kulowe oraz inne urządzenia armatury zaporowo-regulacyjnej. Przepustnice te są wykonane z żeliwa i w zależności od średnicy są dostarczane w komplecie z dźwignią, kółkiem bądź napędem elektrycznym.', 'Przepustnice zwrotne', 'Przepustnice zwrotne znajdują szerokie zastosowanie ze względu na niskie koszty instalacji oraz swoją budowę umożli', ''),
(4, 2, 1, 'Zasuwy z żeliwa klinowe', 'Oprócz zasuw klinowych oferta Dendor Valve Industrial zawiera zasuwy nożowe służące do regulacji lub zamykania przepływu czynników roboczych o dużej gęstości, emulsji oraz czynników roboczych będących proszkami i granulatami. Zasuwy te są szeroko wykorzystywane w sieciach kanalizacyjnych, oczyszczalniach ścieków, przemyśle wydobywczym, chemicznym, spożywczym, szczególnie wtedy, gdy nie jest wymagana dokładna regulacja przepływającego czynnika roboczego. Ze względu na swoją budowę umożliwiają odcinanie mediów zawierających części stałe.', 'Zasuwy z żeliwa klinowe', 'Oprócz zasuw klinowych oferta Dendor Valve Industrial zawiera zasuwy nożowe służące do regulacji lub zamykania prze', ''),
(5, 2, 2, 'Задвижки клиновые', 'Oprócz zasuw klinowych oferta Dendor Valve Industrial zawiera zasuwy nożowe służące do regulacji lub zamykania przepływu czynników roboczych o dużej gęstości, emulsji oraz czynników roboczych będących proszkami i granulatami. Zasuwy te są szeroko wykorzystywane w sieciach kanalizacyjnych, oczyszczalniach ścieków, przemyśle wydobywczym, chemicznym, spożywczym, szczególnie wtedy, gdy nie jest wymagana dokładna regulacja przepływającego czynnika roboczego. Ze względu na swoją budowę umożliwiają odcinanie mediów zawierających części stałe.', 'Zasuwy z żeliwa klinowe', 'Oprócz zasuw klinowych oferta Dendor Valve Industrial zawiera zasuwy nożowe służące do regulacji lub zamykania prze', ''),
(6, 2, 3, 'Zasuwy z żeliwa klinowe', 'Oprócz zasuw klinowych oferta Dendor Valve Industrial zawiera zasuwy nożowe służące do regulacji lub zamykania przepływu czynników roboczych o dużej gęstości, emulsji oraz czynników roboczych będących proszkami i granulatami. Zasuwy te są szeroko wykorzystywane w sieciach kanalizacyjnych, oczyszczalniach ścieków, przemyśle wydobywczym, chemicznym, spożywczym, szczególnie wtedy, gdy nie jest wymagana dokładna regulacja przepływającego czynnika roboczego. Ze względu na swoją budowę umożliwiają odcinanie mediów zawierających części stałe.', 'Zasuwy z żeliwa klinowe', 'Oprócz zasuw klinowych oferta Dendor Valve Industrial zawiera zasuwy nożowe służące do regulacji lub zamykania prze', ''),
(7, 3, 1, 'Zawory zwrotne', 'Zawory zwrotne przeznaczone są do zabezpieczenia instalacji przed strumieniem powrotnym czynnika roboczego w przypadku awarii pompy lub uszkodzeniu instalacji. Znajdują zastosowanie w: ciepłownictwie, energetyce, wodociągach i stacjach uzdatniania wody, przemyśle.', 'Zawory zwrotne', 'Zawory zwrotne przeznaczone są do zabezpieczenia instalacji przed strumieniem powrotnym czynnika roboczego w przypadku ', ''),
(8, 3, 2, 'Обратные клапаны', 'Zawory zwrotne przeznaczone są do zabezpieczenia instalacji przed strumieniem powrotnym czynnika roboczego w przypadku awarii pompy lub uszkodzeniu instalacji. Znajdują zastosowanie w: ciepłownictwie, energetyce, wodociągach i stacjach uzdatniania wody, przemyśle.', 'Обратные клапаны', 'Zawory zwrotne przeznaczone są do zabezpieczenia instalacji przed strumieniem powrotnym czynnika roboczego w przypadku ', ''),
(9, 3, 3, 'Zawory zwrotne', 'Zawory zwrotne przeznaczone są do zabezpieczenia instalacji przed strumieniem powrotnym czynnika roboczego w przypadku awarii pompy lub uszkodzeniu instalacji. Znajdują zastosowanie w: ciepłownictwie, energetyce, wodociągach i stacjach uzdatniania wody, przemyśle.', 'Zawory zwrotne', 'Zawory zwrotne przeznaczone są do zabezpieczenia instalacji przed strumieniem powrotnym czynnika roboczego w przypadku ', '');

-- --------------------------------------------------------

--
-- Структура таблицы `CatalogItems`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `CatalogItems`
--

INSERT INTO `CatalogItems` (`id`, `group_id`, `modification_id`, `created`, `publish`, `end_date`, `url`, `image`, `price`, `active`, `sorting`, `deleted`) VALUES
(1, 1, 0, '2015-02-18 01:28:19', '2015-02-18 01:28:19', '0000-00-00 00:00:00', '017w', '017w.jpg', '0.00', 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `CatalogItemsTranslate`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `CatalogItemsTranslate`
--

INSERT INTO `CatalogItemsTranslate` (`id`, `object_id`, `language_id`, `name`, `short_description`, `full_description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 1, 'Przepustnica międzykołnierzowa 017W (dysk - żeliwo niklowane)', 'Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Do głównych zalet przepustnic należą: mała masa, krótka zabudowa, doskonała szczelność w obu kierunkach przepływu, niezawodność i wysoka trwałość, zbędne stosowanie dodatkowych uszczelek na kołnierzu, nie wymagają konserwacji, minimalna strata ciśnień, łatwy montaż i demontaż', '<p>Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.</p>\n\n<p>Przepustnice charakteryzują się kompaktową zwartą budową. Dzięki zastosowaniu specjalnego uszczelnienia kadłub oraz trzpień nie stykają się z przepuszczalnym czynnikiem a co jest równoznaczne ze zwiększeniem odporności i trwałości poszczególnych elementów składowych przepustnic.</p>\n\n<p>Przepustnice międzykołnierzowe zwrotne są dostarczane w komplecie z rączką. Elementem dodatkowym do przepustnic DN350 jest przekładnia ślimakowa.</p>\n\n<p>Każdy typ przepustnic Dendor Valve Industrial na żądanie jest kompletowany napędem elektrycznym, pneumatycznym lub ręcznym z przekładnią ślimakową.</p>\n\n<p>Do głównych zalet przepustnic należą: mała masa, krótka zabudowa, doskonała szczelność w obu kierunkach przepływu, niezawodność i wysoka trwałość, zbędne stosowanie dodatkowych uszczelek na kołnierzu, nie wymagają konserwacji, minimalna strata ciśnień, łatwy montaż i demontaż</p>\n', 'Przepustnica międzykołnierzowa 017W (dysk - żeliwo niklowane)', NULL, 'Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Do głównych zalet prze'),
(2, 1, 2, 'Przepustnica międzykołnierzowa 017W (dysk - żeliwo niklowane)', 'Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Do głównych zalet przepustnic należą: mała masa, krótka zabudowa, doskonała szczelność w obu kierunkach przepływu, niezawodność i wysoka trwałość, zbędne stosowanie dodatkowych uszczelek na kołnierzu, nie wymagają konserwacji, minimalna strata ciśnień, łatwy montaż i demontaż', '<p>Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.</p>\n\n<p>Przepustnice charakteryzują się kompaktową zwartą budową. Dzięki zastosowaniu specjalnego uszczelnienia kadłub oraz trzpień nie stykają się z przepuszczalnym czynnikiem a co jest równoznaczne ze zwiększeniem odporności i trwałości poszczególnych elementów składowych przepustnic.</p>\n\n<p>Przepustnice międzykołnierzowe zwrotne są dostarczane w komplecie z rączką. Elementem dodatkowym do przepustnic DN350 jest przekładnia ślimakowa.</p>\n\n<p>Każdy typ przepustnic Dendor Valve Industrial na żądanie jest kompletowany napędem elektrycznym, pneumatycznym lub ręcznym z przekładnią ślimakową.</p>\n\n<p>Do głównych zalet przepustnic należą: mała masa, krótka zabudowa, doskonała szczelność w obu kierunkach przepływu, niezawodność i wysoka trwałość, zbędne stosowanie dodatkowych uszczelek na kołnierzu, nie wymagają konserwacji, minimalna strata ciśnień, łatwy montaż i demontaż</p>\n', 'Przepustnica międzykołnierzowa 017W (dysk - żeliwo niklowane)', NULL, 'Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Do głównych zalet prze'),
(3, 1, 3, 'Przepustnica międzykołnierzowa 017W (dysk - żeliwo niklowane)', 'Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Do głównych zalet przepustnic należą: mała masa, krótka zabudowa, doskonała szczelność w obu kierunkach przepływu, niezawodność i wysoka trwałość, zbędne stosowanie dodatkowych uszczelek na kołnierzu, nie wymagają konserwacji, minimalna strata ciśnień, łatwy montaż i demontaż', '<p>Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.</p>\n\n<p>Przepustnice charakteryzują się kompaktową zwartą budową. Dzięki zastosowaniu specjalnego uszczelnienia kadłub oraz trzpień nie stykają się z przepuszczalnym czynnikiem a co jest równoznaczne ze zwiększeniem odporności i trwałości poszczególnych elementów składowych przepustnic.</p>\n\n<p>Przepustnice międzykołnierzowe zwrotne są dostarczane w komplecie z rączką. Elementem dodatkowym do przepustnic DN350 jest przekładnia ślimakowa.</p>\n\n<p>Każdy typ przepustnic Dendor Valve Industrial na żądanie jest kompletowany napędem elektrycznym, pneumatycznym lub ręcznym z przekładnią ślimakową.</p>\n\n<p>Do głównych zalet przepustnic należą: mała masa, krótka zabudowa, doskonała szczelność w obu kierunkach przepływu, niezawodność i wysoka trwałość, zbędne stosowanie dodatkowych uszczelek na kołnierzu, nie wymagają konserwacji, minimalna strata ciśnień, łatwy montaż i demontaż</p>\n', 'Przepustnica międzykołnierzowa 017W (dysk - żeliwo niklowane)', NULL, 'Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Do głównych zalet prze');

-- --------------------------------------------------------

--
-- Структура таблицы `News`
--

CREATE TABLE IF NOT EXISTS `News` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  `layout` varchar(2555) DEFAULT '',
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `url` (`url`),
  KEY `created` (`created`),
  KEY `updated` (`updated`),
  KEY `publish_date` (`publish_date`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `News`
--

INSERT INTO `News` (`id`, `category_id`, `url`, `created`, `updated`, `publish_date`, `status`, `layout`, `image`) VALUES
(1, 2, 'exhibition-in-spb', '2015-02-04 14:12:58', '2015-02-04 14:12:58', '2015-02-04 14:12:58', 'published', '', 'pipe-and-fittings-historical-information.jpg'),
(2, 2, 'exhibition-in-poland', '2015-02-05 11:17:32', '2015-02-05 11:17:32', '2015-02-05 11:17:32', 'published', '', ''),
(3, 1, 'principle-of-operation-of-electromagnetic-valves', '2015-02-05 11:44:02', '2015-02-05 11:44:02', '2015-02-05 11:44:02', 'published', '', 'principle_operation_electromagnetic_valves.jpg'),
(4, 2, 'exhibition-in-moscow', '2015-02-08 00:12:32', '2015-02-08 00:12:32', '2015-02-08 00:12:32', 'published', '', NULL),
(5, 2, 'exhibition-aqua-term-moscow-2015', '2015-02-08 00:52:05', '2015-02-08 00:52:05', '2015-02-08 00:52:05', 'published', '', NULL),
(6, 1, 'selection-of-pipe-fittings', '2015-02-09 00:15:06', '2015-02-09 00:15:06', '2015-02-09 00:15:06', 'published', '', NULL),
(7, 1, 'pipe-and-fittings-historical-information', '2015-02-09 00:25:09', '2015-02-09 00:25:09', '2015-02-09 00:25:09', 'published', '', 'pipe-and-fittings-historical-information.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `NewsCategory`
--

CREATE TABLE IF NOT EXISTS `NewsCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `full_url` text,
  `layout` varchar(255) DEFAULT '',
  `image` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `page_size` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `url` (`url`),
  KEY `created` (`created`),
  KEY `updated` (`updated`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `NewsCategory`
--

INSERT INTO `NewsCategory` (`id`, `parent_id`, `url`, `full_url`, `layout`, `image`, `created`, `updated`, `page_size`) VALUES
(1, 0, 'article', 'article', '', '', '2015-01-28 15:24:19', '2015-01-28 15:24:19', 20),
(2, 0, 'exhibitions', 'exhibitions', '', '', '2015-01-28 15:26:52', '2015-01-28 15:26:52', 20);

-- --------------------------------------------------------

--
-- Структура таблицы `NewsCategoryTranslate`
--

CREATE TABLE IF NOT EXISTS `NewsCategoryTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `NewsCategoryTranslate`
--

INSERT INTO `NewsCategoryTranslate` (`id`, `object_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keywords`) VALUES
(1, 2, 1, 'Targi', 'exhibitions', 'Targi', 'exhibitions', ''),
(2, 2, 2, 'Выставки', 'article', 'exhibitions', 'article', ''),
(3, 2, 3, 'Exhibitions', 'article', 'exhibitions', 'article', ''),
(4, 1, 1, 'Artykuł', '', 'Artykuł', '', ''),
(5, 1, 2, 'Статьи', '', 'Статьи', '', ''),
(6, 1, 3, 'Article', '', 'Article', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `NewsTranslate`
--

CREATE TABLE IF NOT EXISTS `NewsTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT '',
  `short_description` text,
  `full_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Дамп данных таблицы `NewsTranslate`
--

INSERT INTO `NewsTranslate` (`id`, `object_id`, `language_id`, `title`, `short_description`, `full_description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 1, 'Międzynarodowe Targi "Aqua-Therm" w Sankt Petersburgu', 'Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, Klimatyzacyjnych, Wentylacyjnych oraz urządzeń do basenów „Aqua-Therm St.Petersburg 2014” w dniach 09-12 kwietnia 2014 r. w Sankt Petersburgu...', '<p>Firma Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, Klimatyzacyjnych, Wentylacyjnych oraz urządzeń do basenów „Aqua-Therm St.Petersburg 2014” w dniach 09-12 kwietnia 2014 r. w Sankt Petersburgu.</p>\n\n<p>Podczas targów firma zaprezentowała swoją nową produkcję oraz udoskonalone wersje urządzeń do instalacji i przemysłu. Mamy nadzieję, że udzielona przez naszych specjalistów informacja była wystarczająca. Zawsze jesteśmy do Państwa dyspozycji!</p>\n\n<p>Serdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko w Centrum Wystawienniczym „LENEXPO”!</p>\n', 'Międzynarodowe Targi "Aqua-Therm" w Sankt Petersburgu', '', 'Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, K'),
(2, 1, 2, 'Międzynarodowe Targi "Aqua-Therm" w Sankt Petersburgu', 'Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, Klimatyzacyjnych, Wentylacyjnych oraz urządzeń do basenów „Aqua-Therm St.Petersburg 2014” w dniach 09-12 kwietnia 2014 r. w Sankt Petersburgu...', '<p>Firma Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, Klimatyzacyjnych, Wentylacyjnych oraz urządzeń do basenów „Aqua-Therm St.Petersburg 2014” w dniach 09-12 kwietnia 2014 r. w Sankt Petersburgu.</p>\n\n<p>Podczas targów firma zaprezentowała swoją nową produkcję oraz udoskonalone wersje urządzeń do instalacji i przemysłu. Mamy nadzieję, że udzielona przez naszych specjalistów informacja była wystarczająca. Zawsze jesteśmy do Państwa dyspozycji!</p>\n\n<p>Serdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko w Centrum Wystawienniczym „LENEXPO”!</p>\n', '', '', ''),
(3, 1, 3, 'Międzynarodowe Targi "Aqua-Therm" w Sankt Petersburgu', 'Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, Klimatyzacyjnych, Wentylacyjnych oraz urządzeń do basenów „Aqua-Therm St.Petersburg 2014” w dniach 09-12 kwietnia 2014 r. w Sankt Petersburgu...', '<p>Firma Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, Klimatyzacyjnych, Wentylacyjnych oraz urządzeń do basenów „Aqua-Therm St.Petersburg 2014” w dniach 09-12 kwietnia 2014 r. w Sankt Petersburgu.</p>\n\n<p>Podczas targów firma zaprezentowała swoją nową produkcję oraz udoskonalone wersje urządzeń do instalacji i przemysłu. Mamy nadzieję, że udzielona przez naszych specjalistów informacja była wystarczająca. Zawsze jesteśmy do Państwa dyspozycji!</p>\n\n<p>Serdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko w Centrum Wystawienniczym „LENEXPO”!</p>\n', 'Międzynarodowe Targi "Aqua-Therm" w Sankt Petersburgu', '', 'Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, K'),
(4, 2, 1, 'Targi WOD-KAN 20-22 maja 2014 r.', 'Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do wodociągu i kanalizacji WOD-KAN 2014 w dniach 20-22 maja 2014 r (na terenie wystawienniczym Bydgoszcz Myślęcinek)...', 'Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do wodociągu i kanalizacji WOD-KAN 2014 w dniach 20-22 maja 2014 r (na terenie wystawienniczym Bydgoszcz Myślęcinek).\r\n\r\nByła to dla nas doskonała okazja do zaprezentowania oferty handlowo-produkcyjnej firmy. Sądzimy, że zapoznanie się z naszą produkcja pozwoliło Państwu w pełni ocenić jej walory.\r\n\r\nSerdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko i zapraszamy do współpracy!', '', '', ''),
(5, 2, 2, 'Targi WOD-KAN 20-22 maja 2014 r.', 'Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do wodociągu i kanalizacji WOD-KAN 2014 w dniach 20-22 maja 2014 r (na terenie wystawienniczym Bydgoszcz Myślęcinek)...', '<p>Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do wodociągu i kanalizacji WOD-KAN 2014 w dniach 20-22 maja 2014 r (na terenie wystawienniczym Bydgoszcz Myślęcinek).</p>\n\n<p>Była to dla nas doskonała okazja do zaprezentowania oferty handlowo-produkcyjnej firmy. Sądzimy, że zapoznanie się z naszą produkcja pozwoliło Państwu w pełni ocenić jej walory.</p>\n\n<p>Serdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko i zapraszamy do współpracy!</p>\n', '', '', ''),
(6, 2, 3, 'Targi WOD-KAN 20-22 maja 2014 r.', 'Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do wodociągu i kanalizacji WOD-KAN 2014 w dniach 20-22 maja 2014 r (na terenie wystawienniczym Bydgoszcz Myślęcinek)...', 'Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do wodociągu i kanalizacji WOD-KAN 2014 w dniach 20-22 maja 2014 r (na terenie wystawienniczym Bydgoszcz Myślęcinek).\r\n\r\nByła to dla nas doskonała okazja do zaprezentowania oferty handlowo-produkcyjnej firmy. Sądzimy, że zapoznanie się z naszą produkcja pozwoliło Państwu w pełni ocenić jej walory.\r\n\r\nSerdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko i zapraszamy do współpracy!', '', '', ''),
(7, 3, 1, 'Zasada działania zaworów elektromagnetycznych', 'Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu...', '<p>Zawór elektromagnetyczny jest to zawór sterowany elektrycznie, najczęściej przepływem prądu.</p>\n\n<p>W załezności od przenoszonych przepływów najczęściej wyróżnia się: zawory bezpośredniego działania i zawory z serwosterowaniem.</p>\n\n<p>W zaworach bezpośredniego działania podanie napięcia na cewkę powoduje wytworzenie pola elektromagnetycznego. Pole to wymusza ruch trzpienia (to właśnie on otwiera lub zamyka przelot zaworu). W przypadku braku zasilania, trzpień za pomocą sprężyny zwrotnej wraca do pozycji wyjściowej. Przy większych średnicach wzrasta ciśnienie statyczne, które oddziałuje na element zamykający i do otwarcia zaworu wymagana jest większa siła. W takich sytuacjach stosuje się drugi typ zaworów - zawory elektromagnetyczne z serwosterowaniem. W zaworach tego typu elementem zamykającym i otwierającym przelot jest specjalna membrana – za pomocą sprężyny jest ona dociskana do gniazda zaworu. W środku membrany znajduje się niewielki otwór, który wyrównuje ciśnienie. W sytuacji równowagi ciśnień siła działania sprężyny jest wystarczająca do zamknięcia zaworu, nawet przy dużym ciśnieniu na jego wejściu. Podanie napięcia na cewkę powoduje ruch trzpienia i otwarcie kanalika, który łączy przestrzeń nad membraną z wejściem zaworu.</p>\n\n<p>Dzięki różnicy ciśnień następuje całkowite otwarcie zaworu i przepływ medium. W przypadku braku napięcia następuje odwrotny ruch trzpienia, zamknięcie kanalika i wyrównanie ciśnień po obydwu stronach membrany. Sprężyna powoduje dociśnięcie membrany do gniazda i zamknięcie zaworu. Poprawne działanie tego typu zaworów jest możliwe przy zachowaniu pewnej minimalnej różnicy ciśnień między wlotem a wylotem, określonej w danych technicznych.</p>\n\n<p>Zawory elektromagnetyczne dostępne są tak w wersji normalnie otwartej (NO) jak i normalnie zamkniętej (NZ).</p>\n', 'Zasada działania zaworów elektromagnetycznych', '', 'Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla'),
(8, 3, 2, 'Zasada działania zaworów elektromagnetycznych', 'Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu...', '<div class="image-text-item pull-right"><img src="http://dendor.pl/img/info/principle_operation_electromagnetic_valves.jpg" alt="alt text" title="Title" /></div>\n\n<p>Zawór elektromagnetyczny jest to zawór sterowany elektrycznie, najczęściej przepływem prądu.</p>\n\n<p>W załezności od przenoszonych przepływów najczęściej wyróżnia się: zawory bezpośredniego działania i zawory z serwosterowaniem.</p>\n\n<p>W zaworach bezpośredniego działania podanie napięcia na cewkę powoduje wytworzenie pola elektromagnetycznego. Pole to wymusza ruch trzpienia (to właśnie on otwiera lub zamyka przelot zaworu). W przypadku braku zasilania, trzpień za pomocą sprężyny zwrotnej wraca do pozycji wyjściowej. Przy większych średnicach wzrasta ciśnienie statyczne, które oddziałuje na element zamykający i do otwarcia zaworu wymagana jest większa siła. W takich sytuacjach stosuje się drugi typ zaworów - zawory elektromagnetyczne z serwosterowaniem. W zaworach tego typu elementem zamykającym i otwierającym przelot jest specjalna membrana – za pomocą sprężyny jest ona dociskana do gniazda zaworu. W środku membrany znajduje się niewielki otwór, który wyrównuje ciśnienie. W sytuacji równowagi ciśnień siła działania sprężyny jest wystarczająca do zamknięcia zaworu, nawet przy dużym ciśnieniu na jego wejściu. Podanie napięcia na cewkę powoduje ruch trzpienia i otwarcie kanalika, który łączy przestrzeń nad membraną z wejściem zaworu.</p>\n\n<p>Dzięki różnicy ciśnień następuje całkowite otwarcie zaworu i przepływ medium. W przypadku braku napięcia następuje odwrotny ruch trzpienia, zamknięcie kanalika i wyrównanie ciśnień po obydwu stronach membrany. Sprężyna powoduje dociśnięcie membrany do gniazda i zamknięcie zaworu. Poprawne działanie tego typu zaworów jest możliwe przy zachowaniu pewnej minimalnej różnicy ciśnień między wlotem a wylotem, określonej w danych technicznych.</p>\n\n<p>Zawory elektromagnetyczne dostępne są tak w wersji normalnie otwartej (NO) jak i normalnie zamkniętej (NZ).</p>\n', 'Zasada działania zaworów elektromagnetycznych', '', 'Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla'),
(9, 3, 3, 'Zasada działania zaworów elektromagnetycznych', 'Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu...', '<p>Zawór elektromagnetyczny jest to zawór sterowany elektrycznie, najczęściej przepływem prądu.</p>\n\n<p>W załezności od przenoszonych przepływów najczęściej wyróżnia się: zawory bezpośredniego działania i zawory z serwosterowaniem.</p>\n\n<p>W zaworach bezpośredniego działania podanie napięcia na cewkę powoduje wytworzenie pola elektromagnetycznego. Pole to wymusza ruch trzpienia (to właśnie on otwiera lub zamyka przelot zaworu). W przypadku braku zasilania, trzpień za pomocą sprężyny zwrotnej wraca do pozycji wyjściowej. Przy większych średnicach wzrasta ciśnienie statyczne, które oddziałuje na element zamykający i do otwarcia zaworu wymagana jest większa siła. W takich sytuacjach stosuje się drugi typ zaworów - zawory elektromagnetyczne z serwosterowaniem. W zaworach tego typu elementem zamykającym i otwierającym przelot jest specjalna membrana – za pomocą sprężyny jest ona dociskana do gniazda zaworu. W środku membrany znajduje się niewielki otwór, który wyrównuje ciśnienie. W sytuacji równowagi ciśnień siła działania sprężyny jest wystarczająca do zamknięcia zaworu, nawet przy dużym ciśnieniu na jego wejściu. Podanie napięcia na cewkę powoduje ruch trzpienia i otwarcie kanalika, który łączy przestrzeń nad membraną z wejściem zaworu.</p>\n\n<p>Dzięki różnicy ciśnień następuje całkowite otwarcie zaworu i przepływ medium. W przypadku braku napięcia następuje odwrotny ruch trzpienia, zamknięcie kanalika i wyrównanie ciśnień po obydwu stronach membrany. Sprężyna powoduje dociśnięcie membrany do gniazda i zamknięcie zaworu. Poprawne działanie tego typu zaworów jest możliwe przy zachowaniu pewnej minimalnej różnicy ciśnień między wlotem a wylotem, określonej w danych technicznych.</p>\n\n<p>Zawory elektromagnetyczne dostępne są tak w wersji normalnie otwartej (NO) jak i normalnie zamkniętej (NZ).</p>\n', 'Zasada działania zaworów elektromagnetycznych', '', 'Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla'),
(10, 4, 1, 'Międzynarodowe Targi "EKWATEK 2014" w Moskwie', 'Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Wodnych Technologii „EKWATEK 2014” w dniach 03-06 czerwca 2014r. w ramach 11-go Międzynarodowego Forum EKWATEK w Moskwie...', '<p>Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Wodnych Technologii „EKWATEK 2014” w dniach 03-06 czerwca 2014r. w ramach 11-go Międzynarodowego Forum EKWATEK w Moskwie.</p>\n\n<p>Na stoisku firmy mogli Państwo zapoznać się z nowościami oraz udoskonalonymi wersjami naszych produktów. Mamy nadzieję, że udzielona przez naszych specjalistów informacja była wyczerpująca.</p>\n\n<p>Serdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko!</p>\n', 'Międzynarodowe Targi "EKWATEK 2014" w Moskwie', '', 'Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Wodnych Technologii „EKWATEK 2014” w dniach 03-'),
(11, 4, 2, 'Międzynarodowe Targi "EKWATEK 2014" w Moskwie', 'Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Wodnych Technologii „EKWATEK 2014” w dniach 03-06 czerwca 2014r. w ramach 11-go Międzynarodowego Forum EKWATEK w Moskwie...', '<p>Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Wodnych Technologii „EKWATEK 2014” w dniach 03-06 czerwca 2014r. w ramach 11-go Międzynarodowego Forum EKWATEK w Moskwie.</p>\n\n<p>Na stoisku firmy mogli Państwo zapoznać się z nowościami oraz udoskonalonymi wersjami naszych produktów. Mamy nadzieję, że udzielona przez naszych specjalistów informacja była wyczerpująca.</p>\n\n<p>Serdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko!</p>\n', 'Międzynarodowe Targi "EKWATEK 2014" w Moskwie', '', 'Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Wodnych Technologii „EKWATEK 2014” w dniach 03-'),
(12, 4, 3, 'Międzynarodowe Targi "EKWATEK 2014" w Moskwie', 'Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Wodnych Technologii „EKWATEK 2014” w dniach 03-06 czerwca 2014r. w ramach 11-go Międzynarodowego Forum EKWATEK w Moskwie...', '<p>Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Wodnych Technologii „EKWATEK 2014” w dniach 03-06 czerwca 2014r. w ramach 11-go Międzynarodowego Forum EKWATEK w Moskwie.</p>\n\n<p>Na stoisku firmy mogli Państwo zapoznać się z nowościami oraz udoskonalonymi wersjami naszych produktów. Mamy nadzieję, że udzielona przez naszych specjalistów informacja była wyczerpująca.</p>\n\n<p>Serdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko!</p>\n', 'Międzynarodowe Targi "EKWATEK 2014" w Moskwie', '', 'Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Wodnych Technologii „EKWATEK 2014” w dniach 03-'),
(13, 5, 1, 'XIX Międzynarodowe Targi Aqua-Therm Moscow 2015', 'W dniach 3-6 lutego 2015 odbędą się XIX Międzynarodowe Targi Aqua-Therm Moscow w Centrum Wystawienniczym (МVC) „Кrokus Ekspo” w Moskwie...', '<p>Szanowni Państwo!</p>\n\n<p>W dniach 3-6.02.2015 odbędą się XIX Międzynarodowe Targi Aqua-Therm Moscow w Centrum Wystawienniczym (МVC) „Кrokus Ekspo” w Moskwie.</p>\n\n<p>Targi Aqua-Therm Moscow są znaczącym wydarzeniem branżowym w całej Europie, jak również największą platformą spotkań biznesowych, miejscem prezentacji najnowszych produktów z zakresu armatury do instalacji przemysłowych dla sektora wodno-kanalizacyjnego – ciepłowniczego(WOD-KAN-CO), wyposażenia sanitarnego tak krajowych jak i zagranicznych producentów.</p>\n\n<p>Podczas targów goście będą mogli zapoznać się z najnowszymi produktami firmy, udoskonalonymi wersjami urządzeń już istniejących na rynku oraz otrzymać niezbędną informację dotyczącą całej oferty produkcyjnej Dendor.</p>\n\n<p>Stoisko firmy znajduje się w pawilonie 3, sala Nr 13, stoisko А213.</p>\n\n<p>Adres: Moskwa, m.Krasnogorsk 16, skr.poczt.92, MVC „Krokus Ekspo”\nSerdecznie zapraszamy!</p>\n', 'XIX Międzynarodowe Targi Aqua-Therm Moscow 2015', '', 'W dniach 3-6 lutego 2015 odbędą się XIX Międzynarodowe Targi Aqua-Therm Moscow w Centrum Wystawienniczym (МVC) „'),
(14, 5, 2, 'XIX Międzynarodowe Targi Aqua-Therm Moscow 2015', 'W dniach 3-6 lutego 2015 odbędą się XIX Międzynarodowe Targi Aqua-Therm Moscow w Centrum Wystawienniczym (МVC) „Кrokus Ekspo” w Moskwie...', '<p>Szanowni Państwo!</p>\n\n<p>W dniach 3-6.02.2015 odbędą się XIX Międzynarodowe Targi Aqua-Therm Moscow w Centrum Wystawienniczym (МVC) „Кrokus Ekspo” w Moskwie.</p>\n\n<p>Targi Aqua-Therm Moscow są znaczącym wydarzeniem branżowym w całej Europie, jak również największą platformą spotkań biznesowych, miejscem prezentacji najnowszych produktów z zakresu armatury do instalacji przemysłowych dla sektora wodno-kanalizacyjnego – ciepłowniczego(WOD-KAN-CO), wyposażenia sanitarnego tak krajowych jak i zagranicznych producentów.</p>\n\n<p>Podczas targów goście będą mogli zapoznać się z najnowszymi produktami firmy, udoskonalonymi wersjami urządzeń już istniejących na rynku oraz otrzymać niezbędną informację dotyczącą całej oferty produkcyjnej Dendor.</p>\n\n<p>Stoisko firmy znajduje się w pawilonie 3, sala Nr 13, stoisko А213.</p>\n\n<p>Adres: Moskwa, m.Krasnogorsk 16, skr.poczt.92, MVC „Krokus Ekspo”\nSerdecznie zapraszamy!</p>\n', 'XIX Międzynarodowe Targi Aqua-Therm Moscow 2015', '', 'W dniach 3-6 lutego 2015 odbędą się XIX Międzynarodowe Targi Aqua-Therm Moscow w Centrum Wystawienniczym (МVC) „'),
(15, 5, 3, 'XIX Międzynarodowe Targi Aqua-Therm Moscow 2015', 'W dniach 3-6 lutego 2015 odbędą się XIX Międzynarodowe Targi Aqua-Therm Moscow w Centrum Wystawienniczym (МVC) „Кrokus Ekspo” w Moskwie...', '<p>Szanowni Państwo!</p>\n\n<p>W dniach 3-6.02.2015 odbędą się XIX Międzynarodowe Targi Aqua-Therm Moscow w Centrum Wystawienniczym (МVC) „Кrokus Ekspo” w Moskwie.</p>\n\n<p>Targi Aqua-Therm Moscow są znaczącym wydarzeniem branżowym w całej Europie, jak również największą platformą spotkań biznesowych, miejscem prezentacji najnowszych produktów z zakresu armatury do instalacji przemysłowych dla sektora wodno-kanalizacyjnego – ciepłowniczego(WOD-KAN-CO), wyposażenia sanitarnego tak krajowych jak i zagranicznych producentów.</p>\n\n<p>Podczas targów goście będą mogli zapoznać się z najnowszymi produktami firmy, udoskonalonymi wersjami urządzeń już istniejących na rynku oraz otrzymać niezbędną informację dotyczącą całej oferty produkcyjnej Dendor.</p>\n\n<p>Stoisko firmy znajduje się w pawilonie 3, sala Nr 13, stoisko А213.</p>\n\n<p>Adres: Moskwa, m.Krasnogorsk 16, skr.poczt.92, MVC „Krokus Ekspo”\nSerdecznie zapraszamy!</p>\n', 'XIX Międzynarodowe Targi Aqua-Therm Moscow 2015', '', 'W dniach 3-6 lutego 2015 odbędą się XIX Międzynarodowe Targi Aqua-Therm Moscow w Centrum Wystawienniczym (МVC) „'),
(16, 6, 1, 'Dobór armatury instalacyjnej', 'Dobór armatury instalacyjnej jest bardzo ważnym etapem opracowania projektu, ponieważ od jakości i właściwego jej wyboru zależy skuteczność i funkcjonalność sieci instalacyjnych. Czym zatem dokładnie jest armatura instalacyjna? Są to różne urządzenia i akcesoria, które pozwalają w sposób właściwy zorganizować przepływające czynniki robocze (ciecze lub gazy) stosowane w przemyśle lub gospodarce komunalnej...', '<p>Dobór armatury instalacyjnej jest bardzo ważnym etapem opracowania projektu, ponieważ od jakości i właściwego jej wyboru zależy skuteczność i funkcjonalność sieci instalacyjnych. Czym zatem dokładnie jest armatura instalacyjna? Są to różne urządzenia i akcesoria, które pozwalają w sposób właściwy zorganizować przepływające czynniki robocze (ciecze lub gazy) stosowane w przemyśle lub gospodarce komunalnej.</p>\n\n<p>Jej montaż może być dokonywany na rurociągach, w kotłach, stacjach uzdatniania wody oraz instalacjach: wodociągowo-kanalizacyjnych, centralnego ogrzewania oraz przemysłowych, których zadaniem jest mieszanie, przekierowywanie, odprowadzanie bądź separacja cieczy, proszków lub granulatów. Ponadto wiele jej rodzajów jest przeznaczonych do zabezpieczenia instalacji przed zbyt wysokim ciśnieniem. Sądząc po imponującej liście stosowanych urządzeń można stwierdzić, że wybór armatury zaporowo-odcinającej jest zadaniem niezwykle odpowiedzialnym i trzeba być dobrze zorientowanym w całym asortymencie, aby dokonać właściwego wyboru.</p>\n\n<p>Jednym z najbardziej rozpowszechnionych typów armatury instalacyjnej są regulatory przepływu. Za tym pojęciem kryją się zawory, kurki i zasuwy. Praktycznie każdy miał w swoim życiu styczność z tymi urządzeniami i wie do czego one służą. Niemniej jednak sztuką jest wybrać odpowiedni zawór lub zasuwę.</p>\n\n<p>Najprostszym i najbardziej znanym regulatorem jest kurek kulowy - często nazywany błędnie zaworem kulowym, który kontroluje siłę przepływu strumienia cieczy lub gazu w instalacji. O popularności tych urządzeń zadecydowały ich doskonałe dane techniczne. Większość firm budowlanych preferuje właśnie ten typ kurków ze względu na łatwość montażu, niezawodność, dostosowanie do wielu różnych systemów. Przy wyborze konkretnego kurka powinno się mieć na względzie następujące parametry systemu: skład chemiczny czynnika roboczego oraz DN i PN.</p>\n\n<p>Innym popularnym rozwiązaniem w instalacjach są przepustnice zwrotne. Doskonale nadają się do instalacji niskociśnieniowych o dużej średnicy. Znajdują szerokie zastosowanie ze względu na niskie koszty montażu oraz swoją budowę umożliwiającą szczelność odcinania w obu kierunkach przepływu. Przy doborze przepustnicy powinno się uwzględniać zakres temperatur czynnika tak, aby materiał stosowany w uszczelnieniu był w stanie ją wytrzymać. Na ogół w charakterze uszczelnień jest stosowany EPDM, stal nierdzewna oraz specjalne stopy metali.</p>\n\n<p>W sytuacji, gdy temperatura płynu lub pary jest wysoka o wiele skuteczniejszym rozwiązaniem będą specjalne zasuwy o odpowiedniej średnicy.</p>\n\n<p>Ten typ armatury wykonuje się z różnych stopów i ma on szeroki zakres zastosowań łącznie z instalacjami, w których przepływ czynnika roboczego odbywa się pod wysokim ciśnieniem. Zasuwy zazwyczaj nie mają możliwości regulowania siły strumienia, jedynie pozwalają przełączać na pozycję: otwarte/zamknięte. Zdecydowana większość zasuw jest sterowana ręcznie, jednak są też modele, w których stosuje się napęd elektryczny. W przypadku zachowania bezpieczeństwa instalacji ważnym elementem są zawory zwrotne. Zapewniają one pełną ochronę przed możliwością pojawienia się przepływu wstecznego - na przykład w awarii pompy lub uszkodzeniu instalacji. W zależności od ciśnienia pracy, temperatury składu</p>\n', 'Dobór armatury instalacyjnej', '', 'Dobór armatury instalacyjnej jest bardzo ważnym etapem opracowania projektu, ponieważ od jakości i właściwego jej '),
(17, 6, 2, 'Dobór armatury instalacyjnej', 'Dobór armatury instalacyjnej jest bardzo ważnym etapem opracowania projektu, ponieważ od jakości i właściwego jej wyboru zależy skuteczność i funkcjonalność sieci instalacyjnych. Czym zatem dokładnie jest armatura instalacyjna? Są to różne urządzenia i akcesoria, które pozwalają w sposób właściwy zorganizować przepływające czynniki robocze (ciecze lub gazy) stosowane w przemyśle lub gospodarce komunalnej...', '<p>Dobór armatury instalacyjnej jest bardzo ważnym etapem opracowania projektu, ponieważ od jakości i właściwego jej wyboru zależy skuteczność i funkcjonalność sieci instalacyjnych. Czym zatem dokładnie jest armatura instalacyjna? Są to różne urządzenia i akcesoria, które pozwalają w sposób właściwy zorganizować przepływające czynniki robocze (ciecze lub gazy) stosowane w przemyśle lub gospodarce komunalnej.</p>\n\n<p>Jej montaż może być dokonywany na rurociągach, w kotłach, stacjach uzdatniania wody oraz instalacjach: wodociągowo-kanalizacyjnych, centralnego ogrzewania oraz przemysłowych, których zadaniem jest mieszanie, przekierowywanie, odprowadzanie bądź separacja cieczy, proszków lub granulatów. Ponadto wiele jej rodzajów jest przeznaczonych do zabezpieczenia instalacji przed zbyt wysokim ciśnieniem. Sądząc po imponującej liście stosowanych urządzeń można stwierdzić, że wybór armatury zaporowo-odcinającej jest zadaniem niezwykle odpowiedzialnym i trzeba być dobrze zorientowanym w całym asortymencie, aby dokonać właściwego wyboru.</p>\n\n<p>Jednym z najbardziej rozpowszechnionych typów armatury instalacyjnej są regulatory przepływu. Za tym pojęciem kryją się zawory, kurki i zasuwy. Praktycznie każdy miał w swoim życiu styczność z tymi urządzeniami i wie do czego one służą. Niemniej jednak sztuką jest wybrać odpowiedni zawór lub zasuwę.</p>\n\n<p>Najprostszym i najbardziej znanym regulatorem jest kurek kulowy - często nazywany błędnie zaworem kulowym, który kontroluje siłę przepływu strumienia cieczy lub gazu w instalacji. O popularności tych urządzeń zadecydowały ich doskonałe dane techniczne. Większość firm budowlanych preferuje właśnie ten typ kurków ze względu na łatwość montażu, niezawodność, dostosowanie do wielu różnych systemów. Przy wyborze konkretnego kurka powinno się mieć na względzie następujące parametry systemu: skład chemiczny czynnika roboczego oraz DN i PN.</p>\n\n<p>Innym popularnym rozwiązaniem w instalacjach są przepustnice zwrotne. Doskonale nadają się do instalacji niskociśnieniowych o dużej średnicy. Znajdują szerokie zastosowanie ze względu na niskie koszty montażu oraz swoją budowę umożliwiającą szczelność odcinania w obu kierunkach przepływu. Przy doborze przepustnicy powinno się uwzględniać zakres temperatur czynnika tak, aby materiał stosowany w uszczelnieniu był w stanie ją wytrzymać. Na ogół w charakterze uszczelnień jest stosowany EPDM, stal nierdzewna oraz specjalne stopy metali.</p>\n\n<p>W sytuacji, gdy temperatura płynu lub pary jest wysoka o wiele skuteczniejszym rozwiązaniem będą specjalne zasuwy o odpowiedniej średnicy.</p>\n\n<p>Ten typ armatury wykonuje się z różnych stopów i ma on szeroki zakres zastosowań łącznie z instalacjami, w których przepływ czynnika roboczego odbywa się pod wysokim ciśnieniem. Zasuwy zazwyczaj nie mają możliwości regulowania siły strumienia, jedynie pozwalają przełączać na pozycję: otwarte/zamknięte. Zdecydowana większość zasuw jest sterowana ręcznie, jednak są też modele, w których stosuje się napęd elektryczny. W przypadku zachowania bezpieczeństwa instalacji ważnym elementem są zawory zwrotne. Zapewniają one pełną ochronę przed możliwością pojawienia się przepływu wstecznego - na przykład w awarii pompy lub uszkodzeniu instalacji. W zależności od ciśnienia pracy, temperatury składu</p>\n', 'Dobór armatury instalacyjnej', '', 'Dobór armatury instalacyjnej jest bardzo ważnym etapem opracowania projektu, ponieważ od jakości i właściwego jej '),
(18, 6, 3, 'Dobór armatury instalacyjnej', 'Dobór armatury instalacyjnej jest bardzo ważnym etapem opracowania projektu, ponieważ od jakości i właściwego jej wyboru zależy skuteczność i funkcjonalność sieci instalacyjnych. Czym zatem dokładnie jest armatura instalacyjna? Są to różne urządzenia i akcesoria, które pozwalają w sposób właściwy zorganizować przepływające czynniki robocze (ciecze lub gazy) stosowane w przemyśle lub gospodarce komunalnej...', '<p>Dobór armatury instalacyjnej jest bardzo ważnym etapem opracowania projektu, ponieważ od jakości i właściwego jej wyboru zależy skuteczność i funkcjonalność sieci instalacyjnych. Czym zatem dokładnie jest armatura instalacyjna? Są to różne urządzenia i akcesoria, które pozwalają w sposób właściwy zorganizować przepływające czynniki robocze (ciecze lub gazy) stosowane w przemyśle lub gospodarce komunalnej.</p>\n\n<p>Jej montaż może być dokonywany na rurociągach, w kotłach, stacjach uzdatniania wody oraz instalacjach: wodociągowo-kanalizacyjnych, centralnego ogrzewania oraz przemysłowych, których zadaniem jest mieszanie, przekierowywanie, odprowadzanie bądź separacja cieczy, proszków lub granulatów. Ponadto wiele jej rodzajów jest przeznaczonych do zabezpieczenia instalacji przed zbyt wysokim ciśnieniem. Sądząc po imponującej liście stosowanych urządzeń można stwierdzić, że wybór armatury zaporowo-odcinającej jest zadaniem niezwykle odpowiedzialnym i trzeba być dobrze zorientowanym w całym asortymencie, aby dokonać właściwego wyboru.</p>\n\n<p>Jednym z najbardziej rozpowszechnionych typów armatury instalacyjnej są regulatory przepływu. Za tym pojęciem kryją się zawory, kurki i zasuwy. Praktycznie każdy miał w swoim życiu styczność z tymi urządzeniami i wie do czego one służą. Niemniej jednak sztuką jest wybrać odpowiedni zawór lub zasuwę.</p>\n\n<p>Najprostszym i najbardziej znanym regulatorem jest kurek kulowy - często nazywany błędnie zaworem kulowym, który kontroluje siłę przepływu strumienia cieczy lub gazu w instalacji. O popularności tych urządzeń zadecydowały ich doskonałe dane techniczne. Większość firm budowlanych preferuje właśnie ten typ kurków ze względu na łatwość montażu, niezawodność, dostosowanie do wielu różnych systemów. Przy wyborze konkretnego kurka powinno się mieć na względzie następujące parametry systemu: skład chemiczny czynnika roboczego oraz DN i PN.</p>\n\n<p>Innym popularnym rozwiązaniem w instalacjach są przepustnice zwrotne. Doskonale nadają się do instalacji niskociśnieniowych o dużej średnicy. Znajdują szerokie zastosowanie ze względu na niskie koszty montażu oraz swoją budowę umożliwiającą szczelność odcinania w obu kierunkach przepływu. Przy doborze przepustnicy powinno się uwzględniać zakres temperatur czynnika tak, aby materiał stosowany w uszczelnieniu był w stanie ją wytrzymać. Na ogół w charakterze uszczelnień jest stosowany EPDM, stal nierdzewna oraz specjalne stopy metali.</p>\n\n<p>W sytuacji, gdy temperatura płynu lub pary jest wysoka o wiele skuteczniejszym rozwiązaniem będą specjalne zasuwy o odpowiedniej średnicy.</p>\n\n<p>Ten typ armatury wykonuje się z różnych stopów i ma on szeroki zakres zastosowań łącznie z instalacjami, w których przepływ czynnika roboczego odbywa się pod wysokim ciśnieniem. Zasuwy zazwyczaj nie mają możliwości regulowania siły strumienia, jedynie pozwalają przełączać na pozycję: otwarte/zamknięte. Zdecydowana większość zasuw jest sterowana ręcznie, jednak są też modele, w których stosuje się napęd elektryczny. W przypadku zachowania bezpieczeństwa instalacji ważnym elementem są zawory zwrotne. Zapewniają one pełną ochronę przed możliwością pojawienia się przepływu wstecznego - na przykład w awarii pompy lub uszkodzeniu instalacji. W zależności od ciśnienia pracy, temperatury składu</p>\n', 'Dobór armatury instalacyjnej', '', 'Dobór armatury instalacyjnej jest bardzo ważnym etapem opracowania projektu, ponieważ od jakości i właściwego jej '),
(19, 7, 1, 'Zarys historyczny armatury instalacyjnej', 'Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu...\r\n\r\n', '<p>Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu. Odpowiedź na pytanie, dlaczego tak ważną kwestią jest dla nas armatura instalacyjna jest już jasna, ale nasuwa się nam jeszcze jedna myśl: gdzie i przez kogo została ona wynaleziona? Poniżej postaramy się na to odpowiedzieć.</p>\n\n<p>Starożytni ludzie obserwowali bobry budujące swoje tamy na rzekach; sami też używali pni drzew, gałęzi, gęstej trawy oraz głazów do regulowania przepływu wody. Systemy do nawadniania upraw i zapewnienia wody dla swoich osiedli wynaleźli Egipcjanie i Grecy, jednak to Rzymianie zaczęli stosować systemy kanałów, które różniły się znacznie od innych. Są powody, aby przypuszczać, że podpatrzyli je w jednym z podbitych krajów. W każdym razie to właśnie oni kontynuowali rozwój tej technologii poprzez zastosowanie kurków wykonanych z brązu - pozwalały one doprowadzać wodę do domów i innych obiektów.</p>\n\n<p>Następny poziom rozwoju armatura instalacyjna osiągnęła dopiero podczas rewolucji przemysłowej. Para wodna stała się kluczowym czynnikiem mocy, której przetwarzanie pozwoliło ludzkości na zastąpienie pracy rąk robotników i zwierząt pociągowych maszynami przemysłowymi. Wraz z opatentowaniem silnika parowego armatura instalacyjna umożliwiła pompowanie wody z kopalni. Rozpoczął się szybki rozwój takich branż jak: górnictwo, rolnictwo, włókiennictwo, metalurgia, transport i wiele innych. Gospodarka przeżywała bezprecedensowy wzrost, polepszała się też sytuacja materialna zwykłych ludzi. Swój rozkwit przeżywała również armatura instalacyjna – na potrzeby przemysłu pojawiały się jej nowe rodzaje.</p>\n\n<p>Współcześnie mamy do czynienia z pełnym zakresem urządzeń do instalacji i przemysłu. Wykonywane są one z takich materiałów jak PVC, stal nierdzewna, stal węglowa, żeliwo, brąz, mosiądz itp. Wymiary armatury są zróżnicowane, są mniejsze lub większe. Ciekawostką jest fakt, że największy zawór na świecie ma wagę 102 ton! W zależności od dziedziny zastosowania jest określany dany typ urządzenia, za którego pomocą uzyskuje się najlepsze wyniki.</p>\n\n<p>Decydując się na wybór marki Dendor mogą być Państwo absolutnie pewni, że dokonali właściwego wyboru. Nasi wykwalifikowani specjaliści chętnie wyjaśnią Państwu wszystkie aspekty techniczne naszej armatury instalacyjnej i pomogą w jej doborze tak, aby w pełni spełnić Państwa oczekiwania.</p>\n', 'Zarys historyczny armatury instalacyjnej', '', 'Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla'),
(20, 7, 2, 'Zarys historyczny armatury instalacyjnej', 'Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu...\r\n\r\n', '<p>Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu. Odpowiedź na pytanie, dlaczego tak ważną kwestią jest dla nas armatura instalacyjna jest już jasna, ale nasuwa się nam jeszcze jedna myśl: gdzie i przez kogo została ona wynaleziona? Poniżej postaramy się na to odpowiedzieć.</p>\n\n<p>Starożytni ludzie obserwowali bobry budujące swoje tamy na rzekach; sami też używali pni drzew, gałęzi, gęstej trawy oraz głazów do regulowania przepływu wody. Systemy do nawadniania upraw i zapewnienia wody dla swoich osiedli wynaleźli Egipcjanie i Grecy, jednak to Rzymianie zaczęli stosować systemy kanałów, które różniły się znacznie od innych. Są powody, aby przypuszczać, że podpatrzyli je w jednym z podbitych krajów. W każdym razie to właśnie oni kontynuowali rozwój tej technologii poprzez zastosowanie kurków wykonanych z brązu - pozwalały one doprowadzać wodę do domów i innych obiektów.</p>\n\n<p>Następny poziom rozwoju armatura instalacyjna osiągnęła dopiero podczas rewolucji przemysłowej. Para wodna stała się kluczowym czynnikiem mocy, której przetwarzanie pozwoliło ludzkości na zastąpienie pracy rąk robotników i zwierząt pociągowych maszynami przemysłowymi. Wraz z opatentowaniem silnika parowego armatura instalacyjna umożliwiła pompowanie wody z kopalni. Rozpoczął się szybki rozwój takich branż jak: górnictwo, rolnictwo, włókiennictwo, metalurgia, transport i wiele innych. Gospodarka przeżywała bezprecedensowy wzrost, polepszała się też sytuacja materialna zwykłych ludzi. Swój rozkwit przeżywała również armatura instalacyjna – na potrzeby przemysłu pojawiały się jej nowe rodzaje.</p>\n\n<p>Współcześnie mamy do czynienia z pełnym zakresem urządzeń do instalacji i przemysłu. Wykonywane są one z takich materiałów jak PVC, stal nierdzewna, stal węglowa, żeliwo, brąz, mosiądz itp. Wymiary armatury są zróżnicowane, są mniejsze lub większe. Ciekawostką jest fakt, że największy zawór na świecie ma wagę 102 ton! W zależności od dziedziny zastosowania jest określany dany typ urządzenia, za którego pomocą uzyskuje się najlepsze wyniki.</p>\n\n<p>Decydując się na wybór marki Dendor mogą być Państwo absolutnie pewni, że dokonali właściwego wyboru. Nasi wykwalifikowani specjaliści chętnie wyjaśnią Państwu wszystkie aspekty techniczne naszej armatury instalacyjnej i pomogą w jej doborze tak, aby w pełni spełnić Państwa oczekiwania.</p>\n', 'Zarys historyczny armatury instalacyjnej', '', 'Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla'),
(21, 7, 3, 'Zarys historyczny armatury instalacyjnej', 'Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu...\r\n\r\n', '<p>Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu. Odpowiedź na pytanie, dlaczego tak ważną kwestią jest dla nas armatura instalacyjna jest już jasna, ale nasuwa się nam jeszcze jedna myśl: gdzie i przez kogo została ona wynaleziona? Poniżej postaramy się na to odpowiedzieć.</p>\n\n<p>Starożytni ludzie obserwowali bobry budujące swoje tamy na rzekach; sami też używali pni drzew, gałęzi, gęstej trawy oraz głazów do regulowania przepływu wody. Systemy do nawadniania upraw i zapewnienia wody dla swoich osiedli wynaleźli Egipcjanie i Grecy, jednak to Rzymianie zaczęli stosować systemy kanałów, które różniły się znacznie od innych. Są powody, aby przypuszczać, że podpatrzyli je w jednym z podbitych krajów. W każdym razie to właśnie oni kontynuowali rozwój tej technologii poprzez zastosowanie kurków wykonanych z brązu - pozwalały one doprowadzać wodę do domów i innych obiektów.</p>\n\n<p>Następny poziom rozwoju armatura instalacyjna osiągnęła dopiero podczas rewolucji przemysłowej. Para wodna stała się kluczowym czynnikiem mocy, której przetwarzanie pozwoliło ludzkości na zastąpienie pracy rąk robotników i zwierząt pociągowych maszynami przemysłowymi. Wraz z opatentowaniem silnika parowego armatura instalacyjna umożliwiła pompowanie wody z kopalni. Rozpoczął się szybki rozwój takich branż jak: górnictwo, rolnictwo, włókiennictwo, metalurgia, transport i wiele innych. Gospodarka przeżywała bezprecedensowy wzrost, polepszała się też sytuacja materialna zwykłych ludzi. Swój rozkwit przeżywała również armatura instalacyjna – na potrzeby przemysłu pojawiały się jej nowe rodzaje.</p>\n\n<p>Współcześnie mamy do czynienia z pełnym zakresem urządzeń do instalacji i przemysłu. Wykonywane są one z takich materiałów jak PVC, stal nierdzewna, stal węglowa, żeliwo, brąz, mosiądz itp. Wymiary armatury są zróżnicowane, są mniejsze lub większe. Ciekawostką jest fakt, że największy zawór na świecie ma wagę 102 ton! W zależności od dziedziny zastosowania jest określany dany typ urządzenia, za którego pomocą uzyskuje się najlepsze wyniki.</p>\n\n<p>Decydując się na wybór marki Dendor mogą być Państwo absolutnie pewni, że dokonali właściwego wyboru. Nasi wykwalifikowani specjaliści chętnie wyjaśnią Państwu wszystkie aspekty techniczne naszej armatury instalacyjnej i pomogą w jej doborze tak, aby w pełni spełnić Państwa oczekiwania.</p>\n', 'Zarys historyczny armatury instalacyjnej', '', 'Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla');

-- --------------------------------------------------------

--
-- Структура таблицы `Pages`
--

CREATE TABLE IF NOT EXISTS `Pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT '',
  `layout` varchar(255) DEFAULT '',
  `url` varchar(255) DEFAULT '',
  `created` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT '',
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `Pages`
--

INSERT INTO `Pages` (`id`, `category`, `layout`, `url`, `created`, `status`, `image`) VALUES
(1, 'home', '', 'home', '2015-02-10 15:49:49', 'published', 'logo-blue193.png');

-- --------------------------------------------------------

--
-- Структура таблицы `PageTranslate`
--

CREATE TABLE IF NOT EXISTS `PageTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT '',
  `short_description` text,
  `full_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `PageTranslate`
--

INSERT INTO `PageTranslate` (`id`, `object_id`, `language_id`, `title`, `short_description`, `full_description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 1, 'home', '', '<p><span class="h1">D</span>ziałamy na rynku materiałów instalacyjnych w charakterze producenta i dostawcy urządzeń armatury przemysłowej.</p>\n\n<p><span class="h1">E</span>lastycznie podchodzimy do potrzeb naszych Kontrahentów współpracując z dużymi i małymi przedsiębiorstwami.</p>\n\n<p><span class="h1">N</span>adążamy za wdrażaniem nowych rozwiązań i materiałów zapewniających spełnianie najwyższych europejskich standardów technologicznych.</p>\n\n<p><span class="h1">D</span>ążymy do doskonałości zarówno w sferze obsługi Klienta, jak i w sferze jakości naszych wyrobów stosując nadzór na wszystkich etapach produkcji.</p>\n\n<p><span class="h1">O</span>ferujemy bezpieczne dla środowiska i energooszczędne urządzenia m.in. dla przemysłu papierniczego, cukierniczego, spożywczego, stoczniowego.</p>\n\n<p><span class="h1">R</span>ealizujemy zamówienia w sposób rzetelny i kreatywny przyczyniając się do sukcesu Państwa firmy i dając obu stronom efekt synergii.</p>\n\n<p>Zapraszamy Państwa do zapoznania się z naszą ofertą!</p>\n', 'home', '', ''),
(2, 1, 2, 'home', '', '<p><span class="h1">D</span>ziałamy na rynku materiałów instalacyjnych w charakterze producenta i dostawcy urządzeń armatury przemysłowej.</p>\n\n<p><span class="h1">E</span>lastycznie podchodzimy do potrzeb naszych Kontrahentów współpracując z dużymi i małymi przedsiębiorstwami.</p>\n\n<p><span class="h1">N</span>adążamy za wdrażaniem nowych rozwiązań i materiałów zapewniających spełnianie najwyższych europejskich standardów technologicznych.</p>\n\n<p><span class="h1">D</span>ążymy do doskonałości zarówno w sferze obsługi Klienta, jak i w sferze jakości naszych wyrobów stosując nadzór na wszystkich etapach produkcji.</p>\n\n<p><span class="h1">O</span>ferujemy bezpieczne dla środowiska i energooszczędne urządzenia m.in. dla przemysłu papierniczego, cukierniczego, spożywczego, stoczniowego.</p>\n\n<p><span class="h1">R</span>ealizujemy zamówienia w sposób rzetelny i kreatywny przyczyniając się do sukcesu Państwa firmy i dając obu stronom efekt synergii.</p>\n\n<p>Zapraszamy Państwa do zapoznania się z naszą ofertą!</p>\n', 'home', '', ''),
(3, 1, 3, 'home', '', '<p>Działamy na rynku materiałów instalacyjnych w charakterze producenta i dostawcy urządzeń armatury przemysłowej.</p>\n\n<p>Elastycznie podchodzimy do potrzeb naszych Kontrahentów współpracując z dużymi i małymi przedsiębiorstwami.</p>\n\n<p>Nadążamy za wdrażaniem nowych rozwiązań i materiałów zapewniających spełnianie najwyższych europejskich standardów technologicznych.</p>\n\n<p>Dążymy do doskonałości zarówno w sferze obsługi Klienta, jak i w sferze jakości naszych wyrobów stosując nadzór na wszystkich etapach produkcji.</p>\n\n<p>Oferujemy bezpieczne dla środowiska i energooszczędne urządzenia m.in. dla przemysłu papierniczego, cukierniczego, spożywczego, stoczniowego.</p>\n\n<p>Realizujemy zamówienia w sposób rzetelny i kreatywny przyczyniając się do sukcesu Państwa firmy i dając obu stronom efekt synergii.</p>\n\n<p>Zapraszamy Państwa do zapoznania się z naszą ofertą!</p>\n', 'home', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `Property`
--

CREATE TABLE IF NOT EXISTS `Property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `system_name` varchar(255) DEFAULT '',
  `type` tinyint(4) DEFAULT '1',
  `inshort` tinyint(1) DEFAULT '1',
  `required` tinyint(1) DEFAULT '0',
  `sorting` smallint(6) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `Property`
--

INSERT INTO `Property` (`id`, `system_name`, `type`, `inshort`, `required`, `sorting`, `deleted`, `name`, `description`) VALUES
(1, 'dn', 1, 1, 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `PropertyValue`
--

CREATE TABLE IF NOT EXISTS `PropertyValue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `property_id` (`property_id`),
  KEY `entity_id` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_slidr` varchar(6) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `slider`
--

INSERT INTO `slider` (`id`, `data_slidr`, `img`, `link`, `active`) VALUES
(1, 'one', 'slide1.png', 'about', 1),
(2, 'two', 'slide2.png', 'production', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `slider_translates`
--

CREATE TABLE IF NOT EXISTS `slider_translates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` text,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `slider_translates`
--

INSERT INTO `slider_translates` (`id`, `object_id`, `language_id`, `name`, `text`) VALUES
(1, 1, 1, 'Przepustnice zwrotne', 'Oferujemy przepustnice zwrotne wyprodukowane ze stali, żeliwa sferoidalnego, PVC. Kołnierzowe, bezkołnierzowe, do wspawania, mimośrodowe w zakresie średnic DN – od 32 do 2000.'),
(2, 1, 2, 'Дисковые поворотные затворы', 'Мы предлагаем дисковые поворотные затворы промышленного производства из стали, ковкого чугуна, ПВХ, фланцевые, межфланцевые, приварные, с эксцентриситетом, размером DN от 32 до 2000'),
(3, 1, 3, 'Butterfly valves', 'We offer Butterfly valves industrial production of steel, ductile iron, PVC, flange, flanged, welded, with eccentricity, size DN 32 to 2000.'),
(4, 2, 1, 'Zasuwy klinowe z uszczelnieniem gumowym', 'Oferujemy zasuwy klinowe z uszczelnieniem gumowym wykonane z żeliwa sferoidalnego i stali,  pod napęd,  z trzpieniem wznoszącym  z przekładnią, pod kółko i obudowę  w szerokim zakresie wymiarów i ciśnień. '),
(5, 2, 2, 'Задвижки с обрезиненным клином', 'Мы предлагаем клиновые задвижки выполненные из чугуна и стали, под электропривод, с выдвижным штоком и редуктором, разнообразных размеров и под разное давление.\r\n'),
(6, 2, 3, 'Valves with rubber-wedge', 'We offer gate valves made of cast iron and steel for electric, rising stem and gear, a variety of sizes and under different pressures.');

-- --------------------------------------------------------

--
-- Структура таблицы `SystemLanguage`
--

CREATE TABLE IF NOT EXISTS `SystemLanguage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `code` varchar(25) DEFAULT '',
  `locale` varchar(100) DEFAULT '',
  `default` tinyint(1) DEFAULT NULL,
  `flag_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `SystemLanguage`
--

INSERT INTO `SystemLanguage` (`id`, `name`, `code`, `locale`, `default`, `flag_name`) VALUES
(1, 'Poland', 'pl', 'pl_PL', 1, 'pl.png'),
(2, 'Русский', 'ru', 'ru_RU', 0, 'ru.png'),
(3, 'English', 'en', 'en_US', 0, 'gb.png');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `CatalogGroupTranslate`
--
ALTER TABLE `CatalogGroupTranslate`
  ADD CONSTRAINT `catalog_group_translate` FOREIGN KEY (`object_id`) REFERENCES `CatalogGroup` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `CatalogItemsTranslate`
--
ALTER TABLE `CatalogItemsTranslate`
  ADD CONSTRAINT `items_translate` FOREIGN KEY (`object_id`) REFERENCES `CatalogItems` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `NewsCategoryTranslate`
--
ALTER TABLE `NewsCategoryTranslate`
  ADD CONSTRAINT `news_category_translate` FOREIGN KEY (`object_id`) REFERENCES `NewsCategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `NewsTranslate`
--
ALTER TABLE `NewsTranslate`
  ADD CONSTRAINT `news_translate` FOREIGN KEY (`object_id`) REFERENCES `News` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `PropertyValue`
--
ALTER TABLE `PropertyValue`
  ADD CONSTRAINT `property_value` FOREIGN KEY (`property_id`) REFERENCES `Property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `slider_translates`
--
ALTER TABLE `slider_translates`
  ADD CONSTRAINT `slider_translate_ibfk_1` FOREIGN KEY (`object_id`) REFERENCES `slider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
