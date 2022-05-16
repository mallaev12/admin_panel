-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 16 2022 г., 16:01
-- Версия сервера: 8.0.24
-- Версия PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `int-acc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `phone`
--

CREATE TABLE `phone` (
  `id` int NOT NULL,
  `uid` int NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `number` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `phone`
--

INSERT INTO `phone` (`id`, `uid`, `phone`, `number`) VALUES
(1, 1, '1', 1),
(2, 1, '22', 2),
(3, 2, '1541000', 1),
(4, 6, '1541', 1),
(5, 6, '123', 2),
(6, 6, '792313811117', 3),
(7, 7, '1541', 1),
(8, 7, '444', 2),
(9, 7, '555', 3),
(21, 5, '1541', 1),
(22, 5, '22', 2),
(23, 5, '12', 3),
(24, 8, '1541', 1),
(25, 8, '321422', 2),
(26, 8, '211431', 3),
(27, 9, '1541657', 1),
(28, 9, '2123', 2),
(29, 9, '22111', 3),
(30, 10, '1541', 1),
(31, 10, '1234', 2),
(32, 10, '43215123', 3),
(33, 11, '1541', 1),
(34, 11, '123', 2),
(35, 11, '1234', 3),
(36, 12, '1541', 1),
(37, 12, '123', 2),
(38, 13, '12340', 3),
(39, 2, '12', 2),
(40, 2, '19', 3),
(44, 14, '12', 1),
(45, 13, '18', 1),
(46, 13, '229', 2),
(47, 18, '79231388187', 1),
(48, 18, '37450', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `del` int NOT NULL DEFAULT '0',
  `first_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `del`, `first_name`, `last_name`, `email`, `company_name`, `position`) VALUES
(1, 1, 'Илья', 'Маллаев', 'mallaev.yakov@yandex.ru', 'Agrum-studio', 'CEO'),
(2, 0, 'Вадим', 'Ломиворотов', 'vadim.lomv@mail.ru', 'Agrum-studio', 'developer'),
(5, 1, 'Яков', 'Маллаев', 'mallaev.yakov@yandex.ru', '55', '333'),
(6, 1, 'Яков', 'Маллаев', 'mallaev.yakov@yandex.ru', '', ''),
(7, 1, 'Яков', 'Маллаев', 'lomvad1406@mail.ru', 'Синий ', 'Admin'),
(8, 0, 'Yakov', 'Маллаев', 'mallaev.yakov@mail.ru', 'Крест', 'админ'),
(9, 0, 'Яков', 'Маллаев', 'mallaev.yakov@yandex.ru', 'Синий крест', 'Admin'),
(10, 0, 'sad', 'asd', 'butin_vitya@mail.ru', 'Синий крест', 'Admin'),
(11, 0, 'Яков', 'Маллаев', 'lomvad1406@mail.ru', 'Синий ', 'Admin'),
(12, 0, '123', 'Маллаев', 'mallaev.yakov@yandex.ru', 'Синий крест', 'Admin'),
(13, 0, 'Яков', 'Маллаев', 'mallaev.yakov@yandex.ru', '', ''),
(14, 0, 'Yakov', 'Маллаев', 'mallaev.yakov@yandex.ru', 'Синий крест', ''),
(15, 1, 'Яков', 'Маллаев', 'mallaev.yakov@yandex.ru', '', ''),
(16, 1, 'Яков', 'Маллаев', 'mallaev.yakov@gmail.com', '', ''),
(17, 1, 'Вадим', 'Ломиворотов', 'lomvad1406@mail.ru', '', ''),
(18, 0, 'Яков', 'Маллаев', 'mallaev.yakov@mail.ru', 'Синий ', ''),
(19, 0, '123', '123', '123', '', ''),
(20, 0, '123', '123', '123', '', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `phone`
--
ALTER TABLE `phone`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
