-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 27, 2022 at 08:22 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `adfood_categories`
--

CREATE TABLE `adfood_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adfood_categories`
--

INSERT INTO `adfood_categories` (`id`, `foto`, `category`, `created_at`, `updated_at`) VALUES
(1, 'assets/gallery/GyFksu4b6UkLU07eiGfpd6DqDIInJGSe3vt1NCQx.jpg', 'Indian Food', '2022-06-12 07:21:39', '2022-06-12 07:21:39'),
(3, 'assets/gallery/1HG2rq4V87SNQ2Kkr43foBvZ4VXHlH6P5qzrjV6X.png', 'Arab Food', '2022-06-12 12:55:42', '2022-06-12 12:55:42'),
(5, 'assets/gallery/xP9L5K7R6ki2Jhpw3zhiNJUyNnVClfqRntBDikc7.png', 'Indonesian food', '2022-06-12 12:58:27', '2022-06-12 12:58:27'),
(6, 'assets/gallery/4sCGwYFDoVbmkpIaRDGEYOCFXxNNCfXpgzVtvPJ1.jpg', 'Malaysia Food', '2022-06-12 13:29:19', '2022-06-12 13:33:40'),
(10, 'assets/gallery/vYZLNzpJgbFzjWsn03nVx96SAQBfFq8tBq7yaD9G.jpg', 'Kalimantan Food', '2022-06-15 04:04:01', '2022-06-15 04:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `adfood_customers`
--

CREATE TABLE `adfood_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adfood_customers`
--

INSERT INTO `adfood_customers` (`id`, `address`, `website`, `long`, `lat`, `deleted_at`, `created_at`, `updated_at`) VALUES
(531, 'Jl. HRA Rahman Gg. Bersama 2', 'blablabla.com', '123.123', '123.123', NULL, '2022-04-30 09:48:20', '2022-06-27 14:53:11'),
(635, 'Hanya address saja', 'blablabla.com', '123.421', '123.421', NULL, '2022-06-14 06:31:41', '2022-06-27 14:50:54'),
(643, 'blablablalagi', 'blablabla.com', 'blablablalagi', 'blablablalagi', NULL, '2022-08-23 01:55:28', '2022-08-23 01:55:28'),
(644, 'blablablalagi', 'blablabla.com', 'blablablalagi', 'blablablalagi', NULL, '2022-08-23 01:58:59', '2022-08-23 01:58:59'),
(645, 'blablablalagii', 'blablabla.com', 'blablablalagii', 'blablablalagi', NULL, '2022-08-23 02:02:37', '2022-08-23 02:27:19'),
(646, 'blablablalagi', 'blablabla.com', 'blablablalagi', 'blablablalagi', NULL, '2022-08-23 02:28:52', '2022-08-23 02:28:52'),
(648, 'blablablalagii', 'blablabla.com', 'blablablalagii', 'blablablalagi', NULL, '2022-08-23 02:29:38', '2022-08-23 02:31:11'),
(652, 'blablablalagii', '6bli.com', 'blablablalagii', 'blablablalagi', NULL, '2022-09-11 14:10:03', '2022-09-16 07:11:23'),
(657, 'blablablalagii', 'bli.com', 'blablablalagii', 'blablablalagi', NULL, '2022-09-12 06:01:18', '2022-09-12 06:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `adfood_foods`
--

CREATE TABLE `adfood_foods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint(20) NOT NULL,
  `price` int(11) NOT NULL,
  `promo` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `merchants_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `ori_vouchers_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adfood_galleries_foods`
--

CREATE TABLE `adfood_galleries_foods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adfood_foods_id` int(11) NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adfood_galleries_merchants`
--

CREATE TABLE `adfood_galleries_merchants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adfood_merchants_id` int(11) NOT NULL,
  `menus_restaurant` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adfood_galleries_merchants`
--

INSERT INTO `adfood_galleries_merchants` (`id`, `adfood_merchants_id`, `menus_restaurant`, `urutan`, `created_at`, `updated_at`) VALUES
(68, 639, 'assets/multipleimage/7iAqNaAxQc1ZzwA8Gbm25Dn5Zyd19x0Gk8A9wDii.jpg', 3, '2022-06-23 06:52:31', '2022-06-23 06:53:39'),
(69, 639, 'assets/multipleimage/O8db5r8WFWzXrG3YvCYKxBhMM9eo1CYehwBGSYdv.png', 4, '2022-06-23 06:52:31', '2022-06-23 06:53:46'),
(70, 639, 'assets/multipleimage/WOIndbB1gtM6wBwnETlh0EF8mxymlMyzmR9gLTYx.png', 1, '2022-06-23 06:59:34', '2022-06-23 06:59:34'),
(71, 639, 'assets/multipleimage/PagmiZfzORrjeaNzBIXKHO9EFwGYODRFNqCFIm5W.png', 1, '2022-06-23 06:59:45', '2022-06-23 06:59:45'),
(72, 650, 'assets/multipleimage/KoaZL25y4pif0OWF3iX0MOytxJO23PPqWwE13Bjp.jpg', 1, '2022-08-23 03:04:18', '2022-08-23 03:04:18'),
(73, 650, 'assets/multipleimage/ybvQaU07aDL4wYBywGY8mb7omlfbssRAGNfUdjG9.png', 2, '2022-08-23 03:04:18', '2022-08-23 03:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `adfood_galleries_vouchers`
--

CREATE TABLE `adfood_galleries_vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vouchers_id` int(11) NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adfood_galleries_vouchers`
--

INSERT INTO `adfood_galleries_vouchers` (`id`, `vouchers_id`, `foto`, `urutan`, `created_at`, `updated_at`) VALUES
(1, 36, '626e8c1704799.jpg', 1, '2022-05-01 13:33:11', '2022-05-01 13:33:11'),
(2, 36, '626e8c1705409.png', 2, '2022-05-01 13:33:11', '2022-05-01 13:33:11'),
(3, 37, '626e8d4843b95.jpg', 1, '2022-05-01 13:38:16', '2022-05-04 06:39:29'),
(4, 37, '626e8d48445bb.jpg', 7, '2022-05-01 13:38:16', '2022-05-04 06:37:55'),
(5, 37, '626e8d4844e6a.png', 10, '2022-05-01 13:38:16', '2022-05-04 06:40:19'),
(6, 37, '626e8d484556b.png', 9, '2022-05-01 13:38:16', '2022-05-04 06:39:30'),
(7, 36, '626e92adc50e8.png', 10, '2022-05-01 14:01:17', '2022-05-01 14:01:17'),
(8, 36, '626e92adc5c35.jpg', 11, '2022-05-01 14:01:17', '2022-05-01 14:01:17'),
(23, 40, '627265ec227d2.jpg', 10, '2022-05-04 11:39:24', '2022-05-04 11:39:24'),
(24, 40, '627265ec23332.png', 14, '2022-05-04 11:39:24', '2022-05-04 12:39:38'),
(25, 40, '627265ec23f23.png', 12, '2022-05-04 11:39:24', '2022-05-04 11:39:24'),
(26, 40, '627265ec24a0a.png', 13, '2022-05-04 11:39:24', '2022-05-04 11:39:24'),
(27, 44, '627274a71f4b4.png', 1, '2022-05-04 12:42:15', '2022-05-04 12:42:15'),
(28, 44, '627274a720624.jpg', 2, '2022-05-04 12:42:15', '2022-05-04 12:42:15'),
(29, 44, '627274a7210c7.jpg', 3, '2022-05-04 12:42:15', '2022-05-04 12:42:15'),
(30, 44, '627274a721eac.png', 10, '2022-05-04 12:42:15', '2022-06-15 03:32:07'),
(31, 45, '627274c63bc04.png', 1, '2022-05-04 12:42:46', '2022-05-04 12:42:46'),
(32, 45, '627274c63c6db.jpg', 2, '2022-05-04 12:42:46', '2022-05-04 12:42:46'),
(33, 45, '627274c63d054.jpg', 3, '2022-05-04 12:42:46', '2022-05-04 12:42:46'),
(34, 45, '627274c63d828.png', 4, '2022-05-04 12:42:46', '2022-05-04 12:42:46'),
(35, 46, '627275427f4c8.png', 1, '2022-05-04 12:44:50', '2022-05-04 12:44:50'),
(36, 46, '627275427feec.jpg', 2, '2022-05-04 12:44:50', '2022-05-04 12:44:50'),
(37, 46, '6272754280be9.jpg', 3, '2022-05-04 12:44:50', '2022-05-04 12:44:50'),
(38, 46, '6272754281746.png', 4, '2022-05-04 12:44:50', '2022-05-04 12:44:50'),
(39, 47, '627275b4bd0b7.png', 1, '2022-05-04 12:46:44', '2022-05-04 12:46:44'),
(40, 47, '627275b4bdd0f.jpg', 2, '2022-05-04 12:46:44', '2022-05-04 12:46:44'),
(41, 47, '627275b4be5ea.jpg', 3, '2022-05-04 12:46:44', '2022-05-04 12:46:44'),
(42, 47, '627275b4bf2e1.png', 4, '2022-05-04 12:46:44', '2022-05-04 12:46:44'),
(47, 49, '62727d1d9a66b.png', 1, '2022-05-04 13:18:21', '2022-05-04 13:18:21'),
(48, 49, '62727d1d9af73.jpg', 2, '2022-05-04 13:18:21', '2022-05-04 13:18:21'),
(50, 49, 'assets/multipleimage/62727d1d9bdb4.png', 4, '2022-05-04 13:18:21', '2022-05-04 13:18:21'),
(56, 51, 'assets/multipleimage/6279e31496395.png', 1, '2022-05-10 03:59:16', '2022-05-10 03:59:16'),
(57, 51, 'assets/multipleimage/6279e31496e37.jpg', 2, '2022-05-10 03:59:16', '2022-05-10 03:59:16'),
(58, 51, 'assets/multipleimage/6279e31497abc.jpg', 3, '2022-05-10 03:59:16', '2022-05-10 03:59:16'),
(59, 51, 'assets/multipleimage/6279e314989f4.png', 4, '2022-05-10 03:59:16', '2022-05-10 03:59:16'),
(60, 52, 'assets/multipleimage/6279e3778048f.png', 1, '2022-05-10 04:00:55', '2022-05-10 04:00:55'),
(61, 52, 'assets/multipleimage/6279e377813a9.jpg', 2, '2022-05-10 04:00:55', '2022-05-10 04:00:55'),
(62, 52, 'assets/multipleimage/6279e37781ebe.jpg', 3, '2022-05-10 04:00:55', '2022-05-10 04:00:55'),
(63, 52, 'assets/multipleimage/6279e3778278c.png', 4, '2022-05-10 04:00:55', '2022-05-10 04:00:55'),
(64, 53, 'assets/multipleimage/6279e3884a750.png', 1, '2022-05-10 04:01:12', '2022-05-10 04:01:12'),
(65, 53, 'assets/multipleimage/6279e3884ba24.jpg', 2, '2022-05-10 04:01:12', '2022-05-10 04:01:12'),
(66, 53, 'assets/multipleimage/6279e3884c487.jpg', 3, '2022-05-10 04:01:12', '2022-05-10 04:01:12'),
(67, 53, 'assets/multipleimage/6279e3884d2d9.png', 4, '2022-05-10 04:01:12', '2022-05-10 04:01:12'),
(68, 54, 'assets/multipleimage/6279e3ca883a5.png', 1, '2022-05-10 04:02:18', '2022-05-10 04:02:18'),
(69, 54, 'assets/multipleimage/6279e3ca88e90.jpg', 2, '2022-05-10 04:02:18', '2022-05-10 04:02:18'),
(70, 54, 'assets/multipleimage/6279e3ca897e3.jpg', 3, '2022-05-10 04:02:18', '2022-05-10 04:02:18'),
(71, 54, 'assets/multipleimage/6279e3ca8a1cc.png', 4, '2022-05-10 04:02:18', '2022-05-10 04:02:18'),
(72, 55, 'assets/multipleimage/6279e3db680ae.png', 1, '2022-05-10 04:02:35', '2022-05-10 04:02:35'),
(73, 55, 'assets/multipleimage/6279e3db68c13.jpg', 2, '2022-05-10 04:02:35', '2022-05-10 04:02:35'),
(74, 55, 'assets/multipleimage/6279e3db69658.jpg', 3, '2022-05-10 04:02:35', '2022-05-10 04:02:35'),
(75, 55, 'assets/multipleimage/6279e3db69e1c.png', 4, '2022-05-10 04:02:35', '2022-05-10 04:02:35'),
(76, 56, 'assets/multipleimage/6279e3eb5deae.png', 1, '2022-05-10 04:02:51', '2022-05-10 04:02:51'),
(77, 56, 'assets/multipleimage/6279e3eb5e910.jpg', 2, '2022-05-10 04:02:51', '2022-05-10 04:02:51'),
(78, 56, 'assets/multipleimage/6279e3eb5f17d.jpg', 3, '2022-05-10 04:02:51', '2022-05-10 04:02:51'),
(79, 56, 'assets/multipleimage/6279e3eb61608.png', 4, '2022-05-10 04:02:51', '2022-05-10 04:02:51'),
(80, 57, 'assets/multipleimage/6279e407d1dda.png', 1, '2022-05-10 04:03:19', '2022-05-10 04:03:19'),
(81, 57, 'assets/multipleimage/6279e407d28c6.jpg', 2, '2022-05-10 04:03:19', '2022-05-10 04:03:19'),
(82, 57, 'assets/multipleimage/6279e407d3289.jpg', 3, '2022-05-10 04:03:19', '2022-05-10 04:03:19'),
(83, 57, 'assets/multipleimage/6279e407d3d38.png', 4, '2022-05-10 04:03:19', '2022-05-10 04:03:19'),
(84, 58, 'assets/multipleimage/6279e40dd0bd1.png', 1, '2022-05-10 04:03:25', '2022-05-10 04:03:25'),
(85, 58, 'assets/multipleimage/6279e40dd1567.jpg', 2, '2022-05-10 04:03:25', '2022-05-10 04:03:25'),
(86, 58, 'assets/multipleimage/6279e40dd1caa.jpg', 3, '2022-05-10 04:03:25', '2022-05-10 04:03:25'),
(87, 58, 'assets/multipleimage/6279e40dd29c4.png', 4, '2022-05-10 04:03:25', '2022-05-10 04:03:25'),
(92, 60, 'assets/multipleimage/6279e58e6574d.png', 1, '2022-05-10 04:09:50', '2022-05-10 04:09:50'),
(93, 60, 'assets/multipleimage/6279e58e66114.jpg', 2, '2022-05-10 04:09:50', '2022-05-10 04:09:50'),
(94, 60, 'assets/multipleimage/6279e58e66bc7.jpg', 3, '2022-05-10 04:09:50', '2022-05-10 04:09:50'),
(95, 60, 'assets/multipleimage/6279e58e6798d.png', 4, '2022-05-10 04:09:50', '2022-05-10 04:09:50'),
(96, 61, 'assets/multipleimage/62a95306e11d5.png', 1, '2022-06-15 03:33:26', '2022-06-15 03:33:26'),
(97, 61, 'assets/multipleimage/62a95306e8107.png', 2, '2022-06-15 03:33:26', '2022-06-15 03:33:26'),
(99, 62, 'assets/multipleimage/62a9534836bb4.png', 2, '2022-06-15 03:34:32', '2022-06-15 03:34:32'),
(100, 61, 'assets/multipleimage/62a953ca50cca.png', 10, '2022-06-15 03:36:42', '2022-06-15 03:36:42'),
(101, 61, 'assets/multipleimage/62a953dd6b718.png', 10, '2022-06-15 03:37:01', '2022-06-15 03:37:01'),
(103, 63, 'assets/multipleimage/8MOfS6WKdSU1N5FgW5HVNtH1xvGAdAnoR49sJHOJ.jpg', 10, '2022-06-23 07:13:58', '2022-06-23 07:13:58'),
(104, 63, 'assets/multipleimage/JuBdmtVcqtK6XpoUxBSFZ4cYM9FGbbkbx217mUPw.png', 11, '2022-06-23 07:13:58', '2022-06-23 07:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `adfood_merchants`
--

CREATE TABLE `adfood_merchants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `min_price` bigint(20) DEFAULT NULL,
  `max_price` bigint(20) DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_restaurant` time DEFAULT NULL,
  `close_restaurant` time DEFAULT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_business` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_restaurant` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adfood_merchants`
--

INSERT INTO `adfood_merchants` (`id`, `min_price`, `max_price`, `website`, `open_restaurant`, `close_restaurant`, `about`, `type_business`, `phone_restaurant`, `deleted_at`, `created_at`, `updated_at`, `address`, `long`, `lat`) VALUES
(609, 12, 15, 'website.com', '12:03:00', '05:01:00', 'Just about us.', 'type merchant', '+6289604080904', NULL, '2022-05-23 04:50:29', '2022-06-27 15:12:32', 'Jl. Puskesmas1', '123.123', '123.421'),
(611, 13, 30, 'fasdfasdfasdfasdf.com', '13:09:00', '14:09:00', 'asdfasdf', NULL, NULL, NULL, '2022-06-04 06:10:03', '2022-06-27 14:58:09', 'Jl. HRA. Rahman Gg. Gunung Sahari', '123.123', '123.421'),
(636, 13, 23, 'blablabla.com', '02:30:00', '06:30:00', 'blablabla', NULL, NULL, NULL, '2022-06-14 07:03:49', '2022-06-15 03:10:46', 'blablablalagi', 'blablablalagilong', 'blablablalagilat'),
(639, 1, 1, 'asd', '13:52:00', '13:52:00', 'sdfasdfasdf', NULL, NULL, NULL, '2022-06-23 06:52:17', '2022-06-23 06:52:17', 'fasdfasdf', 'asfasdf', 'asdf'),
(642, NULL, NULL, NULL, NULL, NULL, NULL, 'type merchant', '+6289604080904', NULL, '2022-08-22 06:29:43', '2022-08-22 06:29:43', 'blablabalbbba', 'aabbccdd', 'ddccbbaa'),
(649, 13, 23, 'blablabla.com', '02:30:00', '06:30:00', 'blablabla', NULL, NULL, NULL, '2022-08-23 02:44:04', '2022-08-23 03:08:48', 'blablablalagi', 'blablablalagilong', 'blablablalagilat'),
(650, 13, 23, 'blablabla.com', '02:30:00', '06:30:00', 'blablabla', NULL, NULL, NULL, '2022-08-23 03:04:18', '2022-08-23 03:04:18', 'blablablalagi', 'blablablalagilong', 'blablablalagilat');

-- --------------------------------------------------------

--
-- Table structure for table `adfood_ori_vouchers`
--

CREATE TABLE `adfood_ori_vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merchants_id` int(11) NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `min_purchase` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `home` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voucher` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adfood_ori_vouchers`
--

INSERT INTO `adfood_ori_vouchers` (`id`, `name`, `merchants_id`, `foto`, `coupon_code`, `start_date`, `end_date`, `min_purchase`, `description`, `discount`, `home`, `voucher`, `status`, `created_at`, `updated_at`) VALUES
(3, 'promotion 1', 609, 'assets/gallery/Z04TuZKd23zQnAaxEcOui9fE8klPaZN9VkDBdsuC.png', 'jkljjkh', '2022-05-08', '2022-05-08', 9, 'aaaaaaaaaaaaaaaaa', 1, 'on', NULL, 1, '2022-05-08 06:51:34', '2022-05-08 06:52:05'),
(4, 'voucher merchant7', 611, 'assets/gallery/1vgzpLGoZHbsoKMIgvE9lNwGMuMmarvYW25VrpeF.jpg', 'code dua', '2021-10-08', '2021-10-09', 50, 'bli bli bli', NULL, NULL, 'on', 1, '2022-05-08 07:02:50', '2022-05-08 07:16:49'),
(7, 'promotion 8', 612, 'assets/gallery/bEEPIk56fPUGoImszHI96ewcxNK0UnFMaM0Jno72.jpg', 'code satu', '2021-09-09', '2021-09-09', 40, 'bla bla bla bla', 20, 'on', NULL, 1, '2022-05-10 04:34:58', '2022-05-10 04:34:58'),
(8, 'promotion 10', 609, 'assets/gallery/EhyFECGktXIG7YAHMGsGYZAUOi1Fvkvve7wmP48N.jpg', 'code dua', '2021-10-08', '2021-10-09', 50, 'bli bli bli', 30, NULL, 'on', 1, '2022-05-10 04:35:20', '2022-05-10 06:12:50'),
(10, 'promotion 8', 609, 'assets/gallery/oFkFiSe9vJ2nECYyZb11jy5okZWbeZSHj7bLmviL.jpg', 'code satu', '2021-09-09', '2021-09-09', 40, 'bla bla bla bla', 20, 'on', NULL, 1, '2022-05-10 06:11:11', '2022-05-10 06:11:11'),
(11, 'promotion 8', 609, 'assets/gallery/TkAcggKMYD4IssUerZKa4Ogqgq0l4V03mCZO2vZy.jpg', 'code satu', '2021-09-09', '2021-09-09', 40, 'bla bla bla bla', 20, 'on', NULL, 1, '2022-05-10 06:12:20', '2022-05-10 06:12:20'),
(12, 'promotion 8', 498, 'assets/gallery/riBnx6JDey5nYVy63awrVjRbn8zE5rkOrNjltoSA.jpg', 'code satu', '2021-09-09', '2021-09-09', 40, 'bla bla bla bla', 20, 'on', NULL, 0, '2022-06-15 03:38:08', '2022-06-15 03:38:08'),
(13, 'promotion 8', 609, 'assets/gallery/XLmaa15tUVWA9BxdYN1fYeX1qmEa6ahUJypER42v.jpg', 'code satu', '2021-09-09', '2021-09-09', 40, 'bla bla bla bla', 20, 'on', NULL, 1, '2022-06-15 03:38:19', '2022-06-15 03:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `adfood_reservations`
--

CREATE TABLE `adfood_reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adfood_merchants_id` int(11) NOT NULL,
  `adfood_customers_id` int(11) NOT NULL,
  `jumlah_orang` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acc` int(11) NOT NULL DEFAULT 0,
  `tracking_register` datetime DEFAULT NULL,
  `tracking_restaurant_check` datetime DEFAULT NULL,
  `tracking_confrimed_restaurant` datetime DEFAULT NULL,
  `tracking_done` datetime DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `date_rate` datetime DEFAULT NULL,
  `ulasan_rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pothos_coment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adfood_reservations`
--

INSERT INTO `adfood_reservations` (`id`, `order_id`, `adfood_merchants_id`, `adfood_customers_id`, `jumlah_orang`, `date`, `time`, `status`, `acc`, `tracking_register`, `tracking_restaurant_check`, `tracking_confrimed_restaurant`, `tracking_done`, `rate`, `date_rate`, `ulasan_rate`, `pothos_coment`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, '625e7b22300ef', 611, 3, 3, '2022-04-19', '16:00:00', 'accepted', 1, NULL, NULL, NULL, NULL, 5, '2022-06-02 20:32:01', 'good', 'assets/gallery/sZKCaPsNZU8PFhexhjdBzRPjEsZB9ggvJMhf2MA6.png', NULL, '2022-04-19 09:05:14', '2022-06-02 13:32:15'),
(3, '6260195798b0a', 612, 477, 1, '2022-04-21', '22:29:00', 'pending', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-20 14:31:55', '2022-06-08 02:12:00'),
(5, '6260c6c62fd06', 609, 3, 1, '2022-04-21', '09:52:00', 'rejected', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 02:52:12', '2022-04-21 04:11:31'),
(6, '6260d88ca12c4', 611, 477, 1, '2022-04-21', '11:07:00', 'pending', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-21 04:07:56', '2022-04-21 04:07:56'),
(7, '6260d98056728', 609, 3, 6, '2022-04-21', '11:11:00', 'rejected', 1, NULL, NULL, NULL, NULL, 1, NULL, 'not recomended', NULL, NULL, '2022-04-21 04:12:01', '2022-04-21 04:12:01'),
(8, '6262189f2f8c2', 611, 3, 41, '2022-04-22', '09:55:00', 'rejected', 1, NULL, NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, '2022-04-22 02:55:23', '2022-04-22 02:56:14'),
(10, '626268e388da2', 609, 524, 2, '2022-04-04', '14:20:00', 'accepted', 1, NULL, NULL, NULL, NULL, 4, NULL, 'good good', NULL, NULL, '2022-05-22 08:35:47', '2022-04-22 08:35:47'),
(93, '628494683e6a6', 609, 3, 5, '2022-05-18', '13:38:00', 'pending', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-18 06:38:32', '2022-05-18 06:38:32'),
(95, '6284ca42d331b', 609, 3, 6, '2022-05-22', '20:27:00', 'pending', 0, '2022-05-18 17:27:00', '2022-05-19 17:27:00', '2022-05-20 17:27:00', '2022-05-21 17:28:00', NULL, NULL, NULL, NULL, NULL, '2022-05-18 10:28:18', '2022-05-18 10:28:18'),
(96, '6284ca990c296', 609, 3, 2, '2022-05-23', '17:29:00', 'pending', 0, '2022-05-19 12:18:00', '2022-05-19 12:18:00', '2022-05-19 23:53:00', '2022-05-20 21:18:00', NULL, NULL, NULL, NULL, NULL, '2022-05-18 10:29:45', '2022-05-18 14:20:08'),
(100, '628d86505e70e', 609, 3, 2, '2022-04-04', '14:20:00', 'pending', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-25 01:28:48', '2022-05-25 01:28:48'),
(101, '628d86966f2dc', 609, 3, 2, '2022-04-04', '14:20:00', 'pending', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-25 01:29:58', '2022-05-25 01:29:58'),
(102, '628d8697aa5f1', 609, 3, 2, '2022-04-04', '14:20:00', 'pending', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-25 01:29:59', '2022-05-25 01:29:59'),
(103, '628d86989a4a6', 609, 3, 2, '2022-04-04', '14:20:00', 'pending', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-25 01:30:00', '2022-05-25 01:30:00'),
(104, '628d8699960ad', 609, 3, 2, '2022-04-04', '14:20:00', 'pending', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-25 01:30:01', '2022-05-25 01:30:01'),
(105, '628d869a5820e', 609, 3, 2, '2022-04-04', '14:20:00', 'pending', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-25 01:30:02', '2022-05-25 01:30:02'),
(106, '628d8c252a448', 609, 3, 2, '2022-04-04', '14:20:00', 'pending', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-25 01:53:41', '2022-05-25 01:53:41'),
(107, '628d8c2669589', 609, 3, 2, '2022-04-04', '14:20:00', 'pending', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-25 01:53:42', '2022-05-25 01:53:42'),
(108, '628d8c27595dc', 609, 3, 2, '2022-04-04', '14:20:00', 'pending', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-25 01:53:43', '2022-05-25 01:53:43'),
(109, '628d8c28274c1', 609, 3, 2, '2022-04-04', '14:20:00', 'accepted', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-25 01:53:44', '2022-05-25 01:53:44'),
(110, '628d8c28ea07f', 609, 3, 2, '2022-04-04', '14:20:00', 'pending', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-25 01:53:44', '2022-05-25 01:53:44'),
(122, '628d8c30350d0', 609, 3, 2, '2022-04-04', '14:20:00', 'accepted', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-25 01:53:52', '2022-05-25 01:53:52'),
(123, '628d8c30a190a', 609, 3, 2, '2022-04-04', '14:20:00', 'accepted', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-25 01:53:52', '2022-05-25 01:53:52'),
(124, '628d8c314872e', 609, 3, 2, '2022-04-04', '14:20:00', 'accepted', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-25 01:53:53', '2022-05-25 01:53:53'),
(125, '628d8c31b0f5c', 609, 3, 2, '2022-04-04', '14:20:00', 'accepted', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-25 01:53:53', '2022-05-25 01:53:53'),
(126, '628d8c32622c1', 609, 3, 2, '2022-04-04', '14:20:00', 'accepted', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-25 01:53:54', '2022-05-25 01:53:54'),
(128, '628d8c33826c3', 609, 3, 2, '2022-04-04', '14:20:00', 'accepted', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-25 01:53:55', '2022-05-25 01:53:55'),
(129, '628d8c34113fb', 609, 3, 2, '2022-04-04', '14:20:00', 'accepted', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-25 01:53:56', '2022-05-25 01:53:56'),
(131, '628d8c354d436', 609, 3, 2, '2022-04-04', '14:20:00', 'accepted', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-25 01:53:57', '2022-05-25 01:53:57'),
(132, '628d8c3612da2', 609, 3, 2, '2022-04-04', '14:20:00', 'accepted', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-25 01:53:58', '2022-05-25 01:53:58'),
(133, '628d8c36a3a6a', 609, 3, 2, '2022-04-04', '14:20:00', 'accepted', 1, '2022-05-19 13:18:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-25 01:53:58', '2022-05-25 01:53:58'),
(135, '62a01118c5031', 609, 3, 4, '2022-06-08', '10:01:00', 'accepted', 1, '2022-06-08 10:01:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 03:01:44', '2022-06-08 03:01:44'),
(136, '62a01126049cd', 609, 3, 4, '2022-06-08', '10:01:00', 'accepted', 1, '2022-06-08 10:01:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 03:01:58', '2022-06-08 03:01:58'),
(137, '62a01285a7151', 609, 529, 4, '2022-06-08', '10:07:00', 'pending', 0, '2022-06-08 10:07:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-08 03:07:49', '2022-06-08 03:08:16'),
(138, '62ae8ed846b07', 609, 3, 4, '2022-06-19', '09:49:00', 'pending', 0, '2022-06-19 09:49:00', '2022-06-19 09:49:00', '2022-06-19 09:49:00', '2022-06-19 09:49:00', NULL, NULL, NULL, NULL, NULL, '2022-06-19 02:50:00', '2022-06-19 02:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `adfood_stripes`
--

CREATE TABLE `adfood_stripes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `card_information` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `cvc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `livemode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressLine1` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addressLine2` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expMonth` int(11) DEFAULT NULL,
  `expYear` int(11) DEFAULT NULL,
  `funding` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_paymentmethod` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merchants_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adfood_stripes`
--

INSERT INTO `adfood_stripes` (`id`, `card_information`, `date`, `cvc`, `country_region`, `zip`, `created_at`, `updated_at`, `created`, `id_card`, `livemode`, `type`, `addressLine1`, `addressLine2`, `brand`, `expMonth`, `expYear`, `funding`, `last4`, `number`, `token`, `id_paymentmethod`, `merchants_id`) VALUES
(2, '34567899876544567', '2022-03-19', '43434', 'asdff4444', '78115', '2022-05-23 10:10:13', '2022-05-23 10:10:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 639),
(3, '345678998765445674', '2022-05-24', '454', 'asdff44443', '78115', '2022-05-24 00:38:51', '2022-05-24 00:38:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 609),
(5, '111111errgg update', '2023-04-04', '23dft update', 'IDN', 'uejdij update', '2022-07-07 02:41:59', '2022-07-07 02:46:42', '12345678 update', 'pm_987klkk update', 'true', 'card update', 'update', 'update', 'visa update', 3, 2024, 'credit update', '4242 update', '12234 update', '2333 update', '234 update', 609),
(9, '111111errgg', '2022-04-04', '23dft', 'US', 'uejdij', '2022-07-07 07:24:37', '2022-07-07 07:24:37', '12345678', 'pm_987klkk', 'false', 'card', NULL, NULL, 'visa', 2, 2023, 'credit', '4242', '12234', '12344rgfd5', '234', 639);

-- --------------------------------------------------------

--
-- Table structure for table `adfood_subscriptions`
--

CREATE TABLE `adfood_subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_discount` int(11) DEFAULT NULL,
  `extra_posts` int(11) DEFAULT NULL,
  `extra_images` int(11) DEFAULT NULL,
  `weeks` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expired_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adfood_subscriptions`
--

INSERT INTO `adfood_subscriptions` (`id`, `category`, `foto`, `price`, `price_discount`, `extra_posts`, `extra_images`, `weeks`, `status`, `created_at`, `updated_at`, `start_date`, `expired_date`) VALUES
(1, 'Basic', 'assets/gallery/43mjL4ZCKTUUWjAII9ldFjCTuxSWuSFf3tSGyXgh.jpg', 1200, 70, 5, 5, 3, 0, '2022-05-19 06:22:24', '2022-05-19 06:51:42', NULL, NULL),
(2, 'premium', 'assets/gallery/ZUUCSCw2DLJjKJV3aMsL28OUJjVr1MruU0pCUkZz.jpg', 200, NULL, 2, 1, 3, 1, '2022-05-19 07:03:25', '2022-05-19 07:03:25', NULL, NULL),
(4, 'gold', 'assets/gallery/8GX4Z2yOXLP77YTDJkhdLJk6JoQNKCXY5xRalgQj.jpg', 5, 5, 5, 5, 5, 1, '2022-05-19 07:09:31', '2022-05-19 07:09:39', NULL, NULL),
(5, 'premium', NULL, 200, NULL, 2, 1, 3, 1, '2022-06-15 03:43:19', '2022-06-15 03:43:19', NULL, NULL),
(6, 'premium', 'assets/gallery/fhfkrsTXk1IvqKwjtEi5WUTiKk5rDd10PrQFQHLy.jpg', 200, NULL, 2, 1, 4, 1, '2022-06-15 03:43:31', '2022-07-09 06:13:52', '2021-03-23', '2022-05-25'),
(7, 'premium', NULL, 200, NULL, 2, 1, 3, 1, '2022-07-09 06:11:32', '2022-07-09 06:11:32', '1995-04-24', '2022-05-25'),
(8, 'premium', 'assets/gallery/bONTamo0CrcyrzdrAQPxWBOUe1LKhIjYYdYVTFM2.jpg', 200, NULL, 2, 1, 3, 0, '2022-07-09 06:11:51', '2022-07-09 06:14:18', '1995-04-24', '2022-05-25'),
(9, 'premium', 'assets/gallery/11Dakcvs2pQp0mkZAVwv6BjGjfIGwJKlmd5DUAfd.jpg', 200, NULL, 2, 1, 3, 0, '2022-07-09 06:14:37', '2022-07-09 06:14:42', '1995-04-24', '2022-05-25');

-- --------------------------------------------------------

--
-- Table structure for table `adfood_subscriptions_merchants`
--

CREATE TABLE `adfood_subscriptions_merchants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `merchants_id` bigint(20) NOT NULL,
  `subscriptions_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `adfood_subscriptions_merchants`
--

INSERT INTO `adfood_subscriptions_merchants` (`id`, `merchants_id`, `subscriptions_id`, `created_at`, `updated_at`) VALUES
(1, 609, 6, '2022-07-07 03:45:46', '2022-07-07 03:45:46'),
(2, 639, 5, '2022-07-07 03:46:13', '2022-07-07 03:58:16'),
(3, 639, 5, '2022-07-07 03:46:43', '2022-07-07 03:46:43'),
(4, 639, 6, '2022-07-07 03:47:36', '2022-07-07 03:47:36'),
(5, 639, 6, '2022-07-07 04:00:51', '2022-07-07 04:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ch_favorites`
--

INSERT INTO `ch_favorites` (`id`, `user_id`, `favorite_id`, `created_at`, `updated_at`) VALUES
(55642008, 307, 90, '2021-11-20 02:34:44', '2021-11-20 02:34:44');

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` bigint(20) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ch_messages`
--

INSERT INTO `ch_messages` (`id`, `type`, `from_id`, `to_id`, `body`, `attachment`, `seen`, `created_at`, `updated_at`) VALUES
(1652927255, 'user', 307, 90, 'jadi customer service', NULL, 1, '2021-11-20 02:35:48', '2021-11-20 02:35:49'),
(1668785513, 'user', 91, 90, 'loh', NULL, 1, '2021-11-20 06:44:14', '2021-11-20 06:44:14'),
(1677830268, 'user', 90, 91, 'asdf', NULL, 1, '2021-11-20 06:59:28', '2021-11-20 06:59:28'),
(1683807440, 'user', 307, 413, 'asdfasdfasdf', NULL, 0, '2021-11-22 07:11:26', '2021-11-22 07:11:26'),
(1689485671, 'user', 90, 91, 'asdf', NULL, 1, '2021-11-20 06:59:33', '2021-11-20 06:59:34'),
(1699433954, 'user', 90, 91, 'asdf', NULL, 1, '2021-11-20 06:59:27', '2021-11-20 06:59:27'),
(1707098449, 'user', 91, 90, 'asdf', NULL, 1, '2021-11-20 07:00:04', '2021-11-20 07:00:05'),
(1709985964, 'user', 90, 91, 'asdf', NULL, 1, '2021-11-20 06:59:37', '2021-11-20 06:59:37'),
(1729072681, 'user', 90, 307, 'ouh', NULL, 1, '2021-11-22 07:05:58', '2021-11-22 07:11:28'),
(1733171285, 'user', 91, 90, 'test', NULL, 1, '2021-11-20 06:04:41', '2021-11-20 06:43:54'),
(1740621608, 'user', 91, 90, 'hapus', NULL, 1, '2021-11-20 06:28:39', '2021-11-20 06:43:54'),
(1758608248, 'user', 90, 91, 'test', NULL, 0, '2021-12-26 12:37:43', '2021-12-26 12:37:43'),
(1761841711, 'user', 91, 90, 'ag', NULL, 1, '2021-11-20 06:29:48', '2021-11-20 06:43:54'),
(1801115274, 'user', 91, 90, 'nah baru ada', NULL, 1, '2021-11-20 02:32:00', '2021-11-20 02:32:01'),
(1804871739, 'user', 90, 91, 'kapan', NULL, 1, '2021-11-20 06:58:35', '2021-11-20 06:58:35'),
(1812398610, 'user', 90, 91, 'nah', NULL, 1, '2021-11-20 06:54:50', '2021-11-20 06:54:50'),
(1822625218, 'user', 91, 90, 'kalau', NULL, 1, '2021-11-20 06:28:16', '2021-11-20 06:43:54'),
(1837903082, 'user', 90, 91, 'asdf', NULL, 1, '2021-11-20 06:59:34', '2021-11-20 06:59:35'),
(1843131475, 'user', 91, 90, 'aaaaa', NULL, 1, '2021-11-20 06:34:51', '2021-11-20 06:43:54'),
(1846812009, 'user', 91, 90, 'st', NULL, 1, '2021-12-26 03:31:35', '2021-12-26 03:31:35'),
(1853344039, 'user', 91, 90, 'asfasdfasdf', NULL, 1, '2021-11-20 06:42:08', '2021-11-20 06:43:54'),
(1858797311, 'user', 91, 90, 'ke 2', NULL, 1, '2021-11-20 06:14:12', '2021-11-20 06:43:54'),
(1871803400, 'user', 91, 90, 'ini', NULL, 1, '2021-11-20 06:31:21', '2021-11-20 06:43:54'),
(1875106264, 'user', 91, 90, 'asdfasdf', NULL, 1, '2021-11-20 07:10:51', '2021-11-20 07:11:08'),
(1880262458, 'user', 91, 90, 'nah', NULL, 1, '2021-11-20 07:09:24', '2021-11-20 07:09:25'),
(1888413768, 'user', 90, 307, 'ada kan', NULL, 1, '2021-11-20 02:32:19', '2021-11-20 02:33:47'),
(1905574490, 'user', 307, 90, 'triga', NULL, 1, '2021-11-22 07:11:31', '2021-12-07 02:05:52'),
(1920846846, 'user', 91, 307, 'hi', NULL, 1, '2021-11-24 01:03:20', '2021-11-24 01:03:22'),
(1964090081, 'user', 91, 90, 'coba', NULL, 1, '2021-11-20 06:36:00', '2021-11-20 06:43:54'),
(1969970567, 'user', 91, 90, 'kita', NULL, 1, '2021-11-20 06:27:04', '2021-11-20 06:43:54'),
(1970935747, 'user', 91, 90, 'kapan', NULL, 1, '2021-11-20 06:56:37', '2021-11-20 06:56:37'),
(1976651146, 'user', 91, 90, 'sudah', NULL, 1, '2021-11-20 06:34:02', '2021-11-20 06:43:54'),
(1988694831, 'user', 91, 90, 'dicoba', NULL, 1, '2021-11-20 07:14:35', '2021-11-20 07:14:36'),
(2016094551, 'user', 307, 90, 'asdfasdf', NULL, 1, '2021-11-22 07:05:48', '2021-11-22 07:05:56'),
(2033269451, 'user', 91, 90, 'tak coba', NULL, 1, '2021-11-20 06:26:26', '2021-11-20 06:43:54'),
(2033836074, 'user', 90, 91, 'asdfasdf', NULL, 1, '2021-11-20 07:07:45', '2021-11-20 07:07:46'),
(2034159330, 'user', 91, 90, 'asdf', NULL, 1, '2021-11-20 07:11:08', '2021-11-20 07:11:08'),
(2050199182, 'user', 90, 91, 'test', NULL, 1, '2021-11-20 02:30:33', '2021-11-20 02:31:53'),
(2065124743, 'user', 91, 90, 'ginii', NULL, 1, '2021-11-20 06:38:34', '2021-11-20 06:43:54'),
(2065669103, 'user', 91, 90, 'jika', NULL, 1, '2021-11-20 06:59:20', '2021-11-20 06:59:20'),
(2068815025, 'user', 90, 91, 'test', NULL, 1, '2021-11-20 06:58:01', '2021-11-20 06:58:02'),
(2071614250, 'user', 91, 90, 'kita coba', NULL, 1, '2021-11-20 07:13:48', '2021-11-20 07:13:49'),
(2076858946, 'user', 307, 90, 'ya', NULL, 1, '2021-11-22 07:05:43', '2021-11-22 07:05:56'),
(2083579222, 'user', 307, 90, 'test', NULL, 1, '2021-11-24 01:07:40', '2021-12-07 02:05:52'),
(2093745419, 'user', 91, 90, 'siap', NULL, 1, '2021-11-20 06:56:58', '2021-11-20 06:56:59'),
(2133089847, 'user', 90, 91, 'tasd', NULL, 0, '2021-12-26 12:44:39', '2021-12-26 12:44:39'),
(2151733473, 'user', 91, 90, 'd', NULL, 1, '2021-11-20 06:41:23', '2021-11-20 06:43:54'),
(2152992608, 'user', 90, 91, 'asdf', NULL, 1, '2021-11-20 06:59:30', '2021-11-20 06:59:30'),
(2199832539, 'user', 90, 91, 'rteasdf', NULL, 0, '2021-12-26 12:40:49', '2021-12-26 12:40:49'),
(2211638802, 'user', 90, 91, 'asdf', NULL, 1, '2021-11-20 06:59:29', '2021-11-20 06:59:30'),
(2224291994, 'user', 90, 91, 'asdf', NULL, 1, '2021-11-20 06:59:35', '2021-11-20 06:59:36'),
(2224932353, 'user', 90, 411, 'hola', NULL, 0, '2021-11-22 07:23:05', '2021-11-22 07:23:05'),
(2225515981, 'user', 91, 90, 'ginnn', NULL, 1, '2021-11-20 06:33:13', '2021-11-20 06:43:54'),
(2227770615, 'user', 90, 91, 'push', NULL, 1, '2021-11-20 07:08:53', '2021-11-20 07:08:54'),
(2229266446, 'user', 90, 307, 'test', NULL, 1, '2021-11-22 07:04:55', '2021-11-22 07:05:35'),
(2230546277, 'user', 307, 91, 'yup', NULL, 1, '2021-11-24 01:03:26', '2021-11-24 01:03:26'),
(2232247854, 'user', 91, 307, 'test', NULL, 1, '2021-11-24 01:03:16', '2021-11-24 01:03:22'),
(2239573937, 'user', 91, 90, 'test', NULL, 1, '2021-11-20 06:52:35', '2021-11-20 06:52:36'),
(2242371356, 'user', 90, 91, 'he', NULL, 1, '2021-11-20 06:44:45', '2021-11-20 06:44:46'),
(2246327916, 'user', 91, 90, 'bismillah', NULL, 1, '2021-11-20 06:35:19', '2021-11-20 06:43:54'),
(2247349092, 'user', 91, 90, 'lagi', NULL, 1, '2021-11-20 06:36:25', '2021-11-20 06:43:54'),
(2269318018, 'user', 90, 91, 'ggi', NULL, 1, '2021-11-20 07:10:13', '2021-11-20 07:10:14'),
(2294172040, 'user', 90, 91, 'cobelah', NULL, 1, '2021-11-20 07:14:40', '2021-11-20 07:14:40'),
(2307915463, 'user', 90, 91, 'tadi ngle', NULL, 1, '2021-11-20 06:56:26', '2021-11-20 06:56:27'),
(2341243036, 'user', 91, 90, 'asfasdf', NULL, 1, '2021-11-20 06:58:13', '2021-11-20 06:58:14'),
(2395095226, 'user', 91, 90, 'nah', NULL, 1, '2021-11-20 06:39:34', '2021-11-20 06:43:54'),
(2408513856, 'user', 91, 90, 'nah', NULL, 1, '2021-11-20 06:25:12', '2021-11-20 06:43:54'),
(2417708977, 'user', 90, 429, 'test', NULL, 0, '2021-12-26 03:30:09', '2021-12-26 03:30:09'),
(2434691352, 'user', 90, 91, 'dfasdf', NULL, 1, '2021-11-20 06:59:25', '2021-11-20 06:59:26'),
(2439039833, 'user', 91, 90, 'loj', NULL, 1, '2021-11-20 07:10:47', '2021-11-20 07:11:08'),
(2450799318, 'user', 91, 90, 'gimana', NULL, 1, '2021-11-20 06:41:09', '2021-11-20 06:43:54'),
(2462051531, 'user', 90, 307, 'good', NULL, 1, '2021-11-22 07:06:00', '2021-11-22 07:11:28'),
(2480410955, 'user', 90, 91, 'asdf', NULL, 1, '2021-11-20 06:59:28', '2021-11-20 06:59:29'),
(2483955501, 'user', 91, 90, 'test', NULL, 1, '2021-11-20 06:43:25', '2021-11-20 06:43:54'),
(2489236978, 'user', 90, 307, 'test', NULL, 0, '2021-12-16 07:42:27', '2021-12-16 07:42:27'),
(2514563615, 'user', 90, 429, 'asdfasdf', NULL, 0, '2021-12-07 02:05:41', '2021-12-07 02:05:41'),
(2515979316, 'user', 90, 91, 'test', NULL, 1, '2021-12-26 03:32:04', '2021-12-26 03:32:04'),
(2524617658, 'user', 91, 90, 'sampai', NULL, 1, '2021-11-20 06:27:42', '2021-11-20 06:43:54'),
(2531195031, 'user', 91, 91, 'test', NULL, 1, '2021-11-20 02:29:41', '2021-11-20 02:29:42'),
(2544999136, 'user', 90, 91, 'asdf', NULL, 1, '2021-11-20 06:59:29', '2021-11-20 06:59:30'),
(2553132777, 'user', 91, 90, 'sekarang', NULL, 1, '2021-11-20 06:57:17', '2021-11-20 06:57:17'),
(2569263460, 'user', 91, 90, 'test', NULL, 1, '2021-11-20 06:14:07', '2021-11-20 06:43:54'),
(2574136485, 'user', 91, 90, 'Alhamdulillah', NULL, 1, '2021-11-20 06:55:57', '2021-11-20 06:55:57'),
(2610757856, 'user', 91, 90, 'gg', NULL, 1, '2021-11-20 06:41:14', '2021-11-20 06:43:54'),
(2620348820, 'user', 90, 91, 'dffdf', NULL, 1, '2021-11-20 07:00:09', '2021-11-20 07:00:09'),
(2625135814, 'user', 91, 90, 'ini', NULL, 1, '2021-11-20 06:30:33', '2021-11-20 06:43:54'),
(2628892111, 'user', 91, 90, 'ko', NULL, 1, '2021-11-20 07:09:33', '2021-11-20 07:09:33'),
(2632604659, 'user', 90, 91, 'asdf', NULL, 1, '2021-11-20 06:59:36', '2021-11-20 06:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `url`, `title_banner`, `title`, `isi`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 'assets/gallery/rokRLc0NXvH72WjFxfLPUQjIi5c5hKpwieIvWbQa.png', NULL, 'Title isi', 'content belum realtime', '2021-06-20 22:39:00', '2021-06-20 09:43:09', '2021-11-07 10:00:38'),
(4, 'assets/gallery/wicQ8zwtlBost4PauyE8hw0WHlEfVhylEZVNPGYK.png', NULL, 'goat', 'gasdfas dfklqwj erigas gasdfasdf klqwjerigas gasdfasdfklqwjerigas gasdfasdfklqwjerigas gasdfasdfklqwjerigas gasdfasdfklqwjerigas gasdfasdfklqwjerigas', '2021-06-20 22:39:10', '2021-06-20 10:04:15', '2021-11-07 10:00:51'),
(5, NULL, NULL, 'lagi', 'lagi lagi lagi lagi lagi lagi lagi lagi lagi lagi lagi lagi lagi lagi lagi lagi lagi lagi lagi lagi lagi lagi lagi lagi lagi', NULL, '2021-06-20 10:12:55', '2021-06-20 23:23:27'),
(6, 'assets/gallery/CzDfa8Zs4J31C2yD3TGxcqo9JA9s69fekEee7kia.jpeg', NULL, 'title satu', 'title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu title satu', '2021-06-20 23:24:15', '2021-06-20 22:39:46', '2021-11-07 10:01:04'),
(7, 'assets/gallery/HsH4rhySszhf2ETDuuLIbT3HqzAfa8M8e2Jc4zsf.jpeg', NULL, 'Oasis', 'Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis Oasis', NULL, '2021-06-20 23:14:05', '2021-11-07 10:01:17'),
(8, NULL, NULL, 'coba post api', 'coba post api coba post api coba post api coba post api', NULL, '2021-06-22 23:35:40', '2021-06-22 23:35:40'),
(9, NULL, NULL, 'coba post api', 'coba post api coba post api coba post api coba post api', NULL, '2021-06-22 23:36:27', '2021-06-22 23:36:27'),
(12, NULL, NULL, 'tambah cool', 'tambah cool', NULL, '2021-08-30 22:44:26', '2021-08-30 22:44:26'),
(14, 'assets/gallery/85sbp6MhOccix8oumNbf84ZYjrb0H4uzyFeV8imp.png', NULL, 'nah', 'nah', NULL, '2021-08-30 23:13:12', '2021-11-07 10:01:31'),
(15, 'assets/gallery/2AasZKgjyaDJmneWXMsl22HINp1vyNc8etA10uRr.jpeg', NULL, 'lagi', 'lagi', NULL, '2021-08-30 23:14:47', '2021-11-07 10:01:44'),
(23, 'assets/gallery/sIQ8akTFq9ENEc3DvBYM9eUSmSJp4VdTWwtJoAEE.png', NULL, 'Test 2022', 'asdfasdfasdfasdfasdfasdf', NULL, '2022-06-06 18:53:38', '2022-06-06 18:53:38'),
(26, NULL, NULL, 'coba post api', 'coba post api coba post api coba post api coba post api', NULL, '2022-06-06 19:32:11', '2022-06-06 19:32:11'),
(27, 'assets/gallery/wT0SZyyUV6l3bMz8cZg67q7EPjsgy1Z2Sr2QGmjL.jpg', NULL, 'TITLEKU-TITLEKU-TITLEKU-TITLEKU-TITLEKU-TITLEKU-TITLEKU-', 'isi-isi-isi-isi-isi-isi-isi-isi-isi-isi-isi-isi-isi-', NULL, '2022-06-15 03:59:44', '2022-06-15 04:03:12'),
(28, 'assets/gallery/pX8xKMcXV4klfImc38wEqiXyDyL019CWd8vyEyrD.jpg', NULL, 'TITLEKU-TITLEKU-TITLEKU-TITLEKU-TITLEKU-TITLEKU-TITLEKU-', 'isi-isi-isi-isi-isi-isi-isi-isi-isi-isi-isi-isi-isi-', NULL, '2022-06-15 04:01:25', '2022-06-15 04:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `coolze_addresses`
--

CREATE TABLE `coolze_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `partners_id` int(11) DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `long` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_utama` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coolze_addresses`
--

INSERT INTO `coolze_addresses` (`id`, `customers_id`, `partners_id`, `address`, `long`, `lat`, `alamat_utama`, `created_at`, `updated_at`) VALUES
(7, 309, NULL, 'nah', 'wer', '3456', NULL, '2021-09-09 03:02:57', '2021-10-15 07:14:36'),
(19, 305, NULL, 'asdf', '63456', '3456', 'on', '2021-09-09 18:37:37', '2021-09-09 18:59:29'),
(20, 305, NULL, 'asdf', 'ert', '1111', NULL, '2021-09-09 18:40:18', '2021-09-09 18:40:18'),
(21, 309, NULL, 'asdfas', '222', '2222', NULL, '2021-09-09 18:40:40', '2021-09-09 18:40:40'),
(23, 309, NULL, 'fasdf', 'asdf', 'asdf', NULL, '2021-09-09 18:45:07', '2021-10-03 13:54:12'),
(24, 305, NULL, 'fasdf', '45634', '3456', NULL, '2021-09-09 18:45:27', '2021-09-09 18:45:27'),
(25, 305, NULL, 'fsadf', '564', '455', NULL, '2021-09-09 18:45:47', '2021-09-09 18:59:29'),
(28, NULL, 359, 'asdf', '345', '3456', NULL, '2021-09-09 19:05:35', '2021-10-15 01:08:35'),
(32, NULL, 359, 'Jl. Hra Rahman Gg. Pandan', 'qwertyuu', 'asdfghjk', NULL, '2021-10-03 13:46:41', '2021-10-15 05:43:00'),
(35, NULL, 310, 'agsdfg', 'dsfg', 'sdfg', 'on', '2021-10-03 13:53:31', '2021-10-03 13:53:52'),
(37, NULL, 359, 'test359', '359', '359', 'on', '2021-10-15 05:41:01', '2021-10-15 05:43:00'),
(38, NULL, 354, 'addrest test 354', '354', '354', NULL, '2021-10-15 06:51:57', '2021-10-15 06:56:28'),
(39, NULL, 354, '354 address', '3544', '3544', 'on', '2021-10-15 06:53:00', '2021-10-15 09:03:20'),
(40, NULL, 354, 'create add newlo', 'create add newlo', 'create add new', NULL, '2021-10-15 06:56:28', '2021-10-15 09:03:09'),
(41, 350, NULL, 'gg. hasia', '78', '78', 'on', '2021-10-15 07:06:37', '2021-10-15 07:06:37'),
(44, 351, NULL, 'delete35123', 'delete351', 'delete351', 'on', '2021-10-15 07:19:55', '2021-10-15 08:59:53'),
(45, 309, NULL, 'nih', 'wer', '3456', 'on', '2021-09-09 03:02:57', '2021-10-15 07:14:36'),
(46, 309, NULL, 'noh', 'wer', '3456', NULL, '2021-09-09 03:02:57', '2021-10-15 07:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `coolze_customers`
--

CREATE TABLE `coolze_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_ac` int(11) DEFAULT NULL,
  `reveral` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coolze_customers`
--

INSERT INTO `coolze_customers` (`id`, `jumlah_ac`, `reveral`, `created_at`, `updated_at`) VALUES
(305, 0, 'pindah', '2021-10-08 00:56:01', '2021-10-20 07:06:56'),
(309, 0, 'F7ad5F', '2021-09-06 23:31:36', '2021-10-20 07:21:25'),
(345, 7, '817F7d', '2021-10-01 00:41:41', '2021-10-01 00:41:41'),
(347, NULL, 'f4e4G9', '2021-10-01 09:34:33', '2021-10-01 09:34:33'),
(350, 14, 'FbD724', '2021-10-01 19:39:55', '2021-10-05 01:42:37'),
(351, 4, 'F86GgD', '2021-10-01 19:42:15', '2021-10-05 01:39:24'),
(355, 3, 'cCe94E', '2021-10-02 01:13:31', '2021-10-05 01:37:48'),
(360, NULL, '9GgB7A', '2021-10-02 05:29:12', '2021-10-02 05:29:12'),
(361, NULL, 'EE69a3', '2021-10-02 05:38:22', '2021-10-02 05:38:22'),
(365, NULL, 'f4G98E', '2021-10-05 01:12:20', '2021-10-05 01:12:20'),
(366, 1, '965DGd', '2021-10-05 01:43:45', '2021-10-05 01:43:45'),
(370, NULL, 'hedGB9', '2021-10-05 07:03:26', '2021-10-05 07:03:26'),
(372, NULL, 'f9a5ed', '2021-10-05 07:15:47', '2021-10-05 07:15:47'),
(374, 3, '53Hc1G', '2021-10-07 07:27:51', '2021-10-07 07:27:51'),
(377, NULL, 'EdhFc2', '2021-10-16 01:57:45', '2021-10-16 01:57:45'),
(431, 8, '7dHHFe', '2021-11-13 05:55:59', '2021-11-13 05:55:59'),
(436, NULL, 'AF2DeH', '2021-11-26 02:08:15', '2021-11-26 02:08:15'),
(438, NULL, 'DG7b3C', '2021-11-26 02:11:43', '2021-11-26 02:11:43'),
(440, NULL, '46dFaG', '2021-11-26 02:28:27', '2021-11-26 02:28:27'),
(441, NULL, '198e8a', '2021-11-26 02:28:59', '2021-11-26 02:28:59'),
(442, NULL, 'Bg37Fe', '2021-11-26 02:31:30', '2021-11-26 02:31:30'),
(444, NULL, 'ch9Fc3', '2021-11-26 02:32:14', '2021-11-26 02:32:14'),
(445, 2, 'DcbFB8', '2021-12-11 05:27:14', '2021-12-11 05:27:14'),
(446, 2, 'f6dEbb', '2021-12-11 05:36:41', '2021-12-11 05:36:41'),
(447, 2, '2gb45a', '2021-12-11 05:40:59', '2021-12-11 05:40:59'),
(448, 2, 'eG9eGH', '2021-12-11 05:42:19', '2021-12-11 05:42:19'),
(449, 2, '9dCFch', '2021-12-11 05:44:04', '2021-12-11 05:44:04'),
(450, 2, 'Bah8aA', '2021-12-11 05:47:58', '2021-12-11 05:47:58'),
(451, 2, 'Addfee', '2021-12-11 05:51:43', '2021-12-11 05:51:43'),
(452, 2, 'EAc4f1', '2021-12-11 05:53:59', '2021-12-11 05:53:59'),
(453, 2, 'ad2ddA', '2021-12-11 06:18:15', '2021-12-11 06:18:15'),
(454, 2, 'FhaABD', '2021-12-11 06:21:09', '2021-12-11 06:21:09'),
(455, 2, 'HBED1a', '2021-12-11 06:26:11', '2021-12-11 06:26:11'),
(456, 2, '1gB29E', '2021-12-11 06:32:53', '2021-12-11 06:32:53'),
(457, 2, 'Ha1E9h', '2021-12-11 06:33:47', '2021-12-11 06:33:47'),
(458, 7, '6ga783', '2021-12-12 03:03:04', '2021-12-12 03:03:04'),
(459, 3, 'a3CCAG', '2021-12-12 03:04:09', '2021-12-12 03:04:09'),
(460, 7, '6H4a2C', '2021-12-12 03:06:16', '2021-12-12 03:06:16');

-- --------------------------------------------------------

--
-- Table structure for table `coolze_drivers`
--

CREATE TABLE `coolze_drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `partners_id` bigint(20) NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_anggota` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarif` int(11) DEFAULT NULL,
  `long` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirm` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coolze_drivers`
--

INSERT INTO `coolze_drivers` (`id`, `partners_id`, `file`, `file_name`, `name`, `no_anggota`, `tarif`, `long`, `lat`, `alamat`, `confirm`, `created_at`, `updated_at`) VALUES
(409, 321, NULL, NULL, 'driver 234', '714779', 2000, 'qqqqqqqq', 'qqqqqqqq', 'qqqqqqqq', 'on', '2021-10-25 07:22:28', '2021-10-25 07:35:03'),
(410, 359, NULL, NULL, 'aaaaa', '714789', 1000, 'sdfasdf', 'asdfasdf', 'asdfasdf', 'on', '2021-10-25 07:39:03', '2021-10-25 07:39:12'),
(411, 307, NULL, NULL, 'driverrrrrr', '714799', 10000, 'sfasdf', 'sdfgsdfg', 'asdfasdf', 'on', '2021-10-26 01:33:58', '2021-10-26 01:36:39'),
(412, 1, NULL, NULL, 'lula20', '427994', NULL, NULL, NULL, NULL, 'on', '2021-10-29 01:14:37', '2021-10-29 01:14:37'),
(413, 307, NULL, NULL, 'coolzedriver', '286266', NULL, NULL, NULL, NULL, 'on', '2021-10-29 01:27:52', '2021-10-29 01:27:52'),
(416, 1, 'assets/file/kcm21MSN9jQ4kq8Q1s1ePtff4tHHQNhLwSMRdmdz.doc', 'file-driver-lula26416', 'lula26', '894982', NULL, NULL, NULL, NULL, 'on', '2021-10-29 01:35:48', '2021-10-29 01:35:48'),
(417, 1, 'assets/file/P54sXkuxhP8amVjHpjAGn9Dl20SWBL8CR0mJD4e5.doc', 'file-driver-lula27417', 'lula27', '308728', NULL, NULL, NULL, NULL, NULL, '2021-10-29 02:01:00', '2021-10-29 02:01:00'),
(418, 367, NULL, NULL, 'driver7', '769137', 4, 'sdf', 'asdf', 'Jl bla bla bla', 'on', '2021-11-06 05:30:36', '2021-11-06 05:30:36'),
(419, 367, NULL, NULL, 'driver8', '374623', 4, 'sdf', 'asdf', 'Jl bla bla bla', 'on', '2021-11-06 05:31:20', '2021-11-06 05:33:51'),
(424, 1, NULL, NULL, 'testconfirm', '659917', 343434, 'testconfirm', 'testconfirm', 'testconfirm', NULL, '2021-11-13 01:58:23', '2021-11-13 01:58:23'),
(425, 1, NULL, NULL, 'testconfirm2', '393118', 88, 'hgjhk', 'jkkj', 'kljklj', NULL, '2021-11-13 02:00:31', '2021-11-13 02:00:31'),
(426, 1, NULL, NULL, 'testconfirm3', '399185', 999, 'ashkfjasd', 'lkjklj', 'testconfirm2', 'on', '2021-11-13 02:02:06', '2021-11-13 03:34:40'),
(427, 1, NULL, NULL, 'testconfirm4', '293645', 987986786, 'testconfirm4', 'testconfirm4', 'testconfirm4', NULL, '2021-11-13 02:02:46', '2021-11-13 02:02:46'),
(433, 1, NULL, NULL, 'driver9', '481326', 4, 'sdf', 'asdf', 'Jl bla bla bla', NULL, '2021-11-13 06:16:46', '2021-11-13 06:16:46'),
(434, 90, NULL, NULL, 'driverrix', '028898', 5, 'fasdf', 'driverrix', 'asdfasfasdjfklj', 'on', '2021-11-22 02:07:26', '2021-11-22 02:26:51'),
(435, 1, NULL, NULL, 'driverfix2', '391169', 99, 'driverfix2', 'driverfix2', 'driverfix2', NULL, '2021-11-22 02:27:55', '2021-11-22 02:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `coolze_orders`
--

CREATE TABLE `coolze_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_unique` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_id` int(11) NOT NULL,
  `partners_id` int(11) NOT NULL,
  `drivers_id` int(11) NOT NULL,
  `vouchers_id` int(11) DEFAULT NULL,
  `packages_id` int(11) NOT NULL,
  `subpackages_id` bigint(20) NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `date` date NOT NULL,
  `end_date` date NOT NULL,
  `time` time NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `acc` int(11) NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `ulasan_rate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isreviewed` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coolze_orders`
--

INSERT INTO `coolze_orders` (`id`, `id_unique`, `customers_id`, `partners_id`, `drivers_id`, `vouchers_id`, `packages_id`, `subpackages_id`, `merk`, `qty`, `date`, `end_date`, `time`, `status`, `acc`, `rate`, `ulasan_rate`, `isreviewed`, `created_at`, `updated_at`) VALUES
(6, '0', 309, 91, 410, 3, 2, 2, 'tawon', 9, '2021-09-18', '2021-09-18', '13:41:00', 'cancel', 1, NULL, NULL, NULL, '2021-09-18 06:41:11', '2021-09-22 01:41:14'),
(10, '0', 309, 91, 410, 3, 45, 35, 'abc', 5, '2021-09-18', '2021-09-18', '13:52:00', 'accept', 1, 5, 'bagusss', 1, '2021-10-05 06:58:26', '2021-10-16 01:41:38'),
(13, '0', 309, 311, 409, 4, 2, 2, 'denpo3', 3, '2021-09-23', '2021-09-23', '15:52:00', 'accept', 1, 3, 'sedang lah', 1, '2021-09-17 15:05:27', '2021-09-22 01:40:40'),
(18, '0', 309, 311, 409, 4, 2, 2, 'denpo3', 3, '2021-09-23', '2021-09-23', '15:52:00', 'accept', 1, 2, 'sedikit buruk', 1, '2021-09-17 15:05:27', '2021-09-22 01:40:40'),
(19, '0', 309, 311, 409, 4, 2, 2, 'denpo3', 3, '2021-09-23', '2021-09-23', '15:52:00', 'accept', 1, 5, 'good job', 1, '2021-09-17 15:05:27', '2021-09-22 01:40:40'),
(20, '0', 309, 311, 409, 4, 2, 2, 'denpo3', 3, '2021-09-23', '2021-09-23', '15:57:00', 'accept', 1, 3, 'no coment', 1, '2021-09-17 15:05:27', '2021-09-22 01:40:40'),
(22, '0', 366, 91, 410, 3, 45, 35, 'panasonic', 5, '2021-09-18', '2021-09-18', '13:52:00', 'accept', 1, 5, 'bagus tapi bintang 5', 1, '2021-10-05 06:58:26', '2021-10-16 01:41:38'),
(26, '0', 351, 90, 411, 4, 2, 2, 'denpo3', 3, '2021-09-23', '2021-09-30', '15:52:00', 'accept', 1, 5, NULL, 1, '2021-10-16 01:21:44', '2021-10-16 01:21:44'),
(27, '0', 351, 359, 411, 4, 2, 2, 'denpo3', 3, '2021-09-23', '2021-09-30', '15:52:00', 'pending', 0, NULL, NULL, NULL, '2021-10-16 01:21:44', '2021-10-16 01:21:44'),
(28, '0', 305, 321, 409, 3, 1, 1, 'test', 1, '2021-10-26', '2021-10-26', '08:56:00', 'pending', 0, NULL, NULL, NULL, '2021-10-26 01:57:02', '2021-10-26 01:57:02'),
(29, '0', 366, 321, 409, 13, 1, 1, 'blablabla', 1, '2021-10-29', '2021-10-30', '14:06:00', 'accept', 1, NULL, NULL, NULL, '2021-10-29 07:10:13', '2021-10-29 07:10:13'),
(30, '617e00a3dc44b', 366, 1, 413, 6, 1, 1, 'ssss', 3, '2021-10-31', '2021-10-31', '09:28:00', 'pending', 0, NULL, NULL, NULL, '2021-10-31 02:34:11', '2021-10-31 02:34:11'),
(31, '617e00f9c6f9b', 366, 321, 409, 16, 45, 35, 'sharp', 1, '2021-10-31', '2021-11-02', '09:35:00', 'pending', 0, NULL, NULL, NULL, '2021-10-31 02:35:37', '2021-10-31 02:35:37'),
(32, '617e00f9d6f9b', 366, 321, 409, 16, 45, 35, 'sharp', 1, '2021-10-31', '2021-11-02', '09:35:00', 'pending', 0, NULL, NULL, NULL, '2021-10-31 02:35:37', '2021-10-31 02:35:37'),
(33, '617e00f9e6f9b', 366, 321, 409, 16, 45, 35, 'sharp', 1, '2021-10-31', '2021-11-02', '09:35:00', 'pending', 0, NULL, NULL, NULL, '2021-08-11 02:35:37', '2021-10-31 02:35:37'),
(34, '617f00f9e6f9b', 366, 321, 409, 16, 45, 35, 'sharp', 1, '2021-10-31', '2021-11-02', '09:35:00', 'pending', 0, NULL, NULL, NULL, '2021-07-27 02:35:37', '2021-10-31 02:35:37'),
(35, '617e00b3dc44b', 366, 1, 413, 6, 1, 1, 'ssss', 3, '2021-10-31', '2021-10-31', '09:28:00', 'pending', 0, NULL, NULL, NULL, '2021-06-30 02:34:11', '2021-10-31 02:34:11'),
(36, '617e00aedc44b', 366, 1, 413, 6, 1, 1, 'ssss', 3, '2021-10-31', '2021-10-31', '09:28:00', 'accept', 1, NULL, NULL, NULL, '2021-11-10 06:28:16', '2021-11-10 06:28:16'),
(37, '617h00a3dc44b', 366, 1, 413, 6, 1, 1, 'ssss', 3, '2021-10-31', '2021-10-31', '09:28:00', 'pending', 0, NULL, NULL, NULL, '2021-04-24 02:34:11', '2021-10-31 02:34:11'),
(38, '617e00a3dc04b', 366, 1, 413, 6, 1, 1, 'ssss', 3, '2021-10-31', '2021-10-31', '09:28:00', 'pending', 0, NULL, NULL, NULL, '2021-03-24 02:34:11', '2021-10-31 02:34:11'),
(39, '617e00p3dc04b', 366, 1, 413, 6, 1, 1, 'ssss', 3, '2021-10-31', '2021-10-31', '09:28:00', 'pending', 0, NULL, NULL, NULL, '2021-02-01 02:34:11', '2021-10-31 02:34:11'),
(40, '615e00a3dc04b', 366, 1, 413, 6, 1, 1, 'ssss', 3, '2021-10-31', '2021-10-31', '09:28:00', 'pending', 0, NULL, NULL, NULL, '2021-01-06 02:34:11', '2021-10-31 02:34:11'),
(41, '618b66e8db06f', 366, 1, 417, 7, 1, 1, 'sip', 1, '2021-11-10', '2021-11-11', '13:29:00', 'accept', 1, NULL, NULL, NULL, '2021-11-10 06:30:19', '2021-11-10 06:30:19'),
(42, '61a03ee7b2b5e', 309, 1, 412, 3, 2, 2, 'abc', 3, '2021-11-26', '2021-11-26', '08:56:00', 'pending', 0, NULL, NULL, NULL, '2021-11-26 01:56:55', '2021-11-26 01:56:55'),
(43, '61a03fd5d3e38', 309, 1, 412, 3, 2, 2, 'abc', 3, '2021-11-26', '2021-11-26', '08:56:00', 'pending', 0, NULL, NULL, NULL, '2021-11-26 02:00:53', '2021-11-26 02:00:53'),
(44, '61a03ffd6277b', 309, 1, 412, 3, 2, 2, 'abc', 3, '2021-11-26', '2021-11-26', '08:56:00', 'pending', 0, NULL, NULL, NULL, '2021-11-26 02:01:33', '2021-11-26 02:01:33'),
(45, '61a040367e75b', 309, 1, 412, 3, 2, 2, 'abc', 3, '2021-11-26', '2021-11-26', '08:56:00', 'pending', 0, NULL, NULL, NULL, '2021-11-26 02:02:30', '2021-11-26 02:02:30'),
(46, '61a04086a58e9', 309, 1, 412, 3, 2, 2, 'abc', 3, '2021-11-26', '2021-11-26', '08:56:00', 'pending', 0, NULL, NULL, NULL, '2021-11-26 02:03:50', '2021-11-26 02:03:50'),
(47, '61a0414c66e0e', 309, 1, 412, 3, 2, 2, 'abc', 3, '2021-11-26', '2021-11-26', '08:56:00', 'pending', 0, NULL, NULL, NULL, '2021-11-26 02:07:08', '2021-11-26 02:07:08'),
(48, '61b56a2f23430', 305, 90, 434, 4, 2, 2, 'abc', 3, '2021-12-17', '2021-12-22', '10:19:00', 'pending', 0, NULL, NULL, NULL, '2021-12-12 03:19:11', '2021-12-12 03:19:11'),
(50, '61b56acf89ec2', 309, 90, 434, 3, 46, 36, 'abc', 3, '2021-12-12', '2021-12-12', '10:21:00', 'pending', 0, NULL, NULL, NULL, '2021-12-12 03:21:51', '2021-12-12 03:21:51'),
(51, '61b56adb1e929', 309, 90, 434, 3, 46, 36, 'abc', 3, '2021-12-12', '2021-12-12', '10:21:00', 'pending', 0, NULL, NULL, NULL, '2021-12-12 03:22:03', '2021-12-12 03:22:03'),
(52, '61b56b6114347', 350, 1, 426, 4, 45, 35, 'abc', 3, '2021-12-12', '2021-12-23', '10:24:00', 'pending', 0, NULL, NULL, NULL, '2021-12-12 03:24:17', '2021-12-12 03:24:17'),
(53, '61b56cd6daa78', 350, 90, 434, 6, 1, 1, 'abc', 4, '2021-12-12', '2021-12-16', '10:30:00', 'pending', 0, NULL, NULL, NULL, '2021-12-12 03:30:30', '2021-12-12 03:30:30'),
(54, '61b56d4bafb73', 309, 1, 412, 3, 1, 1, 'abc', 5, '2021-12-12', '2021-12-14', '10:32:00', 'pending', 0, NULL, NULL, NULL, '2021-12-12 03:32:27', '2021-12-12 03:32:27'),
(55, '61b593073b20b', 431, 90, 434, 4, 45, 35, 'abc', 3, '2021-12-12', '2021-12-12', '13:13:00', 'pending', 0, NULL, NULL, NULL, '2021-12-12 06:13:27', '2021-12-12 06:13:27'),
(56, '61b5936cdb496', 431, 90, 434, 4, 45, 35, 'abc', 3, '2021-12-12', '2021-12-12', '13:13:00', 'pending', 0, NULL, NULL, NULL, '2021-12-12 06:15:08', '2021-12-12 06:15:08'),
(59, '61bd57937349a', 305, 307, 411, 3, 1, 1, 'ss', 4, '2021-12-18', '2021-12-18', '06:07:00', 'pending', 0, NULL, NULL, NULL, '2021-12-18 03:37:55', '2021-12-18 03:37:55'),
(60, '61bd57f6ed374', 305, 307, 411, 3, 1, 1, 'fg', 4, '2021-12-18', '2021-12-18', '11:40:00', 'pending', 0, NULL, NULL, NULL, '2021-12-18 03:39:34', '2021-12-18 03:39:34'),
(61, '61bd7eee050ab', 305, 307, 411, 7, 1, 1, 'r', 1, '2021-12-18', '2021-12-18', '02:26:00', 'pending', 0, NULL, NULL, NULL, '2021-12-18 06:25:50', '2021-12-18 06:25:50'),
(62, '61bd7f382d1e2', 305, 307, 411, 7, 1, 1, 'r', 1, '2021-12-18', '2021-12-18', '02:26:00', 'pending', 0, NULL, NULL, NULL, '2021-12-18 06:27:04', '2021-12-18 06:27:04'),
(63, '61bd812917cc8', 309, 307, 411, 17, 1, 1, 'df', 3, '2021-12-18', '2021-12-18', '02:36:00', 'pending', 0, NULL, NULL, NULL, '2021-12-18 06:35:21', '2021-12-18 06:35:21'),
(64, '61bd86a1b32d9', 366, 307, 411, 4, 1, 1, 'asdf', 4, '2021-12-18', '2021-12-18', '02:59:00', 'pending', 0, NULL, NULL, NULL, '2021-12-18 06:58:41', '2021-12-18 06:58:41'),
(65, '61bd86edd1c26', 366, 307, 411, 4, 1, 1, 'asdf', 4, '2021-12-18', '2021-12-18', '02:59:00', 'pending', 0, NULL, NULL, NULL, '2021-12-18 06:59:57', '2021-12-18 06:59:57'),
(66, '61be8bd36ab37', 350, 307, 411, 7, 1, 1, 'abc', 4, '2021-12-19', '2021-12-19', '08:33:00', 'pending', 0, NULL, NULL, NULL, '2021-12-19 01:33:07', '2021-12-19 01:33:07'),
(67, '61be8dbb03f6f', 309, 307, 411, 6, 2, 2, 'abc', 9, '2021-12-19', '2021-12-19', '08:41:00', 'pending', 0, NULL, NULL, NULL, '2021-12-19 01:41:15', '2021-12-19 01:41:15'),
(68, '61be9082ddd61', 305, 307, 411, 19, 1, 1, 'abc', 4, '2021-12-19', '2021-12-19', '08:52:00', 'pending', 0, NULL, NULL, NULL, '2021-12-19 01:53:06', '2021-12-19 01:53:06'),
(69, '61be9c1acdb29', 309, 307, 411, 7, 2, 2, 'abc', 4, '2021-12-19', '2021-12-19', '09:42:00', 'pending', 0, NULL, NULL, NULL, '2021-12-19 02:42:34', '2021-12-19 02:42:34'),
(70, '61be9f767251c', 305, 1, 412, 7, 2, 2, 'abc', 7, '2021-12-19', '2021-12-19', '09:56:00', 'pending', 0, NULL, NULL, NULL, '2021-12-19 02:56:54', '2021-12-19 02:56:54'),
(71, '61c054b4342af', 305, 307, 412, 13, 46, 36, 'sanken', 2, '2021-12-20', '2021-12-21', '15:52:00', 'pending', 0, NULL, NULL, NULL, '2021-12-20 10:02:28', '2021-12-20 10:02:28'),
(72, '61c055e11a5b8', 305, 307, 412, 13, 46, 36, 'sanken', 2, '2021-12-20', '2021-12-21', '15:52:00', 'pending', 0, NULL, NULL, NULL, '2021-12-20 10:07:29', '2021-12-20 10:07:29'),
(73, '61c0562b714be', 305, 307, 412, 13, 46, 36, 'sanken', 2, '2021-12-20', '2021-12-21', '15:52:00', 'pending', 0, NULL, NULL, NULL, '2021-12-20 10:08:43', '2021-12-20 10:08:43'),
(74, '61c05694457a3', 305, 307, 412, 13, 46, 36, 'sankenn', 2, '2021-12-20', '2021-12-21', '15:52:00', 'pending', 0, NULL, NULL, NULL, '2021-12-20 10:10:28', '2021-12-20 10:10:28'),
(75, '61c056f5dbc1a', 305, 307, 412, 13, 46, 36, 'sankenn', 2, '2021-12-20', '2021-12-21', '15:52:00', 'pending', 0, NULL, NULL, NULL, '2021-12-20 10:12:05', '2021-12-20 10:12:05'),
(76, '61c057563c49f', 305, 307, 412, 13, 46, 36, 'sankenn', 2, '2021-12-20', '2021-12-21', '15:52:00', 'pending', 0, NULL, NULL, NULL, '2021-12-20 10:13:42', '2021-12-20 10:13:42'),
(77, '61c057a5c37f3', 305, 307, 412, 13, 46, 36, 'sankenn', 2, '2021-12-20', '2021-12-21', '15:52:00', 'pending', 0, NULL, NULL, NULL, '2021-12-20 10:15:01', '2021-12-20 10:15:01'),
(78, '61c057baec8a5', 305, 307, 412, 13, 46, 36, 'sankenn', 2, '2021-12-20', '2021-12-21', '15:52:00', 'pending', 0, NULL, NULL, NULL, '2021-12-20 10:15:22', '2021-12-20 10:15:22');

-- --------------------------------------------------------

--
-- Table structure for table `coolze_packages`
--

CREATE TABLE `coolze_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coolze_packages`
--

INSERT INTO `coolze_packages` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'CUCI AC', 1, NULL, NULL),
(2, 'PENGISIAN FREON', 1, NULL, NULL),
(45, 'cuci lemari', 1, '2021-09-18 06:51:44', '2021-09-18 06:51:44'),
(46, 'aasdf4', 1, '2021-09-19 03:20:58', '2021-10-05 03:23:05'),
(47, 'package sementara', 0, '2021-10-01 10:12:27', '2021-10-01 10:15:33'),
(49, 'testTitleUbah', 0, '2021-10-03 00:47:56', '2021-10-03 00:50:28'),
(50, 'testTitle', 0, '2021-10-03 00:55:04', '2021-10-03 00:55:20'),
(51, 'aaaaa', 0, '2021-10-05 03:23:59', '2021-10-05 03:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `coolze_partners`
--

CREATE TABLE `coolze_partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reveral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coolze_partners`
--

INSERT INTO `coolze_partners` (`id`, `reveral`, `created_at`, `updated_at`) VALUES
(1, 'K0S0NG', '2021-10-26 01:36:02', '2021-10-26 01:36:02'),
(90, 'ASDF1234', NULL, NULL),
(91, 'ASDF1234', NULL, NULL),
(307, '8E6dAd', '2021-09-06 23:25:52', '2021-09-06 23:25:52'),
(308, '9CcECE', '2021-09-06 23:29:04', '2021-09-06 23:29:04'),
(310, '9agF76', '2021-09-07 06:17:05', '2021-09-07 06:17:05'),
(311, 'HC2e1B', '2021-09-07 06:24:01', '2021-09-07 06:24:01'),
(321, 'DheaEe', '2021-09-07 20:21:40', '2021-09-07 20:21:40'),
(325, '4cFBf8', '2021-09-08 04:40:06', '2021-09-08 04:40:06'),
(330, '5d63E9', '2021-09-30 01:34:21', '2021-09-30 01:34:21'),
(331, 'Af3DG7', '2021-09-30 02:15:41', '2021-09-30 02:15:41'),
(332, '6h3d77', '2021-09-30 02:19:53', '2021-09-30 02:19:53'),
(333, 'B81dF6', '2021-09-30 02:22:38', '2021-09-30 02:22:38'),
(334, 'Fc3adb', '2021-09-30 02:27:30', '2021-09-30 02:27:30'),
(335, 'G3149E', '2021-09-30 02:33:13', '2021-09-30 02:33:13'),
(342, '8FEE9C', '2021-09-30 07:04:36', '2021-09-30 07:04:36'),
(348, 'b4egAE', '2021-10-01 09:39:58', '2021-10-01 09:39:58'),
(354, 'a9GFh3', '2021-10-04 19:57:57', '2021-10-04 19:57:57'),
(358, 'AgegGd', '2021-10-02 01:25:22', '2021-10-02 01:25:22'),
(359, '41C491', '2021-10-15 01:08:35', '2021-10-15 01:08:35'),
(364, '8gDgg9', '2021-10-04 20:02:43', '2021-10-04 20:02:43'),
(367, '477hFB', '2021-10-05 02:07:40', '2021-10-05 02:07:40'),
(375, 'hbg6B4', '2021-10-16 01:49:09', '2021-10-16 01:49:09'),
(376, '1cA7eD', '2021-10-16 01:52:44', '2021-10-16 01:52:44'),
(428, 'Eb7639', '2021-11-13 05:33:43', '2021-11-13 05:33:43'),
(429, 'Hg7BHE', '2021-11-13 05:35:22', '2021-11-13 05:35:22'),
(430, 'CBg56B', '2021-11-13 05:40:52', '2021-11-13 05:40:52'),
(432, 'd3hgG8', '2021-11-13 05:58:46', '2021-11-13 05:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `coolze_subpackages`
--

CREATE TABLE `coolze_subpackages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `packages_id` int(11) DEFAULT NULL,
  `deskripsi_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_dasar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_diskon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coolze_subpackages`
--

INSERT INTO `coolze_subpackages` (`id`, `packages_id`, `deskripsi_title`, `price_dasar`, `price_diskon`, `created_at`, `updated_at`) VALUES
(1, 1, 'AC SPLIT', '75000', '55000', NULL, NULL),
(2, 2, 'DIBAWAH 50PSI', '125000', '110000', NULL, '2021-09-08 03:10:55'),
(35, 45, 'lamri', '800', '80', '2021-09-18 06:51:44', '2021-09-18 06:51:44'),
(36, 46, 'asdf4', '44', '54', '2021-09-19 03:20:58', '2021-10-05 03:23:05'),
(37, 47, 'asdfasdf', '8', NULL, '2021-10-01 10:12:27', '2021-10-01 10:12:27'),
(39, 49, 'bla bla blai', '45', '20', '2021-10-03 00:47:56', '2021-10-03 00:49:32'),
(40, 50, 'bla bla bla', '30', '10', '2021-10-03 00:55:04', '2021-10-03 00:55:04'),
(41, 51, 'aaaaa', '3333', '4', '2021-10-05 03:23:59', '2021-10-05 03:24:14');

-- --------------------------------------------------------

--
-- Table structure for table `coolze_vouchers`
--

CREATE TABLE `coolze_vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `merchants_id` int(11) NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_purchase` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `expired_at` date NOT NULL,
  `expired_at_time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` int(11) NOT NULL,
  `used` int(11) DEFAULT NULL,
  `home` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `voucher` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coolze_vouchers`
--

INSERT INTO `coolze_vouchers` (`id`, `merchants_id`, `foto`, `name`, `coupon_code`, `min_purchase`, `description`, `discount`, `expired_at`, `expired_at_time`, `created_at`, `updated_at`, `price`, `used`, `home`, `voucher`, `status`, `type`) VALUES
(36, 609, NULL, 'Promotions 10', 'aabbccdd', 0, NULL, NULL, '2022-05-01', '19:33:00', '2022-05-01 13:33:11', '2022-05-01 14:01:17', 1, NULL, NULL, 'on', 1, 40),
(37, 609, NULL, 'Promotions 11', 'aabbccdd', 0, NULL, NULL, '2022-05-01', '20:38:00', '2022-05-01 13:38:16', '2022-05-01 13:38:16', 1, NULL, 'on', NULL, 1, 60),
(40, 519, NULL, 'voucher merchant', 'aabbccdd', 0, NULL, NULL, '2021-09-09', '14:20:00', '2022-05-04 11:38:28', '2022-05-04 11:38:28', 350, NULL, 'on', NULL, 1, 40),
(44, 519, NULL, 'voucher merchant1', 'aabbccdd', 0, NULL, NULL, '2021-09-09', '14:20:00', '2022-05-04 12:42:15', '2022-05-04 12:42:15', 350, NULL, 'on', NULL, 1, 40),
(45, 519, NULL, 'voucher merchant2', 'aabbccdd', 0, NULL, NULL, '2021-09-09', '14:20:00', '2022-05-04 12:42:46', '2022-05-04 12:42:46', 350, NULL, 'on', NULL, 1, 40),
(46, 519, NULL, 'voucher merchant4', 'aabbccdd', 0, NULL, NULL, '2021-09-09', '14:20:00', '2022-05-04 12:44:50', '2022-05-04 12:44:50', 350, NULL, 'on', NULL, 1, 40),
(47, 519, NULL, 'voucher merchant5', 'aabbccdd', 0, NULL, NULL, '2021-09-09', '14:20:00', '2022-05-04 12:46:44', '2022-05-04 12:46:44', 350, NULL, 'on', NULL, 1, 40),
(49, 519, NULL, 'voucher merchant6', 'aabbccdd', 0, NULL, NULL, '2021-09-09', '14:20:00', '2022-05-04 13:18:21', '2022-05-04 13:18:21', 350, NULL, 'on', NULL, 0, 40),
(51, 519, NULL, 'voucher merchant6', 'aabbccdd', 45, 'asdfasdfasdf', 40, '2021-09-09', '14:20:00', '2022-05-10 03:59:16', '2022-05-10 03:59:16', 350, NULL, 'on', NULL, 0, 40),
(52, 519, NULL, 'voucher merchant6', 'aabbccdd', 45, 'asdfasdfasdf', 40, '2021-09-09', '14:20:00', '2022-05-10 04:00:55', '2022-05-10 04:00:55', 350, NULL, 'on', NULL, 0, 40),
(53, 519, NULL, 'voucher merchant6', 'aabbccdd', 45, 'asdfasdfasdf', 40, '2021-09-09', '14:20:00', '2022-05-10 04:01:12', '2022-05-10 04:01:12', 350, NULL, 'on', NULL, 0, 40),
(54, 519, NULL, 'voucher merchant6', 'aabbccdd', 45, 'asdfasdfasdf', 40, '2021-09-09', '14:20:00', '2022-05-10 04:02:18', '2022-05-10 04:02:18', 350, NULL, 'on', NULL, 0, 40),
(55, 519, NULL, 'voucher merchant6', 'aabbccdd', 45, 'asdfasdfasdf', 40, '2021-09-09', '14:20:00', '2022-05-10 04:02:35', '2022-05-10 04:02:35', 350, NULL, 'on', NULL, 0, 40),
(56, 519, NULL, 'voucher merchant6', 'aabbccdd', 45, 'asdfasdfasdf', 40, '2021-09-09', '14:20:00', '2022-05-10 04:02:51', '2022-05-10 04:02:51', 350, NULL, 'on', NULL, 0, 40),
(57, 519, NULL, 'voucher merchant6', 'aabbccdd', 45, 'asdfasdfasdf', 40, '2021-09-09', '14:20:00', '2022-05-10 04:03:19', '2022-05-10 04:03:19', 350, NULL, 'on', NULL, 0, 40),
(58, 519, NULL, 'voucher merchant6', 'aabbccdd', 45, 'asdfasdfasdf', 40, '2021-09-09', '14:20:00', '2022-05-10 04:03:25', '2022-05-10 04:03:25', 350, NULL, 'on', NULL, 0, 40),
(60, 519, NULL, 'voucher new3', 'ddccbbaa', 90, 'aabbccdd', 80, '2021-09-09', '14:20:00', '2022-05-10 04:09:50', '2022-05-10 04:10:04', 350, NULL, 'on', 'on', 1, 50),
(61, 609, NULL, 'voucher merchant6', 'aabbccdd', 45, 'asdfasdfasdf', 40, '2021-09-09', '14:20:00', '2022-06-15 03:33:26', '2022-06-15 03:37:01', 350, NULL, 'on', NULL, 1, 40),
(62, 609, NULL, 'voucher merchant6', 'aabbccdd', 45, 'asdfasdfasdf', 40, '2021-09-09', '14:20:00', '2022-06-15 03:34:32', '2022-06-15 03:34:32', 350, NULL, 'on', NULL, 0, 40),
(63, 609, NULL, 'voucherPO', '876876', 1, 'ASDFASDF', 1, '2022-06-23', '14:13:00', '2022-06-23 07:13:32', '2022-06-23 07:13:32', 1, NULL, 'on', NULL, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `coolze_wallets`
--

CREATE TABLE `coolze_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `partners_id` bigint(20) DEFAULT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `by` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) DEFAULT NULL,
  `coolpoin` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coolze_wallets`
--

INSERT INTO `coolze_wallets` (`id`, `customers_id`, `partners_id`, `type`, `by`, `total`, `coolpoin`, `created_at`, `updated_at`) VALUES
(2, 309, NULL, 'in', 'BSI', 2333, NULL, '2021-09-10 14:41:47', '2021-09-10 14:41:47'),
(4, NULL, 307, 'in', 'basdf4', 2344, 23454, '2021-10-01 09:35:11', '2021-12-30 06:29:01'),
(6, 309, NULL, 'out', 'mualamat', 64, 56, '2021-12-30 04:17:49', '2021-12-30 06:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `coolze_withdraws`
--

CREATE TABLE `coolze_withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `partners_id` bigint(20) NOT NULL,
  `id_withdraw` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_tujuan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti_tf` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` bigint(20) NOT NULL,
  `norek` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coolze_withdraws`
--

INSERT INTO `coolze_withdraws` (`id`, `partners_id`, `id_withdraw`, `bank_tujuan`, `bukti_tf`, `nominal`, `norek`, `created_at`, `updated_at`) VALUES
(7, 307, 'wd-17895392', 'BCA', 'assets/gallery/g30CfOfJPd7gLNAY4D9MOYTtK3p4Frj5sR8VMPqQ.jpg', 4, '543523455554', '2021-12-27 03:38:25', '2021-12-27 06:00:31'),
(8, 310, 'wd-53186652', 'BSI', 'assets/gallery/v84QPik7sD5RMhFAzS626XGJ6zJY1Q9KWmHLmCIZ.jpg', 1000, '0980987987', '2021-12-28 06:26:45', '2021-12-28 06:26:45'),
(9, 307, 'wd-48267401', 'BNI', 'assets/gallery/TMOxxmCoGU5YCAa1a0ez3r8xEWa4NbQoEtyaLm0t.png', 9, '99999', '2021-12-28 06:29:14', '2021-12-28 06:29:35'),
(10, 307, 'wd-49813507', 'fffff', 'assets/gallery/77c971x1HTj6ig3IOb7GYBoD9VV0QS8V3OYrhf3e.jpg', 4, '45', '2021-12-31 06:18:09', '2021-12-31 06:18:09'),
(11, 307, 'wd-92547078', 'SBI', 'assets/gallery/uyw2chWxvqehc3APqpj1IR0M6Bjhfc91YQUfgjHk.jpg', 9000, '78787', '2022-01-01 02:28:11', '2022-01-01 02:28:11'),
(12, 307, 'wd-83046564', 'BSI', 'assets/gallery/3Boq5gBMSAIarIYC4vCis43dnH69GzWin7swp8fM.jpg', 8, '8', '2022-01-01 02:35:23', '2022-01-01 02:35:23'),
(13, 307, 'wd-06488531', '4', 'assets/gallery/33WmGlstDU8iUUMUc831OxWoUfslIwHiU88KbgJC.jpg', 5, '5', '2022-01-01 02:36:28', '2022-01-01 02:36:28'),
(14, 307, 'wd-86352333', '3', 'assets/gallery/ikdy5NXtaYE2IKPDz5Mc1yWK0vT3CN0edOdyUHvO.jpg', 3, '3', '2022-01-01 02:36:59', '2022-01-01 02:36:59'),
(15, 307, 'wd-13974028', 'dfdf', 'assets/gallery/ZNck9trIJjTAAzMjzllTHeCKiPtwqBqXYDQT7ioU.png', 4, '4', '2022-01-01 02:41:43', '2022-01-01 02:41:43'),
(16, 307, 'wd-68603554', '454545', 'assets/gallery/G5i7s7RY5CBSYl3XWyprMfpaTpFeU89zUdwuxcXy.jpg', 4, '4rr45', '2022-01-01 02:42:19', '2022-01-01 02:42:19'),
(17, 307, 'wd-96424869', 'ert', 'assets/gallery/mILBxfxryZ2e7qx3l9OPPDFTUzVUpDoO56WSmzOd.png', 4, '434534', '2022-01-01 02:43:51', '2022-01-01 02:43:51'),
(18, 307, 'wd-08227306', '4fdf', 'assets/gallery/DBusSUnLoSoEMLDyhsLyhZIinhO92wGUS1TuFTDc.png', 4, 'r4t4t', '2022-01-01 02:44:24', '2022-01-01 02:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaksi` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `foto`, `transaksi`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(90, 'assets/gallery/GIkZJoz8185bhiYFBPXNBFLsDcCmMNWmt0EK522k.jpeg', NULL, 0, NULL, '2021-07-08 05:42:34', '2021-08-30 23:31:50'),
(263, 'assets/gallery/PcAJS7qud4TS7PwlGL355BG2vy7MBPJilYqht71t.png', 7, 1, NULL, '2021-11-21 14:14:33', '2021-08-31 18:10:32'),
(264, 'assets/gallery/FZTlpBUSHimZaR4Vd6u7JPim81swkV4rgmjn8a4l.png', 20000, 1, NULL, '2021-11-26 06:01:04', '2021-08-31 18:11:17'),
(265, 'assets/gallery/1AulqrmrTXBftrWqN0JaM52CmTUxxWWxzjiaqBmE.jpeg', 9, 1, NULL, '2021-09-21 13:06:25', '2021-08-13 23:00:39'),
(266, 'assets/gallery/StC5twHZ7HAU3qu45y2op1hS1kH7i3U4G5xBl8kn.jpeg', 3, 1, NULL, '2021-02-14 13:14:58', '2021-08-13 23:00:47'),
(268, NULL, 6764, 1, NULL, '2021-07-15 13:18:35', '2021-07-15 13:21:31'),
(269, NULL, NULL, 1, NULL, '2021-06-19 13:23:05', '2021-07-15 13:23:30'),
(270, NULL, 4, 1, NULL, '2021-05-26 17:47:50', '2021-08-06 17:47:50'),
(271, NULL, 0, 0, NULL, '2021-11-20 17:48:15', '2021-08-29 23:39:57'),
(272, NULL, 6, 1, NULL, '2021-11-16 17:48:33', '2021-08-06 17:48:33'),
(274, NULL, 7, 1, NULL, '2021-10-31 17:49:14', '2021-08-06 17:49:14'),
(275, 'assets/gallery/ESb7sibhJqBjcSFnZm9SSO1qg4bdNChcz5gWTsbM.png', 8, 1, NULL, '2021-08-09 23:42:36', '2021-08-09 23:42:36'),
(277, 'assets/gallery/sFcNL89BEBz60Nq8ox7Tlu5Jd83u4EegbsmXgheg.jpeg', 7, 1, NULL, '2021-08-18 20:24:16', '2021-08-18 20:24:16'),
(278, 'assets/gallery/f9Et6LeVnSGdF2HVcmCP4WlCCZfbRDp5xmaYj6hJ.png', 4, 1, NULL, '2021-08-24 23:50:32', '2021-08-24 23:50:32'),
(279, NULL, 565, NULL, NULL, '2021-08-24 23:53:57', '2021-08-24 23:53:57'),
(280, NULL, NULL, NULL, NULL, '2021-08-24 23:59:45', '2021-08-24 23:59:45'),
(281, 'assets/gallery/ttZ2FR6p0vTlox7t5hqMN6hrSqg404x0ZRomGiNJ.png', 7, 1, NULL, '2021-08-29 23:11:22', '2021-08-29 23:11:22'),
(282, NULL, 23, 1, NULL, '2021-08-29 23:13:27', '2021-08-29 23:13:27'),
(285, NULL, NULL, NULL, NULL, '2021-09-01 23:32:17', '2021-09-01 23:32:17'),
(287, NULL, NULL, NULL, NULL, '2021-09-05 18:46:17', '2021-09-05 18:46:17'),
(288, NULL, NULL, NULL, NULL, '2021-09-05 18:48:26', '2021-09-05 18:48:26'),
(289, NULL, NULL, NULL, NULL, '2021-09-05 18:49:27', '2021-09-05 18:49:27'),
(290, NULL, NULL, NULL, NULL, '2021-09-05 18:51:11', '2021-09-05 18:51:11'),
(291, NULL, NULL, NULL, NULL, '2021-09-05 18:53:02', '2021-09-05 18:53:02'),
(292, NULL, NULL, NULL, NULL, '2021-09-05 18:55:27', '2021-09-05 18:55:27'),
(293, NULL, NULL, NULL, NULL, '2021-09-05 18:56:09', '2021-09-05 18:56:09'),
(294, NULL, NULL, NULL, NULL, '2021-09-05 18:56:33', '2021-09-05 18:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaksi` int(11) DEFAULT NULL,
  `layanan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `pengalaman` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jangka` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tentang` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roolsearch` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `foto`, `name`, `kategori`, `lokasi`, `lat`, `long`, `transaksi`, `layanan`, `status`, `deleted_at`, `created_at`, `updated_at`, `harga`, `pengalaman`, `jangka`, `tentang`, `roolsearch`) VALUES
(61, 'assets/gallery/yj8QQwWzdLE3kynx27hr9dgUT8ETNLx945mNXi6E.png', 'doctor 1', 'blablinla', 'jl. blablabla\r\ngg. blablabla\r\nno. blablabla', '0987', '0987', 1, '7', 1, NULL, '2021-07-09 14:17:41', '2021-08-30 02:38:26', 2, '2', '1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'doctor'),
(62, NULL, 'ARIFteere', 'Doctor kambing', 'Cibarengkok', '-6.3636953231294235', '106.68774133951526', 20000, '2', 1, NULL, '2021-07-14 02:13:42', '2021-07-14 02:13:42', 50000, '6', '1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'doctor'),
(63, NULL, 'bukber', 'bukber', 'asdfaklsdfjlkn', '098765', '0987654', 4, '2', 1, NULL, '2021-07-16 14:15:10', '2021-07-16 14:15:41', 2, '1', '0', 'kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah kamu adalah', 'doctor'),
(64, NULL, 'maruf', 'Doctor kambing', 'Cibarengkok', '-6.363695323129423', '-6.36369532312942', 20000, '1', 1, NULL, '2021-12-16 14:24:03', '2021-12-16 14:25:54', 50000, '6', '1', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'doctor'),
(65, NULL, 'coossdkfl', 'coossdkfl', 'coossdkfl', NULL, NULL, 1, NULL, 1, NULL, '2021-08-08 16:56:21', '2021-08-08 16:56:21', 9, '1', '0', 'coossdkfl', 'doctor'),
(66, NULL, 'asdfpo', 'asdfgsdfg', 'asdfgsdfg', NULL, NULL, 1, NULL, 1, NULL, '2021-08-08 17:02:34', '2021-08-08 17:02:34', 4, '1', '0', 'asdfgsdfg', 'doctor'),
(130, 'assets/gallery/uHqIR1DhmneBEhyIfBrq23ljZlxXkJKqT04Jqmki.jpeg', 'inpt doctors', 'input doctors', 'input doctors', '8', '9', 1, NULL, 1, NULL, '2021-08-18 20:23:06', '2021-08-18 20:23:18', 1, '1', '0', 'input doctors', 'doctor'),
(131, 'assets/gallery/sHOdpucXjL5MbaMeSX1rDvvlBFrHwSmI3815oqXl.jpeg', 'test layanan ui', 'test layanan ui', 'test layanan ui', '333', '4', 4, NULL, 1, NULL, '2021-08-23 01:04:28', '2021-08-23 01:04:28', 1, '1', '0', 'test layanan ui', 'doctor');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_fields`
--

CREATE TABLE `dynamic_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dynamic_fields`
--

INSERT INTO `dynamic_fields` (`id`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'as', 'f', NULL, NULL),
(2, 'sd', 'sdsd', NULL, NULL),
(3, 'sdfg', 'dsfgsdfg', NULL, NULL),
(4, 'sdgsdfg', 'sfs', NULL, NULL),
(5, 'asdfasdfasdf', NULL, NULL, NULL),
(6, 'asdfasdfasdf', NULL, NULL, NULL),
(7, 'fasdf', 'asdf', NULL, NULL),
(8, 'sdfasdf', 'asdf', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customers_id` bigint(20) NOT NULL,
  `merchants_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `customers_id`, `merchants_id`, `created_at`, `updated_at`) VALUES
(1, 531, 609, '2022-05-11 14:14:13', '2022-05-11 14:14:13'),
(2, 531, 609, '2022-05-11 14:20:50', '2022-05-11 14:20:50'),
(3, 531, 609, '2022-05-11 14:22:20', '2022-05-11 14:22:20'),
(4, 531, 609, '2022-05-11 14:23:47', '2022-05-11 14:23:47'),
(5, 531, 609, '2022-05-11 14:25:00', '2022-05-11 14:25:00'),
(6, 531, 609, '2022-05-11 14:25:45', '2022-05-11 14:25:45'),
(7, 531, 609, '2022-05-11 14:27:02', '2022-05-11 14:27:02'),
(8, 531, 609, '2022-05-11 14:29:06', '2022-05-11 14:29:06'),
(9, 531, 609, '2022-05-11 14:29:32', '2022-05-11 14:29:32'),
(10, 531, 609, '2022-05-11 14:29:53', '2022-05-11 14:29:53'),
(37, 524, 609, '2022-05-13 06:27:17', '2022-05-13 06:46:57'),
(38, 531, 609, '2022-06-02 15:17:15', '2022-06-02 15:17:15'),
(39, 531, 609, '2022-06-02 16:15:57', '2022-06-02 16:15:57'),
(41, 531, 609, '2022-06-06 02:43:23', '2022-06-06 02:43:23'),
(42, 531, 609, '2022-06-06 02:49:44', '2022-06-06 02:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `fcmnotifications`
--

CREATE TABLE `fcmnotifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fcmnotifications`
--

INSERT INTO `fcmnotifications` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'testfcmFcmnotification', 'Fcmnotification', '2022-06-08 03:32:47', '2022-06-08 03:32:47'),
(2, 'Fcmnotification2', 'Fcmnotification2', '2022-06-08 03:33:35', '2022-06-08 03:33:35'),
(3, 'test', 'asdfasdf', '2022-06-08 03:34:37', '2022-06-08 03:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `groomers`
--

CREATE TABLE `groomers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaksi` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `pengalaman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jangka` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `tentang` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `roolsearch` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groomers`
--

INSERT INTO `groomers` (`id`, `foto`, `name`, `kategori`, `lokasi`, `lat`, `long`, `transaksi`, `harga`, `pengalaman`, `jangka`, `status`, `tentang`, `roolsearch`, `deleted_at`, `created_at`, `updated_at`) VALUES
(38, 'assets/gallery/6q6Kip36oyci26GbQOoOPlG4cvEUc7u0FSswT8kL.jpeg', 'groomer 1', 'blablabla', 'jl. blablabla\r\ngg. blablabla\r\nno. blablabla', '098', '098', 1, 194, '1', '0', 1, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc', 'groomer', NULL, '2021-12-09 14:16:10', '2021-07-09 14:16:10'),
(40, 'assets/gallery/KVOpVXbNJHWG8bJyASWCTxXfEqHsZlSxW8x3umMj.png', 'eid', 'asdf', 'hajksdnfm,nm,nkehh', '09876', '09876', 8, 7, '1', '1', 1, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham', 'groomer', NULL, '2021-12-16 14:20:55', '2021-07-16 14:21:20'),
(44, 'assets/gallery/D3pfbpAWuzdeB6R4ByH3WDgImafzMHwEp7dluO0Z.jpeg', 'goat', 'goat', 'goat', '7', '8', 1, 1, '1', '0', 1, 'goat', 'groomer', NULL, '2021-08-10 00:28:58', '2021-08-16 05:39:27'),
(45, 'assets/gallery/EBQoRYrpB5eEYM6DUWhO2cQ6XGwSR5GgS12HipG4.jpeg', 'coach', 'coach', 'coach', '7', '8', 1, 1, '1', '0', 1, 'coach', 'groomer', NULL, '2021-08-10 00:29:30', '2021-08-16 05:39:34'),
(46, NULL, 'udin', 'Groomer biawak', 'Cibarengkok', '-6.3636953231294235', '106.68774133951526', 20000, 1999, '4', '0', 1, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'groomer', NULL, '2021-08-10 05:47:26', '2021-08-10 05:47:26'),
(47, 'assets/gallery/GGj4Jqp8OCivQY1p1E6VirCSSB8OkwlxqpW2XgUi.jpeg', 'input groom', 'input groomers', 'input groomers', '3', '5', 1, 1, '1', '0', 1, 'input groomers', 'groomer', NULL, '2021-08-18 20:20:14', '2021-08-18 20:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `history_bookings`
--

CREATE TABLE `history_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `jadwal` date NOT NULL,
  `lokasi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metode_layanan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `users_id`, `title`, `price`, `desc`, `created_at`, `updated_at`) VALUES
(1, 652, 'Job job lorem', 3000, 'asdfasdf', '2022-09-27 02:50:40', '2022-09-27 02:52:30'),
(2, 652, 'Cod Job lorem', 8000, 'asdfasdf', '2022-09-27 02:51:04', '2022-09-27 02:51:04'),
(7, 657, 'Cod Job lorem', 8000, 'asdfasdf', '2022-09-27 03:58:14', '2022-09-27 03:58:14'),
(8, 657, 'Cod Job lorem', 8000, 'asdfasdf', '2022-09-27 03:58:16', '2022-09-27 03:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_id` bigint(20) UNSIGNED NOT NULL,
  `to_id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from_id`, `to_id`, `content`, `read_at`, `created_at`, `updated_at`) VALUES
(81, 91, 326, 'asdf', NULL, '2021-10-12 06:05:36', '2021-10-12 06:05:36'),
(82, 91, 326, 'nah', NULL, '2021-10-12 06:05:51', '2021-10-12 06:05:51'),
(83, 91, 326, 'ini sudah ada foto nya', NULL, '2021-10-12 06:05:55', '2021-10-12 06:05:55'),
(84, 91, 326, 'asdfasdf', NULL, '2021-10-12 06:06:03', '2021-10-12 06:06:03'),
(85, 91, 326, 'asdfasdfasdf', NULL, '2021-10-12 06:06:05', '2021-10-12 06:06:05'),
(86, 91, 326, 'asdf', NULL, '2021-10-12 06:06:05', '2021-10-12 06:06:05'),
(87, 91, 326, 'asdf', NULL, '2021-10-12 06:06:06', '2021-10-12 06:06:06'),
(88, 91, 326, 'asdf', NULL, '2021-10-12 06:06:07', '2021-10-12 06:06:07'),
(89, 91, 326, 'sdf', NULL, '2021-10-12 06:06:08', '2021-10-12 06:06:08'),
(90, 91, 326, 'sdf', NULL, '2021-10-12 06:06:08', '2021-10-12 06:06:08'),
(91, 91, 326, 'df', NULL, '2021-10-12 06:06:09', '2021-10-12 06:06:09'),
(92, 91, 326, 'sdf', NULL, '2021-10-12 06:06:09', '2021-10-12 06:06:09'),
(93, 91, 326, 'asdf', NULL, '2021-10-12 06:06:10', '2021-10-12 06:06:10'),
(94, 91, 326, 'asfasdf', NULL, '2021-10-12 06:11:00', '2021-10-12 06:11:00'),
(95, 91, 305, 'asdf', NULL, '2021-10-12 06:21:22', '2021-10-12 06:21:22'),
(96, 90, 91, 'test', '2021-11-14 12:45:54', '2021-10-12 06:23:07', '2021-10-12 06:23:07'),
(97, 91, 90, 'asdfasdf', '2021-11-14 12:45:47', '2021-10-12 06:23:16', '2021-10-12 06:23:16'),
(98, 90, 91, 'asdffffff', '2021-11-14 12:45:54', '2021-10-12 06:23:20', '2021-10-12 06:23:20'),
(99, 91, 90, 'asdfasdf', '2021-11-14 12:45:47', '2021-10-12 06:23:26', '2021-10-12 06:23:26'),
(100, 90, 91, 'test', '2021-11-14 12:45:54', '2021-10-12 06:30:32', '2021-10-12 06:30:32'),
(101, 91, 90, 'masuk', '2021-11-14 12:45:47', '2021-10-12 06:30:47', '2021-10-12 06:30:47'),
(102, 90, 91, 'test', '2021-11-14 12:45:54', '2021-10-12 06:33:59', '2021-10-12 06:33:59'),
(103, 91, 328, 'test', NULL, '2021-10-12 06:34:29', '2021-10-12 06:34:29'),
(104, 91, 328, 's', NULL, '2021-10-12 06:34:57', '2021-10-12 06:34:57'),
(105, 91, 328, 'test', NULL, '2021-10-12 06:51:39', '2021-10-12 06:51:39'),
(106, 91, 328, 'asdf', NULL, '2021-10-12 07:12:20', '2021-10-12 07:12:20'),
(107, 91, 328, 'asdf', NULL, '2021-10-12 07:14:15', '2021-10-12 07:14:15'),
(108, 91, 328, 'sdfa', NULL, '2021-10-12 07:14:39', '2021-10-12 07:14:39'),
(109, 91, 328, 'bisa', NULL, '2021-10-12 07:30:09', '2021-10-12 07:30:09'),
(110, 91, 328, 'test', NULL, '2021-10-12 07:31:05', '2021-10-12 07:31:05'),
(111, 91, 328, 'c', NULL, '2021-10-12 07:33:59', '2021-10-12 07:33:59'),
(112, 91, 328, 'naj', NULL, '2021-10-12 07:34:52', '2021-10-12 07:34:52'),
(113, 91, 328, 'asdf', NULL, '2021-10-12 07:36:01', '2021-10-12 07:36:01'),
(114, 90, 91, 'nah', '2021-11-14 12:45:54', '2021-10-12 07:40:37', '2021-10-12 07:40:37'),
(115, 90, 327, 'asdfasdf', NULL, '2021-10-12 07:41:00', '2021-10-12 07:41:00'),
(116, 91, 328, 'asdsadf', NULL, '2021-10-12 18:28:43', '2021-10-12 18:28:43'),
(117, 91, 328, 'fasdfasdf', NULL, '2021-10-12 18:28:52', '2021-10-12 18:28:52'),
(118, 91, 326, 'asdf', NULL, '2021-10-12 18:28:57', '2021-10-12 18:28:57'),
(119, 91, 326, 'asdf', NULL, '2021-10-12 18:29:09', '2021-10-12 18:29:09'),
(120, 91, 328, 'asdf', NULL, '2021-10-12 18:29:13', '2021-10-12 18:29:13'),
(121, 91, 305, 'asdf', NULL, '2021-10-12 18:29:16', '2021-10-12 18:29:16'),
(122, 91, 305, 'asdf', NULL, '2021-10-13 14:50:30', '2021-10-13 14:50:30'),
(123, 91, 90, 'asdf', '2021-11-14 12:45:47', '2021-10-17 06:08:51', '2021-10-17 06:08:51'),
(124, 91, 90, 'asdf', '2021-11-14 12:45:47', '2021-10-17 06:09:21', '2021-10-17 06:09:21'),
(125, 91, 90, 'asdf', '2021-11-14 12:45:47', '2021-10-17 06:09:22', '2021-10-17 06:09:22'),
(126, 91, 90, 'asdf', '2021-11-14 12:45:47', '2021-10-17 06:09:52', '2021-10-17 06:09:52'),
(127, 91, 90, 'asdfasdf', '2021-11-14 12:45:47', '2021-10-17 06:09:52', '2021-10-17 06:09:52'),
(128, 91, 90, 'asdfasdf', '2021-11-14 12:45:47', '2021-10-17 06:09:53', '2021-10-17 06:09:53'),
(129, 91, 90, 'sdfasdf', '2021-11-14 12:45:47', '2021-10-17 06:09:53', '2021-10-17 06:09:53'),
(130, 91, 90, 'sdfasdf', '2021-11-14 12:45:47', '2021-10-17 06:10:23', '2021-10-17 06:10:23'),
(131, 91, 90, 'sdfasdf', '2021-11-14 12:45:47', '2021-10-17 06:10:24', '2021-10-17 06:10:24'),
(132, 91, 90, 'sfasdf', '2021-11-14 12:45:47', '2021-10-17 06:10:24', '2021-10-17 06:10:24'),
(133, 91, 90, 'sfasdf', '2021-11-14 12:45:47', '2021-10-17 06:10:54', '2021-10-17 06:10:54'),
(134, 91, 90, 'sfasdf', '2021-11-14 12:45:47', '2021-10-17 06:10:55', '2021-10-17 06:10:55'),
(135, 91, 90, 'sfasdf', '2021-11-14 12:45:47', '2021-10-17 06:10:56', '2021-10-17 06:10:56'),
(136, 91, 90, 'sfasdf', '2021-11-14 12:45:47', '2021-10-17 06:10:56', '2021-10-17 06:10:56'),
(137, 91, 90, 'sfasdf', '2021-11-14 12:45:47', '2021-10-17 06:11:26', '2021-10-17 06:11:26'),
(138, 91, 90, 'sfasdf', '2021-11-14 12:45:47', '2021-10-17 06:11:56', '2021-10-17 06:11:56'),
(139, 91, 90, 'sfasdf', '2021-11-14 12:45:47', '2021-10-17 06:12:26', '2021-10-17 06:12:26'),
(140, 91, 90, 'sfasdf', '2021-11-14 12:45:47', '2021-10-17 06:12:56', '2021-10-17 06:12:56'),
(141, 91, 90, 'sfasdf', '2021-11-14 12:45:47', '2021-10-17 06:12:57', '2021-10-17 06:12:57'),
(142, 91, 90, 'sfasdf', '2021-11-14 12:45:47', '2021-10-17 06:12:58', '2021-10-17 06:12:58'),
(143, 91, 90, 'sfasdf', '2021-11-14 12:45:47', '2021-10-17 06:13:28', '2021-10-17 06:13:28'),
(144, 91, 90, 'sfasdf', '2021-11-14 12:45:47', '2021-10-17 06:13:28', '2021-10-17 06:13:28'),
(145, 91, 90, 'sfasdf', '2021-11-14 12:45:47', '2021-10-17 06:13:29', '2021-10-17 06:13:29'),
(146, 91, 90, 'sfasdf', '2021-11-14 12:45:47', '2021-10-17 06:13:29', '2021-10-17 06:13:29'),
(147, 91, 90, 'sfasdf', '2021-11-14 12:45:47', '2021-10-17 06:13:30', '2021-10-17 06:13:30'),
(148, 91, 90, 'sfasdf', '2021-11-14 12:45:47', '2021-10-17 06:13:30', '2021-10-17 06:13:30'),
(149, 91, 90, 'sfasdfsdsfasdf', '2021-11-14 12:45:47', '2021-10-17 06:13:31', '2021-10-17 06:13:31'),
(150, 91, 90, 'sfasdfsdsfasdf', '2021-11-14 12:45:47', '2021-10-17 06:13:31', '2021-10-17 06:13:31'),
(151, 91, 90, 'sfasdfsdsfasdf', '2021-11-14 12:45:47', '2021-10-17 06:14:01', '2021-10-17 06:14:01'),
(152, 91, 90, 'sfasdfsdsfasdf', '2021-11-14 12:45:47', '2021-10-17 06:14:31', '2021-10-17 06:14:31'),
(153, 91, 90, 'sfasdfsdsfasdf', '2021-11-14 12:45:47', '2021-10-17 06:14:32', '2021-10-17 06:14:32'),
(154, 91, 90, 'sfasdfsdsfasdf', '2021-11-14 12:45:47', '2021-10-17 06:15:02', '2021-10-17 06:15:02'),
(155, 91, 90, 'sfasdfsdsfasdf', '2021-11-14 12:45:47', '2021-10-17 06:15:02', '2021-10-17 06:15:02'),
(156, 91, 90, 'sfasdfsdsfasdf', '2021-11-14 12:45:47', '2021-10-17 06:15:03', '2021-10-17 06:15:03'),
(157, 91, 90, 'sfasdfsdsfasdf', '2021-11-14 12:45:47', '2021-10-17 06:15:03', '2021-10-17 06:15:03'),
(158, 91, 90, 'fasdf', '2021-11-14 12:45:47', '2021-10-17 06:15:04', '2021-10-17 06:15:04'),
(159, 91, 90, 'asfasdf', '2021-11-14 12:45:47', '2021-10-17 06:15:34', '2021-10-17 06:15:34'),
(160, 91, 90, 'asdfasdf', '2021-11-14 12:45:47', '2021-10-17 06:24:05', '2021-10-17 06:24:05'),
(161, 91, 90, 'asdfasdf', '2021-11-14 12:45:47', '2021-10-17 06:24:38', '2021-10-17 06:24:38'),
(162, 91, 90, 'asdfasdf', '2021-11-14 12:45:47', '2021-10-17 06:25:08', '2021-10-17 06:25:08'),
(163, 91, 90, 'asdfasdffgasfasdf', '2021-11-14 12:45:47', '2021-10-17 06:25:09', '2021-10-17 06:25:09'),
(164, 91, 90, 'asdfasdfasdfasdffgasfasdf', '2021-11-14 12:45:47', '2021-10-17 06:25:39', '2021-10-17 06:25:39'),
(165, 91, 90, 'asdfasdfasdfasdfasdffgasfasdf', '2021-11-14 12:45:47', '2021-10-17 06:25:39', '2021-10-17 06:25:39'),
(166, 91, 90, 'asdfasdfasdfasdfasdfasdffgasfasdf', '2021-11-14 12:45:47', '2021-10-17 06:25:39', '2021-10-17 06:25:39'),
(167, 91, 90, 'asdfasdfasdfasdfasdfasdfasdffgasfasdf', '2021-11-14 12:45:47', '2021-10-17 06:25:39', '2021-10-17 06:25:39'),
(168, 91, 90, 'asdfasdfasdfasdfasdfasdfasdfasdffgasfasdf', '2021-11-14 12:45:47', '2021-10-17 06:25:39', '2021-10-17 06:25:39'),
(169, 91, 424, 'asdfasdf', NULL, '2021-11-14 05:44:22', '2021-11-14 05:44:22'),
(170, 90, 91, 'asdfasdf', '2021-11-14 12:45:54', '2021-11-14 05:45:37', '2021-11-14 05:45:37'),
(171, 90, 91, 'asdfasf', '2021-11-14 12:45:54', '2021-11-14 05:45:40', '2021-11-14 05:45:40'),
(172, 90, 91, 'sfasdf', '2021-11-14 12:45:54', '2021-11-14 05:45:42', '2021-11-14 05:45:42'),
(173, 90, 91, 'asdfasdf', '2021-11-14 12:45:54', '2021-11-14 05:45:44', '2021-11-14 05:45:44'),
(174, 90, 91, 'asdfasfasdf', '2021-11-14 12:45:54', '2021-11-14 05:45:47', '2021-11-14 05:45:47');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_04_30_141607_create_customers_table', 1),
(5, '2021_04_30_145050_create_doctors_table', 2),
(6, '2021_04_30_150021_create_groomers_table', 3),
(7, '2021_04_30_150234_create_history_bookings_table', 3),
(8, '2021_05_02_011951_add_roles_field_to_users_table', 4),
(13, '2014_10_12_100000_create_password_resets_table', 5),
(14, '2021_05_16_055238_create_ongoings_table', 5),
(15, '2021_05_17_032818_add_time_akhir_field_to_ongoings_table', 6),
(16, '2021_05_17_164109_add_acc_masalah_field_to_ongoings_table', 7),
(17, '2021_05_27_151751_add_harga_field_to_doctors_table', 8),
(18, '2021_06_01_072337_add_id_unique_field_to_ongoings_table', 9),
(19, '2021_06_05_154503_add_customers_id_field_to_users_table', 10),
(20, '2021_06_20_030803_create_contents_table', 11),
(21, '2021_06_20_062133_create_contents_table', 12),
(22, '2021_06_22_185050_create_services_table', 13),
(23, '2021_06_27_000705_add_isreviewed_field_to_ongoings_table', 14),
(24, '2021_06_27_001316_add_isreviewed_field_to_ongoings_table', 15),
(25, '2021_06_27_001554_isreviewed_field_to_ongoings_table', 16),
(26, '2021_08_06_093206_create_dynamic_fields_table', 17),
(27, '2021_08_08_223440_create_students_table', 18),
(28, '2021_08_15_005437_create_posts_table', 19),
(29, '2021_08_20_174628_create_notifications_table', 20),
(30, '2021_08_24_164610_create_otps_table', 21),
(31, '2021_09_05_130440_create_coolze_packages_table', 22),
(32, '2021_09_05_130653_create_coolze_subpackages_table', 22),
(33, '2021_09_05_132958_create_coolze_partners_table', 22),
(34, '2021_09_05_133839_create_coolze_drivers_table', 22),
(35, '2021_09_05_134330_create_coolze_customers_table', 22),
(36, '2021_09_05_135743_create_coolze_wallets_table', 22),
(37, '2021_09_05_140244_create_coolze_vouchers_table', 22),
(38, '2021_09_05_140523_create_coolze_addresses_table', 22),
(39, '2021_09_06_001439_create_coolze_orders_table', 22),
(40, '2021_09_06_062350_add_status_field_to_coolze_customers_table', 23),
(41, '2021_09_06_062502_add_status_field_to_coolze_partners_table', 23),
(43, '2021_09_06_064109_add_status_field_to_users_table', 24),
(44, '2021_09_12_134135_add_harga_and_user_and_type_field_to_coolze_vouchers_table', 25),
(45, '2021_09_23_165131_create_messages_table', 26),
(46, '2021_09_25_124020_create_submessages_table', 27),
(47, '2021_09_29_075630_create_messages_table', 28),
(48, '2021_09_29_102112_create_messages_table', 29),
(49, '2021_10_08_081507_create_withdraw_table', 30),
(50, '2021_10_08_084759_create_coolze_withdraw_table', 31),
(51, '2021_10_08_085037_create_coolze_withdraws_table', 32),
(52, '2021_10_13_012615_create_notifications_table', 33),
(53, '2019_09_22_192348_create_messages_table', 34),
(54, '2019_10_16_211433_create_favorites_table', 34),
(55, '2019_10_18_223259_add_avatar_to_users', 34),
(56, '2019_10_20_211056_add_messenger_color_to_users', 34),
(57, '2019_10_22_000539_add_dark_mode_to_users', 34),
(58, '2019_10_25_214038_add_active_status_to_users', 34),
(59, '0000_00_00_000000_create_websockets_statistics_entries_table', 35),
(60, '2022_04_06_071349_add_address_field_to_users_table', 36),
(61, '2022_04_06_072353_create_adfood_merchants_table', 36),
(62, '2022_04_06_072952_create_adfood_foods_table', 36),
(63, '2022_04_06_074048_create_adfood_reservations_table', 36),
(64, '2022_04_06_075533_create_adfood_galleries_food_table', 36),
(65, '2022_04_07_105516_create_adfood_galleries_food_table', 37),
(66, '2022_04_07_105752_create_adfood_food_table', 38),
(67, '2022_04_07_112627_create_adfood_merchants_table', 39),
(68, '2022_04_07_113318_add_adfood_merchants_id_field_to_adfood_food_table', 40),
(69, '2022_04_08_092239_create_adfood_customers_table', 41),
(70, '2022_04_08_092559_add_sofdelete_field_to_users_table', 42),
(71, '2022_04_11_092410_add_merchants_id_field_to_users_table', 43),
(72, '2022_04_11_093539_add_merchants_id_field_to_users_table', 44),
(73, '2022_04_11_130007_add_address_field_to_adfood_food_table', 45),
(74, '2022_04_12_143357_create_adfood_foods_table', 46),
(75, '2022_04_12_143451_create_adfood_galleries_foods_table', 46),
(76, '2022_04_13_082312_add_adfood_merchants_id_field_to_adfood_foods_table', 47),
(77, '2022_04_13_090146_add_adfood_merchants_id_field_to_adfood_foods_table', 48),
(78, '2022_04_30_160942_create_adfood_galleries_vouchers_table', 49),
(79, '2022_05_06_132110_create_adfood_ori_vouchers_table', 50),
(80, '2022_05_08_200156_create_adfood_galleries_merchants_table', 51),
(81, '2022_05_11_205919_create_favorites_table', 52),
(82, '2022_05_19_115135_create_adfood_subscriptions_table', 53),
(83, '2022_05_23_164148_create_adfood_stripes_table', 54),
(84, '2022_06_08_101925_create_fcmnotifications_table', 55),
(85, '2022_06_12_140549_create_adfood_categories_table', 56),
(86, '2022_06_15_134116_create_orders_table', 57),
(87, '2022_07_06_142528_add_new_field_to_adfood_stripes_table', 58),
(88, '2022_07_07_101145_create_adfood_subscriptions_merchants_table', 59),
(89, '2022_07_07_135459_add_merchants_id_field_to_stripes_table', 60),
(90, '2022_07_09_130329_add_start_expired_date_field_to_adfood_subscriptions_table', 61),
(91, '2021_06_22_185050_create_jobs_table', 62);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `merchants_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `merchants_id`, `created_at`, `updated_at`) VALUES
('62191866-f635-4e3e-8459-d59e8865ebae', 'App\\Notifications\\InvoicePaid', 'App\\Adfood_reservation', 137, '{\"description\":\"New Order \",\"from\":\"lula27\",\"merchants_id\":\"609\"}', NULL, NULL, '2022-06-08 03:07:50', '2022-06-08 03:07:50'),
('6da0d558-f2f5-4057-8a17-70d3d507a22a', 'App\\Notifications\\InvoicePaid', 'App\\Adfood_reservation', 95, '{\"description\":\"New Order \",\"from\":\"alagigi\",\"merchants_id\":\"498\"}', NULL, NULL, '2022-05-18 10:28:18', '2022-05-18 10:28:18'),
('82a1095a-048c-4fe5-ac90-6b38dfa36b5b', 'App\\Notifications\\InvoicePaid', 'App\\Adfood_reservation', 94, '{\"description\":\"New Order \",\"from\":\"alagigi\",\"merchants_id\":\"519\"}', NULL, 519, '2022-05-18 06:40:21', '2022-05-18 06:40:21'),
('8f1ec80b-c703-4b21-b7dc-e7d359606328', 'App\\Notifications\\InvoicePaid', 'App\\Adfood_reservation', 93, '{\"description\":\"New Order \",\"from\":\"alagigi\",\"merchants_id\":\"498\"}', NULL, NULL, '2022-05-18 06:38:32', '2022-05-18 06:38:32'),
('c3ad5fc2-662e-49cb-b296-36ba6c411cdd', 'App\\Notifications\\InvoicePaid', 'App\\Adfood_reservation', 138, '{\"description\":\"New Order \",\"from\":\"alagigic\",\"merchants_id\":\"609\"}', NULL, NULL, '2022-06-19 02:50:00', '2022-06-19 02:50:00'),
('d8028b1a-0c0d-4459-8967-1c0ffd880cb0', 'App\\Notifications\\InvoicePaid', 'App\\Adfood_reservation', 96, '{\"description\":\"New Order \",\"from\":\"alagigi\",\"merchants_id\":\"498\"}', NULL, NULL, '2022-05-18 10:29:45', '2022-05-18 10:29:45');

-- --------------------------------------------------------

--
-- Table structure for table `ongoings`
--

CREATE TABLE `ongoings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customers_id` int(11) NOT NULL,
  `doctors_id` int(11) DEFAULT NULL,
  `groomers_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `metode_layanan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `time_akhir` time DEFAULT NULL,
  `masalah_hewan` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc` datetime DEFAULT NULL,
  `id_unique` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_product` int(11) DEFAULT NULL,
  `review_product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isreviewed` tinyint(1) NOT NULL DEFAULT 0,
  `roolsearch` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ongoings`
--

INSERT INTO `ongoings` (`id`, `customers_id`, `doctors_id`, `groomers_id`, `date`, `time`, `metode_layanan`, `status`, `deleted_at`, `created_at`, `updated_at`, `time_akhir`, `masalah_hewan`, `acc`, `id_unique`, `nilai_product`, `review_product`, `isreviewed`, `roolsearch`) VALUES
(113, 263, NULL, 44, '2021-05-29', '20:51:00', 'sdfasdf', 2, NULL, '2021-07-14 06:04:01', '2021-08-24 03:44:59', '20:58:00', 'ongoing post', '2021-08-24 09:34:03', '60eee0c1b685c', 2, 'kurang respond', 1, 'ongoing'),
(114, 263, 61, NULL, '2021-05-29', '20:51:00', 'dfasdf', 1, NULL, '2021-07-14 06:15:38', '2021-08-24 03:34:49', '20:58:00', 'ongoing post', '2021-08-24 09:33:51', '60eee37a5a281', 5, 'bahannya bagus', 1, 'ongoing'),
(115, 265, 130, NULL, '2021-07-16', '03:41:00', 'input doctors', 2, NULL, '2021-07-15 13:41:39', '2021-08-24 02:33:36', '03:41:00', 'asdfasdf', '2021-08-24 09:33:36', '60f09d83eace6', 5, 'bagus ae', 1, 'ongoing'),
(120, 264, 131, NULL, '2021-08-24', '08:57:00', 'test layanan ui 2', 0, NULL, '2021-08-24 01:59:52', '2021-08-24 01:59:52', '08:57:00', 'zXCZXC', NULL, '61245298c104b', NULL, NULL, 0, 'ongoing'),
(121, 263, NULL, 38, '2021-08-24', '09:09:00', 'coba tambah', 0, NULL, '2021-08-24 02:09:11', '2021-08-24 03:42:06', '09:09:00', 'sdfasf', NULL, '612454c7c06c2', NULL, NULL, 0, 'ongoing'),
(122, 263, NULL, 38, '2021-08-24', '09:10:00', 'coba tambah', 1, NULL, '2021-08-24 02:12:22', '2021-08-24 03:44:28', '09:10:00', 'asdf', '2021-08-24 10:44:28', '61245586cc240', NULL, NULL, 0, 'ongoing'),
(123, 264, 61, 38, '2021-08-24', '09:12:00', 'sdfasdf', 0, NULL, '2021-08-24 02:13:02', '2021-08-24 02:16:28', '09:12:00', 'fsdfasf', NULL, '612455aed0739', NULL, NULL, 0, 'ongoing'),
(124, 266, NULL, 38, '2021-08-24', '09:13:00', 'layanan5', 2, NULL, '2021-08-24 02:13:34', '2021-08-24 03:44:45', '09:13:00', 'CZXc', '2021-08-24 10:42:34', '612455ced87ca', 3, 'biasa', 1, 'ongoing'),
(125, 264, 61, NULL, '2021-08-24', '09:18:00', 'layanan5', 1, NULL, '2021-08-24 02:18:30', '2021-08-24 03:34:32', '09:18:00', 'sdasd', '2021-08-24 10:33:53', '612456f608d18', 5, 'bagus aja lah,', 1, 'ongoing');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `title`, `order`, `created_at`, `updated_at`) VALUES
(1, 'order 20', 4, NULL, '2022-06-16 01:42:01'),
(2, 'order 50', 1, NULL, '2022-06-16 01:42:11'),
(3, 'order 3', 2, NULL, '2022-06-16 01:42:11'),
(4, 'order 4', 3, NULL, '2022-06-16 01:42:07');

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validity` int(11) NOT NULL,
  `expired` tinyint(1) NOT NULL DEFAULT 0,
  `no_times_generated` int(11) NOT NULL DEFAULT 0,
  `no_times_attempted` int(11) NOT NULL DEFAULT 0,
  `generated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `users_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otps`
--

INSERT INTO `otps` (`id`, `identifier`, `token`, `validity`, `expired`, `no_times_generated`, `no_times_attempted`, `generated_at`, `created_at`, `updated_at`, `users_id`) VALUES
(453, 'N8NJ7NbP3Qii', '957355', 3, 0, 1, 0, '2022-08-22 06:24:41', '2022-08-22 06:24:41', '2022-08-22 06:24:41', 640),
(454, 'UM34wdw4Xgm5', '029004', 3, 0, 1, 0, '2022-08-22 06:28:38', '2022-08-22 06:28:38', '2022-08-22 06:28:38', 641),
(455, '2FeRIFDClOk4', '344484', 3, 0, 1, 0, '2022-08-22 06:29:43', '2022-08-22 06:29:43', '2022-08-22 06:29:43', 642);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('wawanleite@gmail.com', '$2y$10$.6wAFpc1Olmu0f5KGaaVIelr7XhKtJUkjsGnscBjt8mtWYiRPw5l6', '2021-05-21 21:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'this is title', 'this is title body', NULL, NULL),
(2, 'this is description', 'this is description body', NULL, NULL),
(3, 'one', 'the', NULL, NULL),
(4, 'spot', 'trans 7', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(100) NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `users_id`, `desc`, `title`, `price`, `created_at`, `updated_at`) VALUES
(201, 652, 'Lorem ipsum', 'Lorem ipsum', 200, NULL, NULL),
(203, 652, 'asdfasdf', 'Cod lorem', 1000, '2022-09-12 07:02:25', '2022-09-12 07:02:25'),
(204, 652, 'asdfasdf', 'Cod lorem', 9000, '2022-09-12 07:02:44', '2022-09-12 07:02:44'),
(205, 652, 'asdfasdf', 'Cod lorem', 9000, '2022-09-12 07:02:59', '2022-09-12 07:02:59'),
(206, 652, 'asdfasdf', 'Cod lorem', 9000, '2022-09-12 07:04:07', '2022-09-12 07:04:07'),
(207, 652, 'asdfasdf', 'Cod lorem', 9000, '2022-09-12 07:04:33', '2022-09-12 07:04:33'),
(208, 652, 'asdfasdf', 'Cod lorem', 9000, '2022-09-12 07:35:02', '2022-09-12 07:35:02'),
(209, 652, 'asdfasdf', 'Cod lorem', 9000, '2022-09-12 07:36:00', '2022-09-12 07:36:00'),
(210, 652, 'asdfasdf', 'Cod lorem', 8000, '2022-09-12 13:28:17', '2022-09-12 13:28:17'),
(215, 652, 'eeeeee', 'Cod loreng', 10500, '2022-09-12 13:30:59', '2022-09-12 13:35:06'),
(218, 652, 'asdfasdf', 'Cod lorem', 2020, '2022-09-12 13:41:05', '2022-09-12 13:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `subject`, `created_at`, `updated_at`) VALUES
(1, 'tinker', '2021-08-08 15:59:17', '2021-08-08 15:59:17'),
(2, 'nah', '2021-08-08 16:00:02', '2021-08-08 16:00:02'),
(3, 'kan', '2021-08-08 16:00:02', '2021-08-08 16:00:02'),
(4, 'lagi', '2021-08-08 16:05:29', '2021-08-08 16:05:29'),
(5, 'store', '2021-08-08 16:12:53', '2021-08-08 16:12:53'),
(6, 'dynamic', '2021-08-08 16:13:06', '2021-08-08 16:13:06'),
(7, 'cal', '2021-08-08 16:13:06', '2021-08-08 16:13:06'),
(8, 'asdfasdf', '2021-08-08 16:20:59', '2021-08-08 16:20:59'),
(9, 'asfasdffff', '2021-08-08 16:23:57', '2021-08-08 16:23:57'),
(10, 'inicobatitle', '2021-08-08 16:24:20', '2021-08-08 16:24:20'),
(11, 'titlelogo', '2021-08-08 16:26:19', '2021-08-08 16:26:19');

-- --------------------------------------------------------

--
-- Table structure for table `submessages`
--

CREATE TABLE `submessages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `messages_id` int(11) NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `submessages`
--

INSERT INTO `submessages` (`id`, `messages_id`, `message`, `answer`, `created_at`, `updated_at`) VALUES
(1, 14, 'asdfasdf', NULL, '2021-09-25 06:22:33', '2021-09-25 06:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `isVerified` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day_of_birth` date DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `customers_id` int(11) DEFAULT NULL,
  `partners_id` int(11) DEFAULT NULL,
  `drivers_id` bigint(20) DEFAULT NULL,
  `device_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `messenger_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#2180f3',
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `active_status` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `merchants_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `foto`, `name`, `email`, `email_verified_at`, `isVerified`, `password`, `phone`, `gender`, `day_of_birth`, `remember_token`, `created_at`, `updated_at`, `roles`, `customers_id`, `partners_id`, `drivers_id`, `device_token`, `status`, `avatar`, `messenger_color`, `dark_mode`, `active_status`, `deleted_at`, `merchants_id`, `order`) VALUES
(90, NULL, 'kitereative', 'kitereative@gmail.com', NULL, '0', '$2y$10$Lu1gcgWJKRbXRW3SF1fZ.eTKYZD9ddjH8SV2kJff7smmGBKIRL7bO', '09876543', NULL, NULL, 'EhoyYn7XKhuf2LERqejzFVw7yFah5nvBmlme4Po4CWBfoOt0gVcplEv9Xjwy', '2021-06-07 08:00:57', '2021-12-26 03:47:07', 'ADMIN', NULL, NULL, NULL, 'fEgo4j99ihhJeh5YVkpeRx:APA91bHS9jONupkh_I612d5DanV_MhO2UKpa62f_t2kEtiSqAjfwHIjuycyFo8TQhIBkAGW7U2OQGrHjnZhmcyBEsMNgBXpkftEL8PuyXuDtgDUIZtm6QNcV5SIBPxeawSsv74SwAXLE', 0, 'avatar.png', '#FFC107', 0, 0, NULL, NULL, 0),
(531, 'assets/gallery/2p4aTAocPHNRnl6OQObDCNTgdEBun4BaoCSilQUt.jpg', 'User', 'user@gmail.com', NULL, '1', '$2y$10$pYeISyrYPS0Urb4FJMj4d.aNXk2cJ3n35kgodet3C2kCl1fz/YBGe', '0898971155', 'male', NULL, NULL, '2022-04-30 09:48:20', '2022-08-23 03:35:55', 'USER', 531, NULL, NULL, NULL, 1, 'avatar.png', '#2180f3', 0, 0, NULL, NULL, 0),
(609, 'assets/gallery/fAMOII3Nwh4fEA5rNuV9fdL7DB0p9gOlhmzsmlbZ.png', 'MERCHANT27', 'merchant240@gmail.com', NULL, '1', '$2y$10$1hqFPUtbO3idAugWHLQH/uhR0KtWcEm4KPHrOL6EHGBHPiV4BOLui', '+6289604080', 'male', NULL, NULL, '2022-05-23 04:50:29', '2022-08-23 03:37:46', 'MERCHANT', NULL, NULL, NULL, NULL, 1, 'avatar.png', '#2180f3', 0, 0, NULL, 609, 3),
(611, 'assets/gallery/GT0r42HpBqUDvYVE2ogaWoNifSa6F4umP4YqiURf.jpg', 'MERCHANT29', 'merchant29@gmail.com', NULL, '1', '$2y$10$1hqFPUtbO3idAugWHLQH/uhR0KtWcEm4KPHrOL6EHGBHPiV4BOLui', '+62896040809035', 'male', NULL, NULL, '2022-05-23 04:50:29', '2022-06-27 14:58:20', 'MERCHANT', NULL, NULL, NULL, NULL, 1, 'avatar.png', '#2180f3', 0, 0, NULL, 611, 6),
(630, NULL, 'Cust55', 'cust55@gmail.com', NULL, '0', '$2y$10$V8S7LVZUtq1.WDtwe6ueB.SkF7zzsJ7wWLYWQ0qaqosR6EpmtRKy6', '0896119852052', NULL, NULL, NULL, '2022-06-13 07:34:04', '2022-06-13 07:34:04', 'USER', 630, NULL, NULL, NULL, 1, 'avatar.png', '#2180f3', 0, 0, NULL, NULL, 0),
(635, 'assets/gallery/TSvWWiU2s79z4Ka8UwDWpM1EZH7zueUmfpJKxwRQ.png', 'Iman Ghazali', 'customer16jun@gmail.com', NULL, '1', '$2y$10$ddDJAL5JDuK3t3OER3CR6.eDvKmIW8qsv3wwjR./SIQTpRcyg751e', '+6289604080', 'male', NULL, NULL, '2022-06-14 06:31:41', '2022-08-23 03:35:38', 'USER', 635, NULL, NULL, NULL, 1, 'avatar.png', '#2180f3', 0, 0, NULL, NULL, 0),
(636, 'assets/gallery/6W4QpiBbgW7Pvc2CZokWUFTybDDYQ3KToYpGiuYZ.png', 'merchantinput8', 'merchantinput88@gmail.com', NULL, '0', '$2y$10$KzPYVLijYX5xaR7UzKSyBeDzO05nW4hpWPmj3RS25oKBqtsl1tfm.', '+6281234567897', NULL, '1993-04-24', NULL, '2022-06-14 07:03:49', '2022-06-16 03:33:14', 'MERCHANT', NULL, NULL, NULL, NULL, 1, 'avatar.png', '#2180f3', 0, 0, NULL, 636, 10),
(639, 'assets/gallery/HWUuBIEVQx9tEPWjOQ177H26IsZa2mWitwkLI4H8.png', 'merchant990', 'merchant990@gmail.com', NULL, '1', '$2y$10$RqlArWLniRvfPTCcjai30.viSdHu2mfOq.ZDIUWZ8J6JpDG3VECUq', '9087987897', 'male', NULL, NULL, '2022-06-23 06:52:17', '2022-06-23 06:52:17', 'MERCHANT', NULL, NULL, NULL, NULL, 1, 'avatar.png', '#2180f3', 0, 0, NULL, 639, 0),
(642, NULL, 'MERCHANT29', 'merchant241@gmail.com', NULL, '0', '$2y$10$NO67mAKyuHFD9aLI/0KY3O6/sl1D6FNiJ0QwM7rgjS0GL6XFLnYH6', '+6289604080904', NULL, NULL, NULL, '2022-08-22 06:29:43', '2022-08-22 06:29:43', 'MERCHANT', NULL, NULL, NULL, NULL, 1, 'avatar.png', '#2180f3', 0, 0, NULL, 642, 0),
(643, NULL, 'customer16jun7', 'customer1776jun@gmail.com', NULL, '0', '$2y$10$LsCMGOqq.Mmb/Em/YmsGwecXgOvS50trrEq0W26QwYpOrlsMfOjZ.', '+6289604080904556', 'male', '1995-04-24', NULL, '2022-08-23 01:55:28', '2022-08-23 01:56:54', 'USER', 643, NULL, NULL, NULL, 1, 'avatar.png', '#2180f3', 0, 0, NULL, NULL, 0),
(644, NULL, 'customer167un', 'customer16j7un@gmail.com', NULL, '0', '$2y$10$icGuIoXjrWf3mcbOSIF5h.QI6FAacFTgCSXfiQuNeJmR1Gx4npa9K', '+62895604080904556', 'male', '1995-04-24', NULL, '2022-08-23 01:58:59', '2022-08-23 01:58:59', 'USER', 644, NULL, NULL, NULL, 0, 'avatar.png', '#2180f3', 0, 0, NULL, NULL, 0),
(645, NULL, 'customer16jun7', 'customer1jyi76jun@gmail.com', NULL, '0', '$2y$10$C3jZvMdy1soKWLQl8T3g.e5F55HenaXEgg707b98UcfRdDPbLo9Lu', '+6289694080904556', 'male', '1995-04-24', NULL, '2022-08-23 02:02:37', '2022-08-23 02:30:49', 'USER', 645, NULL, NULL, NULL, 1, 'avatar.png', '#2180f3', 0, 0, NULL, NULL, 0),
(646, NULL, 'customer1167un', 'customer1106j7un@gmail.com', NULL, '0', '$2y$10$YRhUxdMw7de7o7ES.7wV..xxPt9iR2lxkjN9b7FjWaoqYfI36VP8O', '+62895604080904552', 'male', '1995-04-24', NULL, '2022-08-23 02:28:52', '2022-08-23 02:28:52', 'USER', 646, NULL, NULL, NULL, 0, 'avatar.png', '#2180f3', 0, 0, NULL, NULL, 0),
(648, 'assets/gallery/YQ7MJ1TwLWy2fijiC90DKqpVPWs7vrcfBdbZ8wKU.jpg', 'customer16jun7', 'customer1@gmail.com', NULL, '0', '$2y$10$rPSQBK5DugWJ4I5SfnSzSeXb0TiIJ1EqjiLU4.zj.9LHoXmJwspJy', '+628969408090455', 'male', '1995-04-24', NULL, '2022-08-23 02:29:38', '2022-09-11 14:10:38', 'USER', 648, NULL, NULL, NULL, 1, 'avatar.png', '#2180f3', 0, 0, NULL, NULL, 0),
(649, 'assets/gallery/Yj2LBMJbtKoY4T3nXieL5BuPG2MeYTFIqgE3M9et.png', 'merchantinput86', 'merchantinput887@gmail.com', NULL, '0', '$2y$10$UgCf4JxHY5fYcTELDYNwBeurkLkv/OBQW1QOtJHG2KblY3S6ca4TS', '+62814507897', NULL, '1993-04-24', NULL, '2022-08-23 02:44:04', '2022-08-23 03:08:48', 'MERCHANT', NULL, NULL, NULL, NULL, 1, 'avatar.png', '#2180f3', 0, 0, NULL, 649, 0),
(650, NULL, 'user1', 'user1@gmail.com', NULL, '0', '$2y$10$Lr3oBncvxwVDmQrgGWaNr.e/mSsEkVXNqWNgSYSgl6M7OTN8sAjGi', '+62814967897', NULL, '1993-04-24', NULL, '2022-08-23 03:04:18', '2022-08-23 03:04:18', 'MERCHANT', NULL, NULL, NULL, NULL, 1, 'avatar.png', '#2180f3', 0, 0, NULL, 650, 0),
(652, 'assets/gallery/FsdYtReDkhzxtqM06hZIlfdFjk9RSVK7rCotb5Je.jpg', 'user8', 'user8@gmail.com', NULL, '0', '$2y$10$u1ZMc7rcgDsRTiIcnrMkX.G63CPmjFkuC2qYgQwGsH1CkQSER6Ylm', '+62896940809036', 'male', '1995-04-24', NULL, '2022-09-11 14:10:03', '2022-09-16 07:11:23', 'USER', 652, NULL, NULL, NULL, 1, 'avatar.png', '#2180f3', 0, 0, NULL, NULL, 0),
(657, 'assets/gallery/3BOKkcXX9bB90cBwLIE9Nn0uyEicyiMtZlkG5lXE.png', 'user5', 'user5@gmail.com', NULL, '0', '$2y$10$huliuBQTZZOxicjei.mEyOW.e/AG4tA9fGkDMnXC6qr13UEgVmM9C', '+6289694080903', 'male', '1995-04-24', NULL, '2022-09-12 06:01:18', '2022-09-12 06:02:00', 'USER', 657, NULL, NULL, NULL, 1, 'avatar.png', '#2180f3', 0, 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adfood_categories`
--
ALTER TABLE `adfood_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adfood_customers`
--
ALTER TABLE `adfood_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adfood_foods`
--
ALTER TABLE `adfood_foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adfood_galleries_foods`
--
ALTER TABLE `adfood_galleries_foods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adfood_galleries_merchants`
--
ALTER TABLE `adfood_galleries_merchants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adfood_galleries_vouchers`
--
ALTER TABLE `adfood_galleries_vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adfood_merchants`
--
ALTER TABLE `adfood_merchants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adfood_ori_vouchers`
--
ALTER TABLE `adfood_ori_vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adfood_reservations`
--
ALTER TABLE `adfood_reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adfood_stripes`
--
ALTER TABLE `adfood_stripes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adfood_subscriptions`
--
ALTER TABLE `adfood_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adfood_subscriptions_merchants`
--
ALTER TABLE `adfood_subscriptions_merchants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coolze_addresses`
--
ALTER TABLE `coolze_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coolze_customers`
--
ALTER TABLE `coolze_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coolze_drivers`
--
ALTER TABLE `coolze_drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coolze_orders`
--
ALTER TABLE `coolze_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coolze_packages`
--
ALTER TABLE `coolze_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coolze_partners`
--
ALTER TABLE `coolze_partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coolze_subpackages`
--
ALTER TABLE `coolze_subpackages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coolze_vouchers`
--
ALTER TABLE `coolze_vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coolze_wallets`
--
ALTER TABLE `coolze_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coolze_withdraws`
--
ALTER TABLE `coolze_withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynamic_fields`
--
ALTER TABLE `dynamic_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fcmnotifications`
--
ALTER TABLE `fcmnotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groomers`
--
ALTER TABLE `groomers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_bookings`
--
ALTER TABLE `history_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `ongoings`
--
ALTER TABLE `ongoings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submessages`
--
ALTER TABLE `submessages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adfood_categories`
--
ALTER TABLE `adfood_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `adfood_customers`
--
ALTER TABLE `adfood_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=660;

--
-- AUTO_INCREMENT for table `adfood_foods`
--
ALTER TABLE `adfood_foods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `adfood_galleries_foods`
--
ALTER TABLE `adfood_galleries_foods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `adfood_galleries_merchants`
--
ALTER TABLE `adfood_galleries_merchants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `adfood_galleries_vouchers`
--
ALTER TABLE `adfood_galleries_vouchers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `adfood_merchants`
--
ALTER TABLE `adfood_merchants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=652;

--
-- AUTO_INCREMENT for table `adfood_ori_vouchers`
--
ALTER TABLE `adfood_ori_vouchers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `adfood_reservations`
--
ALTER TABLE `adfood_reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `adfood_stripes`
--
ALTER TABLE `adfood_stripes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `adfood_subscriptions`
--
ALTER TABLE `adfood_subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `adfood_subscriptions_merchants`
--
ALTER TABLE `adfood_subscriptions_merchants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `coolze_addresses`
--
ALTER TABLE `coolze_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `coolze_customers`
--
ALTER TABLE `coolze_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;

--
-- AUTO_INCREMENT for table `coolze_drivers`
--
ALTER TABLE `coolze_drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT for table `coolze_orders`
--
ALTER TABLE `coolze_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `coolze_packages`
--
ALTER TABLE `coolze_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `coolze_partners`
--
ALTER TABLE `coolze_partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- AUTO_INCREMENT for table `coolze_subpackages`
--
ALTER TABLE `coolze_subpackages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `coolze_vouchers`
--
ALTER TABLE `coolze_vouchers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `coolze_wallets`
--
ALTER TABLE `coolze_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coolze_withdraws`
--
ALTER TABLE `coolze_withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `dynamic_fields`
--
ALTER TABLE `dynamic_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `fcmnotifications`
--
ALTER TABLE `fcmnotifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `groomers`
--
ALTER TABLE `groomers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `history_bookings`
--
ALTER TABLE `history_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `ongoings`
--
ALTER TABLE `ongoings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=456;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `submessages`
--
ALTER TABLE `submessages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=660;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
