-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ecom
DROP DATABASE IF EXISTS `ecom`;
CREATE DATABASE IF NOT EXISTS `ecom` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ecom`;

-- Dumping structure for table ecom.brands
DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `brandName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brandImg` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecom.brands: ~8 rows (approximately)
INSERT INTO `brands` (`id`, `brandName`, `brandImg`, `created_at`, `updated_at`) VALUES
	(1, 'DELL', 'http://localhost:8000/assets/images/cart_thamb1.jpg', '2023-08-15 12:00:16', '2024-11-29 04:13:42'),
	(2, 'Xiaomi ', 'http://localhost:8000/assets/images/cart_thamb1.jpg', '2023-08-15 12:00:16', '2024-11-29 04:13:44'),
	(3, 'HUAWEI', 'http://localhost:8000/assets/images/cart_thamb1.jpg', '2023-08-15 12:00:16', '2024-11-29 04:13:45'),
	(4, 'Vivo', 'http://localhost:8000/assets/images/cart_thamb1.jpg', '2023-08-15 12:00:16', '2024-11-29 04:13:46'),
	(5, 'HP', 'http://localhost:8000/assets/images/cart_thamb1.jpg', '2023-08-15 12:00:16', '2024-11-29 04:13:46'),
	(6, 'DELL', 'http://localhost:8000/assets/images/cart_thamb1.jpg', '2023-08-15 12:00:16', '2024-11-29 04:13:47'),
	(7, 'Xiaomi ', 'http://localhost:8000/assets/images/cart_thamb1.jpg', '2023-08-15 12:00:16', '2024-11-29 04:13:49'),
	(8, 'HUAWE', 'http://localhost:8000/assets/images/cart_thamb1.jpg', '2023-08-15 12:00:16', '2024-11-29 04:13:50');

-- Dumping structure for table ecom.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryImg` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecom.categories: ~12 rows (approximately)
INSERT INTO `categories` (`id`, `categoryName`, `categoryImg`, `created_at`, `updated_at`) VALUES
	(1, 'Television', 'http://localhost:8000/assets/images/cat_img1.png', '2023-08-15 11:59:11', '2024-11-29 04:07:27'),
	(2, 'Mobile', 'http://localhost:8000/assets/images/cat_img2.png', '2023-08-15 11:59:11', '2024-11-29 04:07:27'),
	(3, 'Headphone', 'http://localhost:8000/assets/images/cat_img3.png', '2023-08-15 11:59:11', '2024-11-29 04:07:27'),
	(4, 'Watch', 'http://localhost:8000/assets/images/cat_img4.png', '2023-08-15 11:59:11', '2024-11-29 04:07:27'),
	(5, 'Game', 'http://localhost:8000/assets/images/cat_img5.png', '2023-08-15 11:59:11', '2024-11-29 04:07:27'),
	(6, 'Camera', 'http://localhost:8000/assets/images/cat_img6.png', '2023-08-15 11:59:11', '2024-11-29 04:07:27'),
	(7, 'Audio', 'http://localhost:8000/assets/images/cat_img7.png', '2023-08-15 11:59:11', '2024-11-29 04:07:27'),
	(11, 'Television', 'http://localhost:8000/assets/images/cat_img1.png', '2023-08-15 11:59:11', '2024-11-29 04:07:27'),
	(12, 'Mobile', 'http://localhost:8000/assets/images/cat_img2.png', '2023-08-15 11:59:11', '2024-11-29 04:07:27'),
	(18, 'Watch', 'http://localhost:8000/assets/images/cat_img4.png', '2023-08-15 11:59:11', '2024-11-29 04:07:27'),
	(19, 'Game', 'http://localhost:8000/assets/images/cat_img5.png', '2023-08-15 11:59:11', '2024-11-29 04:07:27'),
	(20, 'Camera', 'http://localhost:8000/assets/images/cat_img6.png', '2023-08-15 11:59:11', '2024-11-29 04:07:27');

