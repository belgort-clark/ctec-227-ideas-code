-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 21, 2020 at 10:03 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joins_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `idea_id` int(10) UNSIGNED DEFAULT NULL,
  `category` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `idea_id`, `category`) VALUES
(1, 1, 'Engineering'),
(2, 2, 'Customer Service'),
(3, 3, 'Marketing'),
(4, 4, 'Information Technology'),
(5, 5, 'Plant and Facilities');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(10) UNSIGNED NOT NULL,
  `idea_id` int(10) UNSIGNED NOT NULL,
  `comment` text,
  `date` varchar(255) DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `idea_id`, `comment`, `date`, `user_id`) VALUES
(1, 1, 'egestas hendrerit neque. In ornare sagittis felis.', '2013-06-15 23:18:54', 3),
(2, 10, 'orci. Ut', '2015-02-12 00:36:10', 2),
(3, 1, 'non, lobortis quis, pede. Suspendisse dui. Fusce diam', '2013-08-31 03:14:23', 1),
(4, 6, 'lobortis risus. In', '2014-01-19 00:46:30', 1),
(5, 5, 'at', '2014-02-16 05:47:36', 4),
(6, 5, 'velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque', '2013-09-14 02:52:03', 5),
(7, 5, 'convallis est, vitae', '2013-12-04 11:51:28', 5),
(8, 4, 'Nulla eget metus eu erat semper rutrum. Fusce', '2013-08-29 02:23:38', 1),
(9, 10, 'mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet', '2013-07-27 14:02:15', 5),
(10, 8, 'sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris', '2013-12-22 18:47:14', 3),
(11, 6, 'lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus', '2013-05-19 20:13:49', 3),
(12, 8, 'cursus. Integer mollis. Integer', '2014-12-31 13:04:43', 1),
(13, 1, 'molestie arcu. Sed eu nibh vulputate mauris sagittis', '2013-06-06 03:28:06', 5),
(14, 6, 'sociis natoque penatibus et magnis dis parturient', '2014-11-11 13:19:19', 3),
(15, 4, 'ut quam vel', '2014-10-14 08:02:16', 3),
(16, 8, 'in consectetuer ipsum', '2014-09-18 01:06:06', 3),
(17, 7, 'interdum enim non nisi.', '2013-11-19 02:35:47', 3);

-- --------------------------------------------------------

--
-- Table structure for table `idea`
--

