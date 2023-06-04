-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jun 03, 2023 at 10:55 AM
-- Server version: 5.7.42
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_user`
--

CREATE TABLE `admin_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datetime` datetime NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user`
--

INSERT INTO `admin_user` (`id`, `name`, `email`, `email_verified_at`, `password`, `slug`, `level`, `address`, `phone`, `image`, `datetime`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'chu van huy', 'vanhuyutehy@gmail.com', NULL, '$2y$10$6AdFKqta8gQ0pQAlgil/0etbFTPXRxpeD/ouylAHsTDU144UbAJAC', 'chu-van-huy', 0, 'văn giang, hưng yên', '0374970903', 'no-img.jpg', '2021-04-20 00:00:00', NULL, NULL, NULL),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$7JWEKW44GW0lu8peNc2w4ewsMO/mPaiz8kkCFtmxqL0huld.j5RK.', 'admin', 0, 'văn giang, hưng yên', '0374970903', 'no-img.jpg', '2021-04-20 00:00:00', NULL, NULL, NULL),
(3, 'super-admin', 'superadmin@gmail.com', NULL, '$2y$10$xr13F5NwbdA0ZEdMBKdIeeBanaR1.M.42ojVlJdA7wgMyfvVO3hke', 'super-admin', 1, 'văn giang, hưng yên', '0374970903', 'no-img.jpg', '2021-04-20 00:00:00', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attr`
--

CREATE TABLE `attr` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attr`
--

INSERT INTO `attr` (`id`, `name`, `value`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'Size', 's', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `slug`, `cat_id`, `created_at`, `updated_at`) VALUES
(1, 'Size', 'size', 1, NULL, NULL),
(2, 'Color', 'color', 2, NULL, NULL),
(3, 'Màu', 'mau', 7, '2022-02-17 14:13:17', '2022-02-17 14:13:17'),
(4, 'size', 'size', 3, '2023-06-03 17:46:01', '2023-06-03 17:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(1, 'name', 'name', 'namez9.jpg', NULL, '2022-02-17 13:43:45'),
(2, 'name', 'name', 'nameUv.jpg', NULL, '2022-02-17 13:44:01'),
(3, 'name', 'name', 'namelV.jpg', NULL, '2022-02-17 13:44:14'),
(4, 'name', 'name', 'nameIK.jpg', NULL, '2022-02-17 13:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `slug`, `info`, `body`, `image`, `user_admin_id`, `created_at`, `updated_at`) VALUES
(1, 'ONTEGER LECTUS URNA ULTRICIES VEL LECTUS', 'ONTEGER-LECTUS-URNA-ULTRICIES-VEL-LECTUS', 'Nulla laoreet ipsum dignissim magna maximus', 'Nulla laoreet ipsum dignissim magna maximus, vitae euis mod turpis iaculis. Sed pharetra lacus sit amet dui conse', 'no-img.jpg', 1, NULL, NULL),
(2, 'ONTEGER LECTUS', 'ONTEGER-LECTUS', 'Nulla laoreet ipsum dignissim magna maximus', 'Nulla laoreet ipsum dignissim magna maximus, vitae euis mod turpis iaculis. Sed pharetra lacus sit amet dui conse', 'no-img.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` tinyint(4) NOT NULL,
  `cate_smail` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `title`, `parent`, `cate_smail`, `created_at`, `updated_at`) VALUES
(1, 'Thời trang nam', 'thoi-trang-nam', 'thoi-trang-nam.jpg', 'Thời trang nam', 0, 0, NULL, '2022-02-17 13:47:57'),
(2, 'Thời trang nữ', 'thoi-trang-nu', 'thoi-trang-nu.jpg', 'Thời trang nữ', 0, 0, NULL, '2022-02-17 13:48:32'),
(3, 'Quần Nam', 'quan-nam', 'quan-nam.jpg', 'Quần nam', 1, 1, NULL, '2022-02-17 13:49:06'),
(4, 'Áo Nam', 'ao-nam', 'ao-nam.jpg', 'Áo nam', 1, 1, NULL, '2022-02-17 13:49:27'),
(5, 'Phụ kiện cho nam', 'phu-kien-cho-nam', 'phu-kien-cho-nam.jpg', 'Phụ kiện cho nam', 1, 1, '2022-02-17 13:51:06', '2022-02-17 13:51:15'),
(6, 'Điện thoại', 'dien-thoai', 'no-img.jpg', 'Điện thoại', 0, 0, '2022-02-17 13:58:23', '2022-02-17 13:58:23'),
(7, 'Iphone', 'iphone', 'no-img.jpg', 'Iphone', 6, 1, '2022-02-17 14:00:15', '2022-02-17 14:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `comment_blog`
--

CREATE TABLE `comment_blog` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `use_admin_id` int(10) UNSIGNED DEFAULT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `state` int(11) DEFAULT NULL,
  `parent` int(11) NOT NULL,
  `name_user_comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_comment` int(11) DEFAULT NULL,
  `comnent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment_blog`
--

INSERT INTO `comment_blog` (`id`, `image`, `user_id`, `use_admin_id`, `blog_id`, `state`, `parent`, `name_user_comment`, `state_comment`, `comnent`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, NULL, 1, 0, 0, NULL, NULL, 'Praesent accumsan, nunc eget semper cursus, tellus nisl sagittis massa, vel egestas erat odio sed sapien. In malesuada ipsum ut elit pretium. In a luctus tellus. Fusce id euismod justo.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comment_product`
--

CREATE TABLE `comment_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_id` int(10) UNSIGNED DEFAULT NULL,
  `use_admin_id` int(10) UNSIGNED DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `parent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_user_comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prd_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title1` text COLLATE utf8mb4_unicode_ci,
  `title2` text COLLATE utf8mb4_unicode_ci,
  `title3` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title1`, `title2`, `title3`, `created_at`, `updated_at`) VALUES
(1, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d7452.4240477344765!2d105.9270653!3d20.9439989!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1620383890822!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', NULL, 'Muốn nói chuyện với đại diện bán hàng? Hãy nhắn cho chúng tôi và chúng tôi sẵn lòng trả lời bất kỳ câu hỏi nào!', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(18,0) UNSIGNED NOT NULL,
  `state` tinyint(4) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `slug`, `address`, `email`, `phone`, `total`, `state`, `note`, `created_at`, `updated_at`) VALUES
(1, 'Chu Văn Huy', 'tui-xach-venuco-mardid-f87', 'Hưng Yên', 'vanhuyutehy@gmail.com', '0374970903', 2000000, 0, 'Giao đúng hnaj nhé', NULL, NULL);

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `prd_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `name`, `slug`, `image`, `image2`, `price`, `prd_id`, `users_id`, `created_at`, `updated_at`) VALUES
(2, 'Áo Sơ Mi Lacoste Men Regular Fit Mini Piqué Shirt Màu Xanh Navy', 'ao-so-mi-lacoste-men-regular-fit-mini-pique-shirt-mau-xanh-navy', 'ao-so-mi-lacoste-men-regular-fit-mini-pique-shirt-mau-xanh-navy-JM.jpg', 'ao-so-mi-lacoste-men-regular-fit-mini-pique-shirt-mau-xanh-navy-Fy.jpg', 2200000, 1, 4, '2023-06-03 17:22:27', '2023-06-03 17:22:27'),
(3, 'Áo Sơ Mi Cộc Tay Nam Giovanni UR679-NV Size S', 'ao-so-mi-coc-tay-nam-ur679-nv-size-s', 'ao-so-mi-coc-tay-nam-giovanni-ur679-nv-size-s-sM.jpg', 'ao-so-mi-coc-tay-nam-giovanni-ur679-nv-size-s-wy.jpg', 2200000, 2, 4, '2023-06-03 17:22:41', '2023-06-03 17:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `title`, `content`, `state`, `created_at`, `updated_at`) VALUES
(1, 'Nói chuyện với chúng tôi ngay!', 'LIÊN HỆ CHÚNG TÔI', 1, NULL, NULL),
(2, 'Nói chuyện với chúng tôi ngay!', 'DỊCH VỤ CỦA CHÚNG TÔI', 2, NULL, NULL),
(3, 'Nói chuyện với chúng tôi ngay!', 'CHÚNG TÔI Ở ĐÂY', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `footer_detail`
--

CREATE TABLE `footer_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_detail`
--

INSERT INTO `footer_detail` (`id`, `content`, `footer_id`, `created_at`, `updated_at`) VALUES
(1, '32 Khoái Châu - Hưng Yên.', 1, NULL, NULL),
(2, '(+84) 037 497 0903', 1, NULL, NULL),
(3, '<a href=\"\">Phản hồi</a>', 2, NULL, NULL),
(4, '<a href=\"\">Về chúng tôi</a>', 2, NULL, NULL),
(5, '<a href=\"\">Chính sách hoàn trả đơn hàng</a>', 2, NULL, NULL),
(6, '<a href=\"#\"><i class=\"fa fa-facebook\"></i></a>', 3, NULL, NULL),
(7, '<a href=\"#\"><i class=\"fa fa-instagram\"></i></a>', 3, NULL, NULL),
(8, '<a href=\"#\"><i class=\"fa fa-youtube-play\"></i></a>', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_policy`
--

CREATE TABLE `image_policy` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_policy`
--

INSERT INTO `image_policy` (`id`, `content`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'MIỄN PHÍ VẬN CHUYỂN VỚI ĐƠN HÀNG 2000.000 VNĐ', '<i class=\"flaticon flaticon-origami28\"></i>', NULL, NULL),
(2, 'CHÍNH SÁCH HOÀN TIỀN', '<i class=\"flaticon flaticon-curvearrows9\"></i>', NULL, NULL),
(3, 'HỖ TRỢ 24/7', '<i class=\"flaticon flaticon-headphones54\"></i>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_product`
--

CREATE TABLE `image_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prd_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_product`
--

INSERT INTO `image_product` (`id`, `image`, `prd_id`, `created_at`, `updated_at`) VALUES
(1, 'ao-so-mi-lacoste-men-regular-fit-mini-pique-shirt-mau-xanh-navy-Jt.jpg', 1, NULL, '2022-02-17 13:52:32'),
(2, 'iphone-x-64gb-quoc-te-cu-likenew-99-Ic.png', 5, NULL, NULL),
(3, 'iphone-x-64gb-quoc-te-cu-likenew-99-6x.png', 5, NULL, NULL),
(4, 'iphone-xs-256gb-quoc-te-likenew-99-5cDtt.jpg', 6, NULL, NULL);

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_20_090904_create_table_trademarks', 1),
(5, '2021_04_20_090955_create_table_categories', 1),
(6, '2021_04_20_091422_create_table_products', 1),
(7, '2021_04_20_091649_create_table_image_product', 1),
(8, '2021_04_20_091953_create_table_attributes', 1),
(9, '2021_04_20_092039_create_table_values', 1),
(10, '2021_04_20_092207_create_table_value_product', 1),
(11, '2021_04_20_092349_create_table_variants', 1),
(12, '2021_04_20_092450_create_table_variant_value', 1),
(13, '2021_04_20_092555_create_table_customers', 1),
(14, '2021_04_20_092714_create_table_orders', 1),
(15, '2021_04_20_092817_create_table_attr', 1),
(16, '2021_04_20_134958_create_table_properties', 1),
(17, '2021_04_20_162033_create_table_contact', 1),
(18, '2021_04_20_164801_create_table__admin_user', 1),
(19, '2021_04_24_052406_create_table_blog', 1),
(20, '2021_04_24_052732_create_table_comment_product', 1),
(21, '2021_04_24_060905_create_table_comment_blog', 1),
(22, '2021_04_25_170304_create__value_proper', 1),
(23, '2021_04_29_145906_create_banner_table', 1),
(24, '2021_05_04_070242_create_table_setting', 1),
(25, '2021_05_04_072209_create_table_footer', 1),
(26, '2021_05_04_073118_create_table_footer_detail', 1),
(27, '2021_05_04_073327_create_table_image_policy', 1),
(28, '2021_05_19_083552_create_permission_tables', 1),
(29, '2023_06_03_114639_favorites', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\AdminUser', 1),
(2, 'App\\Models\\AdminUser', 2),
(3, 'App\\Models\\AdminUser', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(18,0) NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `price`, `quantity`, `image`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 'Túi Xách Venuco Madrid F87', 2000000, 3, 'no-img.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_product', 'web', '2022-02-17 13:37:14', '2022-02-17 13:37:14'),
(2, 'view_user', 'web', '2022-02-17 13:37:14', '2022-02-17 13:37:14'),
(3, 'view_category', 'web', '2022-02-17 13:37:14', '2022-02-17 13:37:14'),
(4, 'view_order', 'web', '2022-02-17 13:37:14', '2022-02-17 13:37:14'),
(5, 'view_comment_product', 'web', '2022-02-17 13:37:14', '2022-02-17 13:37:14'),
(6, 'view_comment_blog', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(7, 'view_blog', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(8, 'view_trademark', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(9, 'view_logo', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(10, 'view_slogan', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(11, 'view_image_polyci', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(12, 'view_slide', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(13, 'view_contact', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(14, 'add_product', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(15, 'add_user', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(16, 'add_category', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(17, 'add_comment_product', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(18, 'add_comment_blog', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(19, 'add_blog', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(20, 'add_trademark', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(21, 'add_image_polyci', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(22, 'add_footer', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(23, 'add_detail_footer', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(24, 'add_slide', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(25, 'edit_product', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(26, 'edit_user', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(27, 'edit_category', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(28, 'edit_order', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(29, 'edit_blog', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(30, 'edit_trademark', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(31, 'edit_logo', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(32, 'edit_slogan', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(33, 'edit_image_polyci', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(34, 'edit_footer', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(35, 'edit_detail_footer', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(36, 'edit_slide', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(37, 'edit_contact', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(38, 'delete_product', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(39, 'delete_user', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(40, 'delete_category', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(41, 'delete_order', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(42, 'delete_comment_product', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(43, 'delete_comment_blog', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(44, 'delete_blog', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(45, 'delete_trademark', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(46, 'delete_image_polyci', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(47, 'delete_footer', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(48, 'delete_detail_footer', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(49, 'delete_slide', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL DEFAULT '0',
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `describer` text COLLATE utf8mb4_unicode_ci,
  `info` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(4) NOT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `trademark_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `title`, `price`, `product_code`, `state`, `describer`, `info`, `image`, `image2`, `featured`, `cat_id`, `trademark_id`, `created_at`, `updated_at`) VALUES
(1, 'Áo Sơ Mi Lacoste Men Regular Fit Mini Piqué Shirt Màu Xanh Navy', 'ao-so-mi-lacoste-men-regular-fit-mini-pique-shirt-mau-xanh-navy', 'Áo Sơ Mi Lacoste Men Regular Fit Mini Piqué Shirt Màu Xanh Navy', 2200000, 'ASM', 1, 'Áo được làm từ chất vải cotton thoáng mát mang lại cảm giác thoải mái nhất cho người mặc. Form áo chuẩn đẹp từng đường kim mũi chỉ đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.', '3', 'ao-so-mi-lacoste-men-regular-fit-mini-pique-shirt-mau-xanh-navy-JM.jpg', 'ao-so-mi-lacoste-men-regular-fit-mini-pique-shirt-mau-xanh-navy-Fy.jpg', 1, 3, 1, NULL, '2022-02-17 13:52:44'),
(2, 'Áo Sơ Mi Cộc Tay Nam Giovanni UR679-NV Size S', 'ao-so-mi-coc-tay-nam-ur679-nv-size-s', 'Áo Sơ Mi Cộc Tay Nam Giovanni UR679-NV Size S', 2200000, 'ASMCT', 1, 'Áo được làm từ chất vải cotton thoáng mát mang lại cảm giác thoải mái nhất cho người mặc. Form áo chuẩn đẹp từng đường kim mũi chỉ đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.', 'Áo được làm từ chất vải cotton thoáng mát mang lại cảm giác thoải mái nhất cho người mặc. Form áo chuẩn đẹp từng đường kim mũi chỉ đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.', 'ao-so-mi-coc-tay-nam-giovanni-ur679-nv-size-s-sM.jpg', 'ao-so-mi-coc-tay-nam-giovanni-ur679-nv-size-s-wy.jpg', 1, 3, 1, NULL, '2022-02-17 13:53:36'),
(3, 'Mũ MLB New York Yankees Heroes Adjustable Cap Màu Đen', 'mu-mlb-new-york-yankees-heroes-adjustable-cap-mau-den', 'Mũ MLB New York Yankees Heroes Adjustable Cap Màu Đen', 2200000, 'MLC', 1, 'Áo được làm từ chất vải cotton thoáng mát mang lại cảm giác thoải mái nhất cho người mặc. Form áo chuẩn đẹp từng đường kim mũi chỉ đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.', 'Áo được làm từ chất vải cotton thoáng mát mang lại cảm giác thoải mái nhất cho người mặc. Form áo chuẩn đẹp từng đường kim mũi chỉ đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.', 'giay-mlb-new-york-yankees-heroes-adjustable-cap-mau-den-M3.jpg', 'giay-mlb-new-york-yankees-heroes-adjustable-cap-mau-den-bf.png', 1, 3, 1, NULL, '2022-02-17 13:54:12'),
(4, 'Túi Xách Venuco Madrid F87 - Hồng Lưới - P26F87', 'tui-xach-venuco-madrid-f87-hong-luoi-p26f87', 'Túi Xách Venuco Madrid F87 - Hồng Lưới - P26F87', 2200000, 'MLC1', 1, 'Áo được làm từ chất vải cotton thoáng mát mang lại cảm giác thoải mái nhất cho người mặc. Form áo chuẩn đẹp từng đường kim mũi chỉ đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.', 'Áo được làm từ chất vải cotton thoáng mát mang lại cảm giác thoải mái nhất cho người mặc. Form áo chuẩn đẹp từng đường kim mũi chỉ đảm bảo hài lòng ngay cả với khách hàng khó tính nhất.', 'tui-xach-venuco-madrid-f87-hong-luoi-p26f87-VL.jpg', 'tui-xach-venuco-madrid-f87-hong-luoi-p26f87-fi.jpg', 1, 3, 1, NULL, '2022-02-17 13:54:26'),
(5, 'Iphone X 64Gb Quốc Tế Cũ LikeNew 99%', 'iphone-x-64gb-quoc-te-cu-likenew-99', 'Iphone X 64Gb Quốc Tế Cũ LikeNew 99%', 6850000, 'IP01', 0, '<p>Chiếc điện thoại&nbsp;<strong>iPhone X quốc tế</strong>&nbsp;ra đời đ&atilde; tạo n&ecirc;n một cơn sốt mạnh mẽ với h&agrave;ng loạt cải tiến v&agrave; chức năng mới nổi bật. Tuy nhi&ecirc;n, kh&ocirc;ng phải ai cũng đủ t&agrave;i ch&iacute;nh để sắm một chiếc iPhone mới 100%. Nếu bạn muốn mua&nbsp;<a href=\"https://galaxydidong.vn/category/iphone/iphone-x/\" rel=\"noopener noreferrer\" target=\"_blank\">iPhone X cũ 99%</a>&nbsp;th&igrave; GALAXYDIDONG ch&iacute;nh l&agrave; sự lựa chọn ho&agrave;n hảo d&agrave;nh cho bạn. Vậy&nbsp;<em><strong>gi&aacute; iPhone X cũ</strong></em>&nbsp;n&oacute;i chung,&nbsp;<em><strong>iphone x 64gb gi&aacute; bao nhi&ecirc;u</strong></em>&nbsp;n&oacute;i ri&ecirc;ng tại GALAXYDIDONG l&agrave; bao nhi&ecirc;u? H&atilde;y c&ugrave;ng t&igrave;m hiểu qua b&agrave;i viết n&agrave;y nh&eacute;.</p>\r\n\r\n<p><img alt=\"Iphone X 64Gb Quốc Tế Cũ 1\" src=\"https://galaxydidong.vn/wp-content/uploads/2017/11/iphone-x-64gb-quoc-te-cu-1.png\" style=\"height:448px; width:800px\" /></p>\r\n\r\n<p><em>GALAXYDIDONG l&agrave; lựa chọn ho&agrave;n hảo khi muốn mua iPHone X quốc tế</em></p>\r\n\r\n<h2><strong>Những ưu điểm của iPhone X quốc tế 64GB</strong></h2>\r\n\r\n<h3><strong>1. iPhone X quốc tế c&oacute; thiết kế đột ph&aacute;</strong></h3>\r\n\r\n<p>Để kỷ niệm phi&ecirc;n bản iPhone thứ 10, Apple đ&atilde; cho ra mắt iPhone X với những cải tiến nổi bật trong thiết kế. Những đặc điểm nổi bật cần kể đến l&agrave;:</p>\r\n\r\n<ul>\r\n	<li>Thiết kế m&agrave;n h&igrave;nh tai thỏ đột ph&aacute; so với những phi&ecirc;n bản tiền nhiệm.</li>\r\n	<li>M&agrave;n h&igrave;nh kh&ocirc;ng viền với k&iacute;ch thước l&ecirc;n đến 5.8 inch.</li>\r\n	<li>C&ocirc;ng nghệ OLED với độ ph&acirc;n giải 2,436 x 1,125 pixel v&agrave; mật độ điểm ảnh 458 ppi.</li>\r\n	<li>N&uacute;t Home,Touch ID v&agrave; cổng tai nghe 3.5mm được loại bỏ.</li>\r\n	<li>N&uacute;t trợ l&yacute; ảo Siri được t&iacute;ch hợp mang đến trải nghiệm mới mẻ.</li>\r\n	<li>Viền kim loại b&oacute;ng bẩy v&agrave; mặt lưng ốp k&iacute;nh sang trọng khẳng định vị thế của một chiếc điện thoại cao cấp.</li>\r\n</ul>\r\n\r\n<p><img alt=\"Iphone X 64Gb Quốc Tế Cũ 2\" src=\"https://galaxydidong.vn/wp-content/uploads/2017/11/iphone-x-64gb-quoc-te-cu-2.png\" style=\"height:450px; width:800px\" /></p>\r\n\r\n<p><em>iPhone X sở hữu thiết kế đột ph&aacute;</em></p>\r\n\r\n<p>Những sự thay đổi n&agrave;y mang đến cho người d&ugrave;ng những trải nghiệm mới mẻ v&agrave; tiện &iacute;ch hiện đại. iPhone X xứng đ&aacute;ng l&agrave; một trong những mẫu điện thoại tốt nhất hiện nay.</p>\r\n\r\n<h3><strong>2. Hiệu năng&nbsp;</strong><strong>iPhone X quốc tế&nbsp;</strong><strong>v&ocirc; đối</strong></h3>\r\n\r\n<p>Một trong những ưu điểm tuyệt vời của chiếc&nbsp;<em>iphone X quốc tế</em>&nbsp;l&agrave; hiệu năng vượt trội của n&oacute;. Tương tự như iPhone 8 Plus, iPhone X cũng được t&iacute;ch hợp con chip A11 Bionic 6 nh&acirc;n gi&uacute;p tăng hiệu suất v&agrave; tốc độ khi xử l&yacute; t&aacute;c vụ đa nhiệm. Đ&acirc;y được xem l&agrave; con chip &ldquo;xịn x&ograve;&rdquo; nhất m&agrave; Nh&agrave; T&aacute;o đ&atilde; ph&aacute;t triển.</p>\r\n\r\n<p>Đ&uacute;ng với c&aacute;i t&ecirc;n của m&igrave;nh, chip Bionic c&oacute; khả năng xử l&yacute; nhiều t&aacute;c vụ phức tạp v&agrave; tối ưu hiệu năng của m&aacute;y. Con chip bao gồm 2 nh&acirc;n mạnh Monsoon v&agrave; 4 nh&acirc;n tiết kiệm điện Mistral. Trong đ&oacute;, nh&acirc;n Monsoon A11 mạnh hơn 25% so với nh&acirc;n Hurricane v&agrave; nh&acirc;n Mistral mạnh hơn 70% so với nh&acirc;n Zephyr. So với chip A10 chỉ c&oacute; khoảng 3,3 tỷ b&oacute;ng b&aacute;n dẫn, chup A11 sở hữu tối 4,3 tỷ b&oacute;ng.</p>\r\n\r\n<p>Đặc biệt, chip A11 c&ograve;n được t&iacute;ch hợp khu vực Neural Engine d&agrave;nh ri&ecirc;ng cho việc xử l&yacute; t&aacute;c vụ tr&iacute; tuệ nh&acirc;n tạo. Neural Engine c&oacute; khả năng xử l&yacute; hơn 600 tỷ ph&eacute;p to&aacute;n trong chỉ vỏn vẹn 1 gi&acirc;y. Nhờ vậy, chức năng Face ID của chiếc iPhone X hoạt động mượt m&agrave; v&agrave; nhanh ch&oacute;ng hơn người tiền nhiệm rất nhiều.</p>\r\n\r\n<p><img alt=\"Hiệu năng iPhone X quốc tế vô đối\" src=\"https://galaxydidong.vn/wp-content/uploads/2017/11/iphone-x-64gb-quoc-te-cu-3.png\" style=\"height:500px; width:800px\" /></p>\r\n\r\n<p><em>Con chip A11 tr&ecirc;n iPhone X c&oacute; khả năng xử l&yacute; t&aacute;c vụ tr&iacute; tuệ nh&acirc;n tạo</em></p>\r\n\r\n<h3><strong>3. Camera k&eacute;p chụp ảnh cực chuẩn</strong></h3>\r\n\r\n<p>Cũng giống như iPhone 8, chiếc iPhone X cũng sử dụng cụm camera k&eacute;p với độ ph&acirc;n giải l&ecirc;n đến 12MP, bao gồm:</p>\r\n\r\n<ul>\r\n	<li>Camera g&oacute;c rộng c&oacute; khẩu độ f/1.8</li>\r\n	<li>Camera chụp xa c&oacute; khẩu độ f/2.8 với chức năng zoom quang học</li>\r\n</ul>\r\n\r\n<p><img alt=\"Iphone X 64Gb Quốc Tế Cũ\" src=\"https://galaxydidong.vn/wp-content/uploads/2017/11/iphone-x-64gb-quoc-te-cu-4.png\" style=\"height:534px; width:800px\" title=\"Camera kép chụp ảnh cực chuẩn\" /></p>\r\n\r\n<p><em>Bộ camera k&eacute;p hỗ trợ chụp ảnh tối ưu</em></p>\r\n\r\n<p>Cả hai đều được trang bị chức năng chống rung quang học. Nhờ vậy, chụp ảnh khi đang di chuyển hay v&ocirc; t&igrave;nh rung tay cũng kh&ocirc;ng khiến ảnh bị nh&ograve;e hay mờ. B&ecirc;n cạnh đ&oacute;, m&aacute;y cũng được trang bị camera trước c&oacute; độ ph&acirc;n giải 7 MP gi&uacute;p mang đến những tấm h&igrave;nh chụp selfie đẹp.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, kh&ocirc;ng thể kh&ocirc;ng nhắc đến chức năng x&oacute;a ph&ocirc;ng v&agrave; chỉnh s&aacute;ng theo điều kiện m&ocirc;i trường. Một số kh&aacute;ch h&agrave;ng từng trải nghiệm đều cho rằng chất lượng ảnh x&oacute;a ph&ocirc;ng của iPhone X kh&ocirc;ng thua g&igrave; chiếc m&aacute;y ảnh cơ được lắp ống k&iacute;nh chuy&ecirc;n dụng.</p>\r\n\r\n<h3><strong>4. Pin&nbsp;</strong><strong>iPhone X quốc tế đ&atilde;&nbsp;</strong><strong>được n&acirc;ng cấp</strong></h3>\r\n\r\n<p>Như một truyền thống,&nbsp; chiếc&nbsp;<em>iphone x quốc tế</em>&nbsp;được Apple trang bị pin với dung lượng khủng. so với chiếc iPhone 7, iPhone X sạc đầy pin sử dụng được nhiều hơn tới 2 giờ. B&ecirc;n cạnh đ&oacute;, điện thoại c&ograve;n c&oacute; tốc độ sạc pin nhanh v&agrave; được hỗ trợ chức năng sạc kh&ocirc;ng d&acirc;y tiện dụng.</p>\r\n\r\n<h3><strong>5. Cung cấp h&agrave;ng loạt t&iacute;nh năng mới mẻ</strong></h3>\r\n\r\n<p>Nhờ sự hỗ trợ của con chip A11, iPhone X c&oacute; thể thực hiện những chức năng th&ocirc;ng minh như nhận diện khu&ocirc;n mặt Face ID. Thoe th&ocirc;ng tin của nh&agrave; sản xuất, tỷ lệ nhận diện sai của iPhone X chỉ tầm 1/1.000.000 m&agrave; th&ocirc;i. So với Touch ID, Face ID kh&ocirc;ng chỉ tiện lợi m&agrave; c&ograve;n bảo mật tốt hơn 20 lần. Thậm ch&iacute;, Face ID c&ograve;n c&oacute; thể nhận diện được những thay đổi nhỏ của chủ nh&acirc;n như để r&acirc;u hay trang điểm.</p>\r\n\r\n<p><img alt=\"Face ID là chức năng nổi bật trên iPhone X\" src=\"https://galaxydidong.vn/wp-content/uploads/2017/11/iphone-x-64gb-quoc-te-cu-5.png\" style=\"height:500px; width:800px\" title=\"Face ID là chức năng nổi bật trên iPhone X\" /></p>\r\n\r\n<p><em>Face ID l&agrave; chức năng nổi bật tr&ecirc;n iPhone X</em></p>\r\n\r\n<h2><strong>L&yacute; do n&ecirc;n mua iPhone X 64GB cũ tại GALAXYDIDONG</strong></h2>\r\n\r\n<p>Khi n&oacute;i về địa chỉ cung cấp iPhone X cũ uy t&iacute;n, kh&ocirc;ng thể kh&ocirc;ng nhắc đến GALAXYDIDONG. Kh&aacute;ch h&agrave;ng tin tưởng lựa chọn GALAXYDIDONG khi muốn mua iPhone v&igrave; những l&yacute; do sau:</p>\r\n\r\n<h3><strong>1. Gi&aacute; iPhone X cũ tốt nhất thị trường</strong></h3>\r\n\r\n<p>GALAXYDIDONG được xem l&agrave; một trong những nơi cung cấp&nbsp;<em>iPhone X quốc tế</em>&nbsp;gi&aacute; tốt nhất hiện nay.&nbsp;<strong>GI&aacute; iPhone X cũ</strong>&nbsp;chỉ khoảng tr&ecirc;n&nbsp;<strong>dưới 8.500.000 VNĐ, trong khi gi&aacute; b&aacute;n tại những đơn vị kh&aacute;c l&agrave; từ 9.200.000 VNĐ trở l&ecirc;n. Gi&aacute; tốt c&ograve;n đi c&ugrave;ng với chất lượng đảm bảo với những chiếc iPhone new 95 &ndash; 99% với pin nguy&ecirc;n zin v&agrave; chế độ bảo h&agrave;nh d&agrave;i hạn.</strong></p>\r\n\r\n<h3><strong>2. Hỗ trợ kh&aacute;ch h&agrave;ng tối đa</strong></h3>\r\n\r\n<p>Khi mua iPhone X tại GALAXYDIDONG, bạn sẽ nhận được những hỗ trợ như:</p>\r\n\r\n<ul>\r\n	<li>Hỗ trợ thanh to&aacute;n qua thẻ.</li>\r\n	<li>Hỗ trợ trả g&oacute;p ti&ecirc;u d&ugrave;ng với thủ tục đơn giản v&agrave; l&atilde;i suất cực tốt.</li>\r\n	<li>Giao h&agrave;ng to&agrave;n quốc miễn ph&iacute;.</li>\r\n</ul>\r\n\r\n<h3><strong>3. Thường xuy&ecirc;n c&oacute; chương tr&igrave;nh ưu đ&atilde;i về&nbsp;gi&aacute; iphone X cũ</strong></h3>\r\n\r\n<p>Hiện tại, GALAXYDIDONG đang mang đến cho kh&aacute;ch h&agrave;ng mua iPhone những qu&agrave; tặng khuyến m&atilde;i bao gồm:</p>\r\n\r\n<ul>\r\n	<li>Bộ sạc trị gi&aacute; 320.000 VNĐ</li>\r\n	<li>D&aacute;n m&agrave;n h&igrave;nh cường lực trị gi&aacute; 150.000 VNĐ với 10 lần thay miễn ph&iacute;/năm</li>\r\n	<li>Ốp lưng phong c&aacute;ch trị gi&aacute; 100.000 VNĐ</li>\r\n	<li>Ưu đ&atilde;i mua sạc dự ph&ograve;ng dung lượng 10.000 Mah gi&aacute; chỉ 259.000 VNĐ</li>\r\n</ul>\r\n\r\n<p><img alt=\"Lý do nên mua iPhone X 64GB cũ tại GALAXYDIDONG\" src=\"https://galaxydidong.vn/wp-content/uploads/2017/11/z2396737561222_962f7b4299e00fc32b341620b0eb204e-e1619402008834.jpg\" style=\"height:600px; width:800px\" title=\"Lý do nên mua iPhone X 64GB cũ tại GALAXYDIDONG\" /></p>\r\n\r\n<h3><strong>4. Dịch vụ hậu m&atilde;i khi mua iphone X quốc tế vượt trội</strong></h3>\r\n\r\n<p>GALAXYDIDONG mang đến cho kh&aacute;ch h&agrave;ng nhiều g&oacute;i bảo h&agrave;nh bao gồm:</p>\r\n\r\n<ul>\r\n	<li>G&oacute;i Gcare 6 th&aacute;ng v&agrave; hỗ trợ đổi mới trong 15 ng&agrave;y</li>\r\n	<li>G&oacute;i Gcare + 12 th&aacute;ng v&agrave; hỗ trợ đổi mới trong 30 ng&agrave;y</li>\r\n	<li>G&oacute;i Gcar VIP 15 th&aacute;ng v&agrave; hỗ trợ đổi mới trong 40 ng&agrave;y</li>\r\n</ul>\r\n\r\n<h2><strong>iphone x 64GB gi&aacute; bao nhi&ecirc;u?</strong></h2>\r\n\r\n<p><strong>iPhone x 64gb gi&aacute; bao nhi&ecirc;u</strong>&nbsp;l&agrave; c&acirc;u hỏi nhiều kh&aacute;ch h&agrave;ng d&agrave;nh sự quan t&acirc;m đặc biệt. Gi&aacute;<strong>&nbsp;iPhone X cũ</strong>&nbsp;tại GALAXYDIDONG c&ograve;n t&ugrave;y theo phi&ecirc;n bản bạn muốn mua:</p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; iPhone X cũ 95%: 7.050.000 VNĐ</li>\r\n	<li>Gi&aacute; iPhone X cũ Đen 99%: 7.650.000 VNĐ</li>\r\n	<li>Gi&aacute; iPhone X cũ Trắng 99%: 7.750.000 VNĐ</li>\r\n</ul>\r\n\r\n<p>Với&nbsp;<strong>gi&aacute; iphone x cũ</strong>&nbsp;như tr&ecirc;n, GALAXYDIDONG trở th&agrave;nh một trong những đon8 vị cung cấp iPhone X cũ c&oacute; mức gi&aacute; tốt nhất thị trường. Nếu c&oacute; nhu cầu mua điện thoại, vui l&ograve;ng li&ecirc;n hệ trực tiếp để được hỗ trợ nhanh ch&oacute;ng nhất để kh&ocirc;ng c&ograve;n phải băn khoăn về&nbsp;<strong>iphone x 64gb gi&aacute; bao nhi&ecirc;u&nbsp;</strong>nữa nh&eacute;!</p>', '<p><strong>iPhone X quốc tế</strong>&nbsp;ra đời đ&atilde; tạo n&ecirc;n một cơn sốt mạnh mẽ với h&agrave;ng loạt cải tiến v&agrave; chức năng mới nổi bật. Tuy nhi&ecirc;n, kh&ocirc;ng phải ai cũng đủ t&agrave;i ch&iacute;nh để sắm một chiếc iPhone mới 100%. Nếu bạn muốn mua&nbsp;<a href=\"https://galaxydidong.vn/category/iphone/iphone-x/\" rel=\"noopener noreferrer\" target=\"_blank\">iPhone X cũ 99%</a>&nbsp;th&igrave; GALAXYDIDONG ch&iacute;nh l&agrave; sự lựa chọn ho&agrave;n hảo d&agrave;nh cho bạn</p>', 'iphone-x-64gb-quoc-te-cu-likenew-99.png', 'iphone-x-64gb-quoc-te-cu-likenew-992.jpg', 1, 7, 4, '2022-02-17 14:03:25', '2022-02-17 14:03:25'),
(6, 'iPhone Xs 256Gb Quốc Tế LikeNew 99%', 'iphone-xs-256gb-quoc-te-likenew-99', 'iPhone Xs 256Gb Quốc Tế LikeNew 99%', 8550000, 'IP03', 0, '<h1 style=\"text-align:center\">iphone xs 256g quốc tế cũ 95%-99%</h1>\r\n\r\n<p style=\"text-align:center\"><a href=\"https://galaxydidong.vn/san-pham/iphone-xs-256g-quoc-te/\" rel=\"noopener noreferrer\" target=\"_blank\">iphone xs 256g</a>&nbsp;quốc tế mới Trước v&agrave; trong ng&agrave;y&nbsp;<a href=\"https://galaxydidong.vn/category/iphone/iphone-xs-xsmax/\" rel=\"noopener noreferrer\" target=\"_blank\">iPhone XS/XS Max</a>&nbsp;ch&iacute;nh thức l&ecirc;n kệ. Những đ&aacute;nh gi&aacute; đầu ti&ecirc;n về bộ đ&ocirc;i n&agrave;y đ&atilde; được c&aacute;c trang tin c&ocirc;ng nghệ quốc tế đăng tải.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"/ckfinder/userfiles/files/Galaxydidong-iphone-x.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iphone xs 256g 99%\" src=\"https://galaxydidong.vn/wp-content/uploads/2014/09/iphone-xs-256g-quoc-te-moi-95-99-300x300.jpg\" style=\"height:300px; width:300px\" /></p>\r\n\r\n<p style=\"text-align:center\">Những lời khen ngợi cho&nbsp;iPhone&nbsp;XS chủ yếu ở camera, khi hầu hết trang tin c&oacute; đ&aacute;nh gi&aacute; sớm đều d&agrave;nh lời khen cho t&iacute;nh năng chụp Smart HDR mới. Ngo&agrave;i ra,&nbsp;iPhone XS&nbsp;Max với vi&ecirc;n pin tới 3174 mAh cũng g&acirc;y ấn tượng trong sử dụng thực tế.</p>\r\n\r\n<p style=\"text-align:center\">Dưới đ&acirc;y l&agrave; một số đ&aacute;nh gi&aacute; c&aacute;c kh&iacute;a cạnh đ&aacute;ng ch&uacute; &yacute; của bộ đ&ocirc;i iPhone XS, XS Max từ c&aacute;c trang tin quốc tế:</p>\r\n\r\n<h2 style=\"text-align:center\">iphone xs 256g quốc tế mới Camera được cải thiện r&otilde; rệt&nbsp;</h2>\r\n\r\n<p style=\"text-align:center\">Theo&nbsp;<em>Cnet</em>, sự kết hợp từ cảm biến tốt hơn v&agrave; bộ xử l&yacute; h&igrave;nh ảnh mới tr&ecirc;n chip A12 Bionic gi&uacute;p&nbsp;Apple&nbsp;đưa ra t&iacute;nh năng &ldquo;Smart HDR&rdquo;. T&iacute;nh năng n&agrave;y cho ảnh tốt hơn khi chụp thiếu s&aacute;ng v&agrave; những t&igrave;nh huống &aacute;nh s&aacute;ng tương phản mạnh. Nhờ đ&oacute; trong thực tế khi chụp ở qu&aacute;n bar, chụp đường phố hay khi nắng gắt đầu tốt hơn.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iphone xs 256g 99%\" src=\"https://galaxydidong.vn/wp-content/uploads/2014/09/iphone-xs-256g-quoc-te-moi-95-99-1-300x300.jpg\" style=\"height:300px; width:300px\" /></p>\r\n\r\n<p style=\"text-align:center\">T&iacute;nh năng chụp HDR cũng g&acirc;y ấn tượng cho ph&oacute;ng vi&ecirc;n của CNBC. Tốc độ chụp HDR nhanh gấp đ&ocirc;i, ngo&agrave;i ra khả năng chỉnh sửa mức độ x&oacute;a ph&ocirc;ng. Sau khi chụp cũng đem lại những bức ảnh mờ ảo, ấn tượng hơn.&nbsp;<em>The Verge</em>&nbsp;nhận định camera của iPhone XS vượt trội so với X. Nhất l&agrave; nhờ t&iacute;nh năng Smart HDR, c&oacute; thể coi l&agrave; &ldquo;chụp ảnh bằng c&aacute;ch t&iacute;nh to&aacute;n&rdquo;. Ngay khi mở camera, m&aacute;y sẽ chụp 4 tấm h&igrave;nh sau đ&oacute; sử dụng c&aacute;c dữ liệu để cải thiện h&igrave;nh ảnh. Tuy vậy, theo trang tin n&agrave;y th&igrave; camera của XS vẫn thua chiếc Google Pixel 2.</p>\r\n\r\n<h3 style=\"text-align:center\">iphone xs 256g quốc tế mới pin &lsquo;tr&acirc;u&rsquo;, nhưng XS chỉ hơn X một ch&uacute;t</h3>\r\n\r\n<p style=\"text-align:center\">Do mới chỉ c&oacute; v&agrave;i ng&agrave;y trải nghiệm, c&aacute;c trang tin chưa thể đưa ra đ&aacute;nh gi&aacute; chi tiết về pin tr&ecirc;n iPhone XS v&agrave; XS Max. Nhưng nh&igrave;n chung c&aacute;c ph&oacute;ng vi&ecirc;n cho rằng XS Max c&oacute; thể đ&aacute;p ứng thời gian d&ugrave;ng tr&ecirc;n 1 ng&agrave;y. C&ograve;n XS chỉ nhỉnh hơn X một ch&uacute;t về pin.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iphone xs 256g 99%\" src=\"https://galaxydidong.vn/wp-content/uploads/2014/09/iphone-xs-256g-quoc-te-moi-95-99-2-300x300.jpg\" style=\"height:300px; width:300px\" /></p>\r\n\r\n<p style=\"text-align:center\">Trong b&agrave;i đ&aacute;nh gi&aacute; của&nbsp;<em>The Verge</em>, Nilay Patel cho rằng pin của XS Max c&ograve;n tốt hơn cả con số Apple đưa ra. Đ&oacute; l&agrave; d&ugrave;ng l&acirc;u hơn X 90 ph&uacute;t. Patel c&oacute; thể sử dụng m&aacute;y li&ecirc;n tục 12 giờ với rất nhiều c&ocirc;ng việc m&agrave; kh&ocirc;ng cần bật chế độ tiết kiệm điện năng. Theo Cnet, XS Max c&oacute; thể d&ugrave;ng được khoảng một ng&agrave;y hoặc hơn một ch&uacute;t. Nhưng với những ng&agrave;y d&ugrave;ng nhiều th&igrave; c&oacute; thể nửa ng&agrave;y l&agrave; cần sạc pin.</p>\r\n\r\n<h4 style=\"text-align:center\">Thiết kế kh&ocirc;ng kh&aacute;c mấy so với iphone xs 256g quốc tế mới</h4>\r\n\r\n<p style=\"text-align:center\">L&agrave; một phi&ecirc;n bản iPhone &ldquo;S&rdquo;, tất nhi&ecirc;n thiết kế của XS v&agrave; XS Max sẽ kh&ocirc;ng c&oacute; nhiều thay đổi so với iPhone X. Về cơ bản, c&aacute;c ph&oacute;ng vi&ecirc;n đều đ&atilde; chấp nhận điều n&agrave;y. Nhưng cũng c&oacute; một số nhận x&eacute;t th&uacute; vị về chiếc XS Max.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iphone xs 256g 99%\" src=\"https://galaxydidong.vn/wp-content/uploads/2014/09/iphone-xs-256g-quoc-te-moi-95-99-3-300x300.jpg\" style=\"height:300px; width:300px\" /></p>\r\n\r\n<p style=\"text-align:center\">B&agrave;i đ&aacute;nh gi&aacute; của&nbsp;<em>iNews</em>&nbsp;cũng thừa nhận&nbsp;iPhone XS Max&nbsp;chỉ d&ugrave;ng được khi cầm hai tay. Nhưng với những người th&iacute;ch điện thoại to th&igrave; đ&acirc;y l&agrave; một điểm chấp nhận được để đổi lại m&agrave;n h&igrave;nh lớn hơn. Mọi thứ hiển thị r&otilde; hơn. Tr&ecirc;n&nbsp;<em>Tech Radar</em>, ph&oacute;ng vi&ecirc;n Gareth Beavis cho rằng thiết kế lưng kh&aacute; phẳng của XS Max khiến m&aacute;y kh&oacute; cầm. Cảm gi&aacute;c d&agrave;y hơn những m&aacute;y c&oacute; m&agrave;n h&igrave;nh lớn kh&aacute;c như Samsung Galaxy Note9. One Plus 6 hay Sony Xperia XZ3.</p>\r\n\r\n<h4 style=\"text-align:center\">M&agrave;n h&igrave;nh lớn tr&ecirc;n iphone xs 256g quốc tế mới để lại ấn tượng</h4>\r\n\r\n<p style=\"text-align:center\">M&agrave;n h&igrave;nh XS Max c&oacute; k&iacute;ch thước 6,5 inch, v&agrave; kh&ocirc;ng gian hiển thị qu&aacute; rộng r&atilde;i để lại ấn tượng tốt.&nbsp;<em>CNBC</em>&nbsp;cho rằng đ&acirc;y l&agrave; một trong những m&agrave;n h&igrave;nh tốt nhất tr&ecirc;n thị trường, ngang tầm với Galaxy Note9.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iphone xs 256g 99%\" src=\"https://galaxydidong.vn/wp-content/uploads/2014/09/iphone-xs-256g-quoc-te-moi-95-99-4-300x300.jpg\" style=\"height:300px; width:300px\" /></p>\r\n\r\n<p style=\"text-align:center\">Face ID kh&ocirc;ng nhanh hơn l&agrave; bao trong khi đ&oacute; The Verge nhận định XS Max kh&ocirc;ng được điều chỉnh về phần mềm để tận dụng m&agrave;n h&igrave;nh lớn. Hay n&oacute;i c&aacute;ch kh&aacute;c số lượng nội dung hiển thị tr&ecirc;n XS v&agrave; XS Max l&agrave; ho&agrave;n to&agrave;n như nhau. Tuy nhi&ecirc;n c&aacute;c h&igrave;nh ảnh tr&ecirc;n XS Max sẽ c&oacute; k&iacute;ch thước lớn hơn. C&ograve;n Mashable cho rằng mọi thứ tr&ocirc;ng đẹp hơn tr&ecirc;n m&agrave;n h&igrave;nh to bự của iPhone XS Max.</p>\r\n\r\n<p style=\"text-align:center\">Mặc d&ugrave; Apple khẳng định Face ID tr&ecirc;n iPhone mới đ&atilde; được cập nhật để cho tốc độ nhanh hơn. C&aacute;c trang tin cho rằng sự thay đổi l&agrave; kh&ocirc;ng đ&aacute;ng kể, c&oacute; thể do Face ID đời đầu cũng đ&atilde; rất tốt.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iphone xs 256g 99%\" src=\"https://galaxydidong.vn/wp-content/uploads/2014/09/iphone-xs-256g-quoc-te-moi-95-99-5-300x300.jpg\" style=\"height:300px; width:300px\" /></p>\r\n\r\n<p style=\"text-align:center\">Trong khi đ&oacute;,&nbsp;<em>Mashable</em>&nbsp;ph&agrave;n n&agrave;n Face ID vẫn kh&ocirc;ng hoạt động được khi cầm m&aacute;y ngang. C&ograve;n TechCrunch kh&ocirc;ng thấy sự thay đổi về tốc độ hay số lần mở kh&oacute;a th&agrave;nh c&ocirc;ng tr&ecirc;n Face ID mới. Nilay Patel của The Verge l&agrave; một người đeo k&iacute;nh, n&ecirc;n anh cảm thấy Face ID vẫn phiền phức. V&igrave; thường xuy&ecirc;n phải nhập pascode nếu mở m&aacute;y sau khi thức dậy. V&igrave; l&uacute;c đ&oacute; anh thường cầm điện thoại qu&aacute; gần với khu&ocirc;n mặt. Những chiếc k&iacute;nh r&acirc;m chặn &aacute;nh s&aacute;ng hồng ngoại cũng khiến cho Face ID kh&ocirc;ng mở được kh&oacute;a.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iphone xs 256g 99%\" src=\"https://galaxydidong.vn/wp-content/uploads/2014/09/iphone-xs-256g-quoc-te-moi-95-99-6-300x300.jpg\" style=\"height:300px; width:300px\" /></p>\r\n\r\n<h4 style=\"text-align:center\">Đ&acirc;y l&agrave; bản n&acirc;ng cấp nhẹ, kh&ocirc;ng đột ph&aacute; của iphone xs 256g quốc tế mới</h4>\r\n\r\n<p style=\"text-align:center\">Những đ&aacute;nh gi&aacute; ban đầu cho thấy camera l&agrave; điểm g&acirc;y ấn tượng mạnh nhất của iPhone XS v&agrave; XS Max. M&agrave;n h&igrave;nh lớn tr&ecirc;n XS Max cũng c&oacute; thể tạo n&ecirc;n một ch&uacute;t kh&aacute;c biệt cho những người th&iacute;ch mọi thứ hiển thị to, r&otilde;.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"iphone xs 256g 99%\" src=\"https://galaxydidong.vn/wp-content/uploads/2014/09/iphone-xs-256g-quoc-te-moi-95-99-7-300x300.jpg\" style=\"height:300px; width:300px\" /></p>\r\n\r\n<p style=\"text-align:center\">Thất vọng lớn nhất qua những b&agrave;i đ&aacute;nh gi&aacute; n&agrave;y l&agrave; sự cải tiến mờ nhạt của Face ID. Face ID thế hệ hai nhanh hơn một ch&uacute;t, nhưng chưa khắc phục được những hạn chế của thế hệ đầu. N&ecirc;n sẽ c&oacute; những t&igrave;nh huống vẫn phải nhập m&atilde; PIN. Tuy nhi&ecirc;n thiết kế của iPhone XS kh&ocirc;ng thay đổi so với iPhone X. Pin. M&agrave;n h&igrave;nh v&agrave; hiệu năng c&oacute; cải tiến một ch&uacute;t, nhưng những cải tiến n&agrave;y kh&aacute; kh&oacute; để nhận biết nếu so với iPhone X.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://galaxydidong.vn/wp-content/uploads/2014/09/a1-1.jpg\" style=\"height:188px; width:350px\" /></p>', '<h1>iphone xs 256g quốc tế cũ 95%-99%</h1>\r\n\r\n<p><a href=\"https://galaxydidong.vn/san-pham/iphone-xs-256g-quoc-te/\" rel=\"noopener noreferrer\" target=\"_blank\">iphone xs 256g</a>&nbsp;quốc tế mới Trước v&agrave; trong ng&agrave;y&nbsp;<a href=\"https://galaxydidong.vn/category/iphone/iphone-xs-xsmax/\" rel=\"noopener noreferrer\" target=\"_blank\">iPhone XS/XS Max</a>&nbsp;ch&iacute;nh thức l&ecirc;n kệ. Những đ&aacute;nh gi&aacute; đầu ti&ecirc;n về bộ đ&ocirc;i n&agrave;y đ&atilde; được c&aacute;c trang tin c&ocirc;ng nghệ quốc tế đăng tải.</p>', 'iphone-xs-256gb-quoc-te-likenew-99-pS.jpg', 'iphone-xs-256gb-quoc-te-likenew-99-fg.jpg', 1, 7, 7, '2022-02-17 14:20:54', '2022-02-17 14:22:59'),
(7, 'san pham test', 'san-pham-test', '123', 50000, '23', 0, '<p>awd</p>', '<p>ăd</p>', 'san-pham-test.jpg', 'no-img.jpg', 1, 3, 2, '2023-06-03 17:40:56', '2023-06-03 17:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `column` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `column`, `slug`, `cat_id`, `created_at`, `updated_at`) VALUES
(1, 'Dáng', 'dang', 3, NULL, NULL),
(2, 'Kiểu', 'kieu', 3, NULL, NULL),
(3, 'Màu sắc', NULL, 7, '2022-02-17 14:07:26', '2022-02-17 14:07:26'),
(4, 'CPU', NULL, 7, '2022-02-17 14:07:42', '2022-02-17 14:07:42'),
(5, 'Camera', NULL, 7, '2022-02-17 14:07:52', '2022-02-17 14:07:52'),
(6, 'Bộ nhớ trong', NULL, 7, '2022-02-17 14:08:01', '2022-02-17 14:08:01'),
(7, 'Màn hình', NULL, 7, '2022-02-17 14:08:14', '2022-02-17 14:08:14'),
(8, 'Hệ điều hành', NULL, 7, '2022-02-17 14:08:23', '2022-02-17 14:08:23'),
(9, 'Ram', NULL, 7, '2022-02-17 14:08:29', '2022-02-17 14:08:29'),
(10, 'Pin', NULL, 7, '2022-02-17 14:08:35', '2022-02-17 14:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(2, 'admin', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15'),
(3, 'super-admin', 'web', '2022-02-17 13:37:15', '2022-02-17 13:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slogan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `logo`, `slogan`, `state`, `created_at`, `updated_at`) VALUES
(1, 'no-img.jpg', 'khau hieu 1', '0', NULL, NULL),
(2, 'virgin7.png', 'khau hieu 2', '1', NULL, '2022-02-17 13:42:20');

-- --------------------------------------------------------

--
-- Table structure for table `trademarks`
--

CREATE TABLE `trademarks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trademarks`
--

INSERT INTO `trademarks` (`id`, `name`, `slug`, `image`, `title`, `created_at`, `updated_at`) VALUES
(1, 'MLB', 'mlb', 'mlb.png', 'MLB', NULL, '2022-02-17 13:56:34'),
(2, 'Gucci', 'gucci', 'gucci.png', 'Gucci', NULL, '2022-02-17 13:56:42'),
(3, 'Lacoste', 'lacoste', 'lacoste.png', 'Lacoste', NULL, '2022-02-17 13:56:54'),
(4, 'Adidas', 'adidas', 'adidas.png', 'Adidas', NULL, '2022-02-17 13:57:00'),
(5, 'Tommy', 'tommy', 'tommy.png', 'Tommy', NULL, '2022-02-17 13:57:07'),
(6, 'Thom Browne', 'thom-browne', 'thom-browne.png', 'Thom Browne', NULL, '2022-02-17 13:57:15'),
(7, 'Apple', 'apple', 'apple.png', 'Apple', '2022-02-17 14:04:16', '2022-02-17 14:04:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `state_review` int(11) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `provider_id`, `name`, `email`, `fb_id`, `email_verified_at`, `password`, `slug`, `address`, `phone`, `image`, `review`, `state_review`, `datetime`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Chu Văn Huy', 'vanhuyutehy@gmail.com', NULL, NULL, '$2y$10$1aaAYDKTyfZcAyJ6hE31veBMkzXHA.vfBa8qLrAc96jumKq1qVqCW', 'chu-van-huy', 'văn giang, hưng yên', '0374970903', 'no-img.jpg', 'Sản phẩm raasrt ok', 1, '2021-04-20 00:00:00', NULL, NULL, NULL),
(2, NULL, 'Chu Văn Tuan', 'vantuan@gmail.com', NULL, NULL, '$2y$10$XpBfhyMuUWB8AamyLBw5ielTsJvZ/K5Z8VFwcZOLWojNBbkvWVciG', 'chu-van-tuan', 'văn giang, hưng yên', '0374970905', 'no-img.jpg', 'Sản phẩm raasrt ok', 1, '2021-04-20 00:00:00', NULL, NULL, NULL),
(3, NULL, 'Chu Văn Huynh', 'vanhuyunh@gmail.com', NULL, NULL, '$2y$10$fW11DIKiMAPPE0eLUJmOHelTOjDxR3yC4gyI9PrZFMY1jR.ZYHlf6', 'chu-van-huynh', 'văn giang, hưng yên', '0374970904', 'no-img.jpg', 'Sản phẩm raasrt ok', 1, '2021-04-20 00:00:00', NULL, NULL, NULL),
(4, NULL, 'huycv', 'huycv.test@gmail.com', NULL, NULL, '$2y$10$pv4FIxju95HVXzSeP3sK4uoLRCBcDmDnZJs6uViN5GPRud.FEf72e', 'huycv', NULL, '0374997898', NULL, NULL, NULL, NULL, NULL, '2023-06-03 17:20:45', '2023-06-03 17:20:45');

-- --------------------------------------------------------

--
-- Table structure for table `valuecolumn`
--

CREATE TABLE `valuecolumn` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `properties_id` int(10) UNSIGNED NOT NULL,
  `prd_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `valuecolumn`
--

INSERT INTO `valuecolumn` (`id`, `value`, `properties_id`, `prd_id`, `created_at`, `updated_at`) VALUES
(1, 'ahihi', 1, 1, NULL, NULL),
(2, 'Vàng', 3, 6, '2022-02-17 14:20:54', '2022-02-17 14:20:54'),
(3, 'Apple A12', 4, 6, '2022-02-17 14:20:54', '2022-02-17 14:20:54'),
(4, 'Cam đôi 12 MP, f/1.8, f/2.4, OIS, 2 ống kính quang học 4 đèn flash LED', 5, 6, '2022-02-17 14:20:54', '2022-02-17 14:20:54'),
(5, '256 GB', 6, 6, '2022-02-17 14:20:54', '2022-02-17 14:20:54'),
(6, 'Super Retina OLED', 7, 6, '2022-02-17 14:20:54', '2022-02-17 14:20:54'),
(7, 'iOS 12', 8, 6, '2022-02-17 14:20:54', '2022-02-17 14:20:54'),
(8, '8GB', 9, 6, '2022-02-17 14:20:54', '2022-02-17 14:20:54'),
(9, 'Li-Ion 2658 mAh', 10, 6, '2022-02-17 14:20:54', '2022-02-17 14:20:54'),
(10, 'awd', 1, 7, '2023-06-03 17:40:56', '2023-06-03 17:40:56'),
(11, 'ăd', 2, 7, '2023-06-03 17:40:56', '2023-06-03 17:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `values`
--

CREATE TABLE `values` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `values`
--

INSERT INTO `values` (`id`, `value`, `slug`, `attr_id`, `created_at`, `updated_at`) VALUES
(1, 'XL', 'xl', 1, NULL, NULL),
(2, 'Vàng', 'vang', 2, NULL, NULL),
(3, 'S', 's', 1, NULL, NULL),
(4, 'do', 'do', 4, '2023-06-03 17:46:06', '2023-06-03 17:46:06');

-- --------------------------------------------------------

--
-- Table structure for table `value_product`
--

CREATE TABLE `value_product` (
  `value_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `value_product`
--

INSERT INTO `value_product` (`value_id`, `product_id`) VALUES
(4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` decimal(18,0) NOT NULL DEFAULT '0',
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`id`, `price`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 500000, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variant_value`
--

CREATE TABLE `variant_value` (
  `variant_id` int(10) UNSIGNED NOT NULL,
  `values_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variant_value`
--

INSERT INTO `variant_value` (`variant_id`, `values_id`, `created_at`, `updated_at`) VALUES
(2, 4, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_user`
--
ALTER TABLE `admin_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_user_email_unique` (`email`);

--
-- Indexes for table `attr`
--
ALTER TABLE `attr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attr_order_id_foreign` (`order_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributes_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_title_unique` (`title`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`),
  ADD KEY `blogs_user_admin_id_foreign` (`user_admin_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `comment_blog`
--
ALTER TABLE `comment_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_blog_user_id_foreign` (`user_id`),
  ADD KEY `comment_blog_use_admin_id_foreign` (`use_admin_id`),
  ADD KEY `comment_blog_blog_id_foreign` (`blog_id`);

--
-- Indexes for table `comment_product`
--
ALTER TABLE `comment_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_product_use_id_foreign` (`use_id`),
  ADD KEY `comment_product_use_admin_id_foreign` (`use_admin_id`),
  ADD KEY `comment_product_prd_id_foreign` (`prd_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `favorites_prd_id_foreign` (`prd_id`),
  ADD KEY `favorites_users_id_foreign` (`users_id`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_detail`
--
ALTER TABLE `footer_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `footer_detail_footer_id_foreign` (`footer_id`);

--
-- Indexes for table `image_policy`
--
ALTER TABLE `image_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_product`
--
ALTER TABLE `image_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_product_prd_id_foreign` (`prd_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_code_unique` (`product_code`),
  ADD KEY `products_cat_id_foreign` (`cat_id`),
  ADD KEY `products_trademark_id_foreign` (`trademark_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `properties_column_unique` (`column`),
  ADD UNIQUE KEY `properties_slug_unique` (`slug`),
  ADD KEY `properties_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trademarks`
--
ALTER TABLE `trademarks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trademarks_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_fb_id_unique` (`fb_id`);

--
-- Indexes for table `valuecolumn`
--
ALTER TABLE `valuecolumn`
  ADD PRIMARY KEY (`id`),
  ADD KEY `valuecolumn_properties_id_foreign` (`properties_id`),
  ADD KEY `valuecolumn_prd_id_foreign` (`prd_id`);

--
-- Indexes for table `values`
--
ALTER TABLE `values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `values_attr_id_foreign` (`attr_id`);

--
-- Indexes for table `value_product`
--
ALTER TABLE `value_product`
  ADD KEY `value_product_value_id_foreign` (`value_id`),
  ADD KEY `value_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variants_product_id_foreign` (`product_id`);

--
-- Indexes for table `variant_value`
--
ALTER TABLE `variant_value`
  ADD KEY `variant_value_variant_id_foreign` (`variant_id`),
  ADD KEY `variant_value_values_id_foreign` (`values_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_user`
--
ALTER TABLE `admin_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attr`
--
ALTER TABLE `attr`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comment_blog`
--
ALTER TABLE `comment_blog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comment_product`
--
ALTER TABLE `comment_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `footer_detail`
--
ALTER TABLE `footer_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `image_policy`
--
ALTER TABLE `image_policy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `image_product`
--
ALTER TABLE `image_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trademarks`
--
ALTER TABLE `trademarks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `valuecolumn`
--
ALTER TABLE `valuecolumn`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `values`
--
ALTER TABLE `values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `variants`
--
ALTER TABLE `variants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attr`
--
ALTER TABLE `attr`
  ADD CONSTRAINT `attr_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_user_admin_id_foreign` FOREIGN KEY (`user_admin_id`) REFERENCES `admin_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment_blog`
--
ALTER TABLE `comment_blog`
  ADD CONSTRAINT `comment_blog_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_blog_use_admin_id_foreign` FOREIGN KEY (`use_admin_id`) REFERENCES `admin_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_blog_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment_product`
--
ALTER TABLE `comment_product`
  ADD CONSTRAINT `comment_product_prd_id_foreign` FOREIGN KEY (`prd_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_product_use_admin_id_foreign` FOREIGN KEY (`use_admin_id`) REFERENCES `admin_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comment_product_use_id_foreign` FOREIGN KEY (`use_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_prd_id_foreign` FOREIGN KEY (`prd_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `footer_detail`
--
ALTER TABLE `footer_detail`
  ADD CONSTRAINT `footer_detail_footer_id_foreign` FOREIGN KEY (`footer_id`) REFERENCES `footers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `image_product`
--
ALTER TABLE `image_product`
  ADD CONSTRAINT `image_product_prd_id_foreign` FOREIGN KEY (`prd_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_trademark_id_foreign` FOREIGN KEY (`trademark_id`) REFERENCES `trademarks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `valuecolumn`
--
ALTER TABLE `valuecolumn`
  ADD CONSTRAINT `valuecolumn_prd_id_foreign` FOREIGN KEY (`prd_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `valuecolumn_properties_id_foreign` FOREIGN KEY (`properties_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `values`
--
ALTER TABLE `values`
  ADD CONSTRAINT `values_attr_id_foreign` FOREIGN KEY (`attr_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `value_product`
--
ALTER TABLE `value_product`
  ADD CONSTRAINT `value_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `value_product_value_id_foreign` FOREIGN KEY (`value_id`) REFERENCES `values` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `variants`
--
ALTER TABLE `variants`
  ADD CONSTRAINT `variants_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `variant_value`
--
ALTER TABLE `variant_value`
  ADD CONSTRAINT `variant_value_values_id_foreign` FOREIGN KEY (`values_id`) REFERENCES `values` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `variant_value_variant_id_foreign` FOREIGN KEY (`variant_id`) REFERENCES `variants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
