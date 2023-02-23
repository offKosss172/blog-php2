-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 23 2023 г., 03:32
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `elen_blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Travel'),
(2, 'Technology'),
(3, 'Fashion');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `description` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `preview` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `description`, `category_id`, `created`, `preview`) VALUES
(1, 'What to pack when visiting Sea', 'Even the all-powerful Pointing has no control about the blind texts it is an almost', 'Even the all-powerful Pointing has no control about the blind texts it is an almost', 1, '2023-02-22 01:19:58', 'assets/images/image_2.jpg'),
(2, 'The Newest Technology On This Year 2019', 'Even the all-powerful Pointing has no control about the blind texts it is an almost', 'Even the all-powerful Pointing has no control about the blind texts it is an almost', 2, '2023-02-22 02:26:52', '/assets/images/image_1.jpg'),
(3, 'Awesome Fashion Trend in For Summer', 'Even the all-powerful Pointing has no control about the blind texts it is an almost', 'Even the all-powerful Pointing has no control about the blind texts it is an almost', 3, '2023-02-22 02:28:28', '/assets/images/image_3.jpg'),
(4, '10 Most Awesome Place', 'Even the all-powerful Pointing has no control about the blind texts it is an almost', 'Even the all-powerful Pointing has no control about the blind texts it is an almost', 1, '2023-02-22 02:30:27', '/assets/images/image_4.jpg'),
(5, '10 Most Awesome Beach in Asia', 'Even the all-powerful Pointing has no control about the blind texts it is an almost', 'Even the all-powerful Pointing has no control about the blind texts it is an almost', 1, '2023-02-22 02:30:27', '/assets/images/image_5.jpg'),
(6, 'Top Amazing Places to Go in Summer', 'Even the all-powerful Pointing has no control about the blind texts it is an almost', 'Even the all-powerful Pointing has no control about the blind texts it is an almost', 1, '2023-02-22 02:31:45', '/assets/images/image_6.jpg'),
(7, '7 Beginner Photographer’s Mistakes', 'Even the all-powerful Pointing has no control about the blind texts it is an almost', 'Even the all-powerful Pointing has no control about the blind texts it is an almost', 3, '2023-02-22 02:32:45', '/assets/images/image_7.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `created` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `pass`, `avatar`, `created`) VALUES
(1, 'admin', '$2y$10$K7Ul4ndHuODaUrgmV66kHukTeZIgQI6QdIo7a5jf/SYxGahDrwFOq', '', ''),
(2, 'kosss', '$2y$10$SMrJhhZnU.PmADsIbll2NOKHuw9xrHV4o5U9aIAtua.MUVzvOep.e', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `user_post_liks`
--

CREATE TABLE `user_post_liks` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `user_post_liks`
--

INSERT INTO `user_post_liks` (`id`, `user_id`, `post_id`) VALUES
(37, 1, 3),
(72, 1, 4),
(80, 1, 2),
(82, 1, 1),
(85, 1, 5);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_post_liks`
--
ALTER TABLE `user_post_liks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user_post_liks`
--
ALTER TABLE `user_post_liks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
