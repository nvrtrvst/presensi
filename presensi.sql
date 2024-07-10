-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 10, 2024 at 06:01 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `presensi`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `latitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('attend','sick','leave','permit','bussiness_trip','remote') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `user_id`, `latitude`, `longitude`, `address`, `status`, `description`, `created_at`, `updated_at`) VALUES
('2b6966dc-64bd-4213-9e2c-6f6334119d9c', 202, NULL, NULL, NULL, 'attend', NULL, '2024-06-28 21:55:16', '2024-06-28 21:55:16'),
('4c7ee330-e91c-4399-90a2-1e7adc0729e7', 202, NULL, NULL, NULL, 'leave', 'ijin mengantar istri', '2024-06-28 21:36:40', '2024-06-28 21:36:40'),
('5550ebf3-9823-4eb2-976c-4ae9658cd6f4', 202, '-7.3170944', '108.1638912', NULL, 'attend', NULL, '2024-06-28 22:39:42', '2024-06-28 22:39:42'),
('7feee96f-fea0-47cd-a2fc-6239a0843cb1', 1, NULL, NULL, NULL, 'attend', NULL, '2024-06-28 21:35:18', '2024-06-28 21:35:18'),
('ad9f9ed2-b1da-46a1-a284-9999b44a798c', 202, '-7.3170944', '108.1638912', NULL, 'attend', NULL, '2024-06-28 22:39:19', '2024-06-28 22:39:19'),
('f1a761ac-4ee5-4085-99fb-f9567f364445', 202, '-7.3170944', '108.1638912', NULL, 'attend', NULL, '2024-06-28 22:39:16', '2024-06-28 22:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_21_130749_add_column_role_to_table_user', 2),
(5, '2024_06_28_065115_attendances', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('eg2LLRJEwXYR4sigGIHaL5YdKJpmdrPqovRDcp2K', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS1BFYThzcGsxckxkdm13RGlWdmtHc2tYNnNUaDRCUXdlbWtIMFdmSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1720582453),
('ydjWHtFmk0ezHiy1sfBVaMJgfhChF3x7DwRdHqQ4', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZllQbW1ramZJekpIdExxbGRPQVFVMmp0eVRmd0F0aGlpbVB1ZmpuOCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1720422901);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Admin', 'admin@mail.com', NULL, '$2y$12$H71h1qjeRNLwsW2URL5BKuZa61VctzLdBydaW9QnJaDab/zi.Yobm', NULL, '2024-06-12 21:47:51', '2024-06-12 21:47:51', 'admin'),
(2, 'Dr. Davonte Bradtke 3', 'bartell.florine@example.net', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'oF5wRfyLoq', '2024-06-13 01:17:16', '2024-06-24 01:06:48', 'user'),
(3, 'Cathryn Goyette', 'ggoyette@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'JNH5mskd1t', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(4, 'Jace Keeling', 'sylvester.monahan@example.org', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'hBEpDivSIK', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(5, 'Eugene Reynolds', 'jenifer.muller@example.net', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'E3jeLi7T1E', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(6, 'Mrs. Josie Vandervort', 'joseph95@example.net', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'Ir1UpoGIxS', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(7, 'Mr. Jamil Olson', 'dereck96@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'hnxVAXiJer', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(8, 'Reyes Weimann', 'mfahey@example.net', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'EZ6hWRdUYg', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(9, 'Elias Shanahan', 'dschuster@example.org', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'R2AUWiQbmk', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(10, 'Ebony Labadie I', 'thad.marvin@example.net', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'vMQPG7t67p', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(11, 'Etha Schowalter', 'schowalter.marilyne@example.org', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'ZaE4oMMcIE', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(12, 'Roma Carter', 'abby.simonis@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'tFeWM2My34', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(13, 'Prof. Kennedy DuBuque DDS', 'lionel05@example.net', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'SexJCbI18P', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(14, 'Rahsaan Bailey', 'tbatz@example.net', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'C0giMHSFW2', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(15, 'Mrs. Pink Stokes II', 'keagan62@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'WOXHd6uCsn', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(16, 'Jedidiah Russel', 'ihodkiewicz@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'a9Jq6tCHSr', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(17, 'Prof. Glen Lakin', 'ursula92@example.org', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', '3KJUQfc4Nc', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(18, 'Miss Carlotta Cronin I', 'tomas.murazik@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'VyyE22POpE', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(19, 'Leilani Sanford II', 'mitchell.wunsch@example.net', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'AYhrqgg5Zv', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(20, 'Ms. Jackie Schaden MD', 'wbernier@example.net', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'uiPJATmhgO', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(21, 'Dr. Evelyn Kunze', 'wtorp@example.org', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'uE4TruzVDP', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(22, 'Prof. Giovanny Huels', 'connie09@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'YFiMRs62la', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(23, 'Prof. Jarvis Bayer Jr.', 'barry02@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'tFnspXUw8C', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(24, 'Miss Alda Williamson', 'treutel.deven@example.org', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'naeZpywVic', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(25, 'Christiana Stark', 'anderson.gutmann@example.net', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'EvpT5NqBfk', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(26, 'Bryana Towne', 'gcruickshank@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', '5vWePR7EVH', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(27, 'Madelyn Feeney I', 'bleffler@example.net', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'akC1VG3eYx', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(28, 'Ms. Brenna McCullough MD', 'jaron.nienow@example.net', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'LUelnCUHSW', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(29, 'Eliseo Schumm', 'armand54@example.net', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'DbjcR8vo1K', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(30, 'Dandre Beier', 'sarai.fisher@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'CkuxdHHoXE', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(31, 'Miss Opal Watsica DDS', 'schuppe.brayan@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'VpmxcPBMP2', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(32, 'Benny Nikolaus', 'julie66@example.org', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'MnbiWI5pUV', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(33, 'Prof. Federico Brakus MD', 'zella98@example.net', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'ZBKPntmKCw', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(34, 'Dandre Lemke III', 'cormier.kiara@example.org', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'vR7C2BXcyn', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(35, 'Neva Stiedemann', 'bart85@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'vSNG2rtaVP', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(36, 'Brayan Hodkiewicz', 'npagac@example.net', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'J7BiZlIbTJ', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(37, 'Mr. Riley Roberts', 'geraldine.schulist@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'nlnmZ3KiAj', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(38, 'Cara Balistreri', 'dessie.legros@example.org', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'F6JT697pmk', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(39, 'Bailey Macejkovic', 'ivy33@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'PCKw6WTmL6', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(40, 'Claire Streich', 'hjohns@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'GFMOo8nVpb', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(41, 'Paula Hansen', 'dweissnat@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'J5W8FNx8xP', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(42, 'Dr. Judd Wolff MD', 'obeatty@example.net', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', '2BN0ajie7M', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(43, 'Carmen Feil', 'fgoodwin@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'whJSbQSeHX', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(44, 'Dr. Victor Walker II', 'elody.keebler@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'wsZFFvLPFQ', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(45, 'Leonora Toy', 'kuhic.gay@example.net', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'HIaalaiyPw', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(46, 'Kobe Kertzmann', 'treutel.leslie@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', '1jMUlS6qWN', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(47, 'Dr. Arlo Weissnat', 'mraz.madelyn@example.com', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'f3yiP95NEW', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(48, 'Leta Schaefer', 'desmond87@example.org', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'YECIg6DAD7', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(49, 'Ms. Whitney Jacobson', 'tcorkery@example.net', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', '436zSdGCPq', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(50, 'Michelle Schuppe II', 'oframi@example.org', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'Q7TdTzTnYp', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(51, 'Ms. Mariana Jakubowski', 'brekke.jazlyn@example.org', '2024-06-13 01:17:16', '$2y$12$P4fuOqc9vGZvmJXYuvL5tuvTnFlwQZFceC0TDqWaefIAOSjGIDkl6', 'QFu1gGa8iP', '2024-06-13 01:17:16', '2024-06-13 01:17:16', 'user'),
(52, 'Josiane Adams DVM', 'grady51@example.org', '2024-06-13 02:20:48', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'lCp9EC8dU5', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(53, 'Daryl Monahan', 'cartwright.simone@example.com', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'Lf5IeBU8gL', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(54, 'Mr. Isom Barton DVM', 'daniella75@example.org', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'gYKZmunyf9', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(55, 'Dr. Justyn Heidenreich I', 'sanford.tomasa@example.com', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'X2KXGL2ELN', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(56, 'Jena Russel', 'lmckenzie@example.com', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'THwjkAapN5', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(57, 'Mrs. Serena Macejkovic Jr.', 'therese.buckridge@example.net', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'T3wpQtjhDY', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(58, 'Jeffery Wisozk', 'madyson30@example.net', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', '03QiXR7Yhd', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(59, 'Abby Murazik', 'fisher.kari@example.org', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'IUQZOP5C0R', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(60, 'Dr. Ressie Hammes', 'pgraham@example.com', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'eFGiXzPPwf', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(61, 'Emmitt Krajcik', 'wfeil@example.net', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'MDrqAbE7g5', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(62, 'Chelsey Baumbach', 'haven54@example.net', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', '2j6cxjV8tb', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(63, 'Kailee Deckow', 'eve89@example.com', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'lzoNp2xEn1', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(64, 'Ms. Kassandra Goldner', 'torphy.asa@example.org', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'kTsUfjEvBP', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(65, 'Marlene Flatley', 'stoltenberg.mervin@example.net', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'b9TGpXuAh7', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(66, 'Kennedy Spencer', 'bennett.hickle@example.org', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'KUR1AeHkFm', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(67, 'Barton Langosh II', 'hkuhlman@example.org', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'rI2uDgfJzX', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(68, 'Miss Cordia Hintz', 'iabernathy@example.org', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'NJNz4YBoYB', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(69, 'Tyrel Corwin', 'mcclure.sophie@example.com', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'j35bjsH0iD', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(70, 'Kristoffer Wolff', 'casey.kihn@example.net', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'AxuiuKNAa2', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(71, 'Arielle Schulist', 'ycorkery@example.net', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'h49HaSf2QL', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(72, 'Mrs. Carolina Rohan Jr.', 'wayne04@example.org', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'r7WgN7Q1Jo', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(73, 'Aniya Conroy', 'mireya.marquardt@example.org', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'dhdy5Kxwpr', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(74, 'Zoila Kling I', 'zieme.damon@example.com', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'xbo3CSzoF4', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(75, 'Brian Dare', 'rahsaan60@example.net', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'EYtQlwyuFY', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(76, 'Miss Emmie Kulas V', 'kcrooks@example.net', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'uzdorhJqvA', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(77, 'Jared Huel V', 'senger.gaetano@example.net', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'yIhPBZffme', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(78, 'Clarabelle Mohr', 'tstanton@example.org', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'NRI3POdPcp', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(79, 'Miss Albertha Ruecker II', 'okeefe.arno@example.net', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'PPIxdyrdz7', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(80, 'Myron Hoeger', 'tomasa23@example.net', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'bGXHqt3WxG', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(81, 'Lazaro Brown', 'morgan.koepp@example.net', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'CDVS0DWOcB', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(82, 'Kaelyn Botsford', 'maggio.kathleen@example.org', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', '1KtaDKUJHh', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(83, 'Aurelie Reinger Jr.', 'danika00@example.com', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'n8RrciFSWu', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(84, 'Naomi Fisher', 'krippin@example.net', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'o82Gfpk6uu', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(85, 'Miss Jessyca Johnston', 'kovacek.brianne@example.net', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'Fq8lhtyZeQ', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(86, 'Mrs. Hillary Kling', 'farrell.aaliyah@example.org', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'yZOItXqSP9', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(87, 'Mozell Kshlerin', 'kertzmann.delphine@example.org', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', '2gOkfLmQ9s', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(88, 'Javier Miller', 'bins.ruthie@example.org', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'LTc4faScQ4', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(89, 'Erin Lakin', 'issac.sipes@example.com', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'Pk5YvVvXqZ', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(90, 'Justine Wiegand', 'gwendolyn88@example.net', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'uZwz4rXyrD', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(91, 'Monte Leannon', 'pedro79@example.org', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'Zt3Nxsh3MH', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(92, 'Kiana O\'Reilly', 'jayce.gaylord@example.net', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', '12fHhMfAh3', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(93, 'Timothy Jacobi', 'matteo50@example.com', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'Ot6Q2OmbXP', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(94, 'Deven Leffler', 'krajcik.alexandrea@example.net', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'J1dix8Lt9o', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(95, 'Beaulah Leuschke', 'marvin.pablo@example.org', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'YWJVsDZ2cs', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(96, 'Webster Mante', 'ashlee.green@example.org', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'VIBXBfIZVy', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(97, 'Felton White', 'wilson12@example.com', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'HqYL6nsizd', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(98, 'Keeley Wintheiser Sr.', 'hegmann.turner@example.org', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'ggq1qMgldf', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(99, 'Tracy Kris', 'lebsack.rick@example.com', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'HyrFr97Y02', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(100, 'Rusty Dickinson', 'sbaumbach@example.net', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', '6H6P0xOqmP', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(101, 'Stevie Krajcik MD', 'matilda81@example.org', '2024-06-13 02:20:49', '$2y$12$00u3V/EkqeTj7WvPG/lf1.ijabzCsaziwlNh9JumCZf10CUbtPO.q', 'SAuCPbnjfF', '2024-06-13 02:20:49', '2024-06-13 02:20:49', 'user'),
(102, 'Santino Larson', 'misael48@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'U5bvzU4e9q', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(103, 'Darrin Kub', 'olittle@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'chcSkGfwLJ', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(104, 'Prof. Alaina Klocko', 'randall50@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'lIJYzpKKKD', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(105, 'Aryanna Dicki', 'malachi43@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'l5wTji4mRn', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(106, 'Ms. Samantha Reilly III', 'fritsch.vesta@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'PnrYHiMhLL', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(107, 'Prof. Daisha Stoltenberg', 'lhill@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'VinBpgVHPN', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(108, 'Rico Miller', 'isadore.kub@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'YNWdvqvIRk', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(109, 'Samir Batz', 'cstehr@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'bwsF1kTrZT', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(110, 'Carlee Johns', 'lemke.ryan@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'FzyY7JnonK', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(111, 'Mr. Johnnie Eichmann II', 'jadams@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', '2UKFNOFR9K', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(112, 'Keaton Kessler Jr.', 'evans.damore@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'uqGg5Q266J', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(113, 'Jodie Friesen', 'alyce38@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', '6AHMlGIAbK', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(114, 'Mr. Murray Kuhlman', 'myrtis.cassin@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'q35zSpa7Ob', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(115, 'Caterina Abshire PhD', 'ross.hill@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'fUksLJuy5U', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(116, 'Johann Champlin Sr.', 'genevieve.ondricka@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'vHSi373LKI', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(117, 'Geovanny Swift', 'jaylon.reilly@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'uVzXvniiVz', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(118, 'Mikayla Treutel', 'wvandervort@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', '18gkeTSHnC', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(119, 'Mrs. Shanny Rutherford', 'hazel51@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'CGJTOca2tP', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(120, 'Jedediah Gerhold', 'sschimmel@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', '1ISXTNFCzy', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(121, 'Dr. Abner Koelpin', 'ellis.osinski@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'uTBUBRbOVm', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(122, 'Flavio Parker', 'cyril.brekke@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'k23naTuyxC', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(123, 'Mrs. Asia Haley III', 'dana.maggio@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'P60geLWses', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(124, 'Zelma Kirlin DVM', 'annetta.reichel@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'E8biOdAX9m', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(125, 'Yoshiko Heidenreich', 'eugenia.barton@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'krlLTJ4yGn', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(126, 'Mrs. Trinity Donnelly', 'tkoepp@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'MwaFKQ8T95', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(127, 'Sidney Feest V', 'esperanza.schoen@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'YtkLz2wP9w', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(128, 'Alyce Lowe', 'hharber@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'qWiXFu0Iy7', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(129, 'Amanda Considine', 'franco.donnelly@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', '4fDYCoBMo8', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(130, 'Jerald Stracke', 'zpouros@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'tZIGKzj0Pb', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(131, 'Vivienne Hintz V', 'waelchi.lucienne@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'hGOVppnmG0', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(132, 'Brendon Jones', 'fmorar@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'Il3EVlzT3h', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(133, 'Jayden Hauck Jr.', 'astrid.gulgowski@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'PvzNBpxCbM', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(134, 'Milo Mosciski Sr.', 'abbott.bernadine@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'kSMrszqLYZ', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(135, 'Miss Maiya Labadie', 'laurine.koelpin@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'qAPijECFKK', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(136, 'Ashlee Mraz', 'cgoodwin@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', '0k41fB0xDm', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(137, 'Loyce Adams', 'fhyatt@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'KFBtMvm0Lk', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(138, 'Buddy Beatty DDS', 'patience.runte@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'qQE3TkaMga', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(139, 'Prof. Laurie Cormier', 'alexanne80@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'mETzVXGPm1', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(140, 'Torey Hickle', 'boehm.francis@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'Kg2nnx9Xjj', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(141, 'Lexie Effertz', 'zondricka@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'vjUatww7iT', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(142, 'Prof. Lawrence Schuppe', 'conn.danyka@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'chyon3zg47', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(143, 'Javonte Feeney', 'ncarter@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'ABYMkTFaDq', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(144, 'Mathew Vandervort', 'terry.clement@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', '1f1IDmaeXl', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(145, 'Dr. Corrine Shields', 'eric92@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'N9L1R1giLU', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(146, 'Hallie Wuckert', 'jean.jacobson@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'ELSbgIxvD6', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(147, 'Miss Thalia Fritsch II', 'neal.harber@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'IPfOx3QpvG', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(148, 'Melba Reilly', 'katrina54@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'vZ5wKrYke0', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(149, 'Genoveva Hirthe', 'joan.kirlin@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'QqETw8QC1B', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(150, 'Kaci Smith', 'ayden.jerde@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'X0iU52bAFI', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(151, 'Dr. Skylar Davis DVM', 'jessica.balistreri@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'RaVjFXC9wo', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(152, 'Nils Skiles', 'marcelino31@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'KR6aepPata', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(153, 'Ms. Eleanora Hoppe', 'nschulist@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'F3ky2bqRk0', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(154, 'Francis Pfannerstill', 'trace89@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'HQlYANtuVJ', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(155, 'Lavinia Kihn', 'sonia90@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'aje2jNv08r', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(156, 'Ila Schiller', 'lindgren.lyric@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'TRaJeCn0mV', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(157, 'Eliza Klocko', 'alia.cole@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'SGFMooDWVl', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(158, 'Dr. Florian Hane', 'leuschke.rosalee@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'OuUeXObmON', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(159, 'Stephen Wiegand', 'daron35@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', '2RAy7p9SdB', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(160, 'Mitchel Morar', 'jo.veum@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'us389yv9Tf', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(161, 'Ana Kessler Sr.', 'walker.isac@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'IJgpuhV67O', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(162, 'Aaliyah Shanahan', 'garland.rogahn@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'SShHmdmi9y', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(163, 'Prof. Raoul Heathcote DDS', 'orpha39@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'ITrGr7D8lz', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(164, 'Luther Kshlerin', 'schneider.florencio@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'tLAyyqE2j6', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(165, 'Dr. Blair Bode Sr.', 'vickie.denesik@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'L2T8YcGcis', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(166, 'Joe Romaguera', 'bode.nathaniel@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', '0IgU3MmSBd', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(167, 'Dr. Daphne Larson', 'kkub@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'tioZbBkebF', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(168, 'Prof. Chadrick Batz', 'lera51@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'mkmxnnKNES', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(169, 'Jazmyn Gulgowski', 'ondricka.howell@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'LeMUTTDvEg', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(170, 'Miss Madelynn Emard', 'dbatz@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'Dv6lNq8zJN', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(171, 'Mireya Reinger MD', 'lynch.dante@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'CgBH0sN25r', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(172, 'Royal Johns', 'evan76@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'AZQkodPrMD', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(173, 'Aric Trantow', 'evan18@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'unAAKe4i8H', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(174, 'Dorcas Huels', 'hprohaska@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'ACvaQiZ8eB', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(175, 'Keagan Klein DDS', 'kozey.leland@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'wtP5rXBbfz', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(176, 'Berneice Tromp MD', 'savannah.heller@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'sm0xUM2XYx', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(177, 'Prof. Thelma O\'Reilly', 'torp.gust@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'VlHEiAG0Ki', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(178, 'Miss Verda Monahan V', 'predovic.emilie@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'n3KnXoE3jT', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(179, 'Missouri Pagac', 'blanca52@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', '3pxqqQGtS5', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(180, 'Deontae Schmidt IV', 'vida13@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'eKu0uWX9QC', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(181, 'Tina Hammes IV', 'swaniawski.efrain@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'XCcgHj0b4P', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(182, 'Birdie McCullough', 'ethelyn90@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'EPlG3g1P75', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(183, 'Prof. Henri Kessler', 'zosinski@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'jW3UO8SjHF', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(184, 'Katrina Parisian II', 'windler.dorothy@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'VWwIml17kO', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(185, 'Mr. Gilbert Gleason IV', 'eichmann.olen@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', '1bsv9d40Gf', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(186, 'Birdie Williamson', 'ubreitenberg@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'diTvDJH7xE', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(187, 'Ms. Leatha Fritsch', 'welch.kamryn@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', '80UvrLz6yV', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(188, 'Cortney Bahringer', 'homenick.cassandra@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'CD7xhlUz5s', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(189, 'Mr. Lucio Paucek', 'veum.aracely@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'v4boylXs8B', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(190, 'Branson Hermann Sr.', 'lillie67@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'ojdthKawwu', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(191, 'Wilford Towne', 'jabbott@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'XlOyryuRqR', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(192, 'Braxton Jerde PhD', 'benedict47@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'U8fC6n1R4w', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(193, 'Shyanne Runolfsdottir', 'conor.gottlieb@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', '9kCQnsTnnn', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(194, 'Delphine Bergstrom', 'marietta.monahan@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', '3N4y0EcEXH', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(195, 'Mr. Austyn Stokes', 'kian.wiegand@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'd9IHMZXmp4', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(196, 'Alessia Welch Sr.', 'bednar.jakob@example.org', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'MK3FA29VR1', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(197, 'Mr. Nicholaus Durgan I', 'toy.maxine@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'MAB5f75cZ1', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(198, 'Dr. Donald Bailey MD', 'clare11@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', '2Jmv9udkTb', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(199, 'Mrs. Lempi Miller Sr.', 'elisabeth59@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', '6b4Zu48q4K', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(200, 'Trycia Dietrich', 'johnny03@example.com', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'mabGXSDIul', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(201, 'Miss Valentina Harber V', 'madison.feest@example.net', '2024-06-13 02:22:03', '$2y$12$5iDAxHo1qDYrMUx.amds2.1Efrwpm3HOuoWdgR0BnqBYXCkbkh9RG', 'HHChbUDDt2', '2024-06-13 02:22:03', '2024-06-13 02:22:03', 'user'),
(202, 'tes3', 'tes@mail.com', NULL, '$2y$12$pG/RKRV8/jDWNWHaQjs01OERZj5/uYcaA5ZyCpi8ms7awpDI3Nlw6', NULL, '2024-06-21 05:57:55', '2024-06-21 05:57:55', 'user'),
(203, 'tes', 'usertes@mail.com', NULL, '$2y$12$vdA7b5Awgi.RWhiuwqgd0.171jqZjl3XPgXDJPOIKFziDMbDIWQe.', NULL, '2024-06-21 06:26:10', '2024-06-21 06:26:10', 'user'),
(204, 'tes admins', 'tesadmin@mail.com', NULL, '$2y$12$8t75TWs6.1z1gFLtxMOSIOJEJ3pvPKu0bglUGINYr.T1a4JZ70gLK', NULL, '2024-06-21 06:51:36', '2024-06-21 06:51:36', 'admin'),
(205, 'admin 2', 'tesadmin2@mail.com', NULL, '$2y$12$9rhylT9Gfme1dIRnrlpwOuqkYvn9KX03vQ4ZCyh2kbf6ZGva2Hiau', NULL, '2024-06-21 06:55:26', '2024-06-21 06:55:26', 'user'),
(206, 'tes admin 3', 'tesadmin3@mail.com', NULL, '$2y$12$.tjMtbcZz8ZLrvJll7pSKu8Kdy9whrkOmxW7yEdaKRTNqOr7Uo4yy', NULL, '2024-06-21 06:55:58', '2024-06-21 06:55:58', 'admin'),
(207, 'am', 'sm@mail.com', NULL, '$2y$12$FYKHZWXQkzjQ9A81a26eTOII7bteHzfQE0ZeED.IgLxLjfjYSpEQm', NULL, '2024-06-21 06:56:20', '2024-06-21 06:56:20', 'user'),
(208, 'erw', 'erw@mail.com', NULL, '$2y$12$ecpgYyZJcRvgMmD9x.WT0e.2i16/VaXzBGP5PoFmweO4fyguH.Qha', NULL, '2024-06-21 06:58:17', '2024-06-21 06:58:17', 'admin'),
(209, 'er', 'ew@mail.com', NULL, '$2y$12$NWeKBj4h0Kz/v9xbEtJgZ.oW40vAdHc.Y8C/CdvKmJjAR9WRfZRGO', NULL, '2024-06-21 06:59:23', '2024-06-21 06:59:23', 'user'),
(210, 'erw', 'erww2@mail.com', NULL, '$2y$12$kiGPX8HCdxXCL5o3NlbaKugJ/8RM7SUJ0l9dH2edkYa4LLXahqCB6', NULL, '2024-06-21 06:59:44', '2024-06-21 06:59:44', 'admin'),
(211, 'tes', 'tem@mail.com', NULL, '$2y$12$ikw2LbTw1oYuW0TJPnzdb.Lil46wA6knkIh3Gs3lQHKmO3yRtgJyi', NULL, '2024-06-24 00:22:50', '2024-06-24 00:22:50', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
