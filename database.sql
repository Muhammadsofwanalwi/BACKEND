-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Jun 2024 pada 06.34
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata`
--

CREATE TABLE `biodata` (
  `id` int(10) UNSIGNED NOT NULL,
  `users` bigint(20) UNSIGNED NOT NULL,
  `nama_panggilan` varchar(20) NOT NULL,
  `tmp_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jns_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `anak_ke` varchar(50) NOT NULL,
  `jml_sdr_kandung` varchar(100) NOT NULL,
  `jml_sdr_tiri` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataortu`
--

CREATE TABLE `dataortu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users` bigint(20) UNSIGNED NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `ktp_ayah` varchar(100) NOT NULL,
  `tmp_lahir_ayah` varchar(100) NOT NULL,
  `tgl_lahir_ayah` date NOT NULL,
  `pendidikan_ayah` enum('SD/MI','SMP/MTs','SMA/SMK/MA','Diploma','S1','S2','S3') NOT NULL,
  `pekerjaan_ayah` varchar(50) NOT NULL,
  `agama_ayah` enum('Islam','Budha','Kristen','Hindu','Khonghucu','Katolik') NOT NULL,
  `alamat_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `ktp_ibu` varchar(100) NOT NULL,
  `tmp_lahir_ibu` varchar(100) NOT NULL,
  `tgl_lahir_ibu` date NOT NULL,
  `pendidikan_ibu` enum('SD/MI','SMP/MTs','SMA/SMK/MA','Diploma','S1','S2','S3') NOT NULL,
  `pekerjaan_ibu` varchar(50) NOT NULL,
  `agama_ibu` enum('Islam','Budha','Kristen','Hindu','Khonghucu','Katolik') NOT NULL,
  `alamat_ibu` varchar(100) NOT NULL,
  `kk` varchar(100) NOT NULL,
  `nama_wali` varchar(100) NOT NULL,
  `tmp_lahir_wali` varchar(100) NOT NULL,
  `tgl_lahir_wali` date NOT NULL,
  `pekerjaan_wali` varchar(50) NOT NULL,
  `agama_wali` enum('Islam','Budha','Kristen','Hindu','Khonghucu','Katolik') NOT NULL,
  `alamat_wali` varchar(100) NOT NULL,
  `nomor_hp` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `datapendukung`
--

CREATE TABLE `datapendukung` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users` bigint(20) UNSIGNED NOT NULL,
  `asal_sekolah` varchar(100) NOT NULL,
  `alamat_sekolah` varchar(100) NOT NULL,
  `npsn_sekolah` varchar(100) NOT NULL,
  `kip` varchar(100) DEFAULT NULL,
  `kps` varchar(100) DEFAULT NULL,
  `kks` varchar(100) DEFAULT NULL,
  `pkh` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `infosekolah`
--

CREATE TABLE `infosekolah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users` bigint(20) UNSIGNED NOT NULL,
  `nama_kepsek` varchar(100) NOT NULL,
  `nama_sekolah` varchar(100) NOT NULL,
  `npsn_sekolah` varchar(100) NOT NULL,
  `nsm_sekolah` varchar(100) NOT NULL,
  `akreditasi` varchar(100) NOT NULL,
  `alamat_sekolah` varchar(100) NOT NULL,
  `email_sekolah` varchar(100) NOT NULL,
  `telp_sekolah` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `visi` varchar(2000) NOT NULL,
  `misi` varchar(2000) NOT NULL,
  `thn_ajaran` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
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
(5, '2022_07_08_063613_alter_users', 1),
(6, '2022_07_08_064219_add_photo', 1),
(7, '2022_07_08_113607_add_id_registrasi', 1),
(8, '2022_07_08_200005_create__biodata_table', 1),
(9, '2022_07_09_211945_create_dataortu_table', 1),
(10, '2022_07_10_113646_create_datapendukung_table', 1),
(11, '2022_07_11_205029_add_role_users', 1),
(12, '2022_07_19_183913_create_infosekolah_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` int(11) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `nisn` varchar(40) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `id_registrasi` varchar(40) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `photo` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `nisn`, `email`, `id_registrasi`, `email_verified_at`, `password`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', '1', 'admin2403@gmail.com', '0', '2023-10-17 03:29:16', '$2y$10$NJxLbKM2uU8deN2DSIUikuBKpkQmIJOOAvZQwN9wr7QW/nl/FWdYq', 'uploads/logo.png', 'Io3wP5ycyaV3WvZXHQKFpkpH4qwJdqsf6WY3Cd0kc71HsKfJVE3Ay9djcFyE', '2023-10-17 03:29:16', '2023-11-17 02:48:39');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `biodata_users_foreign` (`users`);

--
-- Indeks untuk tabel `dataortu`
--
ALTER TABLE `dataortu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dataortu_users_foreign` (`users`);

--
-- Indeks untuk tabel `datapendukung`
--
ALTER TABLE `datapendukung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `datapendukung_users_foreign` (`users`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `infosekolah`
--
ALTER TABLE `infosekolah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `infosekolah_users_foreign` (`users`);

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
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `biodata`
--
ALTER TABLE `biodata`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `dataortu`
--
ALTER TABLE `dataortu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `datapendukung`
--
ALTER TABLE `datapendukung`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `infosekolah`
--
ALTER TABLE `infosekolah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `biodata`
--
ALTER TABLE `biodata`
  ADD CONSTRAINT `biodata_users_foreign` FOREIGN KEY (`users`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `dataortu`
--
ALTER TABLE `dataortu`
  ADD CONSTRAINT `dataortu_users_foreign` FOREIGN KEY (`users`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `datapendukung`
--
ALTER TABLE `datapendukung`
  ADD CONSTRAINT `datapendukung_users_foreign` FOREIGN KEY (`users`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `infosekolah`
--
ALTER TABLE `infosekolah`
  ADD CONSTRAINT `infosekolah_users_foreign` FOREIGN KEY (`users`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
