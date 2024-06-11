-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2024 at 07:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_author` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `nama_author`, `created_at`, `updated_at`) VALUES
(1, 'Lionel Messi', NULL, NULL),
(2, 'Mesut Ozil', NULL, NULL),
(3, 'Ronaldo', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Teknologi', NULL, NULL),
(2, 'Politik', NULL, NULL),
(3, 'Sosial', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_09_050858_create_comments_table', 1),
(5, '2024_06_10_104419_create_categories_table', 1),
(6, '2024_06_11_104715_create_authors_table', 1),
(7, '2024_06_12_050835_create_posts_table', 1);

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
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `author_id`, `category_id`, `image`, `created_at`, `updated_at`) VALUES
(3, 'Revitalisasi Proses Pengembangan Perangkat Lunak: Penggunaan Kecerdasan Buatan dalam Software Engineering', 'Perusahaan-perusahaan teknologi terkemuka semakin mengintegrasikan teknologi kecerdasan buatan ke dalam proses pengembangan perangkat lunak mereka. Melalui penggunaan AI, proses pengembangan perangkat lunak menjadi lebih efisien dan responsif terhadap kebutuhan pasar yang terus berubah. Salah satu contoh utama adalah penerapan teknik pembelajaran mesin untuk mempercepat proses pengujian perangkat lunak. Dengan memanfaatkan AI untuk mengidentifikasi pola dan bug potensial dalam kode, para pengembang dapat menemukan dan memperbaiki masalah lebih cepat, mengurangi waktu dan biaya pengembangan secara keseluruhan. Selain itu, teknologi kecerdasan buatan juga membuka pintu bagi pengembangan perangkat lunak yang lebih intuitif dan otonom. Penggunaan AI dalam pembangunan antarmuka pengguna memungkinkan pengalaman pengguna yang lebih personal dan efisien. Misalnya, asisten virtual yang menggunakan teknologi pengenalan suara dan pemahaman bahasa alami dapat memberikan dukungan langsung kepada pengguna dalam memecahkan masalah atau menjalankan tugas tertentu. Dengan mengintegrasikan kecerdasan buatan ke dalam software engineering, industri perangkat lunak memasuki era baru yang dipenuhi dengan inovasi dan kemajuan yang menjanjikan.', 1, 1, 'images/1718125518_OIP2.jpeg', '2024-06-11 08:09:03', '2024-06-11 10:19:03'),
(5, 'Kembangkan Baterai Ramah Lingkungan dengan Teknologi Terbaru', 'Para ilmuwan telah berhasil mengembangkan baterai yang lebih ramah lingkungan dengan menggunakan teknologi terbaru dalam bidang energi. Baterai ini didesain untuk memiliki masa pakai yang lebih panjang dan lebih efisien dalam hal penggunaan sumber daya alam yang terbatas. Melalui penerapan material-material inovatif dan proses manufaktur yang lebih ramah lingkungan, baterai ini diharapkan dapat mengurangi dampak negatif terhadap lingkungan yang disebabkan oleh limbah baterai konvensional. Dengan adanya perkembangan ini, diharapkan industri baterai dapat bergerak menuju arah yang lebih berkelanjutan dan berkontribusi pada upaya pelestarian lingkungan global.\r\n\r\nPengembangan baterai ini tidak hanya berfokus pada efisiensi dan keberlanjutan, tetapi juga pada peningkatan kinerja. Baterai baru ini menawarkan waktu pengisian yang lebih cepat dan kapasitas penyimpanan energi yang lebih besar, membuatnya ideal untuk digunakan dalam berbagai aplikasi, mulai dari perangkat elektronik konsumen hingga kendaraan listrik. Selain itu, para peneliti juga bekerja sama dengan industri untuk memastikan bahwa proses produksi baterai ini dapat diintegrasikan dengan infrastruktur yang sudah ada, sehingga mempercepat adopsi teknologi baru ini di pasar. Dengan kombinasi antara inovasi teknologi dan fokus pada keberlanjutan, baterai ini berpotensi mengubah cara kita menyimpan dan menggunakan energi, mendukung transisi menuju masa depan yang lebih hijau dan bersih.', 2, 1, 'images/1718126300_MAytJ8NU2LfimyAevcEHZP-1200-80.jpg', '2024-06-11 08:42:48', '2024-06-11 10:18:20'),
(6, 'Penerapan 5G dalam Transformasi Industri', 'Kecepatan dan ketersediaan jaringan 5G mulai memengaruhi berbagai sektor industri, dari manufaktur hingga transportasi. Teknologi ini membawa potensi untuk meningkatkan efisiensi, keamanan, dan konektivitas dalam operasi bisnis. Di sektor manufaktur, misalnya, implementasi jaringan 5G memungkinkan penggunaan robotik yang lebih canggih dan kontrol otomatis yang presisi. Sementara itu, dalam industri transportasi, penggunaan kendaraan otonom dan sistem navigasi yang lebih pintar dapat diwujudkan dengan jaringan 5G yang kuat dan stabil. Seiring dengan pertumbuhan adopsi teknologi ini, diharapkan akan muncul lebih banyak inovasi dan transformasi dalam berbagai sektor industri.\r\n\r\nSelain itu, sektor kesehatan juga dapat merasakan manfaat signifikan dari penerapan jaringan 5G. Telemedicine dan operasi jarak jauh menjadi lebih praktis dan aman berkat latensi yang sangat rendah dan kecepatan data yang tinggi. Ini memungkinkan dokter untuk melakukan diagnosis dan operasi dari jarak jauh dengan presisi yang tinggi, membuka akses layanan kesehatan berkualitas bagi daerah-daerah terpencil. Industri hiburan juga mengalami perubahan besar, dengan kemampuan streaming video 4K dan realitas virtual yang lebih mulus dan imersif, memberikan pengalaman baru bagi konsumen. Dengan 5G, batasan-batasan lama dalam komunikasi dan teknologi mulai hilang, menciptakan peluang tak terbatas untuk inovasi dan pengembangan di berbagai bidang.', 3, 1, 'images/1718126661_5G.jpg', '2024-06-11 08:43:04', '2024-06-11 10:24:21'),
(7, 'Pemerintah Luncurkan Program Tapera untuk Mengatasi Krisis Perumahan', 'Dalam upaya untuk mengatasi krisis perumahan yang terus meningkat, pemerintah telah meluncurkan program Tabungan Perumahan Rakyat (Tapera). Program ini dirancang untuk membantu masyarakat, terutama pekerja dengan penghasilan rendah hingga menengah, agar dapat memiliki rumah yang layak dan terjangkau. Tapera diharapkan dapat menjadi solusi jangka panjang untuk memenuhi kebutuhan perumahan yang mendesak di seluruh Indonesia.\r\n\r\nProgram Tapera, yang dikelola oleh Badan Pengelola Tabungan Perumahan Rakyat (BP Tapera), bekerja dengan mekanisme di mana setiap pekerja dan pemberi kerja diharuskan menyisihkan sebagian kecil dari penghasilannya ke dalam tabungan perumahan. Dana yang terkumpul kemudian akan digunakan untuk memberikan kredit perumahan dengan bunga yang lebih rendah daripada rata-rata pasar. Dengan demikian, program ini tidak hanya meringankan beban pekerja dalam membeli rumah, tetapi juga meningkatkan aksesibilitas mereka terhadap kredit perumahan yang terjangkau.\r\n\r\nImplementasi Tapera mendapat dukungan penuh dari berbagai pihak, termasuk lembaga keuangan dan pengembang properti. Pemerintah juga mengharapkan bahwa dengan adanya Tapera, akan terjadi peningkatan dalam sektor konstruksi dan properti, yang pada gilirannya akan menciptakan lapangan kerja baru dan merangsang pertumbuhan ekonomi. Namun, program ini juga menghadapi tantangan, termasuk kebutuhan untuk memastikan transparansi dan efisiensi dalam pengelolaan dana serta pentingnya edukasi kepada masyarakat tentang manfaat dan mekanisme Tapera. Dengan strategi yang tepat dan dukungan yang berkelanjutan, Tapera diharapkan dapat menjadi tonggak penting dalam upaya pemerintah untuk memberikan perumahan yang layak bagi seluruh rakyat Indonesia.', 1, 2, 'images/1718126814_th.jpeg', '2024-06-11 10:26:54', '2024-06-11 10:26:54'),
(8, 'Rencana Revisi UU Pemilu: Pro dan Kontra di Parlemen', 'encana pemerintah untuk merevisi Undang-Undang Pemilihan Umum (UU Pemilu) telah memicu perdebatan sengit di parlemen dan di kalangan publik. Revisi UU Pemilu ini diusulkan untuk memperbaiki berbagai kelemahan dalam sistem pemilu yang telah ada, sekaligus menyesuaikan dengan dinamika politik dan teknologi terbaru. Namun, langkah ini tidak lepas dari pro dan kontra yang mencerminkan berbagai kepentingan politik di Indonesia.\r\n\r\nPemerintah dan beberapa partai koalisi berpendapat bahwa revisi UU Pemilu sangat diperlukan untuk meningkatkan kualitas demokrasi di Indonesia. Salah satu poin penting yang diusulkan adalah peningkatan transparansi dan akurasi dalam proses pemungutan dan penghitungan suara melalui penggunaan teknologi digital. Selain itu, ada juga usulan untuk memperbaiki mekanisme pencalonan agar lebih inklusif dan mendorong partisipasi perempuan dan kelompok minoritas dalam politik.\r\n\r\nNamun, tidak semua pihak setuju dengan rencana ini. Partai oposisi dan beberapa organisasi masyarakat sipil menilai bahwa beberapa usulan dalam revisi UU Pemilu dapat membuka celah bagi praktik politik uang dan manipulasi hasil pemilu. Mereka juga mengkhawatirkan bahwa penggunaan teknologi digital yang tidak diimbangi dengan infrastruktur dan keamanan yang memadai dapat meningkatkan risiko kecurangan dan serangan siber.', 2, 2, 'images/1718126970_infografis-pro-kontra-tunda-pemilu-di-parlemen-1_169.jpeg', '2024-06-11 10:29:30', '2024-06-11 10:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ehM7s39dL2jKZPDA1qd1Zvvaq87Ghi0pP6FdC33A', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36 Edg/125.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkg5N1Izd0ZjWThaQkdUbXRSTDBWSmNVZjZIaUlhU3dtNXFOWmtPQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wb3N0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718126970);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_author_id_foreign` (`author_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
