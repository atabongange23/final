-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2025 at 05:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_atabong.ange@ictuniversity.edu.cm|127.0.0.1', 'i:5;', 1748440502),
('laravel_cache_atabong.ange@ictuniversity.edu.cm|127.0.0.1:timer', 'i:1748440502;', 1748440502),
('laravel_cache_captcha_0559d486baae092f224f3aa5a7ac7eb6', 'a:9:{i:0;s:1:\"t\";i:1;s:1:\"d\";i:2;s:1:\"t\";i:3;s:1:\"6\";i:4;s:1:\"9\";i:5;s:1:\"h\";i:6;s:1:\"u\";i:7;s:1:\"q\";i:8;s:1:\"n\";}', 1747912817),
('laravel_cache_captcha_15b6f5e0c83f3b07b8be483588fc4fa3', 'a:9:{i:0;s:1:\"p\";i:1;s:1:\"a\";i:2;s:1:\"n\";i:3;s:1:\"7\";i:4;s:1:\"p\";i:5;s:1:\"z\";i:6;s:1:\"f\";i:7;s:1:\"e\";i:8;s:1:\"g\";}', 1747910879),
('laravel_cache_captcha_1a195cba6f1f8eaecaf2a7a1877c3181', 'a:9:{i:0;s:1:\"g\";i:1;s:1:\"p\";i:2;s:1:\"t\";i:3;s:1:\"p\";i:4;s:1:\"2\";i:5;s:1:\"g\";i:6;s:1:\"f\";i:7;s:1:\"9\";i:8;s:1:\"u\";}', 1747903857),
('laravel_cache_captcha_2b8c9e52a9ba63565bf705016b027381', 'a:9:{i:0;s:1:\"r\";i:1;s:1:\"u\";i:2;s:1:\"b\";i:3;s:1:\"p\";i:4;s:1:\"u\";i:5;s:1:\"p\";i:6;s:1:\"p\";i:7;s:1:\"b\";i:8;s:1:\"p\";}', 1747907456),
('laravel_cache_captcha_330decf630173501a7acae38d218cf43', 'a:9:{i:0;s:1:\"a\";i:1;s:1:\"d\";i:2;s:1:\"x\";i:3;s:1:\"t\";i:4;s:1:\"t\";i:5;s:1:\"e\";i:6;s:1:\"h\";i:7;s:1:\"m\";i:8;s:1:\"x\";}', 1747911485),
('laravel_cache_captcha_3f687087cb1ee2282b36404a4cebee01', 'a:9:{i:0;s:1:\"y\";i:1;s:1:\"z\";i:2;s:1:\"p\";i:3;s:1:\"9\";i:4;s:1:\"f\";i:5;s:1:\"b\";i:6;s:1:\"z\";i:7;s:1:\"t\";i:8;s:1:\"n\";}', 1747906296),
('laravel_cache_captcha_4fdccdd8f42c0baa7115c3daa0e61bb8', 'a:9:{i:0;s:1:\"y\";i:1;s:1:\"h\";i:2;s:1:\"y\";i:3;s:1:\"m\";i:4;s:1:\"c\";i:5;s:1:\"6\";i:6;s:1:\"d\";i:7;s:1:\"r\";i:8;s:1:\"j\";}', 1748441936),
('laravel_cache_captcha_6d51729e0c7baa737c374f5ce2872bff', 'a:9:{i:0;s:1:\"z\";i:1;s:1:\"m\";i:2;s:1:\"d\";i:3;s:1:\"b\";i:4;s:1:\"d\";i:5;s:1:\"d\";i:6;s:1:\"e\";i:7;s:1:\"9\";i:8;s:1:\"q\";}', 1747911812),
('laravel_cache_captcha_728ccd95b1ac79a80fa45e0bae36a741', 'a:9:{i:0;s:1:\"p\";i:1;s:1:\"9\";i:2;s:1:\"y\";i:3;s:1:\"h\";i:4;s:1:\"p\";i:5;s:1:\"n\";i:6;s:1:\"x\";i:7;s:1:\"d\";i:8;s:1:\"y\";}', 1748442111),
('laravel_cache_captcha_7897cd06ee926046150a6b2658fde3fe', 'a:9:{i:0;s:1:\"h\";i:1;s:1:\"m\";i:2;s:1:\"z\";i:3;s:1:\"f\";i:4;s:1:\"m\";i:5;s:1:\"q\";i:6;s:1:\"f\";i:7;s:1:\"h\";i:8;s:1:\"6\";}', 1747912894),
('laravel_cache_captcha_793d0f76d3aa49c41da5a3ff9af961b3', 'a:9:{i:0;s:1:\"n\";i:1;s:1:\"e\";i:2;s:1:\"n\";i:3;s:1:\"g\";i:4;s:1:\"g\";i:5;s:1:\"j\";i:6;s:1:\"8\";i:7;s:1:\"r\";i:8;s:1:\"y\";}', 1747911112),
('laravel_cache_captcha_7d592043510b1c3af46ed8ccee446bcb', 'a:9:{i:0;s:1:\"u\";i:1;s:1:\"y\";i:2;s:1:\"4\";i:3;s:1:\"c\";i:4;s:1:\"m\";i:5;s:1:\"r\";i:6;s:1:\"2\";i:7;s:1:\"y\";i:8;s:1:\"a\";}', 1747917495),
('laravel_cache_captcha_95a0045b5795519b2e2c41c75bb11d87', 'a:9:{i:0;s:1:\"x\";i:1;s:1:\"8\";i:2;s:1:\"h\";i:3;s:1:\"r\";i:4;s:1:\"q\";i:5;s:1:\"z\";i:6;s:1:\"t\";i:7;s:1:\"d\";i:8;s:1:\"4\";}', 1747911859),
('laravel_cache_captcha_9ce5b7cf9613f027577f4fcf74db18c4', 'a:9:{i:0;s:1:\"7\";i:1;s:1:\"y\";i:2;s:1:\"u\";i:3;s:1:\"b\";i:4;s:1:\"h\";i:5;s:1:\"x\";i:6;s:1:\"b\";i:7;s:1:\"j\";i:8;s:1:\"r\";}', 1748440388),
('laravel_cache_captcha_a7fb98131ed45e21cbc34767de0a007f', 'a:9:{i:0;s:1:\"r\";i:1;s:1:\"6\";i:2;s:1:\"7\";i:3;s:1:\"m\";i:4;s:1:\"3\";i:5;s:1:\"m\";i:6;s:1:\"p\";i:7;s:1:\"h\";i:8;s:1:\"g\";}', 1747911266),
('laravel_cache_captcha_b463d791b5f0a4566a5d0a3999ba6173', 'a:9:{i:0;s:1:\"8\";i:1;s:1:\"a\";i:2;s:1:\"q\";i:3;s:1:\"x\";i:4;s:1:\"9\";i:5;s:1:\"j\";i:6;s:1:\"c\";i:7;s:1:\"u\";i:8;s:1:\"c\";}', 1747910235),
('laravel_cache_captcha_bcfe32f92c8774ea8ddf83bf567a3079', 'a:9:{i:0;s:1:\"f\";i:1;s:1:\"r\";i:2;s:1:\"f\";i:3;s:1:\"r\";i:4;s:1:\"p\";i:5;s:1:\"e\";i:6;s:1:\"b\";i:7;s:1:\"p\";i:8;s:1:\"a\";}', 1747910822),
('laravel_cache_captcha_c8fa2c9355facd9738ab0a2e60fda18a', 'a:9:{i:0;s:1:\"y\";i:1;s:1:\"u\";i:2;s:1:\"j\";i:3;s:1:\"9\";i:4;s:1:\"e\";i:5;s:1:\"b\";i:6;s:1:\"q\";i:7;s:1:\"c\";i:8;s:1:\"j\";}', 1747907684),
('laravel_cache_captcha_ca05572d1a8476b90a65d8ddb1ba7e0a', 'a:9:{i:0;s:1:\"g\";i:1;s:1:\"x\";i:2;s:1:\"u\";i:3;s:1:\"q\";i:4;s:1:\"a\";i:5;s:1:\"m\";i:6;s:1:\"r\";i:7;s:1:\"z\";i:8;s:1:\"q\";}', 1747908253),
('laravel_cache_captcha_d557ef21e8f33c4bc41622ebbcb36970', 'a:9:{i:0;s:1:\"m\";i:1;s:1:\"h\";i:2;s:1:\"c\";i:3;s:1:\"h\";i:4;s:1:\"r\";i:5;s:1:\"z\";i:6;s:1:\"4\";i:7;s:1:\"p\";i:8;s:1:\"6\";}', 1748441374),
('laravel_cache_captcha_d7e865c01f5ca916f2c7b574ecae4622', 'a:9:{i:0;s:1:\"q\";i:1;s:1:\"p\";i:2;s:1:\"z\";i:3;s:1:\"p\";i:4;s:1:\"j\";i:5;s:1:\"j\";i:6;s:1:\"n\";i:7;s:1:\"c\";i:8;s:1:\"x\";}', 1747917449),
('laravel_cache_captcha_dfa1787303331ee4ce690a03902cb71a', 'a:9:{i:0;s:1:\"x\";i:1;s:1:\"r\";i:2;s:1:\"f\";i:3;s:1:\"d\";i:4;s:1:\"x\";i:5;s:1:\"h\";i:6;s:1:\"q\";i:7;s:1:\"c\";i:8;s:1:\"g\";}', 1747911344),
('laravel_cache_captcha_e3a7d477ad2861a79fe66a219f202b02', 'a:9:{i:0;s:1:\"u\";i:1;s:1:\"3\";i:2;s:1:\"n\";i:3;s:1:\"m\";i:4;s:1:\"c\";i:5;s:1:\"c\";i:6;s:1:\"7\";i:7;s:1:\"m\";i:8;s:1:\"h\";}', 1747911480),
('laravel_cache_captcha_e57b65172d0fc03912d8d251dad605d9', 'a:9:{i:0;s:1:\"2\";i:1;s:1:\"m\";i:2;s:1:\"u\";i:3;s:1:\"c\";i:4;s:1:\"7\";i:5;s:1:\"t\";i:6;s:1:\"2\";i:7;s:1:\"n\";i:8;s:1:\"z\";}', 1747910748),
('laravel_cache_captcha_e640fb6b459a138b26d16dc68c344510', 'a:9:{i:0;s:1:\"f\";i:1;s:1:\"8\";i:2;s:1:\"u\";i:3;s:1:\"h\";i:4;s:1:\"h\";i:5;s:1:\"f\";i:6;s:1:\"r\";i:7;s:1:\"t\";i:8;s:1:\"d\";}', 1747904250);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_05_21_145747_create_otp_codes_table', 2),
(5, '2025_05_21_153755_add_phone_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `otp_codes`
--

CREATE TABLE `otp_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9ROR6QWV586cQzsXTkegXvAYhWGvkSAW7YzArIg3', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiM3dsQWNIQnNYcWQ4U1V4MDZkcm5VQ3JWOGR6bWdJS3o3Y3Y2Y3JwTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jYXB0Y2hhL2RlZmF1bHQ/UzVweGZOdFc9Ijt9czo3OiJjYXB0Y2hhIjthOjM6e3M6OToic2Vuc2l0aXZlIjtiOjA7czozOiJrZXkiO3M6NjA6IiQyeSQxMiRmOEdZdDNuNEQ3VlpvR29qNVlRV1p1Zng1NnNPQUovcVhqLzBqZXlOemNCbTg5NHBHbUZuNiI7czo3OiJlbmNyeXB0IjtiOjA7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjc7fQ==', 1748442339),
('hWq1xh61sszWdrxDysO2qxlXWza6tEgRgLur03OW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUE1hbXJQakNpeFhyVThPY2lXS3NwNmZlMFJUeW1BQnlDYW9LSjBGcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1748440282);

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
(1, 'Test', 'test@example.com', NULL, '$2y$12$peKiiM/e4ov.Dwpfi41JGuHCKSFi1p0c9M9Le2m6w236fOtioNisG', NULL, '2025-05-21 13:56:38', '2025-05-21 13:56:38'),
(2, 'atabong', 'angelnkini89@gmail.com', NULL, '$2y$12$FegV2Q63wlI2pL/i4Sb3Ve6xzJUzFoouMoFksL3Atp.Aej.ea/RHK', NULL, '2025-05-21 15:15:43', '2025-05-21 15:15:43'),
(3, 'ngole', 'ngole.kede@ictuniversity.edu.cm', NULL, '$2y$12$yxkrvQosuJe4PpXVZFMGSegzbMX68ZFEOe/T7RcwuUnOgOmlZI/au', NULL, '2025-05-21 19:05:07', '2025-05-21 19:05:07'),
(4, 'lucy', 'lucyjames@gmail.com', NULL, '$2y$12$CI9ct5eC0FhMjc/JC55beO/O7GHE9VZ6ZcABAz/8Lfd.TJoF0oh.i', NULL, '2025-05-21 20:28:33', '2025-05-21 20:28:33'),
(5, 'ngome', 'ngome@gmail.com', NULL, '$2y$12$vwrWyBwUPa.sF/KiOHrgcOfJfZKsn7m9zavHSCynG3EFH/C9QlVt2', NULL, '2025-05-22 09:44:24', '2025-05-22 09:44:24'),
(6, 'Williams', 'williams@gmail.com', NULL, '$2y$12$6qRbuwLxcHvnf/X3JE7IlO2x5j0QliRpNZ2v9B1oGFreRG6MsFxHC', NULL, '2025-05-28 12:55:56', '2025-05-28 12:55:56'),
(7, 'hello', 'hello@email.com', NULL, '$2y$12$cn4dtJxAejHeY.BvJ/2o2OCS9o6D1gE11/a5/XR8pnach0pyizDl.', NULL, '2025-05-28 12:59:55', '2025-05-28 12:59:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_codes`
--
ALTER TABLE `otp_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `otp_codes`
--
ALTER TABLE `otp_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