CREATE TABLE `idea` (
  `idea_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `title` text,
  `description` text,
  `date` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `idea`
--

INSERT INTO `idea` (`idea_id`, `user_id`, `category_id`, `title`, `description`, `date`) VALUES
(1, 1, 1, 'My Great Idea 1', 'penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa', '2014-08-01 06:29:23'),
(2, 2, 2, 'My Great Idea 2', 'ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam', '2013-07-12 21:10:38'),
(3, 3, 3, 'My Great Idea 3', 'ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris.', '2014-10-10 19:48:31'),
(4, 4, 4, 'My Great Idea 4', 'dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna.', '2013-06-04 09:35:01'),
(5, 5, 5, 'My Great Idea 5', 'eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet', '2014-09-19 17:32:39'),
(6, 6, 3, 'My Great Idea 6', 'lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus.', '2014-09-24 15:04:26'),
(7, 7, 1, 'My Great Idea 7', 'mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor.', '2014-12-01 22:29:59'),
(8, 8, 1, 'My Great Idea 8', 'mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae', '2013-07-16 07:18:13'),
(9, 9, 2, 'My Great Idea 9', 'convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae,', '2014-05-30 22:16:44'),
(10, 10, 5, 'My Great Idea 10', 'et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras', '2015-04-05 10:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `idea_tag`
--

CREATE TABLE `idea_tag` (
  `tag_id` mediumint(8) UNSIGNED NOT NULL,
  `idea_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `idea_tag`
--

INSERT INTO `idea_tag` (`tag_id`, `idea_id`) VALUES
(1, 4),
(2, 7),
(3, 7),
(4, 8),
(5, 8),
(6, 1),
(7, 7),
(8, 3),
(9, 9),
(10, 10),
(11, 6),
(12, 3),
(13, 9),
(14, 10),
(15, 5),
(16, 10),
(17, 7),
(18, 4),
(19, 7),
(20, 8),
(21, 8),
(22, 7),
(23, 1),
(24, 3),
(25, 8),
(26, 3),
(27, 6),
(28, 9),
(29, 9),
(30, 3),
(31, 6),
(32, 2),
(33, 2),
(34, 8),
(35, 3),
(36, 9),
(37, 4),
(38, 3),
(39, 3),
(40, 9),
(41, 2),
(42, 1),
(43, 3),
(44, 9),
(45, 6),
(46, 6),
(47, 10),
(48, 6),
(49, 9),
(50, 1),
(51, 1),
(52, 10),
(53, 2),
(54, 3),
(55, 6),
(56, 9),
(57, 4),
(58, 5),
(59, 4),
(60, 10),
(61, 1),
(62, 10),
(63, 10),
(64, 3),
(65, 6),
(66, 1),
(67, 10),
(68, 3),
(69, 4),
(70, 1),
(71, 9),
(72, 3),
(73, 4),
(74, 2),
(75, 9),
(76, 8),
(77, 10),
(78, 2),
(79, 2),
(80, 7),
(81, 4),
(82, 5),
(83, 5),
(84, 6),
(85, 8),
(86, 10),
(87, 9),
(88, 10),
(89, 7),
(90, 9),
(91, 3),
(92, 6),
(93, 6),
(94, 6),
(95, 6),
(96, 3),
(97, 4),
(98, 4),
(99, 5),
(100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `like`
--

CREATE TABLE `like` (
  `like_id` mediumint(8) UNSIGNED NOT NULL,
  `idea_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `like`
--

INSERT INTO `like` (`like_id`, `idea_id`, `user_id`) VALUES
(1, 5, 2),
(2, 5, 2),
(3, 7, 2),
(4, 5, 2),
(5, 2, 3),
(6, 8, 5),
(7, 6, 2),
(8, 4, 3),
(9, 10, 4),
(10, 2, 3),
(11, 5, 5),
(12, 9, 5),
(13, 5, 5),
(14, 4, 2),
(15, 2, 4),
(16, 10, 1),
(17, 7, 5),
(18, 8, 3),
(19, 6, 2),
(20, 10, 2),
(21, 4, 1),
(22, 1, 1),
(23, 8, 5),
(24, 9, 3),
(25, 6, 5),
(26, 10, 1),
(27, 6, 5),
(28, 10, 1),
(29, 1, 5),
(30, 7, 1),
(31, 6, 5),
(32, 3, 3),
(33, 1, 2),
(34, 9, 3),
(35, 6, 2),
(36, 7, 5),
(37, 10, 4),
(38, 5, 3),
(39, 9, 3),
(40, 8, 4),
(41, 10, 4),
(42, 7, 5),
(43, 8, 1),
(44, 1, 3),
(45, 7, 1),
(46, 3, 4),
(47, 4, 5),
(48, 3, 2),
(49, 10, 5),
(50, 1, 1),
(51, 3, 2),
(52, 6, 2),
(53, 3, 4),
(54, 4, 3),
(55, 7, 4),
(56, 9, 3),
(57, 4, 5),
(58, 8, 2),
(59, 10, 1),
(60, 4, 1),
(61, 4, 3),
(62, 5, 1),
(63, 7, 3),
(64, 8, 2),
(65, 5, 5),
(66, 4, 1),
(67, 8, 1),
(68, 7, 5),
(69, 7, 1),
(70, 5, 4),
(71, 10, 3),
(72, 7, 1),
(73, 5, 3),
(74, 10, 5),
(75, 10, 3),
(76, 9, 5),
(77, 10, 2),
(78, 3, 2),
(79, 4, 2),
(80, 4, 5),
(81, 6, 4),
(82, 3, 1),
(83, 1, 1),
(84, 8, 2),
(85, 5, 3),
(86, 1, 1),
(87, 8, 2),
(88, 6, 3),
(89, 2, 5),
(90, 1, 3),
(91, 1, 3),
(92, 7, 3),
(93, 7, 3),
(94, 1, 2),
(95, 4, 2),
(96, 3, 1),
(97, 10, 4),
(98, 6, 5),
(99, 1, 4),
(100, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `tag_id` mediumint(9) DEFAULT NULL,
  `tag` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `tag_id`, `tag`) VALUES
(1, 87, 'Sed'),
(2, 20, 'Phasellus fermentum convallis'),
(3, 73, 'natoque penatibus et'),
(4, 64, 'tincidunt orci'),
(5, 4, 'venenatis a, magna.'),
(6, 63, 'Etiam'),
(7, 17, 'urna suscipit'),
(8, 35, 'aliquet magna a'),
(9, 39, 'neque venenatis lacus.'),
(10, 99, 'diam'),
(11, 23, 'libero. Morbi accumsan'),
(12, 54, 'diam.'),
(13, 79, 'sit'),
(14, 39, 'Phasellus dapibus quam'),
(15, 32, 'Nulla interdum. Curabitur'),
(16, 32, 'in, tempus eu,'),
(17, 19, 'scelerisque dui.'),
(18, 49, 'Phasellus dolor'),
(19, 38, 'aliquet nec, imperdiet'),
(20, 94, 'non arcu. Vivamus'),
(21, 33, 'Aliquam'),
(22, 41, 'id'),
(23, 3, 'ac nulla. In'),
(24, 70, 'Aliquam erat volutpat.'),
(25, 12, 'odio tristique'),
(26, 77, 'vel quam'),
(27, 63, 'nec,'),
(28, 2, 'a purus.'),
(29, 2, 'eget metus eu'),
(30, 91, 'id sapien. Cras'),
(31, 70, 'sem magna'),
(32, 67, 'euismod in, dolor.'),
(33, 81, 'lectus. Nullam'),
(34, 59, 'id'),
(35, 86, 'ut, pellentesque'),
(36, 24, 'nisl sem,'),
(37, 22, 'malesuada fames'),
(38, 43, 'convallis'),
(39, 14, 'adipiscing. Mauris molestie'),
(40, 18, 'Nunc'),
(41, 47, 'elit, pretium et,'),
(42, 89, 'arcu ac orci.'),
(43, 16, 'ornare, elit elit'),
(44, 54, 'vulputate, lacus.'),
(45, 35, 'Cras'),
(46, 77, 'Fusce'),
(47, 75, 'nisl. Quisque'),
(48, 61, 'nulla'),
(49, 30, 'et risus.'),
(50, 75, 'Suspendisse aliquet molestie'),
(51, 99, 'vehicula risus. Nulla'),
(52, 11, 'cursus vestibulum.'),
(53, 84, 'sem, vitae'),
(54, 8, 'Nulla facilisis. Suspendisse'),
(55, 97, 'vitae velit egestas'),
(56, 39, 'eu enim. Etiam'),
(57, 8, 'elit fermentum'),
(58, 6, 'magna nec quam.'),
(59, 1, 'dui, in'),
(60, 23, 'Donec at arcu.'),
(61, 76, 'egestas ligula. Nullam'),
(62, 88, 'malesuada vel, convallis'),
(63, 33, 'Duis'),
(64, 8, 'amet'),
(65, 92, 'pellentesque'),
(66, 17, 'id enim. Curabitur'),
(67, 98, 'eu neque pellentesque'),
(68, 19, 'magna nec quam.'),
(69, 17, 'Integer vitae'),
(70, 58, 'eu enim. Etiam'),
(71, 13, 'tellus faucibus leo,'),
(72, 66, 'semper'),
(73, 85, 'Nulla eu neque'),
(74, 51, 'vel, convallis in,'),
(75, 67, 'Morbi metus.'),
(76, 44, 'placerat. Cras dictum'),
(77, 26, 'Cum sociis'),
(78, 32, 'adipiscing elit.'),
(79, 51, 'eget tincidunt dui'),
(80, 13, 'scelerisque dui. Suspendisse'),
(81, 90, 'pede'),
(82, 78, 'est'),
(83, 24, 'Donec'),
(84, 95, 'nunc, ullamcorper eu,'),
(85, 69, 'a mi'),
(86, 98, 'est, congue a,'),
(87, 15, 'Phasellus dapibus quam'),
(88, 66, 'Proin vel'),
(89, 36, 'arcu imperdiet ullamcorper.'),
(90, 13, 'sed'),
(91, 92, 'Nunc'),
(92, 42, 'vestibulum nec,'),
(93, 22, 'arcu.'),
(94, 34, 'nibh. Donec est'),
(95, 94, 'nonummy ut, molestie'),
(96, 37, 'interdum. Curabitur'),
(97, 79, 'enim'),
(98, 100, 'ante'),
(99, 74, 'urna, nec luctus'),
(100, 63, 'aliquet magna a');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `username` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`) VALUES
(1, 'Nicholas', 'Tucker', 'Tucker_'),
(2, 'Lionel', 'Wynn', 'Wynn_'),
(3, 'Alfonso', 'Price', 'Price_'),
(4, 'Gabriel', 'Ruiz', 'Ruiz_'),
(5, 'William', 'Rose', 'Rose_'),
(6, 'Jared', 'Riddle', 'Riddle_'),
(7, 'Joe', 'Joey', 'joeyjoejoe'),
(8, 'Paul', 'Jone', 'PaulJones'),
(9, 'Sam', 'Elliot', 'Sammy'),
(10, 'Gayle', 'Jackson', 'Gayle');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `idea_id` (`idea_id`);

--
-- Indexes for table `idea`
--
ALTER TABLE `idea`
  ADD PRIMARY KEY (`idea_id`);

--
-- Indexes for table `idea_tag`
--
ALTER TABLE `idea_tag`
  ADD PRIMARY KEY (`tag_id`,`idea_id`);

--
-- Indexes for table `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `idea`
--
ALTER TABLE `idea`
  MODIFY `idea_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `idea_tag`
--
ALTER TABLE `idea_tag`
  MODIFY `tag_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `like`
--
ALTER TABLE `like`
  MODIFY `like_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
