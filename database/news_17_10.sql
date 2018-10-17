-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 17, 2018 lúc 02:52 PM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_menu` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `id_menu`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hey Man - 01', '2018-10-17 04:57:07', '2018-10-17 04:58:58'),
(2, 8, 'Chữ Cái', '2018-10-17 04:57:11', '2018-10-17 04:58:50'),
(3, 9, 'Chữ Cái - 01', '2018-10-17 04:59:06', '2018-10-17 04:59:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `items`
--

INSERT INTO `items` (`id`, `id_user`, `title`, `description`) VALUES
(1, 36, 'item 1', 'item 1'),
(2, 36, 'item 2', 'item 2'),
(3, 37, 'item 3', 'item 3'),
(4, 37, 'item 4', 'item 4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Truyền Cười', '2018-10-14 17:00:00', '2018-10-14 17:00:00'),
(2, 'Truyện Ma', '2018-10-14 17:00:00', '2018-10-14 17:00:00'),
(8, 'Hey Man', '2018-10-17 04:41:31', '2018-10-17 04:41:31'),
(9, 'Chữ Cái', '2018-10-17 04:41:33', '2018-10-17 04:41:33'),
(10, 'OKOK - Vi Du', '2018-10-17 04:41:37', '2018-10-17 04:46:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_05_113729_create_students_table', 2),
(4, '2018_10_05_114251_add_genden_column_into_students_table', 3),
(5, '2018_10_10_112801_create_tests_table', 4),
(6, '2018_10_10_115906_create_items_table', 5),
(7, '2018_10_12_122355_create_news_table', 6),
(8, '2018_10_15_123826_create_menus_table', 7),
(9, '2018_10_17_115142_categories', 8),
(10, '2018_10_17_120104_create_news_table', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `href_param` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cate` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `href_param`, `thumbnail`, `content`, `created_at`, `updated_at`, `id_cate`) VALUES
(6, 'title 5 - edit', 'title 5 - edit', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 5', '2018-12-09 23:00:00', '2018-10-17 05:37:49', '1'),
(7, 'title 6', 'title 6', 'https://www.accountingweb.com/sites/default/files/styles/banner/public/internal_audit_pichet_w.jpg?itok=HXgnKTKn', 'content 6', '2018-12-09 23:00:00', '2018-10-17 05:38:01', '1'),
(8, 'title 7', 'title 7', 'http://apaxholdings.com.vn/pic/AboutUs/GIOI-THIE_636218175765622299.jpg', 'content 7', '2018-12-09 23:00:00', '2018-10-17 05:38:12', '1'),
(9, 'title 8', 'title-8', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 8', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(10, 'title 9', 'title-9', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 9', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(11, 'title 10', 'title-10', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 10', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(12, 'title 11', 'title-11', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 11', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(13, 'title 12', 'title-12', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 12', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(14, 'title 13', 'title-13', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 13', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(15, 'title 14', 'title-14', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 14', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(16, 'title 15', 'title-15', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 15', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(17, 'title 16', 'title-16', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 16', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(18, 'title 17', 'title-17', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 17', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(19, 'title 18', 'title-18', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 18', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(20, 'title 19', 'title-19', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 19', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(21, 'title 20', 'title-20', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 20', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(22, 'title 21', 'title-21', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 21', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(23, 'title 22', 'title-22', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 22', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(24, 'title 23', 'title-23', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 23', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(25, 'title 24', 'title-24', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 24', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(26, 'title 25', 'title-25', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 25', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(27, 'title 26', 'title-26', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 26', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(28, 'title 27', 'title-27', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 27', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(29, 'title 28', 'title-28', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 28', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(30, 'title 29', 'title-29', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 29', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(31, 'title 30', 'title-30', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 30', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(32, 'title 31', 'title-31', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 31', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(33, 'title 32', 'title-32', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 32', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(34, 'title 33', 'title-33', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 33', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(35, 'title 34', 'title-34', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 34', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(36, 'title 35', 'title-35', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 35', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(37, 'title 36', 'title-36', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 36', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(38, 'title 37', 'title-37', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 37', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(39, 'title 38', 'title-38', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 38', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(40, 'title 39', 'title-39', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 39', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(41, 'title 40', 'title-40', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 40', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(42, 'title 41', 'title-41', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 41', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(43, 'title 42', 'title-42', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 42', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(44, 'title 43', 'title-43', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 43', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(45, 'title 44', 'title-44', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 44', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(46, 'title 45', 'title-45', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 45', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(47, 'title 46', 'title-46', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 46', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(48, 'title 47', 'title-47', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 47', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(49, 'title 48', 'title-48', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 48', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(50, 'title 49', 'title-49', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 49', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(51, 'title 50', 'title-50', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 50', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(52, 'title 51', 'title-51', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 51', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(53, 'title 52', 'title-52', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 52', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(54, 'title 53', 'title-53', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 53', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(55, 'title 54', 'title-54', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 54', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(56, 'title 55', 'title-55', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 55', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(57, 'title 56', 'title-56', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 56', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(58, 'title 57', 'title-57', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 57', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(59, 'title 58', 'title-58', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 58', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(60, 'title 59', 'title-59', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 59', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(61, 'title 60', 'title-60', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 60', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(62, 'title 61', 'title-61', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 61', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(63, 'title 62', 'title-62', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 62', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(64, 'title 63', 'title-63', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 63', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(65, 'title 64', 'title-64', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 64', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(66, 'title 65', 'title-65', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 65', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(67, 'title 66', 'title-66', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 66', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(68, 'title 67', 'title-67', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 67', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(69, 'title 68', 'title-68', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 68', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(70, 'title 69', 'title-69', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 69', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(71, 'title 70', 'title-70', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 70', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(72, 'title 71', 'title-71', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 71', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(73, 'title 72', 'title-72', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 72', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(74, 'title 73', 'title-73', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 73', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(75, 'title 74', 'title-74', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 74', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(76, 'title 75', 'title-75', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 75', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(77, 'title 76', 'title-76', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 76', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(78, 'title 77', 'title-77', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 77', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(79, 'title 78', 'title-78', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 78', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(80, 'title 79', 'title-79', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 79', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(81, 'title 80', 'title-80', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 80', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(82, 'title 81', 'title-81', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 81', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(83, 'title 82', 'title-82', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 82', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(84, 'title 83', 'title-83', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 83', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(85, 'title 84', 'title-84', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 84', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(86, 'title 85', 'title-85', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 85', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(87, 'title 86', 'title-86', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 86', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(88, 'title 87', 'title-87', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 87', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(89, 'title 88', 'title-88', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 88', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(90, 'title 89', 'title-89', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 89', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(91, 'title 90', 'title-90', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 90', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(92, 'title 91', 'title-91', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 91', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(93, 'title 92', 'title-92', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 92', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(94, 'title 93', 'title-93', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 93', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(95, 'title 94', 'title-94', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 94', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(96, 'title 95', 'title-95', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 95', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(97, 'title 96', 'title-96', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 96', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(98, 'title 97', 'title-97', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 97', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(99, 'title 98', 'title-98', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 98', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(100, 'title 99', 'title-99', 'https://www.irishtimes.com/polopoly_fs/1.3457229.1523375408!/image/image.jpg_gen/derivatives/box_620_330/image.jpg', 'content 99', '2018-12-09 23:00:00', '2018-12-09 23:00:00', '1'),
(101, 'ookokk', 'ookokk', 'http://thtaudit.com.vn/synthetic/slides/1496978513.jpg', 'ewrwerewrwer', '2018-10-17 05:41:00', '2018-10-17 05:41:00', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gender` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `students`
--

INSERT INTO `students` (`id`, `username`, `email`, `address`, `created_at`, `updated_at`, `gender`) VALUES
(36, 'qweqwe', 'gokisoft.com@gmail.com', 'Hoàng Mai', '2018-10-08 05:08:30', '2018-10-08 05:08:30', 'Nam'),
(37, 'xin chao', 'gokisoft.com@gmail.com', 'Hoàng Mai', '2018-10-10 04:33:00', '2018-10-10 04:44:48', 'Nam'),
(39, '3234234', '23423423@gmail.com', 'asdasdasd', '2018-10-10 04:47:26', '2018-10-10 04:47:26', 'Nam'),
(40, 'admin', 'admin@gmail.com', 'ABC', '2018-12-09 23:00:00', '2018-12-09 23:00:00', 'Nam'),
(41, 'admin', 'admin@gmail.com', 'ABC', '2018-12-09 23:00:00', '2018-12-09 23:00:00', 'Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tests`
--

CREATE TABLE IF NOT EXISTS `tests` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tests`
--

INSERT INTO `tests` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'dwwrwerwe', NULL, NULL),
(2, 'dwwrwerwe', '2018-10-10 04:31:46', '2018-10-10 04:31:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Trần Văn Điệp', 'tranvandiep.it@gmail.com', NULL, '$2y$10$l/ro5uoXhhw.Tj0w4Z7tOerUQjZg6/uCS36zKCq52nodCXpMsGeji', 'yPzVdJnyYcHtfM9bKmxdpjsCOn8wSWYsVCaBGGNkgDa183MlDh4mdI962ZIE', '2018-10-03 04:35:44', '2018-10-03 04:35:44');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
