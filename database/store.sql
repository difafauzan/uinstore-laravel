-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2023 pada 02.23
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `products_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `photo`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Shirt', 'assets/category/EGL76Vq94oirw1AR4CH4A9WSwFUI6cUZy3Qg9B71.svg', 'shirt', NULL, '2023-06-13 12:07:25', '2023-06-13 15:57:19'),
(2, 'Jas UIN', 'assets/category/46mQhZfpRLPZAutOUCRW2MaFGNpIpwCNcX8o8Tbc.svg', 'jas-uin', NULL, '2023-06-13 15:32:41', '2023-06-13 15:57:04'),
(3, 'Accessories', 'assets/category/WjYJnu7klyW2hoDjenEjCN5XdujWrjYJ5sBZj1wb.svg', 'accessories', NULL, '2023-06-13 15:43:05', '2023-06-13 15:56:37'),
(4, 'Sneakers', 'assets/category/zfYzYT60CN4FvCV8cyl0UPmQ88qmzQvpsuZRrxIi.svg', 'sneakers', NULL, '2023-06-13 15:46:00', '2023-06-13 15:46:00'),
(5, 'Gadgets', 'assets/category/mSbnJ5bhMNNXiY0dZMDb1duKCxOdD3OopU9TnvdZ.svg', 'gadgets', NULL, '2023-06-13 15:48:07', '2023-06-13 15:48:07'),
(6, 'Tools', 'assets/category/leMq7OqQ4OiOaGaCdTfljKFsyiOIbgt4pgUzpKwZ.svg', 'tools', NULL, '2023-06-13 15:48:22', '2023-06-13 15:48:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `indoregion_districts`
--

CREATE TABLE `indoregion_districts` (
  `id` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regency_id` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `indoregion_provinces`
--

