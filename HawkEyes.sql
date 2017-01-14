-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 14 2017 г., 00:50
-- Версия сервера: 5.6.31
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `HawkEyes`
--

-- --------------------------------------------------------

--
-- Структура таблицы `colors`
--

CREATE TABLE IF NOT EXISTS `colors` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `colors`
--

INSERT INTO `colors` (`id`, `name`, `target`) VALUES
(22, 'Black', 'd08c2ab4f60bb0da3ab21995ad8d3425.png'),
(23, 'Gold', 'd3d59f8435e2b054305af7f8b600789e.png'),
(24, 'Grey', '9ed147cc17e8fdde626d52ea3515a5ff.png'),
(25, 'Red', '07657bb411e27c1ea5ef54a0dce9cf35.png'),
(26, 'White', 'ed36b8e906a3b8bd76737cff84457d09.png');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id_comm` int(10) unsigned NOT NULL,
  `g_id` int(10) unsigned NOT NULL,
  `comm_description` varchar(255) NOT NULL,
  `plus` varchar(255) NOT NULL,
  `minus` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id_comm`, `g_id`, `comm_description`, `plus`, `minus`) VALUES
(1, 31, 'text text text', 'text text text', 'text text text'),
(2, 31, 'text text text', 'text text text', 'text text text');

-- --------------------------------------------------------

--
-- Структура таблицы `features`
--

