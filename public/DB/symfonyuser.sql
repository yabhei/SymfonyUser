-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           5.7.33 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour symfonyuser
CREATE DATABASE IF NOT EXISTS `symfonyuser` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `symfonyuser`;

-- Listage de la structure de la table symfonyuser. user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `date_naissance` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table symfonyuser.user : ~6 rows (environ)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `email`, `pseudo`, `roles`, `password`, `is_verified`, `date_naissance`) VALUES
	(4, 'test@gmail.com', 'mhdstest', '[]', '$2y$13$n/6Owef8q1ikz.XonaMLJeLRhmVFzq1nj993fJlbvIStng7Jgaalm', 1, '2023-02-13 16:29:56'),
	(5, 'mhd@gmail.com', 'mhd', '["ROLE_ADMIN"]', '$2y$13$RYaUlQVYLrQJbv1bNYB2kewy1mvzIrv2cjg8YCchcynBqycOUMpHa', 1, '2023-02-13 16:29:57'),
	(6, 'fof@gmail.com', 'fof', '[]', '$2y$13$MILUZXgKalOW3Sew56lGJONlMA8vvIbrJbMSS/Iyxs1gzd4MvrtL.', 1, '2023-02-13 16:29:58'),
	(9, 'joli@gmail.com', 'Joli', '[]', '$2y$13$mxbw.7SzVdYXwpUsjRgeUesGBty66vMWBeBYqgpB17GvZHW2T.maS', 0, '2023-02-13 16:29:59'),
	(10, 'toli@gmail.com', 'Toli', '[]', '$2y$13$r.LFZPqi4d4/I.Rus7uFeOUYAQUq/Xt8EXFrRt8fLtNLeJWpASDaC', 0, '2023-02-13 16:30:00'),
	(11, 'nay@gmail.com', 'Nay', '[]', '$2y$13$VLo66tHWnvLYSBbhVu9M2.iESGClJ5f3PPrBZKBFKcw.rjO7jzb0O', 1, '2023-02-13 16:29:59'),
	(12, 'tot@gmail.com', 'Tota', '[]', '$2y$13$rqiouMRl6PoacSaOUD6SfOTPEzCwg9mnqSZv/.v.axBHiiw32CEHS', 0, '2018-01-01 00:00:00');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
