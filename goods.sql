-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 19 2023 г., 12:31
-- Версия сервера: 10.8.4-MariaDB
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `ID` int(11) NOT NULL,
  `Picture` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Subname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lifehack` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Number` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`ID`, `Picture`, `Subname`, `Name`, `Price`, `Description`, `Result`, `Lifehack`, `Number`) VALUES
(1, 'https://beautybomb.ru/upload/resize_cache/iblock/283/500_500_1/28315230ee33b6d7a9906638e4c3bf1f.png', 'DESERT DREAMER', 'Face blush', '5', 'The mood is \"beach party\"! Blush in pink and peach shades for the lightest summer make-up. Apply them to the apples of your cheeks and the bridge of your nose, as if you\'ve just returned from a party on the beach.', 'Summer refreshing blush.', 'Use blush instead of contouring to refresh the make-up as much as possible and achieve the baby face effect.', '13'),
(2, 'https://beautybomb.ru/upload/resize_cache/iblock/c2d/500_500_1/c2d9c4c6b58fef9ad8299c163c167ce6.png', 'FUN MASK ', 'Face tissue mask', '2', 'The fabric mask will save you from swelling and instantly moisturize your skin! There are also foil drawings on it — it\'s not a shame to post a photo on social networks ☺', 'Moisturized, nourished skin that is ready for any make-up.\r\n', 'Keep the mask in the refrigerator before applying — you will get a toning effect.', '3'),
(3, 'https://beautybomb.ru/upload/resize_cache/iblock/c55/500_500_1/c55e6c08f84cb0a55b98359363829c56.png', 'FULLMOON PARTY ', 'Eyeshadow palette', '8', 'A palette in bright acid shades. With Fullmoon party you will be the most stylish at all beach parties — you will be noticed from afar! ☺', 'Stunning makeup for the trendiest parties!', 'Apply a bright shade under your eyebrow to look unusual!', '0'),
(4, 'https://beautybomb.ru/upload/resize_cache/iblock/3ec/500_500_1/3ec13dd2c82450056a57c67691c80b6a.png', 'MAGIC MUSHROOMS ', 'Panama', '4', 'Who is the brightest mushroom? Of course, it\'s you with our panama hat! An exclusive accessory with magic mushrooms from the Acid summer collection.', 'Everyone will ask where to get the same panama hat. And you can walk all day and not worry about what will bake your head!', 'Wear it wherever and whenever you want!', '50'),
(25, ' files/97e575c2acc6781764b9ba36b34cb270.png', 'MUHOMORCHICK EARRINGS', 'Earings', '5', 'Не любишь ходить за грибами? Мы тоже, поэтому избавим тебя от этого занятия. Просто дополним твой образ сережками-мухоморчиками, чтобы добавить необычности.', 'Интересный образ, который не останется без внимания.', 'Можешь носить сережки комплектом или по одной.', '15');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
