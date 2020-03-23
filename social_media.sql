-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 23 2020 г., 18:40
-- Версия сервера: 10.1.38-MariaDB
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `social_media`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `post_id`, `user_id`, `text`) VALUES
(57, 88, 15, 'hey hey good good\n');

-- --------------------------------------------------------

--
-- Структура таблицы `friend`
--

CREATE TABLE `friend` (
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Дамп данных таблицы `friend`
--

INSERT INTO `friend` (`sender_id`, `receiver_id`) VALUES
(16, 15),
(17, 15),
(17, 16),
(18, 15),
(18, 16),
(18, 17);

-- --------------------------------------------------------

--
-- Структура таблицы `friend_request`
--

CREATE TABLE `friend_request` (
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `text` varchar(300) COLLATE utf8mb4_turkish_ci NOT NULL,
  `link` varchar(300) COLLATE utf8mb4_turkish_ci NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Дамп данных таблицы `notification`
--

INSERT INTO `notification` (`id`, `text`, `link`, `receiver_id`, `date`) VALUES
(129, 'Altynay Turzhanova liked your post.', 'post.php?id=88', 15, '2020-03-23 19:08:29'),
(130, 'Altynay Turzhanova disliked your post.', 'post.php?id=88', 15, '2020-03-23 19:08:31'),
(131, 'Altynay commented your post.', 'post.php?id=88', 15, '2020-03-23 19:08:50'),
(133, 'Temirlan Shugay sent friend request.', 'profile.php?id=16', 15, '2020-03-23 19:17:34'),
(134, 'Altynay Turzhanova accepted your friend request.', 'profile.php?id=15', 16, '2020-03-23 19:19:36'),
(135, 'Altynay Turzhanova liked your post.', 'post.php?id=88', 15, '2020-03-23 22:12:25'),
(136, 'Altynay Turzhanova disliked your post.', 'post.php?id=88', 15, '2020-03-23 23:04:44'),
(137, 'Altynay Turzhanova liked your post.', 'post.php?id=88', 15, '2020-03-23 23:04:46'),
(138, 'Zhanel Oralova sent friend request.', 'profile.php?id=17', 16, '2020-03-23 23:11:42'),
(139, 'Zhanel Oralova sent friend request.', 'profile.php?id=17', 15, '2020-03-23 23:11:49'),
(140, 'Altynay Turzhanova accepted your friend request.', 'profile.php?id=15', 17, '2020-03-23 23:12:11'),
(141, 'Temirlan Shugay accepted your friend request.', 'profile.php?id=16', 17, '2020-03-23 23:12:35'),
(142, 'Dias Rymkul sent friend request.', 'profile.php?id=18', 17, '2020-03-23 23:20:52'),
(143, 'Dias Rymkul sent friend request.', 'profile.php?id=18', 15, '2020-03-23 23:20:58'),
(144, 'Dias Rymkul sent friend request.', 'profile.php?id=18', 16, '2020-03-23 23:21:04'),
(145, 'Altynay Turzhanova accepted your friend request.', 'profile.php?id=15', 18, '2020-03-23 23:21:49'),
(146, 'Zhanel Oralova accepted your friend request.', 'profile.php?id=17', 18, '2020-03-23 23:22:28'),
(147, 'Temirlan Shugay accepted your friend request.', 'profile.php?id=16', 18, '2020-03-23 23:22:55'),
(148, 'Temirlan Shugay liked your post.', 'post.php?id=92', 18, '2020-03-23 23:24:04'),
(149, 'Temirlan Shugay liked your post.', 'post.php?id=91', 18, '2020-03-23 23:24:06'),
(150, 'Temirlan Shugay liked your post.', 'post.php?id=90', 17, '2020-03-23 23:24:08'),
(151, 'Temirlan Shugay liked your post.', 'post.php?id=89', 16, '2020-03-23 23:24:09'),
(152, 'Temirlan Shugay liked your post.', 'post.php?id=88', 15, '2020-03-23 23:24:11');

-- --------------------------------------------------------

--
-- Структура таблицы `plike`
--

CREATE TABLE `plike` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Дамп данных таблицы `plike`
--

INSERT INTO `plike` (`id`, `user_id`, `post_id`, `type`) VALUES
(198, 15, 88, 1),
(199, 16, 92, 1),
(200, 16, 91, 1),
(201, 16, 90, 1),
(202, 16, 89, 1),
(203, 16, 88, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `text` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `photo` varchar(150) COLLATE utf8mb4_turkish_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `user_id`, `text`, `photo`, `date`) VALUES
(88, 15, 'Hello&lt;everyone&gt;!\r\n', 'images/post/5e78b4c8b0887_aaa.jpg', '2020-03-23 13:08:24'),
(89, 16, 'Searching for the better life! DEEEE', 'images/post/5e78b741296b8_IMG-20180514-WA0121.jpg', '2020-03-23 13:18:57'),
(90, 17, 'Choose your own way!\r\nHeheheheh', 'images/post/5e78edb98c3a5_d9oNiKMNlR4.jpg', '2020-03-23 17:11:21'),
(91, 18, 'Jagdai jalpy jaqsy :)))', '', '2020-03-23 17:18:59'),
(92, 18, 'Jagdai jalpy jaqsy :)))', '', '2020-03-23 17:19:15');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(15) COLLATE utf8mb4_turkish_ci NOT NULL,
  `surname` varchar(20) COLLATE utf8mb4_turkish_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_turkish_ci NOT NULL,
  `bdate` date NOT NULL,
  `profile_photo` varchar(150) COLLATE utf8mb4_turkish_ci NOT NULL DEFAULT 'images/default.jpg',
  `gender` varchar(1) COLLATE utf8mb4_turkish_ci NOT NULL,
  `pass` varchar(100) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `email`, `bdate`, `profile_photo`, `gender`, `pass`) VALUES
(15, 'Altynay', 'Turzhanova', '180107216@stu.sdu.edu.kz', '2000-09-25', 'images/profile/5e78b4875625c_xsdcfvgbhnjmk.jpg', 'F', '$2y$10$84vAvCCYzPM6Fb6swUCCTuKc4Xfg94OBR0ERjhFpwF8vda2ilJgVi'),
(16, 'Temirlan', 'Shugay', '180107263@stu.sdu.edu.kz', '2000-02-28', 'images/profile/5e78b6ccbbb9e_IMG-20180616-WA0039.jpg', 'M', '$2y$10$eq58bApjLpER3jmzgp.ekeSdtVqTN5NbKHhe3HKxkK4Zj/WTluPmq'),
(17, 'Zhanel', 'Oralova', '180107266@stu.sdu.edu.kz', '2000-11-23', 'images/profile/5e78ed900e9fb_Z8TEPI51pyA.jpg', 'F', '$2y$10$m5sU2iWE7cBwxg09IEmHYeQnW0wX4Q3x3o8tK7g37M661GtDPgbWO'),
(18, 'Dias', 'Rymkul', '180107258@stu.sdu.edu.kz', '2000-07-20', 'images/profile/default.jpg', 'M', '$2y$10$Z/Muaw0uKYP205nJFhqKyOTbvOogdeMhFEhoAO/F71EOr77/zA/Le');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_post_id_fk` (`post_id`),
  ADD KEY `comment_user_id_fk` (`user_id`);

--
-- Индексы таблицы `friend`
--
ALTER TABLE `friend`
  ADD PRIMARY KEY (`sender_id`,`receiver_id`) USING BTREE,
  ADD KEY `friend_receiver_id_fk` (`receiver_id`);

--
-- Индексы таблицы `friend_request`
--
ALTER TABLE `friend_request`
  ADD PRIMARY KEY (`receiver_id`,`sender_id`) USING BTREE,
  ADD KEY `sender_id_fk` (`sender_id`);

--
-- Индексы таблицы `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_receiver_fk` (`receiver_id`);

--
-- Индексы таблицы `plike`
--
ALTER TABLE `plike`
  ADD PRIMARY KEY (`id`),
  ADD KEY `like_user_id_fk` (`user_id`),
  ADD KEY `like_post_id_fk` (`post_id`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_name_index` (`name`),
  ADD KEY `user_surname_index` (`surname`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT для таблицы `plike`
--
ALTER TABLE `plike`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_post_id_fk` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `friend`
--
ALTER TABLE `friend`
  ADD CONSTRAINT `friend_receiver_id_fk` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `friend_sender_id_fk` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `friend_request`
--
ALTER TABLE `friend_request`
  ADD CONSTRAINT `receiver_id_fk` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sender_id_fk` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_receiver_fk` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `plike`
--
ALTER TABLE `plike`
  ADD CONSTRAINT `like_post_id_fk` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `like_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