CREATE TABLE IF NOT EXISTS `features` (
  `id` int(10) unsigned NOT NULL,
  `feature_name` varchar(255) NOT NULL,
  `feature_img` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `features`
--

INSERT INTO `features` (`id`, `feature_name`, `feature_img`) VALUES
(4, '3G', '5588d93edc181f009ea86e61cf1364ab.png'),
(6, 'Кредит3мес', 'af24d10a9d4774d206198e24c6e737ad.jpg'),
(7, 'Кредит5мес', '540a16f2d88f420db7206cf0f90d20b8.jpg'),
(8, 'Samsung', '2f0dfe9303f76867d0ec9c569d266814.jpg'),
(9, 'SuperAmoled', '3caeb08ebe6a67229808e91c35204139.jpg'),
(10, 'IPS', '79ad7da79b362ce156bc54a8efc1f35c.png'),
(11, '4core', '25560f2eb0e8b15092f93e9f5e03a368.jpg'),
(12, '6core', 'dbdc1a2bfdcfe88ea2709dee178bf150.jpg'),
(13, '8core', 'a63ce8154fdba92cfc790b2ac5c18e4e.jpg'),
(14, 'Touch ID', '590bd9e09eae2668e37076c24aca74dc.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `demo` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `price` int(10) unsigned NOT NULL,
  `old_price` int(10) unsigned DEFAULT NULL,
  `description` text NOT NULL,
  `public` tinyint(4) NOT NULL DEFAULT '0',
  `sticker` varchar(255) NOT NULL,
  `in_stock` smallint(11) unsigned NOT NULL,
  `raiting` smallint(11) unsigned NOT NULL,
  `group_goods` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `demo`, `video`, `price`, `old_price`, `description`, `public`, `sticker`, `in_stock`, `raiting`, `group_goods`, `brand`) VALUES
(84, 'Мобильный телефон Samsung Galaxy S7 32GB', 'https://www.youtube.com/watch?v=q8Nq98RsbDw', 'https://www.youtube.com/watch?v=q8Nq98RsbDw', 18999, 19500, 'Экран 5.1, Super AMOLED, (2560х1440),  Exynos 8890 Octa (Quad 2.3 ГГц + Quad 1.6 ГГц), камера 12 Мп + фронтальная 5 Мп/ RAM 4 ГБ/ 32 ГБ встроенной памяти + microSD (до 200 ГБ)/ 3G/ LTE/ GPS/ поддержка 2х SIM-карт (Nano-SIM)/ Android 6.0 (Marshmallow) / 3000 мА*ч', 0, 'Топ продаж', 1, 11, 'smartphone', 'samsung'),
(85, 'Мобильный телефон Huawei P9 Mystic', 'https://www.youtube.com/watch?v=u9xu0V2kSZk', 'https://www.youtube.com/watch?v=u9xu0V2kSZk', 14999, 0, 'Экран 5.2, IPS, (1920x1080)/ HiSilicon Kirin 955 (4 ядра 2.5 ГГц + 4 ядра 1.8 ГГц)/ Две основные камеры: 12 Мп + 12 Мп, фронтальная камера: 8 Мп/ RAM 3 ГБ/ 32 ГБ встроенной памяти + microSD/SDHC (до 32 ГБ)/ 3G/ GPS/ поддержка 2х SIM-карт (Nano-SIM)/ Android 6.0 (Marshmallow)/ 3000 мА*ч', 0, 'Суперцена', 0, 9, 'smartphone', 'huawei'),
(86, 'Мобильный телефон Apple iPhone 7 32GB', '', 'https://www.youtube.com/watch?v=k5FSje29Idc', 22999, 24999, 'Экран (4.7", IPS, 1334x750)/ Apple A10 Fusion/ основная камера: 12 Мп, фронтальная камера: 7 Мп/ RAM 2 ГБ/ 32 ГБ встроенной памяти/ 3G/ LTE/ GPS/ Nano-SIM/ iOS 10', 0, 'Акция', 0, 10, 'smartphone', 'apple'),
(87, 'Мобильный телефон Sony Xperia XZ Dual Sim', 'https://www.youtube.com/watch?v=M_pPqP0p30w', 'https://www.youtube.com/watch?v=M_pPqP0p30w', 19599, 19999, 'Экран 5, IPS, (1280x720)/ Qualcomm Snapdragon 410 (1.2 ГГц)/ основная камера: 13 Мп, фронтальная камера: 5 Мп/ RAM 2 ГБ/ 16 ГБ встроенной памяти + microSD/SDHC (до 32 ГБ)/ 3G/ GPS/ поддержка 2х SIM-карт (Micro-SIM)/ Android 5.0 (Lollipop) / 2300 мА*ч', 0, '', 0, 6, 'smartphone', 'sony'),
(88, 'Мобильный телефон Samsung Galaxy S7 32GB', 'https://www.youtube.com/watch?v=q8Nq98RsbDw', '', 18999, 0, 'Экран 5.1, Super AMOLED, (2560х1440),  Exynos 8890 Octa (Quad 2.3 ГГц + Quad 1.6 ГГц), камера 12 Мп + фронтальная 5 Мп/ RAM 4 ГБ/ 32 ГБ встроенной памяти + microSD (до 200 ГБ)/ 3G/ LTE/ GPS/ поддержка 2х SIM-карт (Nano-SIM)/ Android 6.0 (Marshmallow) / 3000 мА*ч', 0, 'Акция', 0, 7, 'smartphone', 'samsung');

-- --------------------------------------------------------

--
-- Структура таблицы `goods_colors`
--

CREATE TABLE IF NOT EXISTS `goods_colors` (
  `g_id` int(10) unsigned NOT NULL,
  `c_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods_colors`
--

INSERT INTO `goods_colors` (`g_id`, `c_id`) VALUES
(65, 24),
(66, 25),
(70, 25),
(81, 22),
(81, 23),
(81, 24),
(82, 24),
(83, 22),
(83, 25),
(83, 26),
(84, 22),
(84, 23),
(84, 24),
(85, 23),
(85, 24),
(87, 23),
(87, 24),
(86, 22),
(86, 23),
(86, 24);

-- --------------------------------------------------------

--
-- Структура таблицы `goods_features`
--

CREATE TABLE IF NOT EXISTS `goods_features` (
  `g_id` int(10) unsigned NOT NULL,
  `f_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods_features`
--

INSERT INTO `goods_features` (`g_id`, `f_id`) VALUES
(65, 10),
(65, 13),
(65, 14),
(66, 8),
(66, 9),
(66, 13),
(66, 14),
(70, 13),
(70, 14),
(81, 7),
(81, 8),
(81, 10),
(81, 13),
(81, 14),
(82, 4),
(82, 10),
(82, 12),
(82, 14),
(83, 10),
(83, 11),
(83, 14),
(84, 7),
(84, 8),
(84, 9),
(84, 13),
(84, 14),
(85, 4),
(85, 6),
(85, 10),
(85, 13),
(85, 14),
(87, 4),
(87, 7),
(87, 10),
(87, 13),
(87, 14),
(86, 10),
(86, 11),
(86, 14);

-- --------------------------------------------------------

--
-- Структура таблицы `goods_images`
--

CREATE TABLE IF NOT EXISTS `goods_images` (
  `g_id` int(10) unsigned NOT NULL,
  `i_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods_images`
--

INSERT INTO `goods_images` (`g_id`, `i_id`) VALUES
(79, 72),
(80, 73),
(81, 74),
(82, 75),
(83, 76),
(84, 77),
(85, 78),
(86, 79),
(87, 80),
(88, 77);

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) unsigned NOT NULL,
  `main_img` varchar(255) NOT NULL,
  `main_img_medium` varchar(255) NOT NULL,
  `main_img_small` varchar(255) NOT NULL,
  `alt_img` varchar(255) NOT NULL,
  `title_img` varchar(255) NOT NULL,
  `img_1` varchar(255) NOT NULL,
  `img_1_small` varchar(255) NOT NULL,
  `img_2` varchar(255) NOT NULL,
  `img_2_small` varchar(255) NOT NULL,
  `img_3` varchar(255) NOT NULL,
  `img_3_small` varchar(255) NOT NULL,
  `img_4` varchar(255) NOT NULL,
  `img_4_small` varchar(255) NOT NULL,
  `img_5` varchar(255) NOT NULL,
  `img_5_small` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `main_img`, `main_img_medium`, `main_img_small`, `alt_img`, `title_img`, `img_1`, `img_1_small`, `img_2`, `img_2_small`, `img_3`, `img_3_small`, `img_4`, `img_4_small`, `img_5`, `img_5_small`) VALUES
(77, 'bcae4f46743be2a3bef712aa20a29edb.png', 'bcae4f46743be2a3bef712aa20a29edb_med.png', 'bcae4f46743be2a3bef712aa20a29edb_small.png', 'Samsung Galaxy S7', 'Samsung Galaxy S7', '8edc3fbd2e0fcc038edaba9a87dbfe1d.png', '8edc3fbd2e0fcc038edaba9a87dbfe1d_small.png', 'ed916e419b819a27fc054d627d09be53.jpg', 'ed916e419b819a27fc054d627d09be53_small.jpg', '75d6fb4b0fbd76c6ebf68c7cdd745764.jpg', '75d6fb4b0fbd76c6ebf68c7cdd745764_small.jpg', '5d897b508a90b214c45bc63fc8fde7d4.jpg', '5d897b508a90b214c45bc63fc8fde7d4_small.jpg', '1f1b2033924f2d1a7522e493ee93bc5d.jpg', '1f1b2033924f2d1a7522e493ee93bc5d_small.jpg'),
(78, '1f2dc20593ef13bcbd6ac6b593f2b52d.png', '1f2dc20593ef13bcbd6ac6b593f2b52d_med.png', '1f2dc20593ef13bcbd6ac6b593f2b52d_small.png', 'Huawei P9 Mystic', 'Huawei P9 Mystic', 'fc798c00f8779089c3cee5f4d50a60dc.png', 'fc798c00f8779089c3cee5f4d50a60dc_small.png', 'dfdf56d87386085a7f9fe38cda656a48.jpg', 'dfdf56d87386085a7f9fe38cda656a48_small.jpg', 'fc07392b5f42a893098c98a23c248de3.jpg', 'fc07392b5f42a893098c98a23c248de3_small.jpg', '7935c3e3a4fa46ee75652f5791c5f6a9.jpg', '7935c3e3a4fa46ee75652f5791c5f6a9_small.jpg', '1e7285274b8f87230754b8482f9f73a5.jpg', '1e7285274b8f87230754b8482f9f73a5_small.jpg'),
(79, 'd032f82e644e30b9481defceb07f8ccf.png', 'd032f82e644e30b9481defceb07f8ccf_med.png', 'd032f82e644e30b9481defceb07f8ccf_small.png', 'Apple iPhone 7', 'Apple iPhone 7', '40727a4570a7b4a622090c8a98b86412.png', '40727a4570a7b4a622090c8a98b86412_small.png', '216648627319f8ec15c890a9707c05cd.jpg', '216648627319f8ec15c890a9707c05cd_small.jpg', 'c9f8eae6d4ca8d9e9bb1ea947c3e0ad1.jpg', 'c9f8eae6d4ca8d9e9bb1ea947c3e0ad1_small.jpg', '8f2e1c0b56d48b47a10258d1eb4e9bbd.jpg', '8f2e1c0b56d48b47a10258d1eb4e9bbd_small.jpg', '521249356f6c08cbf66f9e6e5809a9ab.jpg', '521249356f6c08cbf66f9e6e5809a9ab_small.jpg'),
(80, '2086946df1c8d1a020bce5ab744b58be.png', '2086946df1c8d1a020bce5ab744b58be_med.png', '2086946df1c8d1a020bce5ab744b58be_small.png', 'Sony Xperia XZ', 'Sony Xperia XZ', '87ef12de2a4f55b8cd638cd955bab219.png', '87ef12de2a4f55b8cd638cd955bab219_small.png', 'd65cd8caace0d1e8afe110f20f6ed1de.png', 'd65cd8caace0d1e8afe110f20f6ed1de_small.png', '4ae31716233caeb5b46d5a85026b32c4.png', '4ae31716233caeb5b46d5a85026b32c4_small.png', '33c03c69cae9fa466a41ef72f1eec5a2.png', '33c03c69cae9fa466a41ef72f1eec5a2_small.png', '3c6bc1cdc8de50eec3f50126adf941a8.png', '3c6bc1cdc8de50eec3f50126adf941a8_small.png');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `social_netw` varchar(255) NOT NULL,
  `fb_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `sec_name` varchar(255) NOT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `social_netw`, `fb_id`, `name`, `sec_name`, `phone`, `email`, `password`, `avatar`) VALUES
(34, '', 0, 'Денис', 'Масло', 380663363988, 'denis@mail.ru', '$2y$10$DymrnbmfqdNNOzlQ8MgNuOofdTGPzQztVcBp3mZlsbdgszKVM1W6q', '51c270f439918a379765ed4e9e3afbc5.jpg'),
(35, '', 0, 'Виталий', 'Мотылевский', 380938745623, 'kertar@mail.ru', '$2y$10$D4YZSNmxqOxDeLhNQkg6s.7Qd3/CkuYNw4F.R2ft3SknrTT6wXTyu', '09a470f1d753a8aec645e643736a761c.jpeg'),
(36, '', 0, 'Наталья', 'Слободян', 380936696977, 'chernika@bk.ru', '$2y$10$ogGe91HyzmbrOTuae4N3ie0ZR34jxnfv5AhInC4W/ib7680tnDENq', 'cda444481317c7e48ffd725cb8cce5b5.jpg'),
(37, '', 0, 'Антон', 'Зартдинов', 380957777777, 'uc@seotech.com.ua', '$2y$10$taB6BNuV3pOvKv99PiIO0eUR4rDCjJFu4chkhC4XSr.Vxasmw4512', 'eeab68f5ae4be23bde6d8f95a248fe44.jpg'),
(38, '', 0, 'Ekaterina', 'Omelchenko', 380503331433, 'ekbOmel@gmail.com', '$2y$10$fAAlvAMHIBQWf773EmVp1.eAeqb9.89BCrc4Uv4hmZYxhTUssCTiW', '5176a3235e12244c47c70e0f86512ef5.jpg'),
(39, '', 0, 'Денис', 'Маслов', 380637773377, 'hawkeyes@mail.ru', '$2y$10$/NTcPkYX8E4Ef.Hv2SU.tuhlom9C2heXFfRVnBVi0Mq9YFmT6z3ZC', 'e5d363d72d7849cc93c1a4404caceb4e.png'),
(40, '', 0, 'Александр', 'Иванов', 380957894512, 'kertaaar@mail.ru', '$2y$10$nmOhpte/wpNKrljU2u6UOuYbsBQQ9va5v3592cVLHuFdUgreQwm/y', '3f3652aa8255cf248151fdef3f75f288.jpg'),
(41, 'facebook', 1741805612774714, 'Денис', 'Масло', NULL, '', '', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id_comm`);

--
-- Индексы таблицы `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id_comm` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `features`
--
ALTER TABLE `features`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=89;
--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
