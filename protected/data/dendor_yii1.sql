-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 15 2015 г., 14:36
-- Версия сервера: 5.5.38-log
-- Версия PHP: 5.3.28

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
-- Структура таблицы `slider`
--

CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_slidr` varchar(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `slider`
--

INSERT INTO `slider` (`id`, `data_slidr`, `name`, `text`, `img`, `link`, `active`) VALUES
(1, 'one', 'Przepustnice zwrotne', 'Oferujemy przepustnice zwrotne wyprodukowane ze stali, żeliwa sferoidalnego, PVC. Kołnierzowe, bezkołnierzowe, do wspawania, mimośrodowe w zakresie średnic DN – od 32 do 2000.', NULL, 'about', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `slider_translates`
--

CREATE TABLE IF NOT EXISTS `slider_translates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_id` int(11) DEFAULT NULL,
  `lang` varchar(6) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `slider_id` (`slider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `slider_translates`
--
ALTER TABLE `slider_translates`
  ADD CONSTRAINT `slider_translate_ibfk_1` FOREIGN KEY (`slider_id`) REFERENCES `slider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
