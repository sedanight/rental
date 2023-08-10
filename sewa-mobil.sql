-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2023 at 11:31 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sewa-mobil`
--

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
(37, '2014_10_12_000000_create_users_table', 1),
(38, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(39, '2019_08_19_000000_create_failed_jobs_table', 1),
(40, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(41, '2023_07_26_031838_create_mobil_table', 1),
(42, '2023_07_26_032447_create_peminjaman_mobil_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `merk` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `no_plat` varchar(10) NOT NULL,
  `tarif` int(10) UNSIGNED NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id`, `merk`, `model`, `no_plat`, `tarif`, `status`, `created_at`, `updated_at`) VALUES
(1, 'avanza kuning', 'silver plate', 'BH 1111 ZG', 100000, 'Disewa', '2023-08-10 01:52:34', '2023-08-10 02:25:41');

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
-- Table structure for table `peminjaman_mobil`
--

CREATE TABLE `peminjaman_mobil` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_mobil` int(10) UNSIGNED NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `durasi` int(10) UNSIGNED NOT NULL,
  `biaya` int(10) UNSIGNED NOT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peminjaman_mobil`
--

INSERT INTO `peminjaman_mobil` (`id`, `id_user`, `id_mobil`, `tanggal_mulai`, `tanggal_selesai`, `durasi`, `biaya`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-08-10', '2023-08-11', 1, 300000, 'Kembali', '2023-08-10 01:54:15', '2023-08-10 01:54:49'),
(2, 1, 1, '2023-08-10', '2023-10-07', 58, 17400000, 'Kembali', '2023-08-10 01:55:37', '2023-08-10 02:14:33'),
(3, 27, 1, '2023-08-31', '2023-08-31', 0, 0, 'Sewa', '2023-08-10 02:25:41', '2023-08-10 02:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(30) NOT NULL,
  `no_sim` varchar(30) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nama`, `alamat`, `no_telp`, `no_sim`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'oral.schmeler', '$2y$10$9dynqtcGQDcn.A9m1Ra8QuZO7u2If2r0XPRmdrrRHjf9yDjUTSh6K', 'Ethan Powlowski', '9977 Tremaine Pass\nSouth Isac, MA 00900', '+15622912605', '530-546-8949', 'qOW8fa16BOLaXNhHlE0WyIdwOutVeaBxPVf1xIPUItx86ueMuZLQk5mDypvP', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(2, 'verlie.batz', '$2y$10$vWmDFNSL6zRU2Xqw/K4oAOvdRxjYl/LixjRxkjWFdxu2bKOzMEUIa', 'Ms. Chelsie Balistreri', '742 Muller Coves Suite 266\nNew Nikki, OH 26546', '+17374241640', '(743) 945-2120', 'q1qfTPrU1c', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(3, 'bernard45', '$2y$10$Ug/WRMAi/u2yLPv5OTOaV.C1kmYpXOSD9ax/UUUekLKBa8nVvOhGO', 'Jason Hermiston', '2491 Turner Fork\nHermanbury, AZ 15896-9816', '+13602223083', '+13206727079', '0tVqPVwr8r', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(4, 'gorczany.camille', '$2y$10$IfhzorS.fRPsafcLb2LVfuYGr990S6.4NRf5V/OLQ.uOGEJHvAOda', 'Coby Walsh', '8635 Judge Terrace\nBoganmouth, OH 18336', '+19512810442', '1-680-912-5031', 'uwQoY0XbzI', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(5, 'wgaylord', '$2y$10$dB1rh7qxRxHa5HJ0rLCm5eXpMYd9jTFUsjHDgSrmKF9yjo9pqV/MC', 'Miss Susana Wisozk DVM', '24165 Boehm Branch Apt. 152\nLangview, WV 69650', '+17726270682', '714.775.1937', 'M7otx606WX', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(6, 'wyman.kiarra', '$2y$10$89D2f1oSqz/BZTaH0ydxDexSfYz3bcbie0yOGPmh37g1gnmAKwTH.', 'Angel Hickle', '553 Wilderman Via\nPort Lorena, KS 78664', '+15036443070', '947.827.6619', 'dEagBNoiol', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(7, 'chegmann', '$2y$10$61QiM2qoftZD44qYvLxoNunt3CnWkixQcPEetqiICEzQWII7sn11K', 'Louvenia Macejkovic', '984 Althea Avenue\nSouth Jamesonborough, WI 25147-2546', '+13529129349', '(716) 659-9547', 'AtL1lyHOeJ', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(8, 'denis.little', '$2y$10$X7bkArSHRnIrnaTZNnSSPeuDquBEKUUzyTfh1cjVbRjyLuPCSrPci', 'Nathen Bergstrom', '796 Juana Dale\nHodkiewiczburgh, NH 56835', '+18582706936', '(831) 293-9694', 'gKZlvmWQAd', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(9, 'rschneider', '$2y$10$HCrMpbWN.rVuRHLclok35efDgbs1OG8/CI9K83DMevSDN.GsiZCI.', 'Cyril Walker MD', '209 Grace Stream Apt. 234\nDarrionbury, VA 80354', '+12176637228', '+1-240-327-8760', 'NVN2e1xkpP', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(10, 'ena.rempel', '$2y$10$uDNSTToDvE3PYHcXkQkag.K.AT1SzmG9oJmX.LLFkL0OX37H2v2oO', 'Garnet Rempel', '3887 Armstrong Circle\nSouth Amina, IL 67285-8519', '+12832500888', '(434) 616-9932', 'csSpi3auQt', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(11, 'prince87', '$2y$10$ZMpP73VoLWHcD.etS7X8zuOAt6qP/nuzGGYzfbG1mX1J5PFv29YyW', 'Kaela Friesen', '68527 Melvin Villages\nKuhlmanton, WV 09255', '+16083471952', '717.598.1539', 'p86MyzHaES', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(12, 'josefa48', '$2y$10$.t4Cjy4TWcyBZ9vl0jq2X.LZP2070yPOrz8ANz8UvM7BIUnJMekQu', 'Samir Monahan', '53639 Schmeler Shore\nDeloresside, DE 09792', '+14152398899', '+1-530-816-9535', 'wj6NnTS3ag', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(13, 'okon.vanessa', '$2y$10$MOs8/ZdQ5dX1MbO04qDzwuOC3nQ//.AXTLg.hN.Qjm0sSx8EWPoTe', 'Lydia Streich', '421 McGlynn Falls\nWillmston, MT 37521', '+12766271300', '231-298-6155', 'JgtNtQ6xcB', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(14, 'ahagenes', '$2y$10$zwuCe8.wtqKtuvIo9Izp3OZFGyerw7LYY9nk3X6YYfUx7gcFDj0nK', 'Eliane Quigley', '739 O\'Reilly Roads\nLake Kirkside, NE 40461-3515', '+14587482533', '(858) 301-8229', 'EZlJiTjm9t', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(15, 'heidenreich.jimmy', '$2y$10$sx6mYcryirbrSf7eapOdpOkbkqcoPPx0UOOU60icBeAuGMl4DHsjC', 'Gennaro Denesik Sr.', '3878 Nolan Ports Suite 758\nPort Mattieview, GA 83542-0004', '+18137149683', '+1 (772) 675-3615', 'BhMYFWuSyJ', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(16, 'kgoldner', '$2y$10$xIIIeb2QH1FP7QQh8eaSBecLYQd7oPt9.AWP/35mLtnP3co5yLGm6', 'Tess Cole', '309 Kuhlman Freeway\nEbertton, TX 26728-5292', '+15395820355', '304.813.6677', 'LqCDV47oS5', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(17, 'kamron.brakus', '$2y$10$1pikUcuk8uewFRAWMv2hQ.zeUg8WjiYb.phiuRiZ01yNrwijwmCgC', 'Prof. Quincy Lind', '424 Crooks Lights Suite 777\nNew Rubentown, PA 81767', '+17576301499', '682-912-5836', '9qsG1KILrV', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(18, 'tlang', '$2y$10$anwSWVNwgSK0WfEOBDJbHul/cHIb7s4luO.Vki3QW1LnIyvynIElm', 'Jamal Hermann', '953 Jasper Ridge\nSouth Mohammadhaven, AZ 33578-6750', '+19162595249', '1-872-858-0776', 'oBOJziTuy5', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(19, 'tremayne68', '$2y$10$R5gg3gpL6zL3Z19aC4LZKuA60dlvRTnbBBZCRhy75m1usELoemuRG', 'Mrs. Gregoria Ebert III', '6404 Christiansen Spurs\nSouth Hassanland, ND 64088', '+18203265360', '1-540-848-0926', 'ittTrJ0WJi', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(20, 'zrath', '$2y$10$0XPTrxiN42GHWWOAVT4wVe0M.50/r901AAUPIbhM1yGWAVMSOIJc.', 'Taryn Rice', '8913 Enid Plains\nAidantown, MI 58256-5552', '+16788641884', '+1.802.544.3185', 'WERIHz9j8I', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(21, 'schulist.alexandro', '$2y$10$depReseyOXlIs5F2dyAuBuVxNQnRZdaEjHn1FNyY6QXfmxewNtSyG', 'Dr. Rashawn O\'Kon Jr.', '198 Sauer Circle Suite 916\nRolfsontown, AZ 53820', '+14803932318', '+17435736649', 'BMGiKPHg7T', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(22, 'clemmie.mueller', '$2y$10$48.UTevTXuHYl7im6WmIIOMfqk1IH3KCvEXjlr8nFbrswyjIbg4ym', 'Moriah Lang', '26593 Greta Mountain Suite 388\nNyahport, WI 41647-5016', '+18579934238', '(203) 773-1109', 'UCc3WjmJCm', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(23, 'samanta.grimes', '$2y$10$0OdIHB7NSK9L/lf45uRKXeaJLSiLA1DLFtqQNUvRG/4cgVkzIxhlS', 'Emanuel Schamberger', '340 Trantow Pass Apt. 994\nWest Maudeside, WA 99009-8192', '+13649253120', '+1-419-371-8401', '02LGYwuCdo', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(24, 'karine.langosh', '$2y$10$XO3sUBatDMAJiF4CYymq7etZdncls1bvVDuKX1hV/Z5zz/BmnGCc2', 'Payton Harvey', '777 Neal Neck Apt. 244\nKoeppton, AL 27204', '+12053847950', '1-540-467-3220', 'odUq0Jpfzq', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(25, 'opal05', '$2y$10$tcdpUF.9BMx1TUqOguMqe.a6/94DShUOx.l8TIdrYW0zk2qunyiK2', 'Dr. Lilian Halvorson', '27274 Dibbert Isle\nNadermouth, IN 91039', '+18317098771', '+1 (463) 669-8082', 'SGa1XuXTe0', '2023-08-10 00:27:12', '2023-08-10 00:27:12'),
(26, 'arjuna', '$2y$10$dx59n86dbu9wBxr29I8ZFuA9s/hvTVqtrqZpJJj5Qw6B4Jo5TeDdy', 'narendra', 'Jalan Kejayaan RT.18 RW.03 Kelurahan Rawasari', '085161867961', '123456789', NULL, '2023-08-10 02:21:43', '2023-08-10 02:21:43'),
(27, 'jimy', '$2y$10$7XGfz5zBNhaDmgLktpJKn.q34SzdIo.vCI6o9mGN7Tke3QEoKw83C', 'floyd', 'Jalan Kejayaan RT.18 RW.03 Kelurahan Rawasari', '085161867961', '12345678910', NULL, '2023-08-10 02:23:44', '2023-08-10 02:23:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `peminjaman_mobil`
--
ALTER TABLE `peminjaman_mobil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `peminjaman_mobil`
--
ALTER TABLE `peminjaman_mobil`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
