-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.24 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para crud-alpes-one
CREATE DATABASE IF NOT EXISTS `crud-alpes-one` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `crud-alpes-one`;

-- Copiando estrutura para tabela crud-alpes-one.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela crud-alpes-one.migrations: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Copiando estrutura para tabela crud-alpes-one.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela crud-alpes-one.password_resets: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Copiando estrutura para tabela crud-alpes-one.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idade` int(11) NOT NULL,
  `cpf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `funcao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_cpf_unique` (`cpf`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela crud-alpes-one.users: ~51 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `nome`, `idade`, `cpf`, `email`, `celular`, `funcao`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Lucas Vinicios Martins', 24, '12838472640', 'lucas03188@hotmail.com', '(31)99404-7139', 'Analista senior', NULL, '2020-05-25 10:59:38', '2020-05-25 10:59:38'),
	(2, 'Kaley Lemke', 45, '321.456.874-19', 'rickie14@example.org', '(31) 99887-5564', 'Agricultural Product Grader Sorter', 'zO5XqcLAd4', '2020-05-25 14:29:00', '2020-05-25 19:58:35'),
	(3, 'Stefan Deckow III', 48, '124.654.987-71', 'schultz.kyler@example.com', '(41) 97456-3218', 'Computer Science Teacher', 'pGBxaMyZEk', '2020-05-25 14:29:00', '2020-05-25 23:46:20'),
	(4, 'Aurelia Smitham IV', 24, '+8974250868086', 'gibson.sophia@example.net', '386-417-4680 x84436', 'Veterinary Assistant OR Laboratory Animal Caretaker', 'TWmQ1PsGDV', '2020-05-25 14:29:00', '2020-05-25 14:29:00'),
	(5, 'Iva Hessel', 43, '+8787269601235', 'fpadberg@example.com', '1-845-687-2459 x452', 'Medical Assistant', 'OJByxNyeXi', '2020-05-25 14:29:01', '2020-05-25 14:29:01'),
	(6, 'Orion Erdman', 38, '514.782.456-12', 'shanie.hand@example.org', '(11) 98764-5526', 'Food Scientists and Technologist', 'mvXl3Cjw5e', '2020-05-25 14:29:01', '2020-05-26 02:26:08'),
	(7, 'Ethel Bednar I', 41, '+7231342827485', 'drew20@example.org', '535-715-6495 x1463', 'Forming Machine Operator', 'jgQQFpzlA1', '2020-05-25 14:29:01', '2020-05-25 14:29:01'),
	(8, 'Ciara Reilly', 18, '+4190574448276', 'nadia58@example.com', '826.794.3588 x3980', 'Political Scientist', 'otBzfGuKGQ', '2020-05-25 14:29:01', '2020-05-25 14:29:01'),
	(9, 'Gonzalo Reichert DVM', 20, '+9065141683871', 'ndach@example.org', '+16168240093', 'Manufactured Building Installer', 'RExQVRXjmp', '2020-05-25 14:29:01', '2020-05-25 14:29:01'),
	(10, 'Lexi Beier Jr.', 44, '283.434.375-74', 'green.ruthie@example.net', '(51) 99473-370', 'Transportation Equipment Painters', 'RHZgnjFfRu', '2020-05-25 14:29:01', '2020-05-26 02:36:44'),
	(11, 'Ruben Jenkins', 23, '+1783083588558', 'carissa.bernhard@example.net', '387-544-6441 x9201', 'Building Cleaning Worker', '4XL6z4iHli', '2020-05-25 14:29:01', '2020-05-25 14:29:01'),
	(12, 'Miss Brandi Pagac DDS', 29, '+7299934960758', 'xzavier.stracke@example.net', '+1.879.252.4810', 'Funeral Director', 'RgTIylAfh8', '2020-05-25 14:29:01', '2020-05-25 14:29:01'),
	(13, 'Hobart Jenkins Sr.', 38, '+5083059308254', 'hbogisich@example.com', '835.955.0186', 'Law Enforcement Teacher', 'YXvguS1wK5', '2020-05-25 14:29:01', '2020-05-25 14:29:01'),
	(14, 'Paxton Altenwerth', 34, '+1449986459231', 'virgie47@example.org', '1-365-774-3837', 'Architecture Teacher', 'mOtTiVqXD7', '2020-05-25 14:29:01', '2020-05-25 14:29:01'),
	(15, 'Bernhard Metz', 30, '+5830484365122', 'lester21@example.com', '972.331.2683 x074', 'Dragline Operator', 'v0GMhS8qBH', '2020-05-25 14:29:01', '2020-05-25 14:29:01'),
	(16, 'Toby Hirthe', 34, '+5168393219762', 'samanta.okuneva@example.net', '578-517-4234', 'Hazardous Materials Removal Worker', 'nyCVDNYvvP', '2020-05-25 14:29:01', '2020-05-25 14:29:01'),
	(17, 'Luisa Dach', 31, '+3197315887050', 'jacobi.marguerite@example.net', '1-995-371-4212 x291', 'Legislator', '3mcquN2Hho', '2020-05-25 14:29:01', '2020-05-25 14:29:01'),
	(18, 'Oliver Sawayn', 34, '+8611678768748', 'connelly.ramon@example.com', '+1.797.246.7036', 'Nuclear Medicine Technologist', 'KnCqiBovWB', '2020-05-25 14:29:01', '2020-05-25 14:29:01'),
	(19, 'Ms. Cristal Durgan Sr.', 43, '+2021256986423', 'vwehner@example.com', '(949) 607-2907', 'Training Manager OR Development Manager', 'rF1L150MRv', '2020-05-25 14:29:01', '2020-05-25 14:29:01'),
	(20, 'Louisa Bosco Sr.', 23, '+4370622062426', 'rudy.goodwin@example.org', '1-751-672-9340 x2419', 'Writer OR Author', 'SGiUybx3Md', '2020-05-25 14:29:01', '2020-05-25 14:29:01'),
	(21, 'Jacklyn Champlin', 32, '+6474605255730', 'sipes.davion@example.net', '+1 (526) 634-7567', 'Pressure Vessel Inspector', 'C2o4QzVE6Z', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(22, 'Caesar Miller', 42, '+1954504995411', 'rossie22@example.org', '(353) 775-3357', 'Home Economics Teacher', '0x2k6uDZE2', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(23, 'Kristopher Dickens', 47, '+3045663255797', 'iosinski@example.net', '1-451-253-2581 x143', 'Explosives Expert', 'Q6q3mwHfrM', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(24, 'Ryleigh Bosco', 21, '+4214928626226', 'ukovacek@example.com', '550.544.9814 x7527', 'Court Clerk', 'a9B1Aad2xS', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(25, 'Prof. Gaetano Upton Jr.', 45, '+1331082040203', 'anna71@example.com', '(550) 907-1201', 'Food Preparation Worker', '8whbys6TDO', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(26, 'Mattie Stracke', 21, '+9825042612462', 'kayden.stroman@example.com', '(843) 505-7583 x033', 'Locomotive Firer', 'AYXGZOOdGk', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(27, 'Dr. Morris Krajcik', 19, '+5041239956373', 'dessie.anderson@example.com', '(605) 202-0441', 'Housekeeping Supervisor', 'zxLVZ6CuUA', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(28, 'Prof. Amy Berge Sr.', 48, '+4728418318632', 'delia22@example.net', '959-222-6296', 'Gaming Manager', 'i7WQ5rnf8q', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(29, 'Marques Sawayn', 50, '+3489873024471', 'hstiedemann@example.net', '1-731-436-9223 x2350', 'Farm and Home Management Advisor', 'FTdvaMyqI5', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(30, 'Noble Reichel', 42, '+1996858631401', 'olga89@example.net', '+1-529-821-4296', 'Supervisor of Customer Service', 'POTf6zuqMn', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(31, 'Raina Bayer', 35, '+1367855057584', 'reynolds.arne@example.org', '557.466.7750', 'Streetcar Operator', 'gtWlpEF693', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(32, 'Laury Bode', 31, '+5421160059205', 'chuels@example.org', '+1 (517) 493-9112', 'Materials Scientist', '7zAXfYOZcc', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(33, 'Rogers Turcotte', 25, '+2530093945647', 'ciara.robel@example.com', '+1-310-565-8165', 'Gas Appliance Repairer', 'QISiHIi0OQ', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(34, 'Kristian Graham', 37, '+8329453925750', 'tillman.tod@example.org', '(772) 863-9240 x030', 'Sociology Teacher', 'RUuVdpgm5D', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(36, 'Prof. Lorenza Herzog', 39, '+1117246416066', 'richard40@example.com', '+1-273-276-2597', 'Shuttle Car Operator', 'yJNiMjSHjM', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(37, 'Ian Dickinson I', 41, '+2504861615402', 'melyna.legros@example.net', '(483) 722-3482', 'Environmental Engineer', 'kIT5TQ6p5G', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(38, 'Bridie Mosciski', 48, '+3444334275979', 'jhuels@example.com', '1-232-773-2052', 'Plumber OR Pipefitter OR Steamfitter', 'PVN44z7M2E', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(39, 'Miss Earline Kuhlman Jr.', 47, '+1449617301493', 'gkub@example.org', '+1 (909) 710-5330', 'Taxi Drivers and Chauffeur', 'qt5O4uoAUr', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(40, 'Triston Hoppe', 38, '+6875802627828', 'fpouros@example.org', '(432) 385-2362 x199', 'Mechanical Equipment Sales Representative', 'kE0123Z1VV', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(41, 'Mr. Collin Walter', 46, '+9700250134007', 'bahringer.cecil@example.org', '(512) 981-9038', 'Home', 'x8S1JeHigK', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(42, 'Treva Adams MD', 39, '+1335461184702', 'laurine.tremblay@example.com', '354-365-0077 x3808', 'Word Processors and Typist', 'CtAvO6D7g8', '2020-05-25 14:29:02', '2020-05-25 14:29:02'),
	(43, 'Dr. Emilio Anderson DDS', 37, '+5548288773343', 'aurelie.russel@example.org', '413-341-2436 x246', 'Biochemist', 'fKJFXe8jZl', '2020-05-25 14:29:03', '2020-05-25 14:29:03'),
	(44, 'Paige Schimmel V', 42, '+1558556293861', 'hane.matilda@example.net', '+1-304-809-8949', 'Directory Assistance Operator', 'IkFHE1qs31', '2020-05-25 14:29:03', '2020-05-25 14:29:03'),
	(45, 'Dr. Vella Sawayn', 23, '+5202417563735', 'morris.cartwright@example.net', '424.442.3255 x3325', 'Textile Cutting Machine Operator', '5Fjwj39rzD', '2020-05-25 14:29:03', '2020-05-25 14:29:03'),
	(46, 'Heber Gorczany', 28, '+8416895244059', 'stiedemann.alyce@example.com', '994.514.7335 x26886', 'Underground Mining', 'dDVKE0MPNb', '2020-05-25 14:29:03', '2020-05-25 14:29:03'),
	(47, 'Maximillian Koss', 31, '+3033073942743', 'elaina10@example.org', '234-990-6700', 'Electrolytic Plating Machine Operator', '1ccpcnaKAs', '2020-05-25 14:29:03', '2020-05-25 14:29:03'),
	(48, 'Miss Erna Schinner V', 46, '+3443457300031', 'turner.lavada@example.org', '1-463-561-9108 x5231', 'Production Worker', 'uhz4qEhI38', '2020-05-25 14:29:03', '2020-05-25 14:29:03'),
	(49, 'Will Gerhold', 19, '+4710145344520', 'solon11@example.net', '+1 (510) 856-5915', 'Movers', 'hggfnLmc8J', '2020-05-25 14:29:03', '2020-05-25 14:29:03'),
	(50, 'Luther Prosacco', 49, '+4686764864502', 'sasha.gulgowski@example.org', '+1.378.363.6624', 'Head Nurse', 'GWtuetK2BY', '2020-05-25 14:29:03', '2020-05-25 14:29:03'),
	(51, 'Fay Klocko', 37, '+2235831030577', 'bkautzer@example.com', '831.635.4725 x249', 'Radiologic Technologist and Technician', 'GlRUS6koS7', '2020-05-25 14:29:03', '2020-05-25 14:29:03'),
	(53, 'Marcos Leal', 33, '126.541.894-63', 'marcos@gmail.com', '(31) 99494-2525', 'Web Designer', NULL, '2020-05-26 02:28:24', '2020-05-26 02:28:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
