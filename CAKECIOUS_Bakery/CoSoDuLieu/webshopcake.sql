-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 28, 2023 lúc 02:16 PM
-- Phiên bản máy phục vụ: 10.4.19-MariaDB
-- Phiên bản PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webshopcake`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `image`, `summary`, `description`, `type`, `position`, `status`, `url`, `is_active`, `user_id`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(16, 'HAPPY WOMEN’S DAY 20.10 DÀNH TẶNG CHO NGƯỜI PHỤ NỮ TÔI YÊU', 'happy-womens-day-2010-danh-tang-cho-nguoi-phu-nu-toi-yeu', 'uploads/article/1701175699_logo-shop-hoa.jpeg', '<p>Happy Women&rsquo;s Day 20.10</p>\r\n\r\n<p>D&agrave;nh Tặng Cho Người Phụ Nữ T&ocirc;i Y&ecirc;u</p>\r\n\r\n<p>----------</p>\r\n\r\n<p><img alt=\"🌹\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tca/1.5/16/1f339.png\" style=\"height:16px; width:16px\" />&nbsp;Vẻ đẹp của người phụ nữ được so s&aacute;nh như những đo&aacute; hoa tươi v&agrave; ngọt ng&agrave;o như chiếc b&aacute;nh kem.</p>\r\n\r\n<p><img alt=\"👉\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/taa/1.5/16/1f449.png\" style=\"height:16px; width:16px\" />H&atilde;y C&ugrave;ng&nbsp;<a href=\"https://www.facebook.com/hashtag/anh_h%C3%B2a_bakery?__eep__=6&amp;__cft__[0]=AZVBEovH6Bl8QTWWma72DuFsFEVId1stYgyEEickeINg6faZpPwKY0og3q-G_vh6cY_0NPpdb22ChGoG63mc-5Zn-rxjGZW_Hj_zD8ZPV9jwI7fk8rHVtlfnQJFzs2nJLgg&amp;__tn__=*NK-R\">#Anh_H&ograve;a_Bakery</a>&nbsp;thay lời muốn n&oacute;i tới một nửa thế giới của bạn</p>', '<p><img alt=\"🌹\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tca/1.5/16/1f339.png\" style=\"height:16px; width:16px\" />&nbsp;Vẻ đẹp của người phụ nữ được so s&aacute;nh như những đo&aacute; hoa tươi v&agrave; ngọt ng&agrave;o như chiếc b&aacute;nh kem.</p>\r\n\r\n<p><img alt=\"👉\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/taa/1.5/16/1f449.png\" style=\"height:16px; width:16px\" />H&atilde;y C&ugrave;ng&nbsp;<a href=\"https://www.facebook.com/hashtag/anh_h%C3%B2a_bakery?__eep__=6&amp;__cft__[0]=AZVBEovH6Bl8QTWWma72DuFsFEVId1stYgyEEickeINg6faZpPwKY0og3q-G_vh6cY_0NPpdb22ChGoG63mc-5Zn-rxjGZW_Hj_zD8ZPV9jwI7fk8rHVtlfnQJFzs2nJLgg&amp;__tn__=*NK-R\">#Anh_H&ograve;a_Bakery</a>&nbsp;thay lời muốn n&oacute;i tới một nửa thế giới của bạn</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000313040/file/334531303_930856304609417_2364431097478708128_n_bd04a6f0d4e343cc97abb9cc5f2ffd2d_grande.jpeg\" /></p>\r\n\r\n<p>----------</p>\r\n\r\n<p><img alt=\"‼️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tfe/1.5/16/203c.png\" style=\"height:16px; width:16px\" />&nbsp;Băn khoăn n&ecirc;n tặng g&igrave; cho b&agrave;, cho mẹ, cho người thương nh&acirc;n ng&agrave;y 20-10.</p>\r\n\r\n<p><img alt=\"‼️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tfe/1.5/16/203c.png\" style=\"height:16px; width:16px\" />&nbsp;Đắn đo khi chưa biết chuẩn bị g&igrave; trong bữa tiệc d&agrave;nh cho c&aacute;c chị em trong c&ocirc;ng ty.</p>\r\n\r\n<p><img alt=\"‼️\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tfe/1.5/16/203c.png\" style=\"height:16px; width:16px\" />&nbsp;M&oacute;n qu&agrave; n&agrave;o vừa đẹp, độc đ&aacute;o v&agrave; &yacute; nghĩa lại tiết kiệm chi ph&iacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000313040/file/334173190_217477144101718_6599509321623378465_n_bbfe65097d4843f6b893e48b169b469d_grande.jpeg\" /></p>\r\n\r\n<p><img alt=\"💯\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t4a/1.5/16/1f4af.png\" style=\"height:16px; width:16px\" />&nbsp;Hiểu được vấn đề đ&oacute; - Anh H&ograve;a Bakery cho ra mắt Bộ Sưu Tập B&aacute;nh Kem 20/10 với mong muốn gi&uacute;p bạn b&agrave;y tỏ lời cảm ơn, sự y&ecirc;u thương qua những chiếc b&aacute;nh kem ngọt ng&agrave;o.</p>\r\n\r\n<p>------------</p>\r\n\r\n<p>𝑵𝒉𝒂̂𝒏 𝒏𝒈𝒂̀𝒚&nbsp;<a href=\"https://www.facebook.com/hashtag/ph%E1%BB%A5_n%E1%BB%AFa_vi%E1%BB%87t?__eep__=6&amp;__cft__[0]=AZVBEovH6Bl8QTWWma72DuFsFEVId1stYgyEEickeINg6faZpPwKY0og3q-G_vh6cY_0NPpdb22ChGoG63mc-5Zn-rxjGZW_Hj_zD8ZPV9jwI7fk8rHVtlfnQJFzs2nJLgg&amp;__tn__=*NK-R\">#Phụ_nữa_Việt</a>&nbsp;Nam</p>\r\n\r\n<p>𝑨𝒏𝒉 𝑯𝒐̀𝒂 𝑩𝒂𝒌𝒆𝒓𝒚 𝒌𝒊́𝒏𝒉 𝒄𝒉𝒖́𝒄 𝒄𝒉𝒊̣, 𝒆𝒎 𝒑𝒉𝒖̣ 𝒏𝒖̛̃ 𝒍𝒖𝒐̂𝒏 𝒕𝒉𝒂̀𝒏𝒉 𝒄𝒐̂𝒏𝒈 𝒕𝒓𝒐𝒏𝒈 𝒄𝒐̂𝒏𝒈 𝒗𝒊𝒆̣̂𝒄, 𝒉𝒂̣𝒏𝒉 𝒑𝒉𝒖́𝒄 𝒕𝒓𝒐𝒏𝒈 𝒕𝒊̀𝒏𝒉 𝒚𝒆̂𝒖 𝒗𝒂̀ 𝒕𝒓𝒐̣𝒏 𝒗𝒆̣𝒏 𝒕𝒓𝒐𝒏𝒈 𝒄𝒖𝒐̣̂𝒄 𝒔𝒐̂́𝒏𝒈.</p>\r\n\r\n<p>Con</p>', 2, 0, NULL, NULL, 1, NULL, NULL, NULL, '2023-11-28 05:48:19', '2023-11-28 05:48:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` int(10) UNSIGNED DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `image`, `url`, `target`, `description`, `type`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(21, 'Banner2', 'banner2', 'uploads/category/1701079994_ms_banner_img3.webp', NULL, 1, NULL, 1, 0, 1, '2022-10-23 09:02:11', '2023-11-27 03:13:14'),
(25, 'banner', 'banner', 'uploads/category/1701080002_ms_banner_img4.webp', NULL, 1, NULL, 1, 0, 1, '2023-05-07 21:26:21', '2023-11-27 03:13:22'),
(26, 'dsadasdsa', 'dsadasdsa', 'uploads/category/1701175880_banner-1.jpg', NULL, 1, '<p>dsadasđ</p>', 1, 0, 1, '2023-11-28 05:51:20', '2023-11-28 05:51:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `website`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(5, 'bánh ngon vn', 'banh-ngon-vn', 'uploads/category/1676795804_tải xuống (4).png', NULL, 0, 1, '2022-05-22 01:52:32', '2023-11-27 03:14:17'),
(7, 'bánh mặn hà nội', 'banh-man-ha-noi', 'uploads/category/1676795819_tải xuống (4).png', NULL, 0, 1, '2022-05-22 01:53:27', '2023-11-27 03:14:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `parent_id`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(88, 'BÁNH NGỌT', 'banh-ngot', NULL, 0, 1, 1, '2023-11-27 03:11:55', '2023-11-27 03:11:55'),
(89, 'BÁNH MẶN', 'banh-man', NULL, 0, 1, 1, '2023-11-27 03:12:11', '2023-11-27 03:12:11'),
(90, 'MINICAKE', 'minicake', NULL, 0, 1, 1, '2023-11-27 03:12:32', '2023-11-27 03:12:32'),
(91, 'banh sinh nhat', 'banh-sinh-nhat', NULL, 88, 0, 1, '2023-11-27 03:26:45', '2023-11-27 03:26:45'),
(92, 'bánh mặn hà nội', 'banh-man-ha-noi', NULL, 89, 1, 1, '2023-11-28 05:42:37', '2023-11-28 05:42:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `percent` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent`, `created_at`, `updated_at`) VALUES
(1, 'SHOP-KM1', 1, 50000, NULL, '2020-05-19 16:50:32', '2020-05-19 16:50:32'),
(2, 'SHOP-K2', 2, NULL, 50, '2020-05-19 16:52:27', '2020-05-19 16:52:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2020_01_07_122649_create_categories_table', 1),
(10, '2020_01_09_113851_create_products_table', 1),
(11, '2020_02_06_031728_create_banners_table', 2),
(12, '2020_02_06_032831_create_banners_table', 3),
(13, '2020_02_06_125433_create_vendors_table', 4),
(14, '2020_02_06_125734_create_brands_table', 5),
(15, '2020_03_04_083632_create_products_table', 6),
(17, '2020_03_05_122445_create_contacts_table', 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `total` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT 0,
  `order_status_id` int(11) DEFAULT 0,
  `payment_id` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `fullname`, `email`, `address`, `address2`, `phone`, `discount`, `note`, `coupon`, `total`, `user_id`, `order_status_id`, `payment_id`, `created_at`, `updated_at`) VALUES
(30, 'DH-27112023-1701080858', 'nguyen van khanh', 'kkh@gmail.com', 'okokkokok', NULL, '0987787778', 0, 'kjhbjkhgjkhjk', NULL, 400000, 0, 3, 0, '2023-11-27 03:27:38', '2023-11-27 03:27:57'),
(31, 'DH-28112023-1701175782', 'khanh', 'khanh@gmail.com', 'ba dinh ha noi', NULL, '0987787778', 0, 'giao nhanh giup em', NULL, 380000, 0, 3, 0, '2023-11-28 05:49:42', '2023-11-28 05:50:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `name`, `image`, `sku`, `user_id`, `order_id`, `product_id`, `price`, `qty`) VALUES
(25, 'bành ngon', 'uploads/product/1701080783_banhngot.jpg', 'BSN09', 3, 30, 43, 400000, 1),
(26, 'Bánh cookiess', 'uploads/product/1701175541_banhngot.jpg', 'BANHNGOT', 3, 31, 44, 380000, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Mới'),
(2, 'Đang Xử Lý'),
(3, 'Hoàn Thành'),
(4, 'Hủy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `sale` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_hot` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) NOT NULL DEFAULT 0,
  `vendor_id` int(11) NOT NULL DEFAULT 0,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `image`, `stock`, `price`, `sale`, `position`, `is_active`, `is_hot`, `views`, `category_id`, `url`, `sku`, `color`, `memory`, `brand_id`, `vendor_id`, `summary`, `description`, `meta_title`, `meta_description`, `user_id`, `created_at`, `updated_at`) VALUES
(42, 'CAPUCCINO', 'capuccino', 'uploads/product/1701080387_banhngot.jpg', 22, 360000, 300000, 1, 1, 0, 0, 88, NULL, 'BSN08', NULL, NULL, 5, 15, '<p>Th&agrave;nh phần ch&iacute;nh:</p>\r\n\r\n<p>- Gato</p>\r\n\r\n<p>- Kem phomai vị coffee</p>\r\n\r\n<p>- Cacao.</p>\r\n\r\n<p>B&aacute;nh l&agrave;m từ 3 lớp gato TRẮNG xen giữa 3 lớp kem TƯƠI PHOMAI, VỊ COFFEE. B&ecirc;n ngo&agrave;i phủ 1 lớp bột cacao V&Agrave; DECOR HOA QUẢ.&nbsp;</p>', '<p>Th&agrave;nh phần ch&iacute;nh:</p>\r\n\r\n<p>- Gato</p>\r\n\r\n<p>- Kem phomai vị coffee</p>\r\n\r\n<p>- Cacao.</p>\r\n\r\n<p>B&aacute;nh l&agrave;m từ 3 lớp gato TRẮNG xen giữa 3 lớp kem TƯƠI PHOMAI, VỊ COFFEE. B&ecirc;n ngo&agrave;i phủ 1 lớp bột cacao V&Agrave; DECOR HOA QUẢ.&nbsp;</p>', NULL, NULL, 3, '2023-11-27 03:19:47', '2023-11-27 03:19:47'),
(43, 'bành ngon', 'banh-ngon', 'uploads/product/1701080783_banhngot.jpg', 8, 500000, 400000, 0, 1, 0, 0, 90, NULL, 'BSN09', NULL, NULL, 7, 15, '<h2>Mẫu b&aacute;nh kem 20/11 mừng ng&agrave;y Nh&agrave; gi&aacute;o Việt Nam&nbsp;</h2>\r\n\r\n<p>Sau đ&acirc;y l&agrave; những mẫu b&aacute;nh kem&nbsp;<a href=\"https://meta.vn/huong-dan/tong-hop/lich-su-y-nghia-ngay-nha-giao-viet-nam-20-11-12574\">ng&agrave;y Nh&agrave; gi&aacute;o Việt Nam</a>&nbsp;đẹp nhất tại Anh H&ograve;a Bakery. Mời c&aacute;c bạn c&ugrave;ng tham khảo nh&eacute;!</p>', '<p>Sau đ&acirc;y l&agrave; những mẫu b&aacute;nh kem&nbsp;<a href=\"https://meta.vn/huong-dan/tong-hop/lich-su-y-nghia-ngay-nha-giao-viet-nam-20-11-12574\">ng&agrave;y Nh&agrave; gi&aacute;o Việt Nam</a>&nbsp;đẹp nhất tại Anh H&ograve;a Bakery. Mời c&aacute;c bạn c&ugrave;ng tham khảo nh&eacute;!</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000313040/file/frame_1_9e466b1fb37549729d64ec5cfec4fe9e_grande.png\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000313040/file/frame_2_503df8201be44bcdb08dfd1d3e6f0bd6_grande.png\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000313040/file/frame_4_aea548f92d944e74b5db77de57428c86_grande.png\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000313040/file/frame_5_a6caf24b2090489ca38dd501c119667b_grande.png\" /></p>', NULL, NULL, 3, '2023-11-27 03:26:23', '2023-11-27 03:26:23'),
(44, 'Bánh cookiess', 'banh-cookiess', 'uploads/product/1701175541_banhngot.jpg', 23, 2000000, 190000, 0, 1, 0, 0, 88, NULL, 'BANHNGOT', NULL, NULL, 5, 15, '<p>- Gato,<br />\r\n- Kem tươi mặn vị coffee.<br />\r\nB&aacute;nh l&agrave;m từ 3 lớp gato trắng kết hợp với 3 lớp kem mặn vị coffee. B&aacute;nh phủ b&ecirc;n ngo&agrave;i bởi 1 lớp kem tươi trắng rắc bột cacao.</p>', '<p>Halloween (viết tắt của All Hallows&rsquo; Evening) l&agrave; một lễ hội truyền thống của Kit&ocirc; gi&aacute;o được tổ chức v&agrave;o ng&agrave;y 31/10 h&agrave;ng năm. N&oacute; như một ng&agrave;y hội h&oacute;a trang cho mọi người c&ugrave;ng tập trung vui chơi v&agrave; qu&acirc;y quần b&ecirc;n gia đ&igrave;nh cũng như bạn b&egrave;. Biểu tượng của ng&agrave;y n&agrave;y thường l&agrave; những thứ ma mị như con dơi, quả b&iacute; ng&ocirc; hay l&agrave; những tạo h&igrave;nh th&agrave;nh những h&igrave;nh ảnh đ&aacute;ng sợ v&agrave; độc đ&aacute;o. Dưới đ&acirc;y l&agrave; những mẫu b&aacute;nh kem d&agrave;nh ri&ecirc;ng cho ng&agrave;y Halloween để bạn thưởng thức c&ugrave;ng gia đ&igrave;nh v&agrave; bạn b&egrave;.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000313040/file/313407641_491878912983561_6517115997735063536_n_83ede260317b4ce38a254eb29ca053d0_grande.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000313040/file/313405514_491878899650229_8604525869747274154_n_b78be46b1e424db79fc2c96cc7856662_grande.jpg\" /></p>', NULL, NULL, 3, '2023-11-28 05:45:41', '2023-11-28 05:45:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduce` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `company`, `address`, `address2`, `image`, `phone`, `hotline`, `tax`, `facebook`, `email`, `introduce`, `created_at`, `updated_at`) VALUES
(1, 'Công Ty TNHH Hoàng Vinh .co,ltd', 'Q.Đống Đa , Hà Nội', 'Q.Long Biên, Hà Nội', 'uploads/setting/1590462650_logo.png', '0986346008', '18001166', '000010', 'http://127.0.0.1:8000/admin/setting', 'admin@gmail.com', NULL, NULL, '2023-11-28 05:52:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statistical`
--

CREATE TABLE `statistical` (
  `id` int(11) NOT NULL,
  `total_quantity` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL,
  `period` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `statistical`
--

INSERT INTO `statistical` (`id`, `total_quantity`, `total_price`, `period`, `id_user`, `id_status`) VALUES
(7, '3', '300000', '2022-05-22', 22, 3),
(8, '2', '1800000', '2022-05-23', 23, 3),
(9, '2', '200000', '2022-05-25', 24, 3),
(10, '1', '490000', '2022-06-16', 25, 3),
(11, '2', '3300000', '2022-10-31', 26, 3),
(12, '1', '99000', '2023-02-19', 27, 3),
(13, '2', '9800000', '2023-02-19', 28, 3),
(14, '2', '9800000', '2023-05-08', 29, 3),
(15, '1', '400000', '2023-11-27', 30, 3),
(16, '2', '380000', '2023-11-28', 31, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `avatar`, `is_active`) VALUES
(3, 'admin', 'admin@gmail.com', '$2y$10$JfSC.7frlg8LAs0z0jHQtuTBzWBbng279TUBPVdRi2NG0QnIUHPvC', 'UcRZO3BInCtnYHhkcO9fqE635aDZ5a7pE1oktW5iQRbZw1iTE246hL3QjED8', '2020-05-19 12:32:27', '2022-03-26 09:54:21', 1, 'uploads/user/1648313661_182597995_826255438098115_1810324205042373372_n.jpg', 1),
(4, 'Nguyen Van A', 'a@gmail.com', '$2y$10$DhRbNTwN2Y8V1/G9tB5K4OphXhy9AirGhc8nBq6Li9C7cDxe/mDDW', NULL, '2022-05-22 02:24:25', '2022-05-22 02:24:25', 2, 'uploads/user/1653211465_girl-xinh-1-480x600.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `slug`, `email`, `phone`, `image`, `website`, `address`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(15, 'cake', 'cake', 'cake@gmail.com', '0876545654', 'uploads/category/1653209774_logo_trangvangs.png', 'https://www.yellowpages.vn/', 'Viet Nam', 0, 1, '2022-05-22 01:56:14', '2023-11-27 03:14:49');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `banners_slug_unique` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `brands_slug_unique` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `categories_slug_unique` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `products_slug_index` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `statistical`
--
ALTER TABLE `statistical`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Chỉ mục cho bảng `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `vendors_slug_unique` (`slug`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `statistical`
--
ALTER TABLE `statistical`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
