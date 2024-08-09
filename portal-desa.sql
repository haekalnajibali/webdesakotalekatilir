-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Agu 2024 pada 11.04
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal-desa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agamas`
--

CREATE TABLE `agamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `agama` varchar(255) NOT NULL,
  `penganut` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `agamas`
--

INSERT INTO `agamas` (`id`, `agama`, `penganut`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Islam', 346, 1, '2024-08-01 14:57:06', '2024-08-09 04:36:41'),
(2, 'Kristen', 0, 1, '2024-08-01 14:57:06', '2024-08-09 04:37:03'),
(3, 'Katolik', 0, 1, '2024-08-01 14:57:06', '2024-08-09 04:37:06'),
(4, 'Hindu', 0, 1, '2024-08-01 14:57:06', '2024-08-09 04:37:09'),
(5, 'Budha', 0, 1, '2024-08-01 14:57:06', '2024-08-09 04:37:12'),
(6, 'Konghucu', 0, 1, '2024-08-01 14:57:06', '2024-08-09 04:37:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggarans`
--

CREATE TABLE `anggarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `keterangan` longtext NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `excerpt` longtext NOT NULL,
  `isi_pengumuman` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `excerpt` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `body` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `beritas`
--

INSERT INTO `beritas` (`id`, `gambar`, `judul`, `excerpt`, `slug`, `views`, `body`, `user_id`, `status_id`, `kategori_id`, `created_at`, `updated_at`) VALUES
(3, 'img-berita/66b59a9614408.jpg', 'Kedatangan Mahasiswa KKN Universitas Bengkulu periode 102 Di Desa Kota Lekat', 'Mahasiswa Universitas Bengkulu Melakukan Kuliah Kerja Nyata Periode 102 di desa kota lekat ilir , ke...', 'kedatangan-mahasiswa-kkn-universitas-bengkulu-periode-102-di-desa-kota-lekat', 2, '<p>Mahasiswa Universitas Bengkulu Melakukan Kuliah Kerja Nyata Periode 102 di desa kota lekat ilir , kegiatan KKN ini berlangsung dari tanggal 1 Juli - 16 Agustus 2024</p>', 1, 2, 3, '2024-08-09 04:27:02', '2024-08-09 05:47:46'),
(4, 'img-berita/66b59c6f52b01.jpeg', 'Mahasiswa KKN beserta Karang taruna dan perangkat desa membersihkan jembatan sungai palik', 'Mahasiswa KKN beserta Karang taruna dan perangkat desa bersama sama gotong royong membersihkan jemba...', 'mahasiswa-kkn-beserta-karang-taruna-dan-perangkat-desa-membersihkan-jembatan-sungai-palik', 1, '<p>Mahasiswa KKN beserta Karang taruna dan perangkat desa bersama sama gotong royong membersihkan jembatan sungai palik ,</p>', 1, 2, 3, '2024-08-09 04:34:55', '2024-08-09 05:47:42'),
(5, 'img-berita/66b59c9de6a98.jpeg', 'Peresmian Titik Nol Desa Kota Lekat ilir', 'Peresmian Titik Nol Desa Kota Lekat ilir&nbsp;', 'peresmian-titik-nol-desa-kota-lekat-ilir', 1, '<p>Peresmian Titik Nol Desa Kota Lekat ilir&nbsp;</p>', 1, 2, 3, '2024-08-09 04:35:41', '2024-08-09 05:47:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `berita_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment_replies`
--

CREATE TABLE `comment_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `gambar`, `keterangan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'img-gallery//66b59fa36cd49.jpeg', 'Pesta', 1, '2024-08-02 14:57:59', '2024-08-09 04:48:35'),
(2, 'img-gallery//66b59fd2634ca.jpeg', 'Spanduk kebersihan', 1, '2024-08-09 04:49:22', '2024-08-09 04:49:22'),
(3, 'img-gallery//66b5a655ac08d.jpeg', 'SD Negeri 161 Bengkulu Utara', 1, '2024-08-09 05:17:09', '2024-08-09 05:17:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kelamins`
--

CREATE TABLE `jenis_kelamins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jenis_kelamins`
--

INSERT INTO `jenis_kelamins` (`id`, `jenis_kelamin`, `jumlah`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Laki-laki', 175, 1, '2024-08-01 14:57:06', '2024-08-09 04:37:23'),
(2, 'Perempuan', 170, 1, '2024-08-01 14:57:06', '2024-08-09 04:37:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`id`, `kategori`, `slug`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Teknologi', 'teknologi', 1, '2024-08-01 14:57:06', '2024-08-01 14:57:06'),
(2, 'Kesenian', 'kesenian', 1, '2024-08-01 14:57:06', '2024-08-01 14:57:06'),
(3, 'Bebas', 'bebas', 1, '2024-08-02 15:21:49', '2024-08-02 15:21:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontaks`
--

CREATE TABLE `kontaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lokasi` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kontaks`
--

INSERT INTO `kontaks` (`id`, `lokasi`, `email`, `no_hp`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Desa Kota Lekat Ilir', 'roliabil86@gmail.com', '082376878535 (Roliyah)', 1, '2024-08-01 14:57:06', '2024-08-09 05:15:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanans`
--

CREATE TABLE `layanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `layanan` varchar(255) NOT NULL,
  `persyaratan` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `layanans`
--

INSERT INTO `layanans` (`id`, `layanan`, `persyaratan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Kasi pelayanan', '<p>Nomor Wa : 08237678535 , ( Roliyah )</p>', 1, '2024-08-02 14:58:48', '2024-08-09 04:41:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_09_13_022605_create_sliders_table', 1),
(7, '2023_09_14_134427_create_beritas_table', 1),
(8, '2023_09_14_142413_create_post_statuses_table', 1),
(9, '2023_09_14_223318_create_kategoris_table', 1),
(10, '2023_09_17_091224_create_comments_table', 1),
(11, '2023_09_18_054320_create_comment_replies_table', 1),
(12, '2023_09_18_173129_create_wilayahs_table', 1),
(13, '2023_09_18_203110_create_sejarahs_table', 1),
(14, '2023_09_18_210113_create_visi_misis_table', 1),
(15, '2023_09_19_061945_create_perangkat_desas_table', 1),
(16, '2023_09_21_054915_create_agamas_table', 1),
(17, '2023_09_21_073255_create_jenis_kelamins_table', 1),
(18, '2023_09_21_085821_create_pekerjaans_table', 1),
(19, '2023_09_23_063218_create_petas_table', 1),
(20, '2023_09_24_051908_create_umkms_table', 1),
(21, '2023_09_25_061424_create_kontaks_table', 1),
(22, '2023_09_25_075226_create_video_profils_table', 1),
(23, '2023_09_26_054211_create_situses_table', 1),
(24, '2023_11_29_060538_create_layanans_table', 1),
(25, '2023_11_29_073753_create_galleries_table', 1),
(26, '2023_11_29_164313_create_announcements_table', 1),
(27, '2023_11_29_201150_create_anggarans_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerjaans`
--

CREATE TABLE `pekerjaans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pekerjaans`
--

INSERT INTO `pekerjaans` (`id`, `pekerjaan`, `jumlah`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Petani', 187, 1, '2024-08-01 14:57:06', '2024-08-09 04:37:43'),
(2, 'Pegawai Negeri Sipil', 3, 1, '2024-08-01 14:57:06', '2024-08-09 04:37:53'),
(3, 'PPPK', 3, 1, '2024-08-01 14:57:06', '2024-08-09 04:38:06'),
(4, 'Wiraswasta', 10, 1, '2024-08-01 14:57:06', '2024-08-09 04:38:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perangkat_desas`
--

CREATE TABLE `perangkat_desas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `perangkat_desas`
--

INSERT INTO `perangkat_desas` (`id`, `nama`, `foto`, `jabatan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Asmewa', 'img-perangkat//66b597cc57609.jpeg', 'Kasi kesos', 1, '2024-08-01 14:57:06', '2024-08-09 04:15:08'),
(2, 'Roliyah,S.Ip', 'img-perangkat//66b5970bb4657.jpeg', 'Kasi pemerintahan', 1, '2024-08-01 14:57:06', '2024-08-09 04:11:55'),
(3, 'Andarius', 'img-perangkat//66b5970561251.jpeg', 'Sekretaris Desa', 1, '2024-08-01 14:57:06', '2024-08-09 04:11:49'),
(4, 'Alondia, S.Ap', 'img-perangkat//66b596642ce39.jpeg', 'Kepala Desa', 1, '2024-08-01 14:57:06', '2024-08-09 04:09:08'),
(5, 'Henci Suryanti', 'img-perangkat//66b596692672e.jpeg', 'Kasi pelayanan umum', 1, '2024-08-09 04:08:34', '2024-08-09 04:09:13'),
(6, 'Dia Ismevi,SE', 'img-perangkat/66b5965cd3a3a.jpeg', 'Kaur tata usaha', 1, '2024-08-09 04:09:00', '2024-08-09 04:09:00'),
(7, 'Iis Juniati, S.pd', 'img-perangkat/66b59692342db.jpeg', 'Kaur keuangan', 1, '2024-08-09 04:09:54', '2024-08-09 04:09:54'),
(8, 'Ema Rolistoti', 'img-perangkat/66b596a8edf9b.jpeg', 'Kaur perencanaan :', 1, '2024-08-09 04:10:17', '2024-08-09 04:10:17'),
(9, 'Afri Henza', 'img-perangkat/66b596bdb93b2.jpeg', 'Kadun 1', 1, '2024-08-09 04:10:37', '2024-08-09 04:10:37'),
(10, 'Edy suryadi', 'img-perangkat/66b596d1638f2.jpeg', 'Kadun 2', 1, '2024-08-09 04:10:57', '2024-08-09 04:10:57'),
(11, 'Sugi Wasito', 'img-perangkat/66b596e26302b.jpeg', 'Kadun 3', 1, '2024-08-09 04:11:14', '2024-08-09 04:11:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `petas`
--

CREATE TABLE `petas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `petas`
--

INSERT INTO `petas` (`id`, `judul`, `alamat`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Peta Desa Kota Lekat', 'Desa Kota Lekat Ilir , Hulu Palik , Bengkulu Utara', 1, '2024-08-01 14:57:06', '2024-08-02 09:28:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post_statuses`
--

CREATE TABLE `post_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `post_statuses`
--

INSERT INTO `post_statuses` (`id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'draft', '2024-08-01 14:57:06', '2024-08-01 14:57:06'),
(2, 'publish', '2024-08-01 14:57:06', '2024-08-01 14:57:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sejarahs`
--

CREATE TABLE `sejarahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sejarahs`
--

INSERT INTO `sejarahs` (`id`, `judul`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Sejarah Desa Kota Lekat Ilir', '<p>Pada zaman sebelum indonesia merdeka Desa Kota Lekat dinamakan Kuto Lekat, Kuto Lekat bertempat di Marga Palik pada masa itu<br>Arti dari kata kuto lekat mempunyai makna terdiri dari dua suku kata : kuto artinya penangkal atau pagar hal tersebut yaitu sejenis tumbuhan kayu yaitu jelatang ( daunnya beracun ), adapun lekat artinya tinggi<br>Sebelum indonesia merdekat kuto lekat masih hutan belantara di pesisir bengkulu, yang pertama menempati kuto lekat suku muning kiamun makamnya di sebelah barat kuto lekat bertempat di pinggiran sungai telatang tepatnya di perbatasan kota lekat. Sekarang bernama desa tetangga tanjung putus dan pematang sapang.<br>Suku yang menduduki kota lekat sekarang yaitu : Suku roko kederai makamnya di pemakaman umum desa kota lekat, selanjutnya menyusul &nbsp;lagi suku muning jufit makamnya di daerah rupit lubuk linggau , lalu menyusul orang sakti dari lintang empat lawang dinamakan suku gindo lintang<br>Pada masa sebelum indonesia merdeka binatang buas dan sejenisnya masih menguasai hutan kuto lekat waktu itu belum tertata rapi seperti yang kita lihat pada saat ini , yang ada hanya beberapa sejenis gubuk yang terbuat dari bambu dan kayu tepatnya di atas tebing atas jembatang desa kota lekat sekarang</p>', 1, '2024-08-01 14:57:06', '2024-08-09 08:18:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `situses`
--

CREATE TABLE `situses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `nm_desa` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kabupaten` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `situses`
--

INSERT INTO `situses` (`id`, `logo`, `nm_desa`, `kecamatan`, `kabupaten`, `provinsi`, `kode_pos`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'img-logo//66aca48e6d927.png', 'Desa Kota Lekat Ilir', 'Hulu Palik', 'Bengkulu Utara', 'Bengkulu', 38121, 1, '2024-08-01 14:57:06', '2024-08-02 09:19:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `img_slider` varchar(255) DEFAULT NULL,
  `link_btn` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sliders`
--

INSERT INTO `sliders` (`id`, `judul`, `deskripsi`, `img_slider`, `link_btn`, `created_at`, `updated_at`) VALUES
(1, 'Website Desa Kota Lekat Ilir', '\"Kota Lekat Ilir adalah desa yang terletak di Kecamatan Hulu Palik, Kabupaten Bengkulu Utara, Provinsi Bengkulu, Indonesia. Luas wilayahnya adalah 13.500 m², dengan jumlah penduduk sebanyak 345 jiwa, yang terdiri dari 175 laki-laki dan 170 perempuan.\"', 'img-slider//66aca520b1de6.jpeg', 'wilayah', '2024-08-01 14:57:06', '2024-08-09 03:33:32'),
(2, 'Sejarah Desa', 'Pada zaman sebelum indonesia merdeka Desa Kota Lekat dinamakan Kuto Lekat, Kuto Lekat bertempat di Marga Palik pada masa itu\r\nArti dari kata kuto lekat mempunyai makna terdiri dari dua suku kata ...', 'img-slider//66aca621a3704.jpeg', 'sejarah', '2024-08-01 14:57:06', '2024-08-09 08:19:20'),
(3, 'Visi & Misi Desa Kota Lekat Ilir', 'Visi Desa Kota Lekat Ilir adalah \" Terwujudnya masyarakat desa yang religius, sejahtera, yang berpegang teguh pada pancasila dan undang-undang dasar, kearifan lokal serta terjalinnya kerukunan, ketertiban dan keamanan masyarakat desa\" , sedangkan Misi desa kota lekat ilir adalah......', 'img-slider//66b58c92d33b0.jpeg', 'visi-misi', '2024-08-01 14:57:06', '2024-08-09 03:29:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `umkms`
--

CREATE TABLE `umkms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) NOT NULL,
  `produk` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `deskripsi` text NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `umkms`
--

INSERT INTO `umkms` (`id`, `foto`, `produk`, `slug`, `harga`, `deskripsi`, `no_hp`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'img-produk//66b5a4e73e02d.jpeg', 'warung manisan sesi, ibu cikaya', 'warung-manisan-sesi-ibu-cikaya', 0, '<p>warung manisan sesi, ibu cikaya</p>', '0', 1, '2024-08-01 15:19:38', '2024-08-09 05:11:03'),
(2, 'img-produk/66b5a1bc5ea3e.jpeg', 'Warung Enjel', 'warung-enjel', 0, '<p>Warung Enjel menjual berbagai kebutuhan sehari hari , disini terdapat juga pulsa, paket data, dsb</p>', '0', 1, '2024-08-09 04:57:32', '2024-08-09 04:57:32'),
(3, 'img-produk/66b5a244a6005.jpeg', 'Kantin ibu karni', 'kantin-ibu-karni', 0, '<p>warung ibu karni menyediakan gorengan , peyek , dan banyak jajanan lainnya</p>', '0', 1, '2024-08-09 04:59:48', '2024-08-09 04:59:48'),
(4, 'img-produk/66b5a34b5dbc0.jpeg', 'Warung Ahnaf', 'warung-ahnaf', 0, '<p>Warung Ahnaf terletak di desa kota lekat ilir , warung ini menyediakan berbagai kebutuhan sehari-hari&nbsp;</p>', '82289299300', 1, '2024-08-09 05:04:11', '2024-08-09 05:04:11'),
(5, 'img-produk/66b5a38b1adff.jpeg', 'Ayam potong bu nilawati', 'ayam-potong-bu-nilawati', 0, '<p>Ayam potong bu nilawati</p>', '85265702377', 1, '2024-08-09 05:05:15', '2024-08-09 05:05:15'),
(6, 'img-produk/66b5a3d2b24b3.jpeg', 'Bengkel Motor Ardi', 'bengkel-motor-ardi', 0, '<p>Bengkel Motor Ardi&nbsp;</p>', '82374301898', 1, '2024-08-09 05:06:26', '2024-08-09 05:06:26'),
(7, 'img-produk/66b5a4069ca34.jpeg', 'Warung manisan nenek levi', 'warung-manisan-nenek-levi', 0, '<p>Warung manisan nenek levi</p>', '0', 1, '2024-08-09 05:07:18', '2024-08-09 05:07:18'),
(8, 'img-produk/66b5a48e381bd.jpeg', 'Warung bu jui', 'warung-bu-jui', 0, '<p>Warung bu jui</p>', '85766602766', 1, '2024-08-09 05:09:34', '2024-08-09 05:09:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `foto`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'img-profil/user-1.jpg', 'admin', 'admin@gmail.com', NULL, '$2y$10$UI91p9SimbcMipayfi/dJuCYGzY6FSjgRvFJG5wcjOnaZpUdOjPVG', NULL, '2024-08-01 14:57:06', '2024-08-01 14:57:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video_profils`
--

CREATE TABLE `video_profils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url_video` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `video_profils`
--

INSERT INTO `video_profils` (`id`, `url_video`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'https://www.youtube.com/embed/Jj9U1l8rC0M', 1, '2024-08-01 14:57:06', '2024-08-02 15:18:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visi_misis`
--

CREATE TABLE `visi_misis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `visi_misis`
--

INSERT INTO `visi_misis` (`id`, `visi`, `misi`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Terwujudnya masyarakat desa yang religius, sejahtera, yang berpegang teguh pada pancasila dan undang-undang dasar, kearifan lokal serta terjalinnya kerukunan, ketertiban dan keamanan masyarakat desa.', '1.  Membangun infrastruktur jalan usaha tani desa kota lekat secara berkelanjutann enam tahun kedepan\r\n2. Meningkatkan pendapatan warga desa kota lekat melalui bidang pertanian dan perkebunan\r\n3. Membangun sarana dan prasarana desa yang menunjang pemerintah desa dalam pelayanan terhadap masyarakat\r\n4. Mempertahankan kearifan lokal serta menggalakkan kegiatan-kegiatan keagamaan di masyarakat\r\n5. Mengutamakan musyawarah mufakat dalam penyelesaian setiap permasalahan yang ada di masyarakat desa\r\n6. Mengembangkan BUMDES', 1, '2024-08-01 14:57:06', '2024-08-09 03:29:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wilayahs`
--

CREATE TABLE `wilayahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wilayahs`
--

INSERT INTO `wilayahs` (`id`, `judul`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Wilayah Desa Kota Lekat Ilir', '<p>\"Kota Lekat Ilir adalah desa yang terletak di Kecamatan Hulu Palik, Kabupaten Bengkulu Utara, Provinsi Bengkulu, Indonesia. Luas wilayahnya adalah 13.500 m², dengan jumlah penduduk sebanyak 345 jiwa, yang terdiri dari 175 laki-laki dan 170 perempuan.\"</p>', 1, '2024-08-01 14:57:06', '2024-08-09 04:06:52');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agamas`
--
ALTER TABLE `agamas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `anggarans`
--
ALTER TABLE `anggarans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `announcements_slug_unique` (`slug`);

--
-- Indeks untuk tabel `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `beritas_slug_unique` (`slug`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis_kelamins`
--
ALTER TABLE `jenis_kelamins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kontaks`
--
ALTER TABLE `kontaks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `layanans`
--
ALTER TABLE `layanans`
  ADD PRIMARY KEY (`id`);

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
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `pekerjaans`
--
ALTER TABLE `pekerjaans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perangkat_desas`
--
ALTER TABLE `perangkat_desas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `petas`
--
ALTER TABLE `petas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `post_statuses`
--
ALTER TABLE `post_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sejarahs`
--
ALTER TABLE `sejarahs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `situses`
--
ALTER TABLE `situses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `umkms`
--
ALTER TABLE `umkms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `video_profils`
--
ALTER TABLE `video_profils`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `visi_misis`
--
ALTER TABLE `visi_misis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wilayahs`
--
ALTER TABLE `wilayahs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agamas`
--
ALTER TABLE `agamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `anggarans`
--
ALTER TABLE `anggarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `comment_replies`
--
ALTER TABLE `comment_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jenis_kelamins`
--
ALTER TABLE `jenis_kelamins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kontaks`
--
ALTER TABLE `kontaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `layanans`
--
ALTER TABLE `layanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `pekerjaans`
--
ALTER TABLE `pekerjaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `perangkat_desas`
--
ALTER TABLE `perangkat_desas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `petas`
--
ALTER TABLE `petas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `post_statuses`
--
ALTER TABLE `post_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `sejarahs`
--
ALTER TABLE `sejarahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `situses`
--
ALTER TABLE `situses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `umkms`
--
ALTER TABLE `umkms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `video_profils`
--
ALTER TABLE `video_profils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `visi_misis`
--
ALTER TABLE `visi_misis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `wilayahs`
--
ALTER TABLE `wilayahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
