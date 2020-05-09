-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 09, 2020 at 09:38 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id13360174_villapacet`
--

-- --------------------------------------------------------

--
-- Table structure for table `images_villa`
--

CREATE TABLE `images_villa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `villa_id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images_villa`
--

INSERT INTO `images_villa` (`id`, `villa_id`, `image`, `created_at`, `updated_at`) VALUES
(35, 16, 'villa/bShgr4g3G9l7mhDAD566jJVI2CXrHNJO8dlXbC7B.jpeg', NULL, NULL),
(36, 17, 'villa/sPDS2U8R2pSeVejti7WZFNTDLacMocrIRmnm8spT.jpeg', NULL, NULL),
(37, 18, 'villa/q4QOf4cm9htdxnHVr2GMTB0YLH15TQApwVml4NgC.jpeg', NULL, NULL),
(38, 19, 'villa/rt5D9cPTXiuvvZejE1TzbYdC6VH4aBw76YWsA6T2.jpeg', NULL, NULL),
(47, 21, 'villa/IRj5WadG9WYBRPQAEGiT5IdH7fulfRZUIyxuBDY4.jpeg', NULL, NULL),
(48, 22, 'villa/icwKYJsqxwvQpbJTIMp4FVMNdWHdsgvg6oK70Vu3.jpeg', NULL, NULL),
(49, 23, 'villa/Jm4mEhDznUAPVq1NSBOEeC8YyoQeKRXZGowNXXt2.jpeg', NULL, NULL),
(50, 24, 'villa/sEo5uhsFIxPL3HhZd41C5NMQHZrUOk3zSLYfQarp.jpeg', NULL, NULL),
(56, 27, 'villa/siVOF6KgOQHLXbWg7yvT731VCvyzOYjKzT0AYSh7.jpeg', NULL, NULL),
(57, 28, 'villa/Jm0c7N3PpkrXBKlcetQtkK7HKzD620BkNFn18FZY.jpeg', NULL, NULL),
(58, 29, 'villa/tVUwUfkzCJ6tp2oyEW9ElgzIxjsC5TAJr4sMdaOU.jpeg', NULL, NULL),
(59, 30, 'villa/UM5MA1LirX2HfqgVtfECGJHQ86Sni9wuLtLUoMGu.jpeg', NULL, NULL),
(60, 31, 'villa/8LAICUD25gIJHBcuh1e7Ht75fNRwLdSNvzI3J2OW.jpeg', NULL, NULL),
(61, 32, 'villa/T7MoDM0hPI8CremP40dqyrVicolyYnf22eiz85b4.jpeg', NULL, NULL),
(62, 15, 'villa/m5bVW4BpH9FQGSi6mpUVkvk6SQ6DhoLcORiduz6S.jpeg', NULL, NULL),
(63, 15, 'villa/HmLzJC5huBp9tR0yh2ZBExtw4Ua70qeAKDBvZgnJ.jpeg', NULL, NULL),
(64, 15, 'villa/h76a4HitOFm3Q8EnuVKIY2Lc0mqZZsg0Re6Fvfl0.jpeg', NULL, NULL),
(65, 15, 'villa/6k3L5JJtasPcYqChlYfv3Z9G4A8QCgW1NII96BeD.jpeg', NULL, NULL),
(66, 15, 'villa/UlAgbqbSjE8CMfYc9FR9Tzi4KmqgkArau9QPCWHb.jpeg', NULL, NULL),
(67, 33, 'villa/NtTkWsnzZGA1nJB42UaJu3avIJMSq1A3ms9coai0.jpeg', NULL, NULL),
(68, 33, 'villa/JqYsfskd3ifpfVIrPHmXoA5qZQ4FiVJVOVbv03Yv.jpeg', NULL, NULL),
(69, 33, 'villa/Q5HbnromlfpIEVZhv4C8pxZgPoIWNVJuXlmWCD5X.jpeg', NULL, NULL),
(70, 33, 'villa/8kX3C71JemoDhQGg7g6pENLcLf1Hdfwbois3vL05.jpeg', NULL, NULL);

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
(3, '2020_03_28_155620_create_villa', 1),
(4, '2020_03_28_155833_create_images_villa', 1),
(5, '2020_05_03_071931_create_pelanggan', 2);

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
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_pelanggan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_pelanggan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama_pelanggan`, `alamat_pelanggan`, `no_hp`, `created_at`, `updated_at`) VALUES
(1, 'Roset', 'Padusan', '09754747', '2020-05-03 02:14:37', '2020-05-03 02:14:37'),
(3, 'Qumet', 'Pacet', '087645213545', '2020-05-04 06:04:40', '2020-05-04 06:04:40'),
(4, 'Idi', 'Pad', '0854671853', '2020-05-05 12:06:25', '2020-05-05 12:06:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `api_token` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 1,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `api_token`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'kangadit', 'kangadit.dev@gmail.com', NULL, NULL, NULL, 1, '$2y$10$33UX7y7TYilpSI0EvGZj0ebw1bNR40L3CdBFA/AoaPTzlz.ylhrwa', 'go8efmW8yFiNhgyizti7ZaWG33phKSj0blFKC4tZ6Y590c2DuuexPh0XqGf0', '2020-04-29 10:19:27', '2020-04-29 10:19:27'),
(2, 'bagusmaulana', 'bagusmaulana7812@gmail.com', NULL, NULL, NULL, 1, '$2y$10$1ObAiuhvibe6Jj/z9fq55uekF5KCwnAHSmcSSppTWuylegK1E/v7S', NULL, '2020-05-03 13:43:08', '2020-05-03 13:43:08'),
(3, 'Rosid', 'rosidqumaidi46@gmail.com', NULL, NULL, NULL, 1, '$2y$10$GUhjUx99OYTlyu40u.d61eXiTAGE/SKSHtgMzfs5pPU0Fp8Ru81hK', NULL, '2020-05-03 13:45:15', '2020-05-03 13:45:15'),
(4, 'wingcun', 'akhmadklf@gmail.com', NULL, NULL, NULL, 1, '$2y$10$dWNQB3NW4lE9Z4ZTmJ7IJeb9Yy5fbYJoaIPg8IrYAJFlMI23/ubS.', NULL, '2020-05-03 13:50:02', '2020-05-03 13:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `villa`
--

CREATE TABLE `villa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_villa` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fasilitas` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villa`
--

INSERT INTO `villa` (`id`, `nama_villa`, `alamat`, `deskripsi`, `fasilitas`, `created_at`, `updated_at`) VALUES
(15, 'VILLA ANAS', 'Wisata Air panas,padusan,pacet', '<p>Menginap di Villa Pondok Nuansa Mojokerto saat anda sedang berada di Pacet adalah sebuah pilihan yang tepat<br>villa ini cukup mudah dijangkau karena berdekatan dengan fasilitas air panas dan lain2<br><br>Tentang Villa Pondok Nuansa padusan<br><br>Bagi Anda yang menginginkan kualitas pelayanan oke dengan harga yang ramah di kantong, Villa Pondok Nuansa Mojokerto adalah pilihan yang tepat. Karena meski murah, akomodasi ini menyediakan fasilitas memadai dan pelayanan yang tetap terjaga mutunya.<br><br>Villa Pondok Nuansa Mojokerto adalah tempat bermalam yang tepat bagi Anda yang berlibur bersama keluarga. Nikmati segala fasilitas hiburan untuk Anda dan keluarga.<br><br>akomodasi ini adalah pilihan yang pas jika Anda mencari liburan yang tenang dan jauh dari keramaian.<br><br>Resepsionis siap 24 jam untuk melayani proses check-in, check-out dan kebutuhan Anda yang lain. Jangan ragu untuk menghubungi resepsionis, kami siap melayani Anda.<br><br>WiFi tersedia di seluruh area publik properti untuk membantu Anda tetap terhubung dengan keluarga dan teman.<br><br>Pelayanan yang baik dengan harga terjangkau akan membuat Anda merasa nyaman menginap di Villa Pondok Nuansa Mojokerto.<br></p>', '<p></p><ul><li>6 Kamar tidur</li><li>5 Kamar mandi</li><li>2 Dapur</li><li>Ruang tamu luas</li><li>Televisi</li><li>Sound Karaoke</li><li>View bagus</li></ul><p></p>', '2020-05-05 20:14:47', '2020-05-05 23:33:38'),
(16, 'VILLA WATU LUMPANG', 'JL,Raya air panas padusan,', '<p>villa ini sangat cocok untuk anda liburan bersama keluarga/teman,<br>villa ini dekat dengan wisata air panas, sekitar 100 meter udah sampai,villa ini dekat dengan,lokasi sawah gaes ,dan anda dapat menikmati udara sejuk pegunugan di sini,villa ini berkapasitas sekitar 40 sampai 50 orang ,<br>nikmati seru nya liburan di pacet,kapan lagi ke pacet kalau gak sekarang,buruan pesan villa pacet<br></p>', '<p><i><b></b></i></p><ul><li><i><b><i><b></b></i>6 kamar tidur doble bet</b></i></li></ul><ul><li>2_5 kamar mandi&nbsp;</li></ul><ul><li>dapur,tv,dvd sond karoke</li></ul><ul><li>pemandangan bagus</li></ul><p></p><p><br></p><p><br></p>', '2020-05-05 20:43:59', '2020-05-06 00:38:18'),
(17, 'VILLA PONDOK ALAM 1', 'JL,raya air panas,padusan,kecamatan pacet', '<p>hallo gaes kali ini saya mengenal kan,villapondok alam,villa ini dekat banget lo gaes dengan wisata air panas,kira2 jarak tempuh sekitar 500 m udah sampai gaes ,villa ini kira2 bisa menampung sekitar 20 sampai 25 orang gaes ,udara di villa ini di pagi hari sangat segar gaes ,di karenakan banyak persawaah di sekitar,dan udaran nya masih alami ,ayo gaes kapan lagi liburan ,pesan mulai sekarang ,dan nikmati liburan anda di wisata pacet,<br></p>', '<p></p><ul><li>3kamar tidur doble bet</li><li>kamar mandi,dapur</li><li>tv,dvd sond karoke</li><li>pemandagan bagus</li><li>Dll</li></ul><br><p></p>', '2020-05-05 20:47:30', '2020-05-06 00:42:26'),
(18, 'VILLA PONDOK ALAM 2', 'Jl,raya air panas,padusan,kecamatan pacet', '<p>hallo gaes kali ini saya akan mengenal kan villa pondok sawah part 2 ,<br>villa ini sangat cocok bagi anda yang liburan,bersam keluarga maupun teman,villa ini bisa menampung sekitar 20 sampai 25 orang gaes ,villa ini sangat cocok untuk berdantai,<br>di sini anda bisa menghirup udara segar pengunugan gaes,villa ini tidak jauh dari tempat wisata seperti air terjun/wisata air panas ,sekitar 500 m udah sampai lokasi,<br>ayo kapan liburan ke villa pacet ,nikmati liburan di villa pacet,<br>selamat mencoba semoga puas <br></p>', '<p></p><ul><li>3kamar tidur doble bet</li></ul><ul><li>kamar mandi,dapur</li></ul><ul><li>tv,dvd sond karoke</li></ul><ul><li>pemandagan bagus</li></ul><br><p></p>', '2020-05-05 20:50:37', '2020-05-06 00:47:34'),
(19, 'VILLA PONDOK SAWAH 1', 'Jl,raya air panas,padusan,kecamatan pacet,', '<p>hallo gaes jumpa lagi,kali ini yang akan saya kenal kan villa yang unik gaes ,yaitu villa pondok sawah,villa ini terletak dekat wisata air pans gaes,vila pondo sawah ini sangat besar, villa ini bisa menampung sekitar 30 sampai 35 orang gaes ,<br>nikmati liburan anda di wisata pacet,jangan lupa untuk mencoba <br></p>', '<p></p><ul><li>3 kamar tidur</li><li>5 tempat tidur</li><li>3 kamar mandi ( air panas )</li><li>Televisi LED</li><li>Dapur</li><li>Kulkas</li><li>Kapasitas ideal 10 orang</li><li>kapasitas maksimal 20 orang</li><li>area parkir 3 mobil</li></ul><br><p></p>', '2020-05-05 20:55:19', '2020-05-06 00:52:04'),
(21, 'VILLA PONDOK SAWAH 2', 'JL,RAYA AIR PANAS PADUSAN,KECAMATAN PACET', '<p>hallo gaes jumpa lagi,kali ini yang akan saya kenal kan villa yang unik gaes ,yaitu villa pondok sawah,villa ini terletak dekat wisata air panas gaes,vila pondo sawah ini sangat besar, villa ini bisa menampung sekitar 30 sampai 35 orang gaes ,<br>nikmati liburan anda di wisata pacet,jangan lupa untuk mencoba<br></p>', '<p></p><ul><li>5 kamar tidur</li><li>14 tempat tidur</li><li>2 kasur lantai6</li><li>&nbsp;kamar mandi air panas</li><li>hallT</li><li>elevisi LEDS</li><li>ound karaoke</li><li>Dapur</li><li>Kulkas</li><li>Kapasitas ideal 30 orang</li><li>Area parkir 5 mobil</li><li>Pemandang sawah dan gunung.</li></ul><p></p><p><br></p>', '2020-05-07 16:25:46', '2020-05-07 16:25:46'),
(22, 'VILLA HARIS 1', 'JL,RAYA AIR PANAS PADUSAN,KECAMATAN PACET', '<p>villa haris adalah dalah satu villa yang terdiri dari 3 bangunan,villa ini sangat cocok bagi anda yang ingin liburan bersama keluarga besar maupun teman,villa ini dekat banget gaes dengan lokasi pemandian air panas,villa haris ini mempunyai kapasitas ya itu 30 sampai 35 orang ,udara di kawasan villa haris ini sangat sejuk sekali dan masih alami langsung dari pegunugan ,ayo kapan lagi liburan ke pacet,pesan sekarang <br>terimakasih selamat berlibur<br></p>', '<p>• 3 Kamar tidur + extra bed 4 buah<br>• 3 Kamar mandi<br>• Ruang tamu<br>• Televisi layar datar<br>• Dvd sound karaoke<br>• Dapur<br>• Lokasi dekat tempat wisata<br>• Pemandangan bagus<br></p>', '2020-05-07 16:31:09', '2020-05-07 16:31:09'),
(23, 'VILLA HARIS 2', 'JL,RAYA AIR PANAS PADUSAN,KECAMATAN PACET', '<p>villa haris adalah dalah satu villa yang terdiri dari 3 bangunan,villa ini sangat cocok bagi anda yang ingin liburan bersama keluarga besar maupun teman,villa ini dekat banget gaes dengan lokasi pemandian air panas,villa haris ini mempunyai kapasitas ya itu 30 sampai 35 orang ,udara di kawasan villa haris ini sangat sejuk sekali dan masih alami langsung dari pegunugan ,ayo kapan lagi liburan ke pacet,pesan sekarang <br>terimakasih selamat berlibur<br></p>', '<p>• 2 Kamar tidur + extra bed 2 buah<br>• 2 Kamar mandi<br>• Dapur<br>• Ruang tamu<br>• Tv Lcd<br>• Pemandangan bagus<br>• Lokasi dekat tempat wisata<br></p>', '2020-05-07 16:32:50', '2020-05-07 16:32:50'),
(24, 'VILLA HARIS 3', 'JL,RAYA AIR PANAS PADUSAN ,KECAMATAN PACET', '<p>villa haris adalah dalah satu villa yang terdiri dari 3 bangunan,villa ini sangat cocok bagi anda yang ingin liburan bersama keluarga besar maupun teman,villa ini dekat banget gaes dengan lokasi pemandian air panas,villa haris ini mempunyai kapasitas ya itu 30 sampai 35 orang ,udara di kawasan villa haris ini sangat sejuk sekali dan masih alami langsung dari pegunugan ,ayo kapan lagi liburan ke pacet,pesan sekarang <br>terimakasih selamat berlibur<br></p>', '<p>• 3 kamar tidur + 2 buah bed<br>• 2 Kamar mandi<br>• Dapur<br>• Ruang tamu<br>• Tv Lcd<br>• Dvd sound karaoke<br>• Pemandangan indah<br></p>', '2020-05-07 16:34:17', '2020-05-07 16:34:17'),
(27, 'VILLA AIZIA', 'JL,RAYA AIR PANAS PADUSAN,KECAMATAN PACET', '<p>ap</p>', '<p></p><ul><li>10 Kamar tidur</li><li>10 kamar mandi dalam</li><li>3 Buah televisi layar datar</li><li>Aula</li><li>Sound karaoke</li><li>Ruang Musholla</li><li>Dapur</li><li>Lemari es</li><li>Garasi luas</li></ul><p></p>', '2020-05-07 20:57:41', '2020-05-07 20:57:41'),
(28, 'VILLA KEBUN PAKIS 4', 'JL,RAYA AIR PANAS PADUSAN,KECAMATAN PACET', '<p>p</p>', '<p><br></p><ul><li>Kamar tidur 8</li><li>Bed 15</li><li>Kamar mandi 5</li><li>Ruang tamu</li><li>TV, DVD Karoeke</li><li>Hall</li><li>Musholah</li><li>Dapur</li><li>Kapasitas ideal 30 pack</li><li>Kapasitas maxsimal 70 pack</li></ul><br><p></p>', '2020-05-07 22:02:54', '2020-05-07 22:02:54'),
(29, 'VILLA LESEHAN KEBUN PAKIS A1', 'JL,RAYA AIR PANAS PADUSAN,KECAMATAN PACET', '<p>p</p>', '<p></p><ul><li>6 kamar tidur</li><li>2 bed tiap kamar</li><li>3 kamar mandi dalam&nbsp;</li><li>&nbsp;2 kamar mandi luar</li><li>televisi, sound, karaoke</li><li>dapur, kulkas, dispenser, gas</li></ul><br><p></p>', '2020-05-07 22:38:16', '2020-05-07 22:38:16'),
(30, 'VILLA LESEHAN KEBUN PAKIS B1', 'JL,RAYA AIR PANAS PADUSAN,KECAMATAN PACET', '<p>p</p>', '<p></p><ul><li>3 kamar tidur</li><li>2 kamar mandi</li><li>dapur, kulkas, dispenser, gas</li><li>televisi, sound, karaoke</li><li>parkir luas</li><li>View bagus</li><li>Dekat dengan lokasi air panas</li></ul><p></p>', '2020-05-07 22:41:58', '2020-05-07 22:41:58'),
(31, 'VILLA LESEHAN KEBUN PAKIS B2', 'JL,RAYA AIR PANAS PADUSAN,KECAMATAN PACET', '<p>p</p>', '<p></p><ul><li>3 kamar tidur</li><li>2 kamar mandi</li><li>dapur, kulkas, dispenser, gas</li><li>televisi, sound, karaoke</li><li>parkir luas</li><li>View bagus</li><li>Dekat dengan air panas</li></ul><p></p>', '2020-05-07 22:46:53', '2020-05-07 22:46:53'),
(32, 'VILLA LESEHAN KEBUN PAKIS', 'JL,RAYA AIR PANAS PADUSAN,KECAMATAN PACET', '<p>p</p>', '<p></p><ul><li>3 kamar tidur</li><li>2 kamar mandi</li><li>dapur, kulkas, dispenser, gas</li><li>televisi, sound, karaoke</li><li>parkir luas</li><li>lokasi dekat dengan wisata pemandian air panas padusan</li><li>view gunung dan persawahan</li></ul><br><p></p>', '2020-05-07 23:00:30', '2020-05-07 23:00:30'),
(33, 'VILLA NABILA LANTAI 1A', 'JL,RAYA AIR PANAS PADUSAN,KECAMATAN PACET', '<p>p</p>', '<p></p><ul><li>3 Kamar tidur</li><li>5 Tempat tidur</li><li>2 Kamar mandi air hangat</li><li>Televisi</li><li>sound karaoke</li><li>Dvd ( tanpa CD )</li><li>Dapur Dispencer</li></ul><br><p></p>', '2020-05-09 11:16:27', '2020-05-09 11:16:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images_villa`
--
ALTER TABLE `images_villa`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `villa`
--
ALTER TABLE `villa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `images_villa`
--
ALTER TABLE `images_villa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `villa`
--
ALTER TABLE `villa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