CREATE TABLE `indoregion_provinces` (
  `id` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `indoregion_regencies`
--

CREATE TABLE `indoregion_regencies` (
  `id` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `indoregion_villages`
--

CREATE TABLE `indoregion_villages` (
  `id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_05_02_140432_create_provinces_tables', 1),
(4, '2017_05_02_140444_create_regencies_tables', 1),
(5, '2017_05_02_140454_create_villages_tables', 1),
(6, '2017_05_02_142019_create_districts_tables', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2020_06_16_063015_create_categories_table', 1),
(9, '2020_06_16_063622_create_products_table', 1),
(10, '2020_06_16_064045_create_product_galleries_table', 1),
(11, '2020_06_16_064403_create_carts_table', 1),
(12, '2020_06_16_065305_create_transactions_table', 1),
(13, '2020_06_16_065324_create_transaction_details_table', 1),
(14, '2020_06_30_093721_delete_resi_field_at_transactions_table', 1),
(15, '2020_06_30_094658_add_resi_and_shipping_status_to_transaction_details_table', 1),
(16, '2020_06_30_181003_add_code_to_transactions_table', 1),
(17, '2020_06_30_181055_add_code_to_transaction_details_table', 1),
(18, '2020_06_30_181504_add_slug_to_products_table', 1),
(19, '2020_06_30_182106_add_roles_field_to_users_table', 1),
(20, '2020_07_13_083337_change_nullable_field_at_users_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `users_id`, `categories_id`, `price`, `description`, `deleted_at`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Kemeja HIMATIF', 1, 1, 105000, '<p>kemeja jurusan himatif</p>', NULL, '2023-06-13 12:08:35', '2023-06-13 12:08:35', 'kemeja-himatif'),
(2, 'Kaos Polos', 1, 1, 98000, '<p>Kaos polos kami terbuat dari bahan yang nyaman digunakan dan tersedia dalam berbagai warna yang unik. Cocok untuk berbagai acara santai atau kegiatan sehari-hari. Tersedia dalam ukuran S hingga XXL dengan detail ukuran lingkar dada, lebar bahu, panjang tangan, lingkar pinggang, dan panjang baju yang jelas. Dapatkan kaos polos berkualitas dengan harga terjangkau hanya di toko online kami</p>', NULL, '2023-06-13 16:16:10', '2023-06-13 16:16:10', 'kaos-polos'),
(3, 'Gelang', 1, 3, 49000, '<p>Gelang aksesoris kami terbuat dari bahan yang berkualitas dan tersedia dalam berbagai desain yang unik. Cocok untuk berbagai acara dan dapat digunakan sebagai hadiah. Tersedia dalam berbagai ukuran dengan detail ukuran lingkar pergelangan tangan yang jelas. Dapatkan gelang aksesoris berkualitas dengan harga terjangkau hanya di toko online kami</p>', NULL, '2023-06-13 16:17:13', '2023-06-13 16:17:13', 'gelang'),
(4, 'Apple Watch 4', 1, 5, 900000, '<p>Apple Watch adalah perangkat canggih untuk hidup yang sehat dan aman. Dengan fitur-fitur konektivitas, kebugaran, kesehatan, dan keamanan yang andal, Apple Watch membantu pengguna berfokus pada kesehatan dan kebugaran mereka. Dapatkan pengalaman yang lebih baik dengan layar Retina yang selalu aktif, tahan air, dan fitur-fitur inovatif seperti deteksi tabrakan dan deteksi jatuh. Dapatkan Apple Watch&nbsp;dengan desain yang memukau dan kualitas yang terjamin hanya di toko online kam</p>', NULL, '2023-06-13 16:19:16', '2023-06-13 16:26:31', 'apple-watch-4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photos` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `photos`, `products_id`, `created_at`, `updated_at`) VALUES
(3, 'assets/product/ED1QMu3Les7Qbk0lWp8GUEIc5D8u6BxfZTQ3cE3W.jpg', 1, '2023-06-13 16:13:15', '2023-06-13 16:13:15'),
(4, 'assets/product/BMP8hruYCSHsfIdMCU6XfRiUCXT5fgMeuWvR3WeC.jpg', 2, '2023-06-13 16:16:10', '2023-06-13 16:16:10'),
(5, 'assets/product/WbhIeiT0e8t8pRCU8rkCGrIdBynDu7IBmebqRjly.jpg', 3, '2023-06-13 16:17:13', '2023-06-13 16:17:13'),
(6, 'assets/product/DCUfyPpqBiHtk30AIEtu0IjJwnv06UsKSck3YD19.jpg', 4, '2023-06-13 16:19:16', '2023-06-13 16:19:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` int(11) NOT NULL,
  `inscurance_price` int(11) NOT NULL,
  `shipping_price` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `users_id`, `inscurance_price`, `shipping_price`, `total_price`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`, `code`) VALUES
(1, 1, 0, 0, 105000, 'PENDING', NULL, '2023-06-13 12:12:17', '2023-06-13 12:12:17', 'STORE-6196'),
(2, 1, 0, 0, 105000, 'PENDING', NULL, '2023-06-13 16:03:10', '2023-06-13 16:03:10', 'STORE-7198');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `products_id`, `price`, `created_at`, `updated_at`, `shipping_status`, `resi`, `code`) VALUES
(1, 1, 1, 105000, '2023-06-13 12:12:17', '2023-06-13 12:12:17', 'PENDING', '', 'TRX-9343'),
(2, 2, 1, 105000, '2023-06-13 16:03:10', '2023-06-13 16:03:10', 'PENDING', '', 'TRX-8351');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_one` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_two` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provinces_id` int(11) DEFAULT NULL,
  `regencies_id` int(11) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `store_status` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address_one`, `address_two`, `provinces_id`, `regencies_id`, `zip_code`, `country`, `phone_number`, `store_name`, `categories_id`, `store_status`, `deleted_at`, `remember_token`, `created_at`, `updated_at`, `roles`) VALUES
(1, 'Difa Fauzan', 'difafauzan58@gmail.com', NULL, '$2y$10$1AAiuQtwmB.oAeJHBjxrae1VgVTOUff/GD6xVgy.ksaWgocyAzKMO', 'Setra Duta Cemara', 'Blok B2 No. 34', NULL, NULL, 40512, 'Indonesia', '+628 2020 11111', '', NULL, 1, NULL, NULL, '2023-06-13 09:03:34', '2023-06-13 12:12:17', 'ADMIN'),
(2, 'faza07', 'faza123@gmail.com', NULL, '$2y$10$EZ.3fvx1hACz/a2bYClncuWMz/9iBgwNo.syWJPPYbLzBi8dDqhBa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, '2023-06-13 09:23:58', '2023-06-13 09:23:58', 'USER'),
(3, 'tes', 'tes@gmail.com', NULL, '$2y$10$l9tFxvJ9VrmCdUYXNLxPPePzN6u1oTSEuUtZN9fH.YvSMMnVer1q.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 1, NULL, NULL, '2023-06-13 14:13:56', '2023-06-13 14:13:56', 'USER');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `indoregion_districts`
--
ALTER TABLE `indoregion_districts`
  ADD KEY `indoregion_districts_id_index` (`id`);

--
-- Indeks untuk tabel `indoregion_provinces`
--
ALTER TABLE `indoregion_provinces`
  ADD KEY `indoregion_provinces_id_index` (`id`);

--
-- Indeks untuk tabel `indoregion_regencies`
--
ALTER TABLE `indoregion_regencies`
  ADD KEY `indoregion_regencies_id_index` (`id`);

--
-- Indeks untuk tabel `indoregion_villages`
--
ALTER TABLE `indoregion_villages`
  ADD KEY `indoregion_villages_id_index` (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
