-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2018 at 12:16 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

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
(3, '2018_04_09_165715_create_uploads_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `URL` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `title`, `URL`, `short_description`, `user_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'google', 'http://www.google.com', 'website', 2, 'space-1521719216969-7462_1523297496.jpg', 1, '2018-04-09 12:11:36', '2018-04-09 12:11:36'),
(4, 'shopping cart', 'https://www.flipkart.com', 'a online shopping community', 2, 'Capturefct_1523297965.JPG', 1, '2018-04-09 12:19:25', '2018-04-09 12:19:25'),
(5, 'laravel', 'https://laravel.com/docs/5.6/queries#updates', 'Laravel\'s database query builder provides a convenient, fluent interface to creating and running database queries. It can be used to perform most database operations in your application and works on all supported database systems.\r\n\r\nThe Laravel query builder uses PDO parameter binding to protect your application against SQL injection attacks. There is no need to clean strings being passed as bindings.', 2, 'lara_1523347716.JPG', 1, '2018-04-10 02:08:36', '2018-04-10 02:08:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'fardin', 'frk@test.com', '$2y$10$PK7.uZzHgr6K4gE4i9e1YOiqxSpstLUtOqJDBd1SyQQKweUD8M8sS', 'admin', 'Nb0lmR6FhXuNQ9yyrRwfKmFwpywyN3H4s0sRiBFtFIAEaHSFU6GSqAToyYl4', '2018-04-01 04:24:41', '2018-04-01 04:24:41'),
(2, 'example', 'example@example.com', '$2y$10$nHXLyEd/taCHZ9Pt/Sa5p.K/4yvtAwU3SW6jIG1uhCdo59clI8RPu', 'user', '3p0LhYBLfJ69HwKr5AoJN5h0msoNRcr2m7ELPkgkahRDD4rsKK69ojRCY7Zb', '2018-04-03 00:55:04', '2018-04-03 00:55:04'),
(3, 'author', 'author@test.com', '$2y$10$F14QNPAZNgDEXm7EhT4qyOMcRttpHIpIHljJu8Xw1hj6a0V/nlOau', 'user', 'lqSD39S1w2iOQzeGqmqfebjjDTRliCxhQ0NIY3rFBGWN2kuHdkd24Mpjnjuc', '2018-04-03 02:19:30', '2018-04-03 02:19:30'),
(4, 'role', 'role@gmail.com', '$2y$10$zKVhegabQKnQipEWZDZHqOzL.AbeHh0OcUGKdKNDI4gFq4TCRPnwK', 'user', 'ELFd6fqpWbD0YZtcMacbxLpI5I3pKnNer68ZonzwH3ceOYqiDPg2x1ZSG2c5', '2018-04-03 02:28:47', '2018-04-03 02:28:47'),
(5, 'user', 'user@normal.com', '$2y$10$nbbkuqCLHxk4/zR5wvYq3.f7BUGw/bTGfKsn32bLbPzQkBptCeLDS', 'user', '95YRLn9RSGlnbPRqNzjyUAMhdgNLxe3prShbahzhqVkzsBvy6wQFijzW4RPA', '2018-04-10 02:20:41', '2018-04-10 02:20:41'),
(6, 'user', 'user1@normal.com', '$2y$10$qr7xVSq.42LpkkrWa6YAeeyavTMEsOmPOMWXWT0qPuvHxGT5LCCm.', 'user', 'CuMAvAHUeZaCgZs0xUmXHEQ80tLLo8y5I6d1i5HG0uvR7m0R3hgf37aG3drM', '2018-04-10 02:22:14', '2018-04-10 02:22:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
