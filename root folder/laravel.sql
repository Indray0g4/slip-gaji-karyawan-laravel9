-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Feb 2023 pada 03.03
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `attendance`
--

CREATE TABLE `attendance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `attendance`
--

INSERT INTO `attendance` (`id`, `attendance_date`, `time_in`, `time_out`, `description`, `created_at`, `updated_at`) VALUES
(1, '2023-02-06', '13:01:00', '16:01:00', NULL, '2023-02-06 06:01:57', '2023-02-06 06:01:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `division`
--

CREATE TABLE `division` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `division`
--

INSERT INTO `division` (`id`, `division_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Administrasi', 'Bagian Pengurusan Administrasi', '2023-02-06 05:34:25', '2023-02-06 06:28:18'),
(2, 'Web Development', 'Tim Pengembangan Aplikasi', '2023-02-06 05:34:25', '2023-02-06 05:34:25'),
(5, 'Information Security Analyst', 'Bagian Menganalisa sistem keamanan cyber', '2023-02-06 06:27:27', '2023-02-06 06:29:32'),
(6, 'Articial Intelligence', 'Bagian mengidentifikasi perancangan kecerdasan buatan', '2023-02-06 06:30:31', '2023-02-06 06:30:31'),
(7, 'Data Scient', 'Bagian mengumpulkan, menganalisis, dan mengambil kesimpulan dari data lain', '2023-02-06 06:31:28', '2023-02-06 06:31:28'),
(8, 'Software Development Engnineer', 'Bagian mengurus, mengatur, dan menganalisis pada website', '2023-02-06 06:36:13', '2023-02-06 06:36:13'),
(11, 'Karyawan', NULL, '2023-02-06 07:37:58', '2023-02-06 07:37:58'),
(12, 'Coding', 'Coding', '2023-02-09 06:33:30', '2023-02-09 06:33:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_attendance`
--

CREATE TABLE `employee_attendance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `attendance_id` bigint(20) UNSIGNED NOT NULL,
  `employee_in` time DEFAULT NULL,
  `employee_out` time DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `employee_attendance`
--

INSERT INTO `employee_attendance` (`id`, `users_id`, `attendance_id`, `employee_in`, `employee_out`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '13:03:41', NULL, 'Hadir', '2023-02-06 06:03:41', '2023-02-06 06:03:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee_schedules`
--

CREATE TABLE `employee_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `schedule_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `employee_schedules`
--

INSERT INTO `employee_schedules` (`id`, `employee_id`, `schedule_id`, `created_at`, `updated_at`) VALUES
(14, 7, 1, NULL, NULL),
(15, 7, 2, NULL, NULL),
(16, 7, 3, NULL, NULL),
(17, 7, 4, NULL, NULL),
(18, 7, 5, NULL, NULL),
(19, 8, 1, NULL, NULL),
(20, 8, 2, NULL, NULL),
(21, 8, 3, NULL, NULL),
(22, 8, 4, NULL, NULL),
(23, 8, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_19_102211_create_profile_table', 1),
(6, '2022_12_26_080215_create_posisitions_table', 1),
(7, '2022_12_26_090833_add_position_id_to_users_table', 1),
(8, '2023_01_03_101000_create_salary_table', 1),
(9, '2023_01_03_101915_add_salary_id_to_position_table', 1),
(10, '2023_01_05_131108_create_division_table', 1),
(11, '2023_01_05_131640_add_division_id_to_position_table', 1),
(12, '2023_01_08_134315_create_schedule_table', 1),
(13, '2023_01_14_053355_create_employee_schedules_table', 1),
(14, '2023_01_14_122304_create_attendance_table', 1),
(15, '2023_01_15_012842_create_employee_attendance_table', 1);

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
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `position`
--

CREATE TABLE `position` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `position_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_id` bigint(20) UNSIGNED DEFAULT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `position`
--

INSERT INTO `position` (`id`, `position_name`, `description`, `salary_id`, `division_id`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', NULL, 6, 1, '2023-02-06 05:34:25', '2023-02-06 06:42:15'),
(2, 'Fullstack Web Developer', NULL, 5, 2, '2023-02-06 05:34:25', '2023-02-06 06:42:29'),
(3, 'Security Analyst', NULL, 4, 5, '2023-02-06 06:43:20', '2023-02-06 06:46:03'),
(4, 'Articial Intelligence', NULL, 3, 6, '2023-02-06 06:43:46', '2023-02-06 06:43:46'),
(5, 'Data Scient', NULL, 1, 7, '2023-02-06 06:44:09', '2023-02-06 06:44:09'),
(7, 'Development Engnineer', NULL, 7, 8, '2023-02-06 07:09:46', '2023-02-06 07:09:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile`
--

CREATE TABLE `profile` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profile`
--

INSERT INTO `profile` (`id`, `employee_code`, `gender`, `address`, `phone_number`, `profile_picture`, `users_id`, `created_at`, `updated_at`) VALUES
(1, '2113201044', 'Laki-Laki', 'office', '08931237812', NULL, 1, '2023-02-06 05:34:26', '2023-02-06 05:34:26'),
(2, '2113201045', 'Laki-Laki', 'Kanigoro', '08142659299', NULL, 2, '2023-02-06 05:39:38', '2023-02-06 05:51:41'),
(3, '2113201046', 'Laki-Laki', 'Sananwetan', '08142659629', NULL, 3, '2023-02-06 05:57:05', '2023-02-06 05:57:05'),
(7, '2113201047', 'Laki-Laki', 'Kec. Sendung', '081666839013', NULL, 7, '2023-02-09 03:03:31', '2023-02-09 03:03:31'),
(8, '2113201048', 'Laki-Laki', 'Kota Blitar', '089666333222', NULL, 8, '2023-02-09 03:07:53', '2023-02-09 03:07:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `salary`
--

CREATE TABLE `salary` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `salary`
--

INSERT INTO `salary` (`id`, `class`, `salary`, `created_at`, `updated_at`) VALUES
(1, 'I', '3.500.000', '2023-02-06 05:34:25', '2023-02-06 05:34:25'),
(3, 'II', '4.000.000', '2023-02-06 06:12:58', '2023-02-06 06:12:58'),
(4, 'III', '5.000.000', '2023-02-06 06:13:30', '2023-02-06 06:13:30'),
(5, 'IV', '6.000.000', '2023-02-06 06:14:27', '2023-02-06 06:14:27'),
(6, 'V', '7.000.000', '2023-02-06 06:14:55', '2023-02-06 06:14:55'),
(7, 'VI', '10.000.000', '2023-02-06 06:55:35', '2023-02-06 06:55:35'),
(8, 'X', '20.000.000', '2023-02-09 06:39:04', '2023-02-09 06:39:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `schedule`
--

CREATE TABLE `schedule` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shifts` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `schedule`
--

INSERT INTO `schedule` (`id`, `shifts`, `day`, `time_in`, `time_out`, `created_at`, `updated_at`) VALUES
(1, 'Pagi', 'Senin', '08:00:00', '16:00:00', '2023-02-06 05:34:26', '2023-02-06 05:34:26'),
(2, 'Pagi', 'Selasa', '08:00:00', '16:00:00', '2023-02-06 05:34:26', '2023-02-06 05:34:26'),
(3, 'Pagi', 'Rabu', '08:00:00', '16:00:00', '2023-02-06 05:34:26', '2023-02-06 05:34:26'),
(4, 'Pagi', 'Kamis', '08:00:00', '16:00:00', '2023-02-06 05:34:26', '2023-02-06 05:34:26'),
(5, 'Pagi', 'Jumat', '08:00:00', '16:00:00', '2023-02-06 05:34:26', '2023-02-06 05:34:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `position_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$.isWBaWP6SApoKhDRGlTW.dKCatxXTewxtwDF5/1T8aBXjdtKOUKq', 1, '2023-02-06 05:34:26', '2023-02-06 05:34:26'),
(2, 'Ari', 'Ari@gmail.com', '$2y$10$kGDIOhDc9ADrlEJQxSknhOhIRRh0FcfT72WLIkeNW0wfQmjkv7IIe', 2, '2023-02-06 05:39:37', '2023-02-06 05:39:37'),
(3, 'zaenal', 'zaenal123@gmail.com', '$2y$10$clWA.UGl.tFPnUj7mRjAMOtV4.kVSLqYqt.8289UkHFI9QcolT20y', 3, '2023-02-06 05:57:05', '2023-02-06 06:51:04'),
(7, 'Indra', 'indra.gans@gmail.com', '$2y$10$PiMtfM1k59cfxiX2vAJKRuYvVpCJJgQthUzCobEpvxmjiLklz1X0a', 3, '2023-02-09 03:03:31', '2023-02-09 03:03:31'),
(8, 'Rochim', 'Bahrur@gamil.com', '$2y$10$8J29IEtd.2D4Qksd36uTFO69JDoA3aVZohzDTRl11lGJjQErxmp9K', 1, '2023-02-09 03:07:53', '2023-02-09 03:07:53');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `division`
--
ALTER TABLE `division`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `employee_attendance`
--
ALTER TABLE `employee_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_attendance_users_id_foreign` (`users_id`),
  ADD KEY `employee_attendance_attendance_id_foreign` (`attendance_id`);

--
-- Indeks untuk tabel `employee_schedules`
--
ALTER TABLE `employee_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_schedules_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_schedules_schedule_id_foreign` (`schedule_id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position_salary_id_foreign` (`salary_id`),
  ADD KEY `position_division_id_foreign` (`division_id`);

--
-- Indeks untuk tabel `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile_employee_code_unique` (`employee_code`),
  ADD KEY `profile_users_id_foreign` (`users_id`);

--
-- Indeks untuk tabel `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_position_id_foreign` (`position_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `division`
--
ALTER TABLE `division`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `employee_attendance`
--
ALTER TABLE `employee_attendance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `employee_schedules`
--
ALTER TABLE `employee_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `position`
--
ALTER TABLE `position`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `profile`
--
ALTER TABLE `profile`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `salary`
--
ALTER TABLE `salary`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `employee_attendance`
--
ALTER TABLE `employee_attendance`
  ADD CONSTRAINT `employee_attendance_attendance_id_foreign` FOREIGN KEY (`attendance_id`) REFERENCES `attendance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_attendance_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `employee_schedules`
--
ALTER TABLE `employee_schedules`
  ADD CONSTRAINT `employee_schedules_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_schedules_schedule_id_foreign` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `position`
--
ALTER TABLE `position`
  ADD CONSTRAINT `position_division_id_foreign` FOREIGN KEY (`division_id`) REFERENCES `division` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `position_salary_id_foreign` FOREIGN KEY (`salary_id`) REFERENCES `salary` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
