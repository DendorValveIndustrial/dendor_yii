-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 05 2015 г., 16:43
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

--
-- Очистить таблицу перед добавлением данных `News`
--

TRUNCATE TABLE `News`;
--
-- Дамп данных таблицы `News`
--

INSERT INTO `News` (`id`, `category_id`, `url`, `created`, `updated`, `publish_date`, `status`, `layout`, `view`) VALUES
(1, 2, 'exhibition-in-spb', '2015-02-04 14:12:58', '2015-02-04 14:12:58', '2015-02-04 14:12:58', 'published', '', ''),
(2, 2, 'exhibition-in-poland', '2015-02-05 11:17:32', '2015-02-05 11:17:32', '2015-02-05 11:17:32', 'published', '', ''),
(3, 1, 'principle-of-operation-of-electromagnetic-valves', '2015-02-05 11:44:02', '2015-02-05 11:44:02', '2015-02-05 11:44:02', 'published', '', '');

--
-- Очистить таблицу перед добавлением данных `NewsCategory`
--

TRUNCATE TABLE `NewsCategory`;
--
-- Дамп данных таблицы `NewsCategory`
--

INSERT INTO `NewsCategory` (`id`, `parent_id`, `url`, `full_url`, `layout`, `view`, `created`, `updated`, `page_size`) VALUES
(1, 0, 'article', 'article', '', '', '2015-01-28 15:24:19', '2015-01-28 15:24:19', 20),
(2, 0, 'exhibitions', 'exhibitions', '', '', '2015-01-28 15:26:52', '2015-01-28 15:26:52', 20);

--
-- Очистить таблицу перед добавлением данных `NewsCategoryTranslate`
--

TRUNCATE TABLE `NewsCategoryTranslate`;
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

--
-- Очистить таблицу перед добавлением данных `NewsTranslate`
--

TRUNCATE TABLE `NewsTranslate`;
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
-- Очистить таблицу перед добавлением данных `slider`
--

TRUNCATE TABLE `slider`;
--
-- Дамп данных таблицы `slider`
--

INSERT INTO `slider` (`id`, `data_slidr`, `img`, `link`, `active`) VALUES
(1, 'one', 'slide1.png', 'about', 1),
(2, 'two', 'slide2.png', 'production', 1);

--
-- Очистить таблицу перед добавлением данных `slider_translates`
--

TRUNCATE TABLE `slider_translates`;
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

--
-- Очистить таблицу перед добавлением данных `SystemLanguage`
--

TRUNCATE TABLE `SystemLanguage`;
--
-- Дамп данных таблицы `SystemLanguage`
--

INSERT INTO `SystemLanguage` (`id`, `name`, `code`, `locale`, `default`, `flag_name`) VALUES
(1, 'Poland', 'pl', 'pl_PL', 1, 'pl.png'),
(2, 'Русский', 'ru', 'ru_RU', 0, 'ru.png'),
(3, 'English', 'en', 'en_US', 0, 'gb.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
