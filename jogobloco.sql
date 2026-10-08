-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 02/08/2026 às 18:21
-- Versão do servidor: 8.4.10-10
-- Versão do PHP: 8.1.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jogobloco`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('block-win-cache-app_settings', 'a:20:{s:15:\"game_difficulty\";s:7:\"extremo\";s:21:\"game_big_piece_chance\";s:2:\"75\";s:21:\"game_score_multiplier\";s:3:\"0.7\";s:22:\"game_reward_multiplier\";s:1:\"5\";s:12:\"min_withdraw\";s:2:\"50\";s:12:\"max_withdraw\";s:3:\"500\";s:18:\"players_online_min\";s:3:\"400\";s:18:\"players_online_max\";s:3:\"900\";s:9:\"site_name\";s:9:\"BLOCK WIN\";s:16:\"maintenance_mode\";s:1:\"0\";s:11:\"min_deposit\";s:1:\"5\";s:11:\"max_deposit\";s:4:\"5000\";s:18:\"abilitypay_enabled\";s:1:\"1\";s:20:\"abilitypay_client_id\";s:0:\"\";s:24:\"abilitypay_client_secret\";s:64:\"V8SECQOyOR2R76z35Nhlgm5X9ewEF28mnSis4GIPZNZRD9qnBCNNhph2lLcCyXV8\";s:15:\"default_gateway\";s:10:\"abilitypay\";s:17:\"affiliate_enabled\";s:1:\"1\";s:23:\"affiliate_commission_n1\";s:2:\"50\";s:23:\"affiliate_commission_n2\";s:2:\"10\";s:22:\"affiliate_min_withdraw\";s:2:\"20\";}', 1785687707);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `commissions`
--

CREATE TABLE `commissions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `from_user_id` bigint UNSIGNED NOT NULL,
  `transaction_id` bigint UNSIGNED DEFAULT NULL,
  `level` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `percent` decimal(8,2) NOT NULL DEFAULT '0.00',
  `base_amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_07_16_171533_create_scores_table', 1),
(5, '2026_07_16_172245_add_blockwin_fields_to_users_table', 1),
(6, '2026_07_16_173710_add_is_admin_to_users_table', 1),
(7, '2026_07_16_173711_create_transactions_table', 1),
(8, '2026_07_16_173712_create_settings_table', 1),
(9, '2026_07_16_180920_add_deposit_limits_to_settings_table', 1),
(10, '2026_07_16_181027_add_abilitypay_fields_to_transactions_and_settings', 1),
(11, '2026_07_16_190500_add_pixup_bspay_settings', 1),
(12, '2026_07_16_191200_add_affiliate_system', 1),
(13, '2026_08_02_120000_remove_pixup_bspay_settings', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `scores`
--

CREATE TABLE `scores` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `pontuacao` int UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `scores`
--

INSERT INTO `scores` (`id`, `user_id`, `pontuacao`, `created_at`) VALUES
(5, 2, 57, '2026-07-16 17:53:07'),
(6, 2, 163, '2026-07-16 17:54:33'),
(7, 2, 241, '2026-07-16 17:55:41'),
(8, 2, 240, '2026-07-16 18:04:51'),
(9, 2, 244, '2026-07-16 18:08:15'),
(10, 2, 41, '2026-07-17 01:15:08'),
(11, 2, 73, '2026-07-17 01:16:44'),
(12, 2, 154, '2026-07-17 01:21:11'),
(13, 2, 86, '2026-07-17 01:21:58'),
(14, 2, 219, '2026-07-17 01:41:28'),
(15, 2, 90, '2026-07-17 01:42:42'),
(16, 2, 88, '2026-07-17 01:43:25'),
(17, 2, 46, '2026-07-17 01:48:10'),
(18, 2, 9999, '2026-07-17 01:48:25'),
(19, 2, 47, '2026-07-17 01:51:52'),
(20, 2, 60, '2026-07-17 01:51:57'),
(21, 2, 9999, '2026-07-17 01:52:07'),
(22, 2, 9999, '2026-07-17 01:52:15'),
(23, 2, 9999, '2026-07-17 01:52:23'),
(24, 2, 9999, '2026-07-17 01:52:35'),
(25, 2, 9999, '2026-07-17 01:52:42'),
(26, 2, 9999, '2026-07-17 01:53:26'),
(27, 2, 9999, '2026-07-17 01:54:13'),
(28, 2, 9999, '2026-07-17 01:54:16'),
(29, 2, 9999, '2026-07-17 01:54:19'),
(30, 2, 9999, '2026-07-17 01:55:27'),
(31, 2, 9999, '2026-07-17 01:55:31'),
(32, 2, 9999, '2026-07-17 01:55:45'),
(33, 2, 9999, '2026-07-17 01:55:48'),
(34, 2, 9999, '2026-07-17 01:55:50'),
(35, 2, 9999, '2026-07-17 01:55:53'),
(36, 2, 9999, '2026-07-17 01:55:57'),
(37, 2, 9999, '2026-07-17 01:56:02'),
(38, 2, 9999, '2026-07-17 01:56:06'),
(39, 2, 9999, '2026-07-17 01:56:45'),
(40, 2, 9999, '2026-07-17 01:56:51'),
(41, 2, 9999, '2026-07-17 01:56:54'),
(42, 2, 9999, '2026-07-17 01:56:57'),
(43, 2, 9999, '2026-07-17 01:57:00'),
(44, 2, 9999, '2026-07-17 01:57:22'),
(45, 2, 9999, '2026-07-17 01:57:25'),
(46, 2, 9999, '2026-07-17 01:57:43'),
(47, 2, 9999, '2026-07-17 01:57:45'),
(48, 2, 9999, '2026-07-17 01:57:46'),
(49, 2, 9999, '2026-07-17 01:57:47'),
(50, 2, 9999, '2026-07-17 01:57:49'),
(51, 2, 9999, '2026-07-17 01:57:50'),
(52, 2, 9999, '2026-07-17 01:57:51'),
(53, 2, 9999, '2026-07-17 01:57:54'),
(54, 2, 9999, '2026-07-17 01:57:55'),
(55, 2, 9999, '2026-07-17 01:58:02'),
(56, 2, 9999, '2026-07-17 01:58:03'),
(57, 2, 9999, '2026-07-17 01:58:04'),
(58, 2, 9999, '2026-07-17 01:58:06'),
(59, 2, 9999, '2026-07-17 01:58:07'),
(60, 2, 9999, '2026-07-17 01:58:08'),
(61, 2, 9999, '2026-07-17 01:58:09'),
(62, 2, 9999, '2026-07-17 01:58:10'),
(63, 2, 9999, '2026-07-17 01:58:12'),
(64, 2, 9999, '2026-07-17 01:58:17'),
(65, 2, 9999, '2026-07-17 01:58:18'),
(66, 2, 9999, '2026-07-17 01:58:19'),
(67, 2, 9999, '2026-07-17 01:58:21'),
(68, 2, 9999, '2026-07-17 01:58:22'),
(69, 2, 9999, '2026-07-17 01:58:23'),
(70, 2, 9999, '2026-07-17 01:58:25'),
(71, 2, 9999, '2026-07-17 01:58:27'),
(72, 2, 9999, '2026-07-17 01:58:28'),
(73, 2, 9999, '2026-07-17 01:59:03'),
(74, 2, 9999, '2026-07-17 01:59:07'),
(75, 2, 9999, '2026-07-17 01:59:08'),
(76, 2, 9999, '2026-07-17 01:59:09'),
(77, 2, 9999, '2026-07-17 01:59:10'),
(78, 2, 9999, '2026-07-17 01:59:11'),
(79, 2, 9999, '2026-07-17 02:00:38'),
(80, 2, 9999, '2026-07-17 02:00:40'),
(81, 2, 9999, '2026-07-17 02:00:41'),
(82, 2, 9999, '2026-07-17 02:00:42'),
(83, 2, 9999, '2026-07-17 02:00:43'),
(84, 2, 9999, '2026-07-17 02:00:44'),
(85, 2, 9999, '2026-07-17 02:00:46'),
(86, 2, 9999, '2026-07-17 02:00:47'),
(87, 2, 9999, '2026-07-17 02:00:48'),
(88, 2, 9999, '2026-07-17 02:00:49'),
(89, 2, 9999, '2026-07-17 02:01:04'),
(90, 2, 9999, '2026-07-17 02:01:06'),
(91, 2, 9999, '2026-07-17 02:01:07'),
(92, 2, 9999, '2026-07-17 02:01:08'),
(93, 2, 9999, '2026-07-17 02:01:09'),
(94, 2, 9999, '2026-07-17 02:01:10'),
(95, 2, 9999, '2026-07-17 02:01:11'),
(96, 2, 9999, '2026-07-17 02:01:12'),
(97, 2, 9999, '2026-07-17 02:01:15'),
(98, 2, 9999, '2026-07-17 02:01:16'),
(99, 2, 9999, '2026-07-17 02:01:17'),
(100, 2, 9999, '2026-07-17 02:01:18'),
(101, 2, 9999, '2026-07-17 02:01:19'),
(102, 2, 9999, '2026-07-17 02:01:20'),
(103, 2, 9999, '2026-07-17 02:01:21'),
(104, 2, 9999, '2026-07-17 02:01:22'),
(105, 2, 9999, '2026-07-17 02:01:24'),
(106, 2, 9999, '2026-07-17 02:01:27'),
(107, 2, 9999, '2026-07-17 02:01:28'),
(108, 2, 9999, '2026-07-17 02:01:29'),
(109, 2, 9999, '2026-07-17 02:01:30'),
(110, 2, 9999, '2026-07-17 02:01:31'),
(111, 2, 9999, '2026-07-17 02:01:32'),
(112, 2, 9999, '2026-07-17 02:01:33'),
(113, 2, 9999, '2026-07-17 02:01:34'),
(114, 2, 9999, '2026-07-17 02:01:35'),
(115, 2, 9999, '2026-07-17 02:01:36'),
(116, 2, 9999, '2026-07-17 02:01:37'),
(117, 2, 9999, '2026-07-17 02:01:38'),
(118, 2, 9999, '2026-07-17 02:01:39'),
(119, 2, 9999, '2026-07-17 02:01:40'),
(120, 2, 9999, '2026-07-17 02:01:41'),
(121, 2, 9999, '2026-07-17 02:01:42'),
(122, 2, 9999, '2026-07-17 02:01:43'),
(123, 2, 9999, '2026-07-17 02:01:44'),
(124, 2, 9999, '2026-07-17 02:01:47'),
(125, 2, 9999, '2026-07-17 02:01:48'),
(126, 2, 9999, '2026-07-17 02:01:49'),
(127, 2, 9999, '2026-07-17 02:01:50'),
(128, 2, 9999, '2026-07-17 02:01:51'),
(129, 2, 9999, '2026-07-17 02:01:52'),
(130, 2, 9999, '2026-07-17 02:01:53'),
(131, 2, 9999, '2026-07-17 02:01:54'),
(132, 2, 9999, '2026-07-17 02:01:55'),
(133, 2, 9999, '2026-07-17 02:01:56'),
(134, 2, 9999, '2026-07-17 02:01:57'),
(135, 2, 60, '2026-07-17 06:28:24'),
(136, 2, 87, '2026-07-17 06:29:17'),
(137, 2, 91, '2026-07-17 06:30:36'),
(138, 2, 71, '2026-07-17 11:01:22'),
(139, 2, 107, '2026-07-17 11:02:36'),
(140, 2, 104, '2026-07-17 13:40:58'),
(141, 2, 59, '2026-07-17 13:41:09'),
(142, 2, 187, '2026-07-17 13:43:15'),
(143, 2, 427, '2026-07-17 13:50:10'),
(145, 2, 131, '2026-07-17 15:18:15'),
(146, 2, 287, '2026-07-17 15:20:17'),
(147, 2, 80, '2026-07-17 15:21:46'),
(148, 2, 187, '2026-07-17 16:13:18'),
(149, 2, 471, '2026-07-18 01:10:58'),
(150, 2, 121, '2026-07-18 01:13:11'),
(151, 2, 94, '2026-07-18 01:14:07'),
(152, 2, 334, '2026-07-18 01:17:05'),
(153, 2, 241, '2026-07-18 01:18:24'),
(154, 2, 71, '2026-07-18 08:13:41'),
(155, 2, 71, '2026-07-18 11:19:35'),
(156, 2, 89, '2026-08-02 15:41:44');

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('y4X6JIxa0Nt5KHHHXK6wwH8I28HU7iz5Zo4ekKs6', 2, '200.164.212.213', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJrdGZGeG5BZnNDQ3M3UHpYaW5IUkN0SW9SY3FGOTV3WEdNODBFUGNrIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHBzOlwvXC9icjIuYWJpbGl0eXBheS5hcHBcL2FkbWluXC9jb25maWd1cmFjb2VzIiwicm91dGUiOiJhZG1pbi5zZXR0aW5ncy5lZGl0In0sIl9mbGFzaCI6eyJvbGQiOltdLCJuZXciOltdfSwidXJsIjpbXSwibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiOjIsInBhcnRpZGEiOltdfQ==', 1785687647);

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'geral',
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `group`, `label`, `created_at`, `updated_at`) VALUES
(1, 'game_difficulty', 'extremo', 'jogo', 'Dificuldade do jogo', '2026-07-16 17:40:03', '2026-07-17 16:17:51'),
(2, 'game_big_piece_chance', '75', 'jogo', 'Chance de peças grandes (%)', '2026-07-16 17:40:03', '2026-07-17 16:17:51'),
(3, 'game_score_multiplier', '0.7', 'jogo', 'Multiplicador de pontuação', '2026-07-16 17:40:03', '2026-07-17 16:17:51'),
(4, 'game_reward_multiplier', '5', 'jogo', 'Multiplicador recompensa mínima (entrada × N)', '2026-07-16 17:40:03', '2026-07-16 23:54:54'),
(5, 'min_withdraw', '50', 'financeiro', 'Saque mínimo (R$)', '2026-07-16 17:40:03', '2026-07-16 17:52:14'),
(6, 'max_withdraw', '500', 'financeiro', 'Saque máximo (R$)', '2026-07-16 17:40:03', '2026-07-16 17:52:14'),
(8, 'players_online_min', '400', 'geral', 'Jogadores online (mín)', '2026-07-16 17:40:03', '2026-07-16 19:06:28'),
(9, 'players_online_max', '900', 'geral', 'Jogadores online (máx)', '2026-07-16 17:40:03', '2026-07-16 19:06:28'),
(10, 'site_name', 'BLOCK WIN', 'geral', 'Nome do site', '2026-07-16 17:40:03', '2026-07-16 19:15:55'),
(11, 'maintenance_mode', '0', 'geral', 'Modo manutenção (0/1)', '2026-07-16 17:40:03', '2026-07-17 16:34:12'),
(12, 'min_deposit', '5', 'financeiro', 'Depósito mínimo (R$)', '2026-07-16 18:09:37', '2026-07-16 19:20:46'),
(13, 'max_deposit', '5000', 'financeiro', 'Depósito máximo (R$)', '2026-07-16 18:09:37', '2026-07-16 18:09:37'),
(14, 'abilitypay_enabled', '1', 'gateway', 'AbilityPay ativo (0/1)', '2026-07-16 18:12:20', '2026-08-02 16:13:27'),
(15, 'abilitypay_client_id', '', 'gateway', 'AbilityPay Client ID (X-Client-Id)', '2026-07-16 18:12:20', '2026-08-02 16:20:40'),
(16, 'abilitypay_client_secret', 'V8SECQOyOR2R76z35Nhlgm5X9ewEF28mnSis4GIPZNZRD9qnBCNNhph2lLcCyXV8', 'gateway', 'AbilityPay Client Secret (X-Client-Secret)', '2026-07-16 18:12:20', '2026-08-02 16:15:28'),
(17, 'default_gateway', 'abilitypay', 'gateway', 'Gateway padrão (abilitypay|manual)', '2026-07-16 19:03:56', '2026-08-02 16:12:11'),
(22, 'affiliate_enabled', '1', 'afiliado', 'Sistema de afiliados ativo (0/1)', '2026-07-16 19:08:54', '2026-07-16 19:08:54'),
(23, 'affiliate_commission_n1', '50', 'afiliado', 'Comissão N1 diretos (%)', '2026-07-16 19:08:54', '2026-07-16 19:08:54'),
(24, 'affiliate_commission_n2', '10', 'afiliado', 'Comissão N2 2º nível (%)', '2026-07-16 19:08:54', '2026-07-16 19:08:54'),
(25, 'affiliate_min_withdraw', '20', 'afiliado', 'Saque mínimo de comissão (R$)', '2026-07-16 19:08:54', '2026-07-16 19:08:54');

-- --------------------------------------------------------

--
-- Estrutura para tabela `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `external_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_transaction_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `valor` decimal(12,2) NOT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `metodo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pix_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payer_document` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pix_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pix_key_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `observacao` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gateway_payload` json DEFAULT NULL,
  `processed_by` bigint UNSIGNED DEFAULT NULL,
  `processed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `transactions`
--

INSERT INTO `transactions` (`id`, `external_id`, `gateway_transaction_id`, `user_id`, `type`, `valor`, `status`, `metodo`, `pix_code`, `payer_document`, `pix_key`, `pix_key_type`, `observacao`, `gateway_payload`, `processed_by`, `processed_at`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 2, 'deposit', 50.00, 'rejected', 'pix', NULL, NULL, NULL, NULL, 'Recusado pelo admin', NULL, 2, '2026-07-17 16:22:45', '2026-07-16 17:40:35', '2026-07-17 16:22:45'),
(2, 'MERCHANT_PIX_ENJPSY0TTNXFPBMIQFVBB0RV', '2412', 2, 'deposit', 10.00, 'rejected', 'pix_abilitypay', '00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/2248fd93-734e-495f-92a6-e440c351d19e5204000053039865802BR5912PLATAFORMADE6008SAOPAULO62070503***6304C6DF', '82015015000', NULL, NULL, 'Recusado pelo admin', '{\"amount\": 10, \"status\": \"pending\", \"message\": \"Cobrança PIX criada com sucesso.\", \"pix_code\": \"00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/2248fd93-734e-495f-92a6-e440c351d19e5204000053039865802BR5912PLATAFORMADE6008SAOPAULO62070503***6304C6DF\", \"provider\": \"ABILITYPAY\", \"fee_amount\": 1, \"net_amount\": 9, \"external_id\": \"MERCHANT_PIX_ENJPSY0TTNXFPBMIQFVBB0RV\", \"transaction_id\": 2412}', 2, '2026-07-17 16:22:44', '2026-07-16 19:19:06', '2026-07-17 16:22:44'),
(3, 'MERCHANT_PIX_UIYEJUUF6O034QLTVY5GZTJL', '2413', 2, 'deposit', 10.00, 'rejected', 'pix_abilitypay', '00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/0a8d5ac5-cde8-4514-ad45-ee10ad690a865204000053039865802BR5912PLATAFORMADE6008SAOPAULO62070503***63046564', '82015015000', NULL, NULL, 'Recusado pelo admin', '{\"amount\": 10, \"status\": \"pending\", \"message\": \"Cobrança PIX criada com sucesso.\", \"pix_code\": \"00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/0a8d5ac5-cde8-4514-ad45-ee10ad690a865204000053039865802BR5912PLATAFORMADE6008SAOPAULO62070503***63046564\", \"provider\": \"ABILITYPAY\", \"fee_amount\": 1, \"net_amount\": 9, \"external_id\": \"MERCHANT_PIX_UIYEJUUF6O034QLTVY5GZTJL\", \"transaction_id\": 2413}', 2, '2026-07-17 16:22:42', '2026-07-16 19:19:07', '2026-07-17 16:22:42'),
(4, 'MERCHANT_PIX_IZAMYJMY1H2PDLOZEAOWN7CE', '2414', 2, 'deposit', 10.00, 'rejected', 'pix_abilitypay', '00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/febc98f7-2bef-4d1f-a62a-c617a45a32d45204000053039865802BR5912PLATAFORMADE6008SAOPAULO62070503***6304842F', '82015015000', NULL, NULL, 'Recusado pelo admin', '{\"amount\": 10, \"status\": \"pending\", \"message\": \"Cobrança PIX criada com sucesso.\", \"pix_code\": \"00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/febc98f7-2bef-4d1f-a62a-c617a45a32d45204000053039865802BR5912PLATAFORMADE6008SAOPAULO62070503***6304842F\", \"provider\": \"ABILITYPAY\", \"fee_amount\": 1, \"net_amount\": 9, \"external_id\": \"MERCHANT_PIX_IZAMYJMY1H2PDLOZEAOWN7CE\", \"transaction_id\": 2414}', 2, '2026-07-17 16:22:43', '2026-07-16 19:19:07', '2026-07-17 16:22:43'),
(5, 'MERCHANT_PIX_D6Q3DQ3EW7V3VGEUIXTVZIIP', '2415', 2, 'deposit', 10.00, 'rejected', 'pix_abilitypay', '00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/bba5ee10-04c1-4939-a5dc-df693b873eab5204000053039865802BR5912PLATAFORMADE6008SAOPAULO62070503***630451E7', '82015015000', NULL, NULL, 'Recusado pelo admin', '{\"amount\": 10, \"status\": \"pending\", \"message\": \"Cobrança PIX criada com sucesso.\", \"pix_code\": \"00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/bba5ee10-04c1-4939-a5dc-df693b873eab5204000053039865802BR5912PLATAFORMADE6008SAOPAULO62070503***630451E7\", \"provider\": \"ABILITYPAY\", \"fee_amount\": 1, \"net_amount\": 9, \"external_id\": \"MERCHANT_PIX_D6Q3DQ3EW7V3VGEUIXTVZIIP\", \"transaction_id\": 2415}', 2, '2026-07-17 16:22:42', '2026-07-16 19:19:08', '2026-07-17 16:22:42'),
(6, 'MERCHANT_PIX_1JYRSS328YHF9YUNHES9ULBD', '2416', 2, 'deposit', 10.00, 'rejected', 'pix_abilitypay', '00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/f5cbfd79-d7db-4c22-8e5f-03447a7168d85204000053039865802BR5912PLATAFORMADE6008SAOPAULO62070503***63040FCC', '82015015000', NULL, NULL, 'Recusado pelo admin', '{\"amount\": 10, \"status\": \"pending\", \"message\": \"Cobrança PIX criada com sucesso.\", \"pix_code\": \"00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/f5cbfd79-d7db-4c22-8e5f-03447a7168d85204000053039865802BR5912PLATAFORMADE6008SAOPAULO62070503***63040FCC\", \"provider\": \"ABILITYPAY\", \"fee_amount\": 1, \"net_amount\": 9, \"external_id\": \"MERCHANT_PIX_1JYRSS328YHF9YUNHES9ULBD\", \"transaction_id\": 2416}', 2, '2026-07-17 16:22:40', '2026-07-16 19:19:09', '2026-07-17 16:22:40'),
(7, 'MERCHANT_PIX_LAWJFNZBULIVQ8DYZKKN8SSR', '2417', 2, 'deposit', 10.00, 'rejected', 'pix_abilitypay', '00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/7833982e-4ead-4717-9b7d-0cb48daa87dd5204000053039865802BR5912PLATAFORMADE6008SAOPAULO62070503***6304AC95', '82015015000', NULL, NULL, 'Recusado pelo admin', '{\"amount\": 10, \"status\": \"pending\", \"message\": \"Cobrança PIX criada com sucesso.\", \"pix_code\": \"00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/7833982e-4ead-4717-9b7d-0cb48daa87dd5204000053039865802BR5912PLATAFORMADE6008SAOPAULO62070503***6304AC95\", \"provider\": \"ABILITYPAY\", \"fee_amount\": 1, \"net_amount\": 9, \"external_id\": \"MERCHANT_PIX_LAWJFNZBULIVQ8DYZKKN8SSR\", \"transaction_id\": 2417}', 2, '2026-07-17 16:22:39', '2026-07-16 19:19:10', '2026-07-17 16:22:39'),
(20, 'MERCHANT_PIX_5KHTWAPMZ8IGZPM03L0QUGIL', '2439', 2, 'deposit', 30.00, 'approved', 'pix_abilitypay', '00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/eee351b0-96cc-4c66-9839-b43233f703be5204000053039865802BR5912PLATAFORMADE6008SAOPAULO62070503***6304CF67', '82015015000', NULL, NULL, 'Aguardando pagamento PIX (AbilityPay)', '{\"amount\": 30, \"status\": \"pending\", \"message\": \"Cobrança PIX criada com sucesso.\", \"pix_code\": \"00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/eee351b0-96cc-4c66-9839-b43233f703be5204000053039865802BR5912PLATAFORMADE6008SAOPAULO62070503***6304CF67\", \"provider\": \"ABILITYPAY\", \"fee_amount\": 1, \"net_amount\": 29, \"external_id\": \"MERCHANT_PIX_5KHTWAPMZ8IGZPM03L0QUGIL\", \"transaction_id\": 2439}', 2, '2026-07-17 16:25:21', '2026-07-17 16:25:06', '2026-07-17 16:25:21'),
(25, 'MERCHANT_PIX_CUYBVFZ9WJYP0NPDFNRR7BUR', '2608', 2, 'deposit', 20.00, 'rejected', 'pix_abilitypay', '00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/b2694d15-048c-47d8-a424-54ba5a97b0675204000053039865802BR5913COMMANDIPLTDA6008SAOPAULO62070503***63046066', '82015015000', NULL, NULL, 'Recusado pelo admin', '{\"amount\": 20, \"status\": \"pending\", \"message\": \"Cobrança PIX criada com sucesso.\", \"pix_code\": \"00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/b2694d15-048c-47d8-a424-54ba5a97b0675204000053039865802BR5913COMMANDIPLTDA6008SAOPAULO62070503***63046066\", \"provider\": \"ABILITYPAY\", \"fee_amount\": 1, \"net_amount\": 19, \"external_id\": \"MERCHANT_PIX_CUYBVFZ9WJYP0NPDFNRR7BUR\", \"transaction_id\": 2608}', 2, '2026-08-02 16:20:23', '2026-08-02 16:16:09', '2026-08-02 16:20:23'),
(26, 'MERCHANT_PIX_JK5TKOL1CHOBXIHMP2NMAYMA', '2609', 2, 'deposit', 5.00, 'rejected', 'pix_abilitypay', '00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/3088246e-370d-48d0-b4a9-279b30ca31505204000053039865802BR5913COMMANDIPLTDA6008SAOPAULO62070503***6304F444', '82015015000', NULL, NULL, 'Recusado pelo admin', '{\"amount\": 5, \"status\": \"pending\", \"message\": \"Cobrança PIX criada com sucesso.\", \"pix_code\": \"00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/3088246e-370d-48d0-b4a9-279b30ca31505204000053039865802BR5913COMMANDIPLTDA6008SAOPAULO62070503***6304F444\", \"provider\": \"ABILITYPAY\", \"fee_amount\": 1, \"net_amount\": 4, \"external_id\": \"MERCHANT_PIX_JK5TKOL1CHOBXIHMP2NMAYMA\", \"transaction_id\": 2609}', 2, '2026-08-02 16:20:22', '2026-08-02 16:16:20', '2026-08-02 16:20:22'),
(27, 'MERCHANT_PIX_TCHQDI1CUVXA1LGZAPTGTSSR', '2610', 2, 'deposit', 5.00, 'approved', 'pix_abilitypay', '00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/1f00a0dd-6c52-4b12-9702-6b101e5639665204000053039865802BR5913COMMANDIPLTDA6008SAOPAULO62070503***630402E3', '82015015000', NULL, NULL, 'PIX confirmado via AbilityPay', '{\"amount\": 5, \"status\": \"pending\", \"message\": \"Cobrança PIX criada com sucesso.\", \"webhook\": {\"type\": \"pix_in\", \"amount\": 5, \"status\": \"approved\", \"created_at\": \"2026-08-02T13:17:29-03:00\", \"fee_amount\": 1, \"net_amount\": 4, \"approved_at\": \"2026-08-02T13:17:44-03:00\", \"external_id\": \"MERCHANT_PIX_TCHQDI1CUVXA1LGZAPTGTSSR\", \"gross_amount\": 5, \"transaction_id\": 2610}, \"pix_code\": \"00020101021226820014br.gov.bcb.pix2560qrcode.a55scd.com.br/v1/1f00a0dd-6c52-4b12-9702-6b101e5639665204000053039865802BR5913COMMANDIPLTDA6008SAOPAULO62070503***630402E3\", \"provider\": \"ABILITYPAY\", \"fee_amount\": 1, \"net_amount\": 4, \"external_id\": \"MERCHANT_PIX_TCHQDI1CUVXA1LGZAPTGTSSR\", \"transaction_id\": 2610}', NULL, '2026-08-02 16:17:44', '2026-08-02 16:17:29', '2026-08-02 16:17:44');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `is_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `saldo` decimal(12,2) NOT NULL DEFAULT '100.00',
  `telefone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpf` varchar(14) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_code` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referred_by` bigint UNSIGNED DEFAULT NULL,
  `comissao_saldo` decimal(12,2) NOT NULL DEFAULT '0.00',
  `comissao_total` decimal(12,2) NOT NULL DEFAULT '0.00',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `is_blocked`, `saldo`, `telefone`, `cpf`, `referral_code`, `referred_by`, `comissao_saldo`, `comissao_total`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Administrador', 'admin@gmail.com', NULL, '$2y$12$CEtc2eFeR2Yeh8xHT1s8bOsOW5tGP7KqeSbhN3JWJTzXeZuf3u2Ci', 1, 0, 217587.40, NULL, '82015015000', '5miyvsak', NULL, 0.00, 0.00, 'BrdYy3JtdernnzuAgteTTBWbac6AdkRqZmIPnb6lsurQkptAvXUsksJv6zzl', '2026-07-16 17:40:11', '2026-08-02 16:17:44');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Índices de tabela `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Índices de tabela `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commissions_from_user_id_foreign` (`from_user_id`),
  ADD KEY `commissions_transaction_id_foreign` (`transaction_id`),
  ADD KEY `commissions_user_id_created_at_index` (`user_id`,`created_at`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

--
-- Índices de tabela `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Índices de tabela `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices de tabela `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `scores_user_id_foreign` (`user_id`);

--
-- Índices de tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índices de tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Índices de tabela `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_external_id_unique` (`external_id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_processed_by_foreign` (`processed_by`),
  ADD KEY `transactions_type_status_index` (`type`,`status`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_referral_code_unique` (`referral_code`),
  ADD KEY `users_referred_by_foreign` (`referred_by`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `scores`
--
ALTER TABLE `scores`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `commissions`
--
ALTER TABLE `commissions`
  ADD CONSTRAINT `commissions_from_user_id_foreign` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `commissions_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `commissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_processed_by_foreign` FOREIGN KEY (`processed_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_referred_by_foreign` FOREIGN KEY (`referred_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
