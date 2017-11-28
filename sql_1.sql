-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Лип 03 2017 р., 01:14
-- Версія сервера: 5.7.16
-- Версія PHP: 7.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `football`
--
CREATE DATABASE IF NOT EXISTS `football` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `football`;

-- --------------------------------------------------------

--
-- Структура таблиці `bbva`
--

CREATE TABLE `bbva` (
  `id` int(11) NOT NULL,
  `team` varchar(255) NOT NULL,
  `games` int(3) NOT NULL,
  `points` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `bbva`
--

INSERT INTO `bbva` (`id`, `team`, `games`, `points`) VALUES
(1, 'Real Madrid', 36, 87),
(2, 'Barcelona', 36, 84),
(3, 'Atletico Madrid', 36, 74),
(4, 'Sevilla', 36, 69),
(5, 'Villareal', 36, 63),
(6, 'Athletic Club', 36, 62),
(7, 'Real Sociedad', 36, 62),
(8, 'Eibar', 36, 54),
(9, 'Espanyol', 36, 53),
(10, 'Alaves', 36, 51),
(11, 'Malaga', 36, 45),
(12, 'Valencia', 36, 43),
(13, 'Las Palmas', 36, 39),
(14, 'Real Betic', 36, 37),
(15, 'Granada CF', 36, 20);

-- --------------------------------------------------------

--
-- Структура таблиці `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `img` varchar(60) NOT NULL,
  `title_img` varchar(60) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `history`
--

INSERT INTO `history` (`id`, `title`, `img`, `title_img`, `text`) VALUES
(1, 'Історія клуба по 60рр.', 'img/history/60.jpg', 'Історія до 60рр.', 'У 50-х «Реал Мадрид» перетворив легенду в міф. Клуб святкував свою п\'ятидесятирічну річницю і підписав Ді Стефано під час цього чудового десятиліття. Прибуття аргентинського гравця було дуже вагомим для «Реалу». Команда вперше за 21 рік виграла чемпіонат; Бернабеу і Сапорта грали ключові ролі в створенні Європейського Кубка, який Реал завоював п\'ять разів поспіль. Вінчають моментом десятиліття стала перемога «Бланкос» в першому Міжконтинентальному Кубку.'),
(2, 'Історія клуба по 70рр.', 'img/history/70.jpg', 'Історія клуба по 70рр.', 'Великолепный этап подходил к концу после поражений в двух финалах Кубка Европы против Бенфики и Интера соответственно. Падение игроков, взволновавшее всю Европу, в итоге закончилось их уходом из клуба. Генеральные изменения Мигеля Муньоса в конечном счете увенчались успехом. Так называемые “Йе-йе” вернули себе Европейскую корону, выиграв Кубок Европы в шестой раз.'),
(3, 'Історія клуба по 90рр.', 'img/history/90.jpg', 'Історія клуба по 90рр.', 'Вторая половина 80-х была невероятной. Реал Мадрид выиграл 2 Кубка УЕФА и 5 чемпионатов подряд, установив рекорд. Это был период (1985-1990), когда «Сливочные» поражали двумя своими квинтетами: «Эль Буитре» и «Пять Мачо».'),
(4, 'Історія клуба по 2000рр.', 'img/history/2000.jpg', 'Історія клуба по 2000рр.', 'В этом десятилетии клуб выиграл свой седьмой и восьмой Кубок Европы. Реал Мадрид вновь сел на Европейский трон в конце 90-х, первая половина которых была нелегкой для «Сливочных», два титула Лиги были утеряны в матчах в Тенерифе.'),
(5, 'Історія клуба по 2010рр.', 'img/history/2010.jpg', 'Історія клуба по 2010рр.', 'Фиго, Бекхэм, Зидан, Рональдо… Лучшие игроки мира присоединились к команде и образовали одну из самых захватывающих команд в истории. «Сантьяго Бернабеу» был расширен и построен новый «Реал Мадрид Сити». Венком десятилетия стал девятый титул Кубка Европы.');

-- --------------------------------------------------------

--
-- Структура таблиці `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `img` text NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `news`
--

INSERT INTO `news` (`id`, `title`, `text`, `img`, `count`) VALUES
(1, 'Мадридський клуб відіграв десятий сухий матч поспіль', 'Мадридський Реал в другому півфінальному матчі Ліги чемпіонів з Манчестер Ситі зберіг свої ворота в недоторканності, провівши 10-й сухий матч у нинішньому розіграші турніру', 'img/card/1.jpg', 1),
(2, 'Успіх Реала в мадридському дербі Ліги чемпіонів', '\"Реал\" зробив великий крок до фіналу, провівши одну з найякісніших ігор у сезоні. Зінедін Зідан претендує на те, аби до Суперкубка Іспанії, Суперкубка УЄФА, клубного чемпіонату світу додати ще два трофеї – Лігу чемпіонів і чемпіонат Іспанії. Але попереду – найважчі завершальні кроки.', 'img/card/2.jpg', 1),
(3, '\"Реал\" хочет продлить контракт с Зиданом до 2020 года', 'Руководство \"Реала\" намерено продлить контракт с главным тренером команды Зинедином Зиданом.Решение о продлении соглашения было принято после выхода \"Реала\" в финал Лиги чемпионов.', 'img/card/3.jpg', 1),
(4, 'Пепе перейдёт в \"Интер\"', 'Защитник \"Реала\" Пепе летом станет игроком \"Интера\".\r\n                                \"Реал\" не собирается продлевать контракт 34-летнего игрока\r\n                                \"Интер\" является основным вариантом для португальца.', 'img/card/4.jpg', 1);

-- --------------------------------------------------------

--
-- Структура таблиці `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `name_player` varchar(50) NOT NULL,
  `goal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `players`
--

INSERT INTO `players` (`id`, `name_player`, `goal`) VALUES
(1, 'Криштиану Роналду', 324),
(2, 'Рауль', 323),
(3, 'Альфредо Ди Стефано', 307),
(4, 'Карлос Сантильяна', 289),
(5, 'Уго Санче', 208);

-- --------------------------------------------------------

--
-- Структура таблиці `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `img` varchar(60) NOT NULL,
  `player_number` int(11) NOT NULL,
  `player_name` varchar(60) NOT NULL,
  `player_position` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `team`
--

INSERT INTO `team` (`id`, `img`, `player_number`, `player_name`, `player_position`) VALUES
(1, 'img/players/keylor.jpg', 1, 'Кейлор Навас', 'Воротар'),
(2, 'img/players/casilla.jpg', 13, 'Кико Касилья', 'Воротар'),
(3, 'img/players/yanez.jpg', 25, 'Рубен Янез', 'Воротар'),
(4, 'img/players/carvajal.jpg', 2, 'Карвахаль', 'Захисник'),
(5, 'img/players/pepe.jpg', 3, 'Пепе', 'Захисник'),
(6, 'img/players/ramos.jpg', 4, 'Серхіо Рамос', 'Захисник'),
(7, 'img/players/varane.jpg', 5, 'Варан', 'Захисник'),
(8, 'img/players/nacho.jpg', 6, 'Начо', 'Захисник'),
(9, 'img/players/marcelo.jpg', 12, 'Марсело', 'Захисник'),
(10, 'img/players/coentrao.jpg', 15, 'Коєнтрау', 'Захисник'),
(11, 'img/players/danilo.jpg', 23, 'Данило', 'Захисник'),
(12, 'img/players/kroos.jpg', 8, 'Тоні Крос', 'Полузахисник'),
(13, 'img/players/james.jpg', 10, 'Хамес', 'Полузахисник'),
(14, 'img/players/casemiro.jpg', 14, 'Каземиро', 'Полузахисник'),
(15, 'img/players/kovacic.jpg', 16, 'Ковачич', 'Полузахисник'),
(16, 'img/players/modric.jpg', 19, 'Лука Модрич', 'Полузащитник'),
(17, 'img/players/marco-asensio.jpg', 20, 'Асенсио', 'Полузащитник'),
(18, 'img/players/isco.jpg', 22, 'Іско', 'Полузащитник'),
(19, 'img/players/cristiano.jpg', 7, 'Роналдо', 'Нападающий'),
(20, 'img/players/benzema.jpg', 9, 'Бензема', 'Нападающий'),
(21, 'img/players/bale.jpg', 11, 'Гарет Бєил', 'Нападающий'),
(22, 'img/players/lucas-vazquez.jpg', 17, 'Лукас Васкес', 'Нападающий'),
(23, 'img/players/mariano.jpg', 18, 'Мариано', 'Нападающий'),
(24, 'img/players/morata.jpg', 21, 'Мората', 'Нападающий');

-- --------------------------------------------------------

--
-- Структура таблиці `trofy`
--

CREATE TABLE `trofy` (
  `id` int(11) NOT NULL,
  `img` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `years` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `trofy`
--

INSERT INTO `trofy` (`id`, `img`, `title`, `years`) VALUES
(1, 'img/trophy/1.png', 'Ла Лига (32):', '1931-32 | 1932-33 | 1953-54 | 1954-55 | 1956-57 | 1957-58 | 1960-61 | 1961-62 | 1962-63 | 1963-64 | 1964-65 | 1966-67 | 1967-68 | 1968-69 | 1971-72 | 1974-75 | 1975-76 | 1977-78 | 1978-79 | 1979-80 | 1985-86 | 1986-87 | 1987-88 | 1988-89 | 1989-90 | 1994-95 | 1996-97 | 2000-01 | 2002-03 | 2006-07 | 2007-08 | 2011-12'),
(2, 'img/trophy/2.png', 'Кубок Испании (19):', '1904-05 | 1905-06 | 1906-07 | 1907-08 | 1916-17 | 1933-34 | 1935-36 | 1945-46 | 1946-47 | 1961-62 | 1969-70 | 1973-74 | 1974-75 | 1979-80 | 1981-82 | 1988-89 | 1992-93 | 2010-11 | 2013-14'),
(3, 'img/trophy/3.png', 'Лига Чемпионов (11):', '1955-56 | 1956-57 | 1957-58 | 1958-59 | 1959-60 | 1965-66 | 1997-98 | 1999-00 | 2001-02 | 2013-14 | 2015-16'),
(4, 'img/trophy/4.png', 'Суперкубок Европы (3):', '2002 | 2014 | 2016'),
(5, 'img/trophy/5.png', 'Кубок УЕФА (2):', '1955-56 | 1956-57 | 1957-58 | 1958-59 | 1959-60 | 1965-66 | 1997-98 | 1999-00 | 2001-02 | 2013-14 | 2015-16'),
(6, 'img/trophy/6.png', 'Суперкубок Испании (9):', '1955-56 | 1956-57 | 1957-58 | 1958-59 | 1959-60 | 1965-66 | 1997-98 | 1999-00 | 2001-02 | 2013-14 | 2015-16'),
(7, 'img/trophy/7.png', 'Клубный чемпионат мира (2):', '2014 | 2016'),
(8, 'img/trophy/8.png', 'Кубок Ла Лиги (1):', '1984-85'),
(9, 'img/trophy/9.png', 'Кубок Мира (2):', '1952 | 1956'),
(10, 'img/trophy/10.png', 'Межконтинентальный Кубок (3):', '1960 | 1989 | 2002');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `bbva`
--
ALTER TABLE `bbva`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `trofy`
--
ALTER TABLE `trofy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `bbva`
--
ALTER TABLE `bbva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблиці `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблиці `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблиці `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблиці `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT для таблиці `trofy`
--
ALTER TABLE `trofy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
