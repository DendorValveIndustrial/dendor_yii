-- phpMyAdmin SQL Dump
-- version 4.0.10.6
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 06 2015 г., 15:14
-- Версия сервера: 5.5.41-log
-- Версия PHP: 5.4.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `yii_user`
--

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `title` varchar(128) DEFAULT '',
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `role` varchar(128) NOT NULL,
  `profile` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `title`, `password`, `email`, `role`, `profile`) VALUES
(1, 'admin', 'admin', '$2a$13$MmuWDmRGK6ZejRIq2fd3p.8/GTq.hGIFiesd9sIr0aFf41hbaLxY6', 'test1@example.com', 'administrator', ''),
(2, 'moderator', '', '$2a$13$16vGw6QAJ0SwhQIf2EzZw.0Edoz8aSiAThRxHBFTBG9zuk7s.8kjO', 'test2@example.com', 'moderator', ''),
(3, 'test3', '', 'pass3', 'test3@example.com', 'user', NULL),
(4, 'test4', '', 'pass4', 'test4@example.com', 'banned', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
