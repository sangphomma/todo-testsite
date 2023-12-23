-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2023 at 12:59 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_22_225850_create_todos_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `tags` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tags`)),
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`images`)),
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `name`, `tags`, `images`, `published`, `created_at`, `updated_at`) VALUES
(1, 'Selmer Friesen', '\"it\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/007700?text=recusandae\"', 1, '2023-12-22 16:10:13', '2023-12-22 16:39:45'),
(2, 'Dewitt Windler DDS', '\"it\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/003300?text=numquam\"', 0, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(3, 'Santa Halvorson', '\"sport\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/009922?text=temporibus\"', 0, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(4, 'Irma Waters IV', '\"entertainment\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/00dd55?text=et\"', 1, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(5, 'Joanne Jenkins V', '\"garden\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/008800?text=deleniti\"', 1, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(6, 'Prof. Kory Sawayn V', '\"garden\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/00dd55?text=doloremque\"', 1, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(7, 'Lillie Nader', '\"garden\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/006655?text=quo\"', 0, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(8, 'Emanuel Homenick', '\"garden\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/001100?text=odio\"', 1, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(9, 'Bernadine Leannon', '\"home\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/00aa55?text=iure\"', 0, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(10, 'Louvenia Murazik', '\"it\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/006633?text=rem\"', 1, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(11, 'Mckayla Langworth', '\"garden\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/00ccaa?text=est\"', 1, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(12, 'Bradley Baumbach', '\"entertainment\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/0000cc?text=et\"', 1, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(13, 'Dr. Margarette Sporer MD', '\"it\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/009922?text=nesciunt\"', 1, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(14, 'Creola O\'Hara', '\"it\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/009922?text=dolorem\"', 1, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(15, 'Justus Goodwin', '\"home\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/00cc77?text=architecto\"', 1, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(16, 'Dr. Euna White V', '\"entertainment\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/00ff00?text=commodi\"', 0, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(17, 'Mrs. Ida Watsica', '\"home\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/00aa22?text=voluptate\"', 0, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(18, 'Jevon Rolfson MD', '\"sport\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/00ccff?text=magni\"', 1, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(19, 'Taya Hand', '\"garden\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/004422?text=et\"', 0, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(20, 'Kiel Kilback', '\"entertainment\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/0099aa?text=et\"', 0, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(21, 'Deion Dibbert', '\"sport\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/00aa66?text=rerum\"', 0, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(22, 'Sophia Murray DDS', '\"sport\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/004466?text=maxime\"', 1, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(23, 'Justina Klein', '\"it\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/005555?text=accusamus\"', 0, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(24, 'Mark Waters', '\"it\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/00ff88?text=omnis\"', 0, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(25, 'Althea Dibbert', '\"it\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/00bb11?text=non\"', 0, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(26, 'Mr. Jess Erdman V', '\"sport\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/001122?text=itaque\"', 1, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(27, 'Dr. Lessie Kertzmann', '\"entertainment\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/008855?text=aut\"', 0, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(28, 'Amina Christiansen', '\"home\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/0099bb?text=non\"', 0, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(29, 'Mrs. Robyn Mohr', '\"it\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/00bbcc?text=saepe\"', 1, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(30, 'Gerda Langworth', '\"it\"', '\"https:\\/\\/via.placeholder.com\\/400x400.png\\/00dd88?text=consequatur\"', 0, '2023-12-22 16:10:13', '2023-12-22 16:10:13'),
(31, 'Korn Sangphomma', '[\"Hadsome\",\"smart\",\"Developer\"]', '[\"todos-images\\/01HJ9XWHDZ37FVEFCQTK0TMC5X.jpg\",\"todos-images\\/01HJ9XWHE3KPG7P199PY2KY12W.jpg\"]', 1, '2023-12-22 16:31:06', '2023-12-22 16:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Korn.S', 'sirikorn.s@outlook.com', NULL, '$2y$12$4hQr7/aDzcLgq5dpYFW3fetI.bHqGcT.k8ycomAMStFaVo5yOeYuG', 'n8PD8ZH6VpVghzQ4PlzkfMZUrdjMEozmxbZerSiU40dlZ4OHDNAms5u8rYAn', '2023-12-22 15:55:27', '2023-12-22 15:55:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
