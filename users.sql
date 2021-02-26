-- -------------------------------------------------------------
-- TablePlus 3.12.4(360)
--
-- https://tableplus.com/
--
-- Database: queue_laravel_vue
-- Generation Time: 2021-02-26 16:56:22.0690
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `problem` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solve_time` int DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `problem`, `solve_time`, `status`, `created_at`, `updated_at`) VALUES
('1', 'Dr. Lucienne Boyer I', 'masalah atm tertelan', '5', 'ON QUEUE', '2021-02-25 12:19:10', '2021-02-26 09:24:48'),
('2', 'Adell Swift II', 'masalah atm terblokir', '10', 'ON QUEUE', '2021-02-25 12:19:10', '2021-02-26 09:12:45'),
('3', 'Vanessa Corwin', 'masalah salah transfer', '45', 'ON QUEUE', '2021-02-25 12:19:10', '2021-02-26 09:37:13'),
('4', 'Amie Treutel', 'masalah atm terblokir', '10', 'ON QUEUE', '2021-02-25 12:19:10', '2021-02-26 09:25:06'),
('5', 'Mr. Quinn Friesen', 'masalah mengambil uang di atm, dananya sudah terpotong tetapi uang tidak keluar', '120', 'ON QUEUE', '2021-02-25 12:19:10', '2021-02-26 09:34:13');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;