-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2017 at 02:51 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `director` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `synopsis` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `peliculas`
--

INSERT INTO `peliculas` (`id`, `name`, `director`, `synopsis`, `created_at`, `updated_at`) VALUES
(1, ' The Shawshank Redemption', ' Frank Darabont ', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency. ', NULL, NULL),
(7, 'The Dark Knight', 'Christopher Nolan', 'When the menace known as the Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham, the Dark Knight must accept one of the greatest psychological and physical tests of his ability to fight injustice.', '2017-08-01 06:51:45', '2017-08-01 06:51:45'),
(8, 'Pulp Fiction', 'Quentin Tarantino', 'The lives of two mob hit men, a boxer, a gangster\'s wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', '2017-08-01 06:52:29', '2017-08-01 06:52:29'),
(9, 'The Lord of the Rings: The Return of the King', 'Peter Jackson', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', '2017-08-01 06:53:30', '2017-08-01 06:53:30'),
(10, 'Fight Club', 'David Fincher', 'An insomniac office worker, looking for a way to change his life, crosses paths with a devil-may-care soap maker, forming an underground fight club that evolves into something much, much more.', '2017-08-01 06:54:02', '2017-08-01 06:54:02'),
(11, 'Forrest Gumpp', 'Robert Zemeckis', 'While not intelligent, Forrest Gump has accidentally been present at many historic moments, but his true love, Jenny Curran, eludes him.', '2017-08-01 06:54:34', '2017-08-01 07:43:23'),
(12, 'Star Wars: Episode V - The Empire Strikes Back', 'Irvin Kershner', 'After the rebels are overpowered by the Empire on their newly established base, Luke Skywalker begins Jedi training with Master Yoda. His friends accept shelter from a questionable ally as Darth Vader hunts them in a plan to capture Luke.', '2017-08-01 06:55:17', '2017-08-01 06:55:17'),
(13, 'Inception', 'Christopher Nolan', 'A thief, who steals corporate secrets through use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.', '2017-08-01 06:55:45', '2017-08-01 06:55:45'),
(14, 'Goodfellas', 'Martin Scorsese', 'The story of Henry Hill and his life through the teen years into the years of mafia, covering his relationship with wife Karen Hill and his Mob partners Jimmy Conway and Tommy DeVitto in the Italian-American crime syndicate.', '2017-08-01 06:56:15', '2017-08-01 06:56:15'),
(15, 'The Matrix', 'Lana Wachowski', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', '2017-08-01 06:56:56', '2017-08-01 06:56:56'),
(16, 'Spirited Away', 'Hayao Miyazaki', 'During her family\'s move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches, and spirits, and where humans are changed into beasts.', '2017-08-01 06:57:37', '2017-08-01 06:57:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
