-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Generation Time: Mar 03, 2026 at 05:14 PM
-- Server version: 8.0.43
-- PHP Version: 8.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `chambres`
--

CREATE TABLE `chambres` (
  `id` int NOT NULL,
  `numero` int NOT NULL,
  `texte` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `chambres`
--

INSERT INTO `chambres` (`id`, `numero`, `texte`) VALUES
(1, 1, '101'),
(2, 2, '102'),
(3, 3, '103'),
(4, 4, '104'),
(5, 5, '105'),
(6, 6, '106'),
(7, 7, '107'),
(8, 8, '108');

-- --------------------------------------------------------

--
-- Table structure for table `Error`
--

CREATE TABLE `Error` (
  `id` int NOT NULL,
  `dt` datetime DEFAULT CURRENT_TIMESTAMP,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int NOT NULL,
  `imgOrder` int DEFAULT NULL,
  `path` text NOT NULL,
  `insertDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `imgOrder`, `path`, `insertDate`) VALUES
(1, 2, '1091.jpg', '2026-02-03 12:12:31'),
(2, 1, '177.jpg', '2026-02-03 12:12:44'),
(3, 3, '2.jpg', '2026-03-01 12:34:14'),
(4, 4, '1.jpg', '2026-03-01 12:34:14'),
(5, 5, '3.jpg', '2026-03-01 12:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int NOT NULL,
  `t1` datetime NOT NULL,
  `t2` datetime NOT NULL,
  `chambre` text NOT NULL,
  `origine` int NOT NULL,
  `type` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `t1`, `t2`, `chambre`, `origine`, `type`) VALUES
(10, '2026-02-01 18:36:58', '2026-02-01 18:37:00', '307', 1, 0),
(11, '2026-02-01 18:37:04', '2026-02-01 18:42:03', '307', 1, 1),
(12, '2026-02-02 12:25:50', '2026-02-02 12:25:52', '307', 4, 2),
(13, '2026-02-02 13:26:47', '2026-02-02 13:28:46', '307', 4, 2),
(14, '2026-02-27 22:53:18', '2026-02-27 22:53:27', '307', 4, 2),
(15, '2026-02-27 22:53:29', '2026-02-27 22:53:34', '307', 4, 2),
(16, '2026-02-27 22:53:37', '2026-02-27 22:53:39', '307', 4, 2),
(17, '2026-02-27 22:53:40', '2026-02-27 22:53:48', '307', 4, 2),
(18, '2026-02-27 22:53:51', '2026-02-27 22:55:51', '307', 4, 2),
(19, '2026-02-27 22:56:31', '2026-02-27 22:56:33', '307', 4, 2),
(20, '2026-02-27 22:56:43', '2026-02-27 22:56:51', '307', 1, 0),
(21, '2026-02-27 22:57:05', '2026-02-27 22:57:41', '307', 1, 0),
(22, '2026-02-27 22:59:01', '2026-02-27 22:59:07', '307', 4, 2),
(23, '2026-02-27 22:59:15', '2026-02-27 22:59:22', '307', 4, 2),
(24, '2026-02-27 22:59:34', '2026-02-27 22:59:45', '307', 1, 0),
(25, '2026-02-27 23:00:03', '2026-02-27 23:00:06', '307', 4, 2),
(26, '2026-02-27 23:01:34', '2026-02-27 23:01:35', '307', 4, 2),
(27, '2026-02-27 23:01:37', '2026-02-27 23:01:41', '307', 4, 2),
(28, '2026-03-01 14:52:16', '2026-03-01 14:52:24', '307', 1, 0),
(29, '2026-03-01 14:52:49', '2026-03-01 14:52:52', '307', 4, 2),
(30, '2026-03-01 14:53:00', '2026-03-01 14:55:00', '307', 4, 2),
(31, '2026-03-01 14:55:18', '2026-03-01 14:57:17', '307', 4, 2),
(32, '2026-03-01 14:57:18', '2026-03-01 14:59:18', '307', 4, 2),
(33, '2026-03-01 14:59:18', '2026-03-01 15:01:18', '307', 4, 2),
(34, '2026-03-01 15:27:37', '2026-03-01 15:27:46', '307', 1, 0),
(35, '2026-03-01 15:28:55', '2026-03-01 15:29:00', '307', 4, 2),
(36, '2026-03-01 15:29:00', '2026-03-01 15:29:05', '307', 4, 2),
(37, '2026-03-01 15:29:05', '2026-03-01 15:29:08', '307', 4, 2),
(38, '2026-03-01 15:29:15', '2026-03-01 15:29:29', '307', 3, 0),
(39, '2026-03-01 15:29:33', '2026-03-01 15:29:35', '307', 4, 2),
(40, '2026-03-01 15:36:03', '2026-03-01 15:37:12', '307', 1, 0),
(41, '2026-03-01 15:38:53', '2026-03-01 15:38:56', '307', 4, 2),
(42, '2026-03-01 15:38:57', '2026-03-01 15:39:06', '307', 4, 2),
(43, '2026-03-01 15:39:12', '2026-03-01 15:44:11', '307', 1, 1),
(44, '2026-03-01 15:47:20', '2026-03-01 15:52:19', '307', 1, 1),
(45, '2026-03-01 15:53:33', '2026-03-01 15:53:37', '307', 4, 2),
(46, '2026-03-01 15:53:44', '2026-03-01 15:56:33', '307', 1, 0),
(47, '2026-03-01 15:57:06', '2026-03-01 15:57:07', '307', 4, 2),
(48, '2026-03-01 15:57:07', '2026-03-01 16:38:32', '307', 4, 2),
(49, '2026-03-01 16:38:33', '2026-03-01 16:38:52', '307', 4, 2),
(50, '2026-03-01 16:38:57', '2026-03-01 16:39:05', '307', 4, 2),
(51, '2026-03-01 16:39:16', '2026-03-01 16:39:18', '307', 4, 2),
(52, '2026-03-01 16:39:19', '2026-03-01 16:39:35', '307', 4, 2),
(53, '2026-03-01 16:39:36', '2026-03-01 16:39:42', '307', 4, 2),
(54, '2026-03-01 16:41:34', '2026-03-01 16:41:35', '307', 4, 2),
(55, '2026-03-01 16:41:55', '2026-03-01 16:41:58', '307', 4, 2),
(56, '2026-03-01 16:41:35', '2026-03-01 16:41:55', '307', 4, 2),
(57, '2026-03-01 16:41:58', '2026-03-01 16:43:07', '307', 4, 2),
(58, '2026-03-01 16:43:07', '2026-03-01 16:43:13', '307', 4, 2),
(59, '2026-03-01 16:43:13', '2026-03-01 16:44:56', '307', 4, 2),
(60, '2026-03-01 16:51:26', '2026-03-01 16:51:27', '307', 4, 2),
(61, '2026-03-01 16:44:56', '2026-03-01 16:51:25', '307', 4, 2),
(62, '2026-03-01 16:51:32', '2026-03-01 16:51:43', '307', 4, 2),
(63, '2026-03-01 16:51:30', '2026-03-01 16:51:32', '307', 4, 2),
(64, '2026-03-01 16:51:43', '2026-03-01 16:52:14', '307', 4, 2),
(65, '2026-03-01 16:52:14', '2026-03-01 16:52:42', '307', 4, 2),
(66, '2026-03-01 16:52:45', '2026-03-01 16:54:44', '307', 4, 2),
(67, '2026-03-01 17:35:56', '2026-03-01 17:35:58', '307', 4, 2),
(68, '2026-03-01 17:35:58', '2026-03-01 17:35:59', '307', 4, 2),
(69, '2026-03-01 17:35:59', '2026-03-01 17:36:00', '307', 4, 2),
(70, '2026-03-01 17:36:00', '2026-03-01 17:36:02', '307', 4, 2),
(71, '2026-03-01 17:50:36', '2026-03-01 17:50:37', '307', 4, 2),
(72, '2026-03-01 17:36:02', '2026-03-01 17:50:36', '307', 4, 2),
(73, '2026-03-01 17:50:46', '2026-03-01 18:00:42', '307', 4, 2),
(74, '2026-03-01 18:00:44', '2026-03-01 18:09:47', '307', 4, 2),
(75, '2026-03-01 21:18:34', '2026-03-01 21:18:36', '307', 4, 2),
(76, '2026-03-01 21:18:36', '2026-03-01 21:18:38', '307', 4, 2),
(77, '2026-03-01 21:18:49', '2026-03-01 21:19:02', '307', 1, 0),
(78, '2026-03-01 21:19:07', '2026-03-01 21:19:30', '307', 1, 0),
(79, '2026-03-01 21:23:13', '2026-03-01 21:23:21', '107', 4, 2),
(80, '2026-03-01 21:23:21', '2026-03-01 21:23:24', '107', 4, 2),
(81, '2026-03-01 22:01:29', '2026-03-01 22:01:30', '107', 4, 2),
(82, '2026-03-01 22:01:30', '2026-03-01 22:01:33', '107', 4, 2),
(83, '2026-03-01 22:01:43', '2026-03-01 22:06:42', '107', 1, 1),
(84, '2026-03-01 22:29:40', '2026-03-01 22:29:42', '107', 1, 0),
(85, '2026-03-01 22:30:02', '2026-03-01 22:30:03', '107', 1, 0),
(86, '2026-03-01 22:30:19', '2026-03-01 22:30:31', '107', 1, 0),
(87, '2026-03-01 22:30:37', '2026-03-01 22:31:20', '107', 1, 0),
(88, '2026-03-01 22:31:23', '2026-03-01 22:33:22', '107', 4, 2),
(89, '2026-03-01 22:48:47', '2026-03-01 22:48:57', '107', 1, 0),
(90, '2026-03-01 22:49:05', '2026-03-01 22:51:25', '107', 1, 0),
(91, '2026-03-01 22:51:40', '2026-03-01 22:51:48', '107', 1, 0),
(92, '2026-03-01 23:40:14', '2026-03-01 23:40:19', '104', 4, 2),
(93, '2026-03-01 23:40:21', '2026-03-01 23:40:25', '104', 4, 2),
(94, '2026-03-01 23:40:25', '2026-03-01 23:41:04', '104', 1, 0),
(95, '2026-03-01 23:41:24', '2026-03-01 23:41:40', '104', 1, 0),
(96, '2026-03-01 23:41:56', '2026-03-01 23:42:58', '104', 4, 2),
(97, '2026-03-01 23:43:13', '2026-03-01 23:43:29', '103', 4, 2),
(98, '2026-03-01 23:43:34', '2026-03-01 23:43:57', '103', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `marquees`
--

CREATE TABLE `marquees` (
  `id` int NOT NULL,
  `marqueeOrder` int DEFAULT NULL,
  `marquee` text NOT NULL,
  `insertDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `marquees`
--

INSERT INTO `marquees` (`id`, `marqueeOrder`, `marquee`, `insertDate`) VALUES
(1, 1, 'Un peu de patience, nous vous recevons très bientôt.', '2026-02-15 16:49:35'),
(2, 2, 'Votre santé est notre priorité.', '2026-02-15 16:49:44'),
(3, 3, 'Une activité physique régulière, c\'est 30 minutes de marche par jour pour votre cœur.', '2026-02-17 21:12:01'),
(4, 4, 'Merci de présenter votre carte d\'immatriculation CNSS à l\'accueil.', '2026-02-28 13:42:31'),
(5, 5, 'Pour votre sécurité et celle des autres, le port du masque est recommandé dans les zones de soins.', '2026-02-28 13:42:31'),
(6, 6, 'La prévention est la clé : pensez à vos visites de contrôle régulières.', '2026-02-28 13:43:20'),
(7, 7, 'Nos médecins spécialistes sont à votre disposition pour tous vos besoins de santé.\r\n', '2026-02-28 13:43:20'),
(8, 8, 'Respectez la distanciation physique en salle d\'attente pour limiter les risques.', '2026-02-28 13:44:09'),
(9, 9, 'En cas d\'urgence vitale, veuillez informer immédiatement le personnel à l\'accueil.', '2026-02-28 13:44:09'),
(10, 10, 'Votre santé est notre engagement quotidien. Merci de votre confiance.\r\n', '2026-02-28 13:44:42');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int NOT NULL,
  `cle` text NOT NULL,
  `valeur` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `cle`, `valeur`) VALUES
(1, 'nom', 'Clinique Agdal'),
(2, 'etg', '1'),
(3, 'ville', 'Casablanca'),
(4, 'codePrayer', '58'),
(5, 'code', '0001'),
(6, 'serveur', 'https://n8n.nettronic.uk/webhook/'),
(7, 'lastStartup', '2026-02-09 13:07:14'),
(8, 'hour', '0'),
(9, 'exd', '30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chambres`
--
ALTER TABLE `chambres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero` (`numero`),
  ADD UNIQUE KEY `texte` (`texte`);

--
-- Indexes for table `Error`
--
ALTER TABLE `Error`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marquees`
--
ALTER TABLE `marquees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chambres`
--
ALTER TABLE `chambres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Error`
--
ALTER TABLE `Error`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `marquees`
--
ALTER TABLE `marquees`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