-- Dumping structure for table ecom.customer_profiles
DROP TABLE IF EXISTS `customer_profiles`;
CREATE TABLE IF NOT EXISTS `customer_profiles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cus_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_add` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_state` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_postcode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_fax` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_add` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_postcode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customer_profiles_user_id_unique` (`user_id`),
  CONSTRAINT `customer_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecom.customer_profiles: ~1 rows (approximately)
INSERT INTO `customer_profiles` (`id`, `cus_name`, `cus_add`, `cus_city`, `cus_state`, `cus_postcode`, `cus_country`, `cus_phone`, `cus_fax`, `ship_name`, `ship_add`, `ship_city`, `ship_state`, `ship_postcode`, `ship_country`, `ship_phone`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'Rabbil Hasan', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'Dhaka', 'Dhaka', '1207', 'Bangladesh', '01785388919', '01785388919', 'Rabbil Hasan', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'Dhaka', 'Dhaka', '1207', 'Bangladesh', '01785388919', 1, '2023-08-25 21:34:14', '2023-10-14 04:20:18');

-- Dumping structure for table ecom.invoices
DROP TABLE IF EXISTS `invoices`;
CREATE TABLE IF NOT EXISTS `invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `total` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payable` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_details` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_details` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tran_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `val_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `delivery_status` enum('Pending','Processing','Completed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `invoices_user_id_foreign` (`user_id`),
  CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecom.invoices: ~28 rows (approximately)
INSERT INTO `invoices` (`id`, `total`, `vat`, `payable`, `cus_details`, `ship_details`, `tran_id`, `val_id`, `delivery_status`, `payment_status`, `user_id`, `created_at`, `updated_at`) VALUES
	(2, '564000', '16920', '580920', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '6511c5da463fa', '0', 'Pending', 'Pending', 1, '2023-09-25 11:39:38', '2023-09-25 11:39:38'),
	(3, '564000', '16920', '580920', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '6511c60edfbdd', '0', 'Pending', 'Pending', 1, '2023-09-25 11:40:30', '2023-09-25 11:40:30'),
	(4, '470000', '14100', '484100', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '6525fe18675e2', '0', 'Pending', 'Pending', 2, '2023-10-10 19:44:56', '2023-10-10 19:44:56'),
	(8, '470000', '14100', '484100', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '652610bfa8041', '0', 'Pending', 'Pending', 2, '2023-10-10 21:04:31', '2023-10-10 21:04:31'),
	(11, '470000', '14100', '484100', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '65261272a5a7c', '0', 'Pending', 'Pending', 2, '2023-10-10 21:11:46', '2023-10-10 21:11:46'),
	(12, '1410000', '42300', '1452300', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '652612f75e4c7', '0', 'Pending', 'Pending', 1, '2023-10-10 21:13:59', '2023-10-10 21:13:59'),
	(13, '1410000', '42300', '1452300', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '6526132be3417', '0', 'Pending', 'Pending', 1, '2023-10-10 21:14:51', '2023-10-10 21:14:51'),
	(14, '1410000', '42300', '1452300', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '6526134257fcb', '0', 'Pending', 'Pending', 1, '2023-10-10 21:15:14', '2023-10-10 21:15:14'),
	(15, '1410000', '42300', '1452300', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '6526138e8d7ae', '0', 'Pending', 'Pending', 1, '2023-10-10 21:16:30', '2023-10-10 21:16:30'),
	(16, '1410000', '42300', '1452300', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '652613a79aec0', '0', 'Pending', 'Pending', 1, '2023-10-10 21:16:55', '2023-10-10 21:16:55'),
	(17, '1410000', '42300', '1452300', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '652613b8ef725', '0', 'Pending', 'Pending', 1, '2023-10-10 21:17:12', '2023-10-10 21:17:12'),
	(18, '1410000', '42300', '1452300', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '652614518ece4', '0', 'Pending', 'Pending', 1, '2023-10-10 21:19:45', '2023-10-10 21:19:45'),
	(19, '1410000', '42300', '1452300', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '6526145c7ae8d', '0', 'Pending', 'Pending', 1, '2023-10-10 21:19:56', '2023-10-10 21:19:56'),
	(20, '1410000', '42300', '1452300', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '6526146b6eced', '0', 'Pending', 'Pending', 1, '2023-10-10 21:20:11', '2023-10-10 21:20:11'),
	(21, '1410000', '42300', '1452300', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '6526149251456', '0', 'Pending', 'Pending', 1, '2023-10-10 21:20:50', '2023-10-10 21:20:50'),
	(22, '1410000', '42300', '1452300', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '652614a9427fa', '0', 'Pending', 'Pending', 1, '2023-10-10 21:21:13', '2023-10-10 21:21:13'),
	(23, '1410000', '42300', '1452300', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '652614c1054be', '0', 'Pending', 'Pending', 1, '2023-10-10 21:21:37', '2023-10-10 21:21:37'),
	(24, '1410000', '42300', '1452300', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '652614ccb13b1', '0', 'Pending', 'Pending', 1, '2023-10-10 21:21:48', '2023-10-10 21:21:48'),
	(25, '1410000', '42300', '1452300', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '652614d88bff8', '0', 'Pending', 'Pending', 1, '2023-10-10 21:22:00', '2023-10-10 21:22:00'),
	(26, '1410000', '42300', '1452300', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '652615176f458', '0', 'Pending', 'Pending', 1, '2023-10-10 21:23:03', '2023-10-10 21:23:03'),
	(27, '1410000', '42300', '1452300', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '6526153f243c0', '0', 'Pending', 'Pending', 1, '2023-10-10 21:23:43', '2023-10-10 21:23:43'),
	(28, '1410000', '42300', '1452300', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '65261727c2956', '0', 'Pending', 'Success', 1, '2023-10-10 21:31:51', '2023-10-10 21:38:07'),
	(29, '1410000', '42300', '1452300', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '652a2c3525ad7', '0', 'Pending', 'Pending', 1, '2023-10-13 23:50:45', '2023-10-13 23:50:45'),
	(30, '1410000', '42300', '1452300', 'Name:Rabbil Hasan Rupom,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '652a6452330b4', '0', 'Pending', 'Success', 1, '2023-10-14 03:50:10', '2023-10-14 03:50:16'),
	(31, '1410000', '42300', '1452300', 'Name:Rabbil Hasan Rupom,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '652a67821942b', '0', 'Pending', 'Pending', 1, '2023-10-14 04:03:46', '2023-10-14 04:03:46'),
	(32, '1410000', '42300', '1452300', 'Name:Rabbil Hasan Rupom,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '652a682f1c391', '0', 'Pending', 'Success', 1, '2023-10-14 04:06:39', '2023-10-14 04:09:04'),
	(33, '470000', '14100', '484100', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '652a743236e59', '0', 'Pending', 'Success', 1, '2023-10-14 04:57:54', '2023-10-14 04:57:59'),
	(34, '470000', '14100', '484100', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207,City:Dhaka,Phone: 01785388919', 'Name:Rabbil Hasan,Address:Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207 ,City:Dhaka ,Phone: 01785388919', '653498771fc9b', '0', 'Pending', 'Success', 1, '2023-10-21 21:35:19', '2023-10-21 21:35:40');

-- Dumping structure for table ecom.invoice_products
DROP TABLE IF EXISTS `invoice_products`;
CREATE TABLE IF NOT EXISTS `invoice_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `qty` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `invoice_products_invoice_id_foreign` (`invoice_id`),
  KEY `invoice_products_product_id_foreign` (`product_id`),
  KEY `invoice_products_user_id_foreign` (`user_id`),
  CONSTRAINT `invoice_products_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `invoice_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `invoice_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecom.invoice_products: ~51 rows (approximately)
INSERT INTO `invoice_products` (`id`, `invoice_id`, `product_id`, `user_id`, `qty`, `sale_price`, `created_at`, `updated_at`) VALUES
	(2, 2, 4, 1, '5', '470000', '2023-09-25 11:39:38', '2023-09-25 11:39:38'),
	(3, 2, 9, 1, '1', '94000', '2023-09-25 11:39:38', '2023-09-25 11:39:38'),
	(4, 3, 4, 1, '5', '470000', '2023-09-25 11:40:30', '2023-09-25 11:40:30'),
	(5, 3, 9, 1, '1', '94000', '2023-09-25 11:40:30', '2023-09-25 11:40:30'),
	(6, 4, 1, 2, '5', '470000', '2023-10-10 19:44:56', '2023-10-10 19:44:56'),
	(10, 8, 1, 2, '5', '470000', '2023-10-10 21:04:31', '2023-10-10 21:04:31'),
	(13, 11, 1, 2, '5', '470000', '2023-10-10 21:11:46', '2023-10-10 21:11:46'),
	(14, 12, 4, 1, '5', '470000', '2023-10-10 21:13:59', '2023-10-10 21:13:59'),
	(15, 12, 9, 1, '10', '940000', '2023-10-10 21:13:59', '2023-10-10 21:13:59'),
	(16, 13, 4, 1, '5', '470000', '2023-10-10 21:14:51', '2023-10-10 21:14:51'),
	(17, 13, 9, 1, '10', '940000', '2023-10-10 21:14:51', '2023-10-10 21:14:51'),
	(18, 14, 4, 1, '5', '470000', '2023-10-10 21:15:14', '2023-10-10 21:15:14'),
	(19, 14, 9, 1, '10', '940000', '2023-10-10 21:15:14', '2023-10-10 21:15:14'),
	(20, 15, 4, 1, '5', '470000', '2023-10-10 21:16:30', '2023-10-10 21:16:30'),
	(21, 15, 9, 1, '10', '940000', '2023-10-10 21:16:30', '2023-10-10 21:16:30'),
	(22, 16, 4, 1, '5', '470000', '2023-10-10 21:16:55', '2023-10-10 21:16:55'),
	(23, 16, 9, 1, '10', '940000', '2023-10-10 21:16:55', '2023-10-10 21:16:55'),
	(24, 17, 4, 1, '5', '470000', '2023-10-10 21:17:12', '2023-10-10 21:17:12'),
	(25, 17, 9, 1, '10', '940000', '2023-10-10 21:17:12', '2023-10-10 21:17:12'),
	(26, 18, 4, 1, '5', '470000', '2023-10-10 21:19:45', '2023-10-10 21:19:45'),
	(27, 18, 9, 1, '10', '940000', '2023-10-10 21:19:45', '2023-10-10 21:19:45'),
	(28, 19, 4, 1, '5', '470000', '2023-10-10 21:19:56', '2023-10-10 21:19:56'),
	(29, 19, 9, 1, '10', '940000', '2023-10-10 21:19:56', '2023-10-10 21:19:56'),
	(30, 20, 4, 1, '5', '470000', '2023-10-10 21:20:11', '2023-10-10 21:20:11'),
	(31, 20, 9, 1, '10', '940000', '2023-10-10 21:20:11', '2023-10-10 21:20:11'),
	(32, 21, 4, 1, '5', '470000', '2023-10-10 21:20:50', '2023-10-10 21:20:50'),
	(33, 21, 9, 1, '10', '940000', '2023-10-10 21:20:50', '2023-10-10 21:20:50'),
	(34, 22, 4, 1, '5', '470000', '2023-10-10 21:21:13', '2023-10-10 21:21:13'),
	(35, 22, 9, 1, '10', '940000', '2023-10-10 21:21:13', '2023-10-10 21:21:13'),
	(36, 23, 4, 1, '5', '470000', '2023-10-10 21:21:37', '2023-10-10 21:21:37'),
	(37, 23, 9, 1, '10', '940000', '2023-10-10 21:21:37', '2023-10-10 21:21:37'),
	(38, 24, 4, 1, '5', '470000', '2023-10-10 21:21:48', '2023-10-10 21:21:48'),
	(39, 24, 9, 1, '10', '940000', '2023-10-10 21:21:48', '2023-10-10 21:21:48'),
	(40, 25, 4, 1, '5', '470000', '2023-10-10 21:22:00', '2023-10-10 21:22:00'),
	(41, 25, 9, 1, '10', '940000', '2023-10-10 21:22:00', '2023-10-10 21:22:00'),
	(42, 26, 4, 1, '5', '470000', '2023-10-10 21:23:03', '2023-10-10 21:23:03'),
	(43, 26, 9, 1, '10', '940000', '2023-10-10 21:23:03', '2023-10-10 21:23:03'),
	(44, 27, 4, 1, '5', '470000', '2023-10-10 21:23:43', '2023-10-10 21:23:43'),
	(45, 27, 9, 1, '10', '940000', '2023-10-10 21:23:43', '2023-10-10 21:23:43'),
	(46, 28, 4, 1, '5', '470000', '2023-10-10 21:31:51', '2023-10-10 21:31:51'),
	(47, 28, 9, 1, '10', '940000', '2023-10-10 21:31:51', '2023-10-10 21:31:51'),
	(48, 29, 4, 1, '5', '470000', '2023-10-13 23:50:45', '2023-10-13 23:50:45'),
	(49, 29, 9, 1, '10', '940000', '2023-10-13 23:50:45', '2023-10-13 23:50:45'),
	(50, 30, 4, 1, '5', '470000', '2023-10-14 03:50:10', '2023-10-14 03:50:10'),
	(51, 30, 9, 1, '10', '940000', '2023-10-14 03:50:10', '2023-10-14 03:50:10'),
	(52, 31, 4, 1, '5', '470000', '2023-10-14 04:03:46', '2023-10-14 04:03:46'),
	(53, 31, 9, 1, '10', '940000', '2023-10-14 04:03:46', '2023-10-14 04:03:46'),
	(54, 32, 4, 1, '5', '470000', '2023-10-14 04:06:39', '2023-10-14 04:06:39'),
	(55, 32, 9, 1, '10', '940000', '2023-10-14 04:06:39', '2023-10-14 04:06:39'),
	(56, 33, 4, 1, '5', '470000', '2023-10-14 04:57:54', '2023-10-14 04:57:54'),
	(57, 34, 9, 1, '5', '470000', '2023-10-21 21:35:19', '2023-10-21 21:35:19');

-- Dumping structure for table ecom.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecom.migrations: ~15 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(2, '2023_02_16_065502_create_users', 1),
	(3, '2023_02_16_065520_create_customer_profiles', 1),
	(4, '2023_02_16_065529_create_categories', 1),
	(5, '2023_02_16_065654_create_brands', 1),
	(6, '2023_02_17_114815_create_products', 1),
	(7, '2023_02_17_144756_create_product_reviews', 1),
	(8, '2023_02_17_164424_create_product_details', 1),
	(9, '2023_02_17_184723_create_product_sliders', 1),
	(10, '2023_02_17_191300_create_product_wishes', 1),
	(11, '2023_02_17_194301_create_product_carts', 1),
	(12, '2023_08_06_131501_create_sslcommerz_accounts', 1),
	(13, '2023_08_06_131940_create_invoices', 1),
	(14, '2023_08_06_131941_create_invoice_products', 1),
	(15, '2023_08_08_051859_create_policies', 1);

-- Dumping structure for table ecom.personal_access_tokens
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecom.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table ecom.policies
DROP TABLE IF EXISTS `policies`;
CREATE TABLE IF NOT EXISTS `policies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('about','refund','terms','how to buy','contact','complain') COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecom.policies: ~6 rows (approximately)
INSERT INTO `policies` (`id`, `type`, `des`) VALUES
	(1, 'about', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
	(2, 'refund', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
	(3, 'terms', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
	(4, 'how to buy', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
	(5, 'contact', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
	(6, 'complain', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');

-- Dumping structure for table ecom.products
DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` tinyint(1) NOT NULL,
  `discount_price` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` tinyint(1) NOT NULL,
  `star` double(8,2) NOT NULL,
  `remark` enum('popular','new','top','special','trending','regular') COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `brand_id` bigint unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`),
  KEY `products_brand_id_foreign` (`brand_id`),
  CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecom.products: ~41 rows (approximately)
INSERT INTO `products` (`id`, `title`, `short_des`, `price`, `discount`, `discount_price`, `image`, `stock`, `star`, `remark`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
	(1, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:09:38'),
	(2, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:09:46'),
	(3, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:09:49'),
	(4, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:09:48'),
	(5, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:09:50'),
	(6, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:09:50'),
	(7, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:09:52'),
	(8, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:09:51'),
	(9, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:09:54'),
	(10, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:09:53'),
	(11, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:09:57'),
	(12, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:09:57'),
	(13, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:09:58'),
	(14, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:09:59'),
	(15, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:09:59'),
	(16, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:02'),
	(17, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:00'),
	(18, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:03'),
	(19, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:04'),
	(20, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:04'),
	(21, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:05'),
	(22, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:07'),
	(23, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:06'),
	(24, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:08'),
	(25, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:08'),
	(26, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:09'),
	(27, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:10'),
	(28, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:11'),
	(29, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:13'),
	(30, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:12'),
	(31, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:14'),
	(32, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'special', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:15'),
	(33, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'special', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:16'),
	(34, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'special', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:16'),
	(35, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'special', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:17'),
	(36, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'special', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:18'),
	(37, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'trending', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:19'),
	(38, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'trending', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:20'),
	(39, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'trending', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:21'),
	(40, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'trending', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:10:21'),
	(41, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'http://localhost:8000/assets/images/product_img1.jpg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2024-11-29 04:11:16');

-- Dumping structure for table ecom.product_carts
DROP TABLE IF EXISTS `product_carts`;
CREATE TABLE IF NOT EXISTS `product_carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `color` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_carts_product_id_foreign` (`product_id`),
  KEY `product_carts_user_id_foreign` (`user_id`),
  CONSTRAINT `product_carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecom.product_carts: ~3 rows (approximately)
INSERT INTO `product_carts` (`id`, `user_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
	(6, 2, 1, 'Red', 'X', '5', '470000', '2023-10-10 18:41:33', '2023-10-10 18:41:33'),
	(12, 3, 1, 'Red', '2X', '2', '188000', '2024-02-10 21:55:55', '2024-02-10 21:55:55'),
	(13, 4, 1, 'Red', '2X', '1', '94000', '2024-04-26 22:22:01', '2024-04-26 22:22:01');

-- Dumping structure for table ecom.product_details
DROP TABLE IF EXISTS `product_details`;
CREATE TABLE IF NOT EXISTS `product_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `img1` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img2` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img3` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img4` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_details_product_id_unique` (`product_id`),
  CONSTRAINT `product_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecom.product_details: ~3 rows (approximately)
INSERT INTO `product_details` (`id`, `img1`, `img2`, `img3`, `img4`, `des`, `color`, `size`, `product_id`, `created_at`, `updated_at`) VALUES
	(1, 'http://localhost:8000/assets/images/product_img1.jpg', 'http://localhost:8000/assets/images/product_img1.jpg', 'http://localhost:8000/assets/images/product_small_img1.jpg', 'http://localhost:8000/assets/images/product_small_img1.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Provident similique accusantium nemo autem. Veritatis\r\nobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam\r\nnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,\r\ntenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,\r\nquia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos \r\nsapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam\r\nrecusandae alias error harum maxime adipisci amet laborum. Perspiciatis \r\nminima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit \r\nquibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur \r\nfugiat, temporibus enim commodi iusto libero magni deleniti quod quam \r\nconsequuntur! Commodi minima excepturi repudiandae velit hic maxime\r\ndoloremque. Quaerat provident commodi consectetur veniam similique ad \r\nearum omnis ipsum saepe, voluptas, hic voluptates pariatur est explicabo \r\nfugiat, dolorum eligendi quam cupiditate excepturi mollitia maiores labore \r\nsuscipit quas? Nulla, placeat. Voluptatem quaerat non architecto ab laudantium\r\nmodi minima sunt esse temporibus sint culpa, recusandae aliquam numquam \r\ntotam ratione voluptas quod exercitationem fuga. Possimus quis earum veniam \r\nquasi aliquam eligendi, placeat qui corporis!', 'Red,Green,White', 'X,2X,3X', 1, '2023-08-20 13:49:16', '2024-11-29 04:19:27'),
	(2, 'http://localhost:8000/assets/images/product_img1.jpg', 'http://localhost:8000/assets/images/product_img1.jpg', 'http://localhost:8000/assets/images/product_small_img1.jpg', 'http://localhost:8000/assets/images/product_small_img1.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Provident similique accusantium nemo autem. Veritatis\r\nobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam\r\nnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,\r\ntenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,\r\nquia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos \r\nsapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam\r\nrecusandae alias error harum maxime adipisci amet laborum. Perspiciatis \r\nminima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit \r\nquibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur \r\nfugiat, temporibus enim commodi iusto libero magni deleniti quod quam \r\nconsequuntur! Commodi minima excepturi repudiandae velit hic maxime\r\ndoloremque. Quaerat provident commodi consectetur veniam similique ad \r\nearum omnis ipsum saepe, voluptas, hic voluptates pariatur est explicabo \r\nfugiat, dolorum eligendi quam cupiditate excepturi mollitia maiores labore \r\nsuscipit quas? Nulla, placeat. Voluptatem quaerat non architecto ab laudantium\r\nmodi minima sunt esse temporibus sint culpa, recusandae aliquam numquam \r\ntotam ratione voluptas quod exercitationem fuga. Possimus quis earum veniam \r\nquasi aliquam eligendi, placeat qui corporis!', 'Red,Green,White', 'X,2X,3X', 2, '2023-08-20 13:49:16', '2024-11-29 04:19:28'),
	(3, 'http://localhost:8000/assets/images/product_img1.jpg', 'http://localhost:8000/assets/images/product_img1.jpg', 'http://localhost:8000/assets/images/product_small_img1.jpg', 'http://localhost:8000/assets/images/product_small_img1.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,\r\nmolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborum\r\nnumquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentium\r\noptio, eaque rerum! Provident similique accusantium nemo autem. Veritatis\r\nobcaecati tenetur iure eius earum ut molestias architecto voluptate aliquam\r\nnihil, eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,\r\ntenetur error, harum nesciunt ipsum debitis quas aliquid. Reprehenderit,\r\nquia. Quo neque error repudiandae fuga? Ipsa laudantium molestias eos \r\nsapiente officiis modi at sunt excepturi expedita sint? Sed quibusdam\r\nrecusandae alias error harum maxime adipisci amet laborum. Perspiciatis \r\nminima nesciunt dolorem! Officiis iure rerum voluptates a cumque velit \r\nquibusdam sed amet tempora. Sit laborum ab, eius fugit doloribus tenetur \r\nfugiat, temporibus enim commodi iusto libero magni deleniti quod quam \r\nconsequuntur! Commodi minima excepturi repudiandae velit hic maxime\r\ndoloremque. Quaerat provident commodi consectetur veniam similique ad \r\nearum omnis ipsum saepe, voluptas, hic voluptates pariatur est explicabo \r\nfugiat, dolorum eligendi quam cupiditate excepturi mollitia maiores labore \r\nsuscipit quas? Nulla, placeat. Voluptatem quaerat non architecto ab laudantium\r\nmodi minima sunt esse temporibus sint culpa, recusandae aliquam numquam \r\ntotam ratione voluptas quod exercitationem fuga. Possimus quis earum veniam \r\nquasi aliquam eligendi, placeat qui corporis!', 'Red,Green,White', 'X,2X,3X', 9, '2023-08-20 13:49:16', '2024-11-29 04:19:29');

-- Dumping structure for table ecom.product_reviews
DROP TABLE IF EXISTS `product_reviews`;
CREATE TABLE IF NOT EXISTS `product_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_reviews_customer_id_foreign` (`customer_id`),
  KEY `product_reviews_product_id_foreign` (`product_id`),
  CONSTRAINT `product_reviews_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer_profiles` (`id`),
  CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecom.product_reviews: ~2 rows (approximately)
INSERT INTO `product_reviews` (`id`, `description`, `rating`, `customer_id`, `product_id`, `created_at`, `updated_at`) VALUES
	(2, 'Reference site about Lorem Ipsum,', '90', 1, 1, '2023-10-14 21:17:09', '2023-10-14 21:17:09'),
	(3, 'Lorem ipsum dolor sit amet,', '90', 1, 9, '2023-10-21 21:41:11', '2023-10-21 21:41:11');

-- Dumping structure for table ecom.product_sliders
DROP TABLE IF EXISTS `product_sliders`;
CREATE TABLE IF NOT EXISTS `product_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_sliders_product_id_unique` (`product_id`),
  CONSTRAINT `product_sliders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecom.product_sliders: ~3 rows (approximately)
INSERT INTO `product_sliders` (`id`, `title`, `short_des`, `price`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
	(1, 'MacBook Air M1 New', 'Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold', '50% off in all products', 'http://localhost:8000/assets/images/banner1.jpg', 1, '2023-08-15 12:42:46', '2024-11-29 04:41:42'),
	(3, 'MacBook Air M1 New', 'Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold', '51% off in all products', 'http://localhost:8000/assets/images/banner1.jpg', 2, '2023-08-15 12:42:46', '2024-11-29 04:41:44'),
	(4, 'MacBook Air M1 New', 'Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold', '52% off in all products', 'http://localhost:8000/assets/images/banner1.jpg', 3, '2023-08-15 12:42:46', '2024-11-29 04:41:45');

-- Dumping structure for table ecom.product_wishes
DROP TABLE IF EXISTS `product_wishes`;
CREATE TABLE IF NOT EXISTS `product_wishes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `product_wishes_product_id_foreign` (`product_id`),
  KEY `product_wishes_user_id_foreign` (`user_id`),
  CONSTRAINT `product_wishes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `product_wishes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecom.product_wishes: ~0 rows (approximately)
INSERT INTO `product_wishes` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(5, 1, 1, '2023-09-23 20:30:24', '2023-09-23 20:30:24'),
	(10, 1, 3, '2024-02-10 21:55:44', '2024-02-10 21:55:44');

-- Dumping structure for table ecom.sslcommerz_accounts
DROP TABLE IF EXISTS `sslcommerz_accounts`;
CREATE TABLE IF NOT EXISTS `sslcommerz_accounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_passwd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `success_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fail_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancel_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipn_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `init_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecom.sslcommerz_accounts: ~0 rows (approximately)
INSERT INTO `sslcommerz_accounts` (`id`, `store_id`, `store_passwd`, `currency`, `success_url`, `fail_url`, `cancel_url`, `ipn_url`, `init_url`, `created_at`, `updated_at`) VALUES
	(1, 'teamr64c9e84055219', 'teamr64c9e84055219@ssl', 'BDT', 'http://127.0.0.1:8000/PaymentSuccess', 'http://127.0.0.1:8000/PaymentFail', 'http://127.0.0.1:8000/PaymentCancel', 'http://127.0.0.1:8000/api/PaymentIPN', 'https://sandbox.sslcommerz.com/gwprocess/v4/api.php', '2023-08-25 21:35:23', '2023-08-25 21:35:23');

-- Dumping structure for table ecom.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ecom.users: ~4 rows (approximately)
INSERT INTO `users` (`id`, `email`, `otp`, `created_at`, `updated_at`) VALUES
	(1, 'engr.rabbil@yahoo.com', '0', '2023-08-20 09:13:06', '2023-10-21 21:34:20'),
	(2, 'engr.rabbil@outlook.com', '0', '2023-09-23 19:16:21', '2023-10-13 23:28:08'),
	(3, 'shanewaz886@gmail.com', '0', '2024-01-27 23:28:40', '2024-02-10 21:52:46'),
	(4, 'shahnewaz886@gmail.com', '0', '2024-01-27 23:28:53', '2024-11-28 22:15:09');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
