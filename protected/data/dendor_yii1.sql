-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 06 2015 г., 16:08
-- Версия сервера: 5.5.41-log
-- Версия PHP: 5.4.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `dendor_yii1`
--
CREATE DATABASE IF NOT EXISTS `dendor_yii1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dendor_yii1`;

-- --------------------------------------------------------

--
-- Структура таблицы `News`
--

DROP TABLE IF EXISTS `News`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `News`
--

INSERT INTO `News` (`id`, `category_id`, `url`, `created`, `updated`, `publish_date`, `status`, `layout`, `image`) VALUES
(1, 2, 'exhibition-in-spb', '2015-02-04 14:12:58', '2015-02-04 14:12:58', '2015-02-04 14:12:58', 'published', '', ''),
(2, 2, 'exhibition-in-poland', '2015-02-05 11:17:32', '2015-02-05 11:17:32', '2015-02-05 11:17:32', 'published', '', ''),
(3, 1, 'principle-of-operation-of-electromagnetic-valves', '2015-02-05 11:44:02', '2015-02-05 11:44:02', '2015-02-05 11:44:02', 'published', '', 'principle_operation_electromagnetic_valves.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `NewsCategory`
--

DROP TABLE IF EXISTS `NewsCategory`;
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

DROP TABLE IF EXISTS `NewsCategoryTranslate`;
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
(1, 2, 1, 'exhibitions', 'exhibitions', '', '', ''),
(2, 2, 2, 'Выставки', 'article', 'exhibitions', 'article', ''),
(3, 2, 3, 'exhibitions', 'article', 'exhibitions', 'article', ''),
(4, 1, 1, 'article', NULL, NULL, NULL, NULL),
(5, 1, 2, 'Статьи', '', 'Статьи', '', ''),
(6, 1, 3, 'article', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `NewsTranslate`
--

DROP TABLE IF EXISTS `NewsTranslate`;
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `NewsTranslate`
--

INSERT INTO `NewsTranslate` (`id`, `object_id`, `language_id`, `title`, `short_description`, `full_description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 1, 'Międzynarodowe Targi "Aqua-Therm" w Sankt Petersburgu', 'Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, Klimatyzacyjnych, Wentylacyjnych oraz urządzeń do basenów „Aqua-Therm St.Petersburg 2014” w dniach 09-12 kwietnia 2014 r. w Sankt Petersburgu...', 'Firma Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, Klimatyzacyjnych, Wentylacyjnych oraz urządzeń do basenów „Aqua-Therm St.Petersburg 2014” w dniach 09-12 kwietnia 2014 r. w Sankt Petersburgu.\r\n\r\nPodczas targów firma zaprezentowała swoją nową produkcję oraz udoskonalone wersje urządzeń do instalacji i przemysłu. Mamy nadzieję, że udzielona przez naszych specjalistów informacja była wystarczająca. Zawsze jesteśmy do Państwa dyspozycji!\r\n\r\nSerdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko w Centrum Wystawienniczym „LENEXPO”!', '', '', ''),
(2, 1, 2, 'Międzynarodowe Targi "Aqua-Therm" w Sankt Petersburgu', 'Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, Klimatyzacyjnych, Wentylacyjnych oraz urządzeń do basenów „Aqua-Therm St.Petersburg 2014” w dniach 09-12 kwietnia 2014 r. w Sankt Petersburgu...', '<p>Firma Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, Klimatyzacyjnych, Wentylacyjnych oraz urządzeń do basenów „Aqua-Therm St.Petersburg 2014” w dniach 09-12 kwietnia 2014 r. w Sankt Petersburgu.</p>\n\n<p>Podczas targów firma zaprezentowała swoją nową produkcję oraz udoskonalone wersje urządzeń do instalacji i przemysłu. Mamy nadzieję, że udzielona przez naszych specjalistów informacja była wystarczająca. Zawsze jesteśmy do Państwa dyspozycji!</p>\n\n<p>Serdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko w Centrum Wystawienniczym „LENEXPO”!</p>\n', '', '', ''),
(3, 1, 3, 'Międzynarodowe Targi "Aqua-Therm" w Sankt Petersburgu', 'Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, Klimatyzacyjnych, Wentylacyjnych oraz urządzeń do basenów „Aqua-Therm St.Petersburg 2014” w dniach 09-12 kwietnia 2014 r. w Sankt Petersburgu...', 'Firma Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, Klimatyzacyjnych, Wentylacyjnych oraz urządzeń do basenów „Aqua-Therm St.Petersburg 2014” w dniach 09-12 kwietnia 2014 r. w Sankt Petersburgu.\r\n\r\nPodczas targów firma zaprezentowała swoją nową produkcję oraz udoskonalone wersje urządzeń do instalacji i przemysłu. Mamy nadzieję, że udzielona przez naszych specjalistów informacja była wystarczająca. Zawsze jesteśmy do Państwa dyspozycji!\r\n\r\nSerdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko w Centrum Wystawienniczym „LENEXPO”!', '', '', ''),
(4, 2, 1, 'Targi WOD-KAN 20-22 maja 2014 r.', 'Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do wodociągu i kanalizacji WOD-KAN 2014 w dniach 20-22 maja 2014 r (na terenie wystawienniczym Bydgoszcz Myślęcinek)...', 'Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do wodociągu i kanalizacji WOD-KAN 2014 w dniach 20-22 maja 2014 r (na terenie wystawienniczym Bydgoszcz Myślęcinek).\r\n\r\nByła to dla nas doskonała okazja do zaprezentowania oferty handlowo-produkcyjnej firmy. Sądzimy, że zapoznanie się z naszą produkcja pozwoliło Państwu w pełni ocenić jej walory.\r\n\r\nSerdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko i zapraszamy do współpracy!', '', '', ''),
(5, 2, 2, 'Targi WOD-KAN 20-22 maja 2014 r.', 'Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do wodociągu i kanalizacji WOD-KAN 2014 w dniach 20-22 maja 2014 r (na terenie wystawienniczym Bydgoszcz Myślęcinek)...', '<p>Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do wodociągu i kanalizacji WOD-KAN 2014 w dniach 20-22 maja 2014 r (na terenie wystawienniczym Bydgoszcz Myślęcinek).</p>\n\n<p>Była to dla nas doskonała okazja do zaprezentowania oferty handlowo-produkcyjnej firmy. Sądzimy, że zapoznanie się z naszą produkcja pozwoliło Państwu w pełni ocenić jej walory.</p>\n\n<p>Serdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko i zapraszamy do współpracy!</p>\n', '', '', ''),
(6, 2, 3, 'Targi WOD-KAN 20-22 maja 2014 r.', 'Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do wodociągu i kanalizacji WOD-KAN 2014 w dniach 20-22 maja 2014 r (na terenie wystawienniczym Bydgoszcz Myślęcinek)...', 'Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do wodociągu i kanalizacji WOD-KAN 2014 w dniach 20-22 maja 2014 r (na terenie wystawienniczym Bydgoszcz Myślęcinek).\r\n\r\nByła to dla nas doskonała okazja do zaprezentowania oferty handlowo-produkcyjnej firmy. Sądzimy, że zapoznanie się z naszą produkcja pozwoliło Państwu w pełni ocenić jej walory.\r\n\r\nSerdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko i zapraszamy do współpracy!', '', '', ''),
(7, 3, 1, 'Zasada działania zaworów elektromagnetycznych', 'Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu...', '<p>Zawór elektromagnetyczny jest to zawór sterowany elektrycznie, najczęściej przepływem prądu.</p>\n\n<p>W załezności od przenoszonych przepływów najczęściej wyróżnia się: zawory bezpośredniego działania i zawory z serwosterowaniem.</p>\n\n<p>W zaworach bezpośredniego działania podanie napięcia na cewkę powoduje wytworzenie pola elektromagnetycznego. Pole to wymusza ruch trzpienia (to właśnie on otwiera lub zamyka przelot zaworu). W przypadku braku zasilania, trzpień za pomocą sprężyny zwrotnej wraca do pozycji wyjściowej. Przy większych średnicach wzrasta ciśnienie statyczne, które oddziałuje na element zamykający i do otwarcia zaworu wymagana jest większa siła. W takich sytuacjach stosuje się drugi typ zaworów - zawory elektromagnetyczne z serwosterowaniem. W zaworach tego typu elementem zamykającym i otwierającym przelot jest specjalna membrana – za pomocą sprężyny jest ona dociskana do gniazda zaworu. W środku membrany znajduje się niewielki otwór, który wyrównuje ciśnienie. W sytuacji równowagi ciśnień siła działania sprężyny jest wystarczająca do zamknięcia zaworu, nawet przy dużym ciśnieniu na jego wejściu. Podanie napięcia na cewkę powoduje ruch trzpienia i otwarcie kanalika, który łączy przestrzeń nad membraną z wejściem zaworu.</p>\n\n<p>Dzięki różnicy ciśnień następuje całkowite otwarcie zaworu i przepływ medium. W przypadku braku napięcia następuje odwrotny ruch trzpienia, zamknięcie kanalika i wyrównanie ciśnień po obydwu stronach membrany. Sprężyna powoduje dociśnięcie membrany do gniazda i zamknięcie zaworu. Poprawne działanie tego typu zaworów jest możliwe przy zachowaniu pewnej minimalnej różnicy ciśnień między wlotem a wylotem, określonej w danych technicznych.</p>\n\n<p>Zawory elektromagnetyczne dostępne są tak w wersji normalnie otwartej (NO) jak i normalnie zamkniętej (NZ).</p>\n', 'Zasada działania zaworów elektromagnetycznych', '', 'Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla'),
(8, 3, 2, 'Zasada działania zaworów elektromagnetycznych', 'Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu...', '<div class="image-text-item pull-right"><img src="http://dendor.pl/img/info/principle_operation_electromagnetic_valves.jpg" alt="alt text" title="Title" /></div>\n\n<p>Zawór elektromagnetyczny jest to zawór sterowany elektrycznie, najczęściej przepływem prądu.</p>\n\n<p>W załezności od przenoszonych przepływów najczęściej wyróżnia się: zawory bezpośredniego działania i zawory z serwosterowaniem.</p>\n\n<p>W zaworach bezpośredniego działania podanie napięcia na cewkę powoduje wytworzenie pola elektromagnetycznego. Pole to wymusza ruch trzpienia (to właśnie on otwiera lub zamyka przelot zaworu). W przypadku braku zasilania, trzpień za pomocą sprężyny zwrotnej wraca do pozycji wyjściowej. Przy większych średnicach wzrasta ciśnienie statyczne, które oddziałuje na element zamykający i do otwarcia zaworu wymagana jest większa siła. W takich sytuacjach stosuje się drugi typ zaworów - zawory elektromagnetyczne z serwosterowaniem. W zaworach tego typu elementem zamykającym i otwierającym przelot jest specjalna membrana – za pomocą sprężyny jest ona dociskana do gniazda zaworu. W środku membrany znajduje się niewielki otwór, który wyrównuje ciśnienie. W sytuacji równowagi ciśnień siła działania sprężyny jest wystarczająca do zamknięcia zaworu, nawet przy dużym ciśnieniu na jego wejściu. Podanie napięcia na cewkę powoduje ruch trzpienia i otwarcie kanalika, który łączy przestrzeń nad membraną z wejściem zaworu.</p>\n\n<p>Dzięki różnicy ciśnień następuje całkowite otwarcie zaworu i przepływ medium. W przypadku braku napięcia następuje odwrotny ruch trzpienia, zamknięcie kanalika i wyrównanie ciśnień po obydwu stronach membrany. Sprężyna powoduje dociśnięcie membrany do gniazda i zamknięcie zaworu. Poprawne działanie tego typu zaworów jest możliwe przy zachowaniu pewnej minimalnej różnicy ciśnień między wlotem a wylotem, określonej w danych technicznych.</p>\n\n<p>Zawory elektromagnetyczne dostępne są tak w wersji normalnie otwartej (NO) jak i normalnie zamkniętej (NZ).</p>\n', 'Zasada działania zaworów elektromagnetycznych', '', 'Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla'),
(9, 3, 3, 'Zasada działania zaworów elektromagnetycznych', 'Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu...', '<p>Zawór elektromagnetyczny jest to zawór sterowany elektrycznie, najczęściej przepływem prądu.</p>\n\n<p>W załezności od przenoszonych przepływów najczęściej wyróżnia się: zawory bezpośredniego działania i zawory z serwosterowaniem.</p>\n\n<p>W zaworach bezpośredniego działania podanie napięcia na cewkę powoduje wytworzenie pola elektromagnetycznego. Pole to wymusza ruch trzpienia (to właśnie on otwiera lub zamyka przelot zaworu). W przypadku braku zasilania, trzpień za pomocą sprężyny zwrotnej wraca do pozycji wyjściowej. Przy większych średnicach wzrasta ciśnienie statyczne, które oddziałuje na element zamykający i do otwarcia zaworu wymagana jest większa siła. W takich sytuacjach stosuje się drugi typ zaworów - zawory elektromagnetyczne z serwosterowaniem. W zaworach tego typu elementem zamykającym i otwierającym przelot jest specjalna membrana – za pomocą sprężyny jest ona dociskana do gniazda zaworu. W środku membrany znajduje się niewielki otwór, który wyrównuje ciśnienie. W sytuacji równowagi ciśnień siła działania sprężyny jest wystarczająca do zamknięcia zaworu, nawet przy dużym ciśnieniu na jego wejściu. Podanie napięcia na cewkę powoduje ruch trzpienia i otwarcie kanalika, który łączy przestrzeń nad membraną z wejściem zaworu.</p>\n\n<p>Dzięki różnicy ciśnień następuje całkowite otwarcie zaworu i przepływ medium. W przypadku braku napięcia następuje odwrotny ruch trzpienia, zamknięcie kanalika i wyrównanie ciśnień po obydwu stronach membrany. Sprężyna powoduje dociśnięcie membrany do gniazda i zamknięcie zaworu. Poprawne działanie tego typu zaworów jest możliwe przy zachowaniu pewnej minimalnej różnicy ciśnień między wlotem a wylotem, określonej w danych technicznych.</p>\n\n<p>Zawory elektromagnetyczne dostępne są tak w wersji normalnie otwartej (NO) jak i normalnie zamkniętej (NZ).</p>\n', 'Zasada działania zaworów elektromagnetycznych', '', 'Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `News`
--
ALTER TABLE `News`
  ADD CONSTRAINT `news_category_id_fk` FOREIGN KEY (`category_id`) REFERENCES `NewsCategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
