-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Сен 22 2023 г., 10:34
-- Версия сервера: 10.4.28-MariaDB
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `fastdelivery`
--

CREATE TABLE `fastdelivery` (
  `id` int(16) NOT NULL,
  `sourceKladr` varchar(255) DEFAULT NULL,
  `targetKladr` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `fastdelivery`
--

INSERT INTO `fastdelivery` (`id`, `sourceKladr`, `targetKladr`, `weight`) VALUES
(1, 'sourceKladrCode', 'targetKladrCode', '5'),
(2, 'sourceKladrCode', 'targetKladrCode', '5');

-- --------------------------------------------------------

--
-- Структура таблицы `slowdelivery`
--

CREATE TABLE `slowdelivery` (
  `id` int(16) NOT NULL,
  `sourceKladr` varchar(255) DEFAULT NULL,
  `targetKladr` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `slowdelivery`
--

INSERT INTO `slowdelivery` (`id`, `sourceKladr`, `targetKladr`, `weight`) VALUES
(1, 'sourceKladrCode', 'targetKladrCode', '5'),
(2, 'sourceKladrCode', 'targetKladrCode', '5');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `fastdelivery`
--
ALTER TABLE `fastdelivery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `slowdelivery`
--
ALTER TABLE `slowdelivery`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `fastdelivery`
--
ALTER TABLE `fastdelivery`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `slowdelivery`
--
ALTER TABLE `slowdelivery`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
