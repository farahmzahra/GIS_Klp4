-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 07, 2023 at 11:05 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klp4_gis`
--

-- --------------------------------------------------------

--
-- Table structure for table `apotek`
--

CREATE TABLE `apotek` (
  `id` int(11) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kecamatan` varchar(15) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apotek`
--

INSERT INTO `apotek` (`id`, `longitude`, `latitude`, `nama`, `alamat`, `kecamatan`, `foto`) VALUES
(1, '101.408759', '0.479234', 'Apotek Keluarga 15', 'Jl. Lobak No.105c, Delima', 'Tampan', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077311/GIS/Apotek_Keluarga_15_ro15w4.jpg'),
(2, '101.43537', '0.528663', 'Apotek Afiza', 'Jl. Cempaka No.99, Harjosari', 'Sukajadi', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077290/GIS/Apotek_Afiza_m2qro6.jpg'),
(3, '101.484067', '0.51885', 'Apotek Alita', 'Jl. Budisari perum budi sari cluster No.8, Rejosari', 'Tenayan Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077294/GIS/Apotek_Alita_tcowqk.jpg'),
(4, '101.435319', '0.443779', 'Apotek Alita 2', 'Jl. Kartama, Maharatu', 'Marpoyan Damai', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077291/GIS/Apotek_Alita_2_s40hbf.jpg'),
(5, '101.385777', '0.445669', 'Apotek Al-Izzah', 'Jl. Suka Karya, Tuah Karya', 'Tampan', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077291/GIS/Apotek_Al_Izzah_nhlueq.jpg'),
(6, '101.464853', '0.457994', 'Apotek Alfa', 'Jl. Tengku Bey 3-60, Simpang Tiga', 'Bukit Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077293/GIS/Apotek_Alfa_y4cpon.jpg'),
(7, '101.448463', '0.566218', 'Apotek Andalan Jaya', 'Jl. Sembilang 115, Limbungan', 'Rumbai Pesisir', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077294/GIS/Apotek_Andalan_Jaya_wwjkhy.jpg'),
(8, '101.426268', '0.569276', 'Apotek Andalan Makmur', 'Jl. Umban Sari 27-33, Umban Sari', 'Rumbai Pesisir', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670079123/Apotek_Andalan_Makmur_zex6kj.png'),
(9, '101.419425', '0.475511', 'Apotek Angkasa', 'JL. Soekarno Hatta, Blok C 1 No. 12Ab, Komplek Sentral Bisnis, Sidomulyo Tim', 'Marpoyan Damai', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077295/GIS/Apotek_Angkasa_xcjnez.jpg'),
(10, '101.390031', '0.449005', 'Apotek Angkasa Jaya', 'Jl. Cipta Karya No.8, Sialangmunggu', 'Tampan', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077290/GIS/Angkasa_Jaya_lagmr2.jpg'),
(11, '101.443094', '0.525898', 'Apotek Asean', 'Gg. Nikmat, Kota Baru', 'Pekanbaru', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077295/GIS/Apotek_Asean_puospi.jpg'),
(12, '101.434715', '0.556962', 'Apotek Al Fakih', 'Jl. Yos Sudarso Kelurahan No.124, Meranti Pandak', 'Rumbai Pesisir', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077292/GIS/Apotek_Al_Fakih_fpoeye.jpg'),
(13, '101.403636', '0.465071', 'Apotek Andalas', 'Jl. Delima 16-9, Delima', 'Tampan', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077297/GIS/Apotek_Andalas_sfd4qq.jpg'),
(14, '101.463845', '0.480982', 'Apotek Barokah', 'Jl. Datuk Setia Maharaja, Tengkerang Sel', 'Bukit Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077298/GIS/Apotek_Barokah_tcum7y.jpg'),
(15, '101.440136', '0.528607', 'Apotek Cempaka', 'Jl. Cempaka No.64, Sukajadi', 'Sukajadi', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077299/GIS/Apotek_Cempaka_lsar6o.jpg'),
(16, '101.458353', '0.517136', 'Apotek Gobah', 'Jl. Beringin 12-20, Suka Maju', 'Sail', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077304/GIS/Apotek_Gobah_y68ltm.jpg'),
(17, '101.453719', '0.52501', 'Apotek Hangtuah', 'Jl. Hangtuah Ujung No.2, Rintis', 'Sail', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077304/GIS/Apotek_Hangtuah_jthseo.jpg'),
(18, '101.443203', '0.560642', 'Apotek Indonesia Sehat', 'Jl. Hangtuah Ujung No.2, Rintis', 'Sail', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077307/GIS/Apotek_Indonesia_Sehat_eetr2m.jpg'),
(19, '101.381944', '0.464042', 'Apotek Kasuari Farma', 'Tuah Karya', 'Tampan', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077308/GIS/Apotek_Kasuari_Farma_cz3ncu.jpg'),
(20, '101.448905', '0.570371', 'Apotek Keluarga Rumbai', 'Lembah Sari', 'Rumbai Pesisir', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077310/GIS/Apotek_Keluarga_xt0fj2.jpg'),
(21, '101.453978', '0.533805', 'Apotek Permai', 'Jl. St. Syarif 117, Rintis', 'Lima Puluh', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077312/GIS/Apotek_Permai_x7nbim.jpg'),
(22, '101.381707', '0.464063', 'Apotek Rahman', 'Jl. HR. Soebrantas No.64, Tuah Karya', 'Tampan', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077313/GIS/Apotek_Rahman_korvjv.jpg'),
(23, '101.44269', '0.529706', 'Apotik Kartika', 'Jl. Jend. Ahmad Yani 58-30, Kota Baru', 'Senapelan', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077308/GIS/Apotek_Kartika_qkxwlu.jpg'),
(24, '101.449127', '0.535781', 'Apotik Setiabudi', 'Jl. Dr. Setia Budhi No.42, Rintis', 'Lima Puluh', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077313/GIS/Apotek_Sedia_Budi_aarxtj.jpg'),
(25, '101.442375', '0.564179', 'Apotik Ss Paramida', 'Jl. Gurami Raya 2, Limbungan Baru', 'Rumbai Pesisir', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077314/GIS/Apotek_Ss._Piramida_dccvmy.jpg'),
(26, '101.444941', '0.536068', 'Dunia Sehat Apotik', 'Kampung Dalam', 'Senapelan', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077319/GIS/Dunia_Apotek_Sehat_fgisa3.jpg'),
(27, '101.491089', '0.487934', 'Apotek Aisyah 2', 'Jl. Bukit Barisan 1-87, Tengkerang Tim', 'Tenayan Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077290/GIS/Apotek_Aisyah_2_srldq4.jpg'),
(28, '101.451253', '0.447377', 'Apotek Asean 5', 'Jl. Kaharuddin Nasution No.5, Simpang Tiga', 'Bukit Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077295/GIS/Apotek_Asean_5_kizboo.jpg'),
(29, '101.462263', '0.459357', 'Apotek Asri', 'Komplek Bumi Sejahtera Blok A2 No. 5 Simpang Tiga, Kel, Air Dingin', 'Bukit Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077298/GIS/Apotek_Asri_kuwhsm.jpg'),
(30, '101.426845', '0.523526', 'Apotek Dian Farma', 'Jl. Jendral 16-8, Labuh Baru Tim', 'Payung Sekaki', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077302/GIS/Apotek_Dian_Farma_nqowpo.jpg'),
(31, '101.419279', '0.54093', 'Apotek Energi', 'Jl. Pemuda No.79, Tampan', 'Payung Sekaki', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077302/GIS/Apotek_Energi_bsp0yo.jpg'),
(32, '101.50185', '0.496072', 'Apotek Harapan Raya', 'Jl. Lintas Sumatra, Sail', 'Tenayan Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077305/GIS/Apotek_Harapan_Raya_pnbrwe.jpg'),
(33, '101.511539', '0.477777', 'Apotek Iftita', 'Jl. Sepakat 144, Kulim', 'Tenayan Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077306/GIS/Apotek_Iftita_cmqsm7.jpg'),
(34, '101.413154', '0.463886', 'Apotek Keluarga', 'Jl. HR. Soebrantas, Delima', 'Tampan', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670079374/Apotek_Keluarga_Delima_bvgx5z.png'),
(35, '101.464053', '0.499391', 'Apotek Keluarga 11 Pekanbaru', 'Jl. Lintas Sumatra 200, Tengkerang Sel', 'Bukit Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077310/GIS/Apotek_Keluarga_11_qxnjij.jpg'),
(36, '101.382657', '0.464177', 'Apotek Keluarga 9 Pekanbaru', 'Jl. HR. Soebrantas 77-288, Tuah Karya', 'Tampan', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077309/GIS/Apotek_Keluarga_9_tenkzy.jpg'),
(37, '101.410454', '0.463756', 'Apotek Kimia Farma', 'Jl. HR. Soebrantas 61-38, Sidomulyo Bar', 'Tampan', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077310/GIS/Apotek_Kimia_Farma_y69y5u.jpg'),
(38, '101.452773', '0.455442', 'Apotek Kimia Farma 2', 'Simpang Tiga', 'Bukit Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077310/GIS/Apotek_Kimia_Farma_2_tmkfyw.jpg'),
(39, '101.408186', '0.513088', 'Apotek Kurniawan Farma ', 'Jl. Rokan Jaya, Labuh Baru Bar', 'Payung Sekaki', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077311/GIS/Apotek_Kurniawan_Farma_f0lxtp.jpg'),
(40, '101.449103', '0.442542', 'Apotek Mandiri Plus', 'Simpang Tiga', 'Bukit Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077311/GIS/Apotek_Mandiri_Plus_ewcucw.jpg'),
(41, '101.418394', '0.46136', 'Apotek Mandiri Prima', 'Sidomulyo Timur', 'Marpoyan Damai', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077312/GIS/Apotek_Mandiri_Prima_ufnzil.jpg'),
(42, '101.454758', '0.46453', 'Apotek Mandiri Utama', 'Jl. Tengku Bey, Simpang Tiga', 'Bukit Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077312/GIS/Apotek_Mandiri_Utama_kmduun.jpg'),
(43, '101.439597', '0.443596', 'Apotek Syahdu', 'Jl. Kartama No.23, Maharatu', 'Marpoyan Damai', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077314/GIS/Apotek_Syahdu_cfhxul.jpg'),
(44, '101.489409', '0.49517', 'Apotek Taman Sari', 'Jl. Lintas Sumatra 57-389, Tengkerang Tim', 'Tenayan Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077316/GIS/Apotek_Taman_Sari_odacax.jpg'),
(45, '101.421153', '0.517142', 'Apotek Trans Pekanbaru', 'Jl. Durian 82, Labuh Baru Tim', 'Payung Sekaki', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077315/GIS/Apotek_Trans_pn90xk.jpg'),
(46, '101.481765', '0.520812', 'Kulim Farma', 'Rejosari', 'Tenayan Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077310/GIS/Apotek_Kulim_Farma_w39mbc.jpg'),
(47, '101.41867', '0.541088', 'Azima Farma', 'Jl. Pemuda, Tampan', 'Payung Sekaki', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077302/GIS/Apotek_Azima_Farma_c4plnj.png'),
(48, '101.416288', '0.513786', 'Apotek Gratia Farma', 'Labuh Baru Barat', 'Payung Sekaki', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077307/GIS/Apotek_Gratia_Farmasi_pgxnwy.png'),
(49, '101.409778', '0.517015', 'Apotek Dharma Bakti 94', 'Jl. Darma Bakti No.94, Labuh Baru Bar', 'Payung Sekaki', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077309/GIS/Apotek_Dharma_Bakti_94_jgj7cc.png'),
(50, '101.457325', '0.443303', 'Apotek Azhea Farma', 'Jl. Karya I, Simpang Tiga', 'Bukit Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670079453/Screen_Shot_2022-12-03_at_21.57.15_axplow.png'),
(51, '101.454426', '0.468676', 'Apotek Simpang Tiga', 'Jl. Kh. Nasution Pekan Baru, Simpang Tiga', 'Bukit Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077317/GIS/Apotek_Simpang_Tiga_xyhoel.png'),
(52, '101.458268', '0.463547', 'Apotik Bumel', 'JL Tengku Bey, No. 21, Simpang 3', 'Bukit Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077302/GIS/Apotek_Bumel_szx5sq.png'),
(53, '101.431639', '0.535063', 'Sanitas Farma', 'Jl. Riau No.129, Kp. Baru', 'Senapelan', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077320/GIS/Apotek_Sanitas_Farma_qddckw.png'),
(54, '101.510217', '0.501031', 'Apotek Bertuah Hangtuah', 'Jl. Lintas Sumatra, Sail', 'Tenayan Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077300/GIS/Apotek_Bertuah_hxo6bp.png'),
(55, '101.520259', '0.484135', 'Apotek Cahaya Farma', 'Jl. Lintas Sumatra No.258, Sail', 'Tenayan Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077309/GIS/Apotek_Cahaya_Farma_tasgvt.png'),
(56, '101.505388', '0.506064', 'Apotek Rcty', 'Jalan Hangtuah Ujung, Kelurahan No.151A, Sail', 'Tenayan Raya', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077317/GIS/Apotek_Rcty_oqotde.png'),
(57, '101.418078', '0.454589', 'Apotek Yurikha Farma', 'Jl. Soekarno - Hatta, Labuh Baru Bar', 'Tampan', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077320/GIS/Apotek_Yurikha_Farma_ucsg24.png'),
(58, '101.364949', '0.480562', 'Kimia Farma Apotek 653', 'Jl. Lintas Petapahan - Garuda Sakti No.89a, Simpang Baru', 'Tampan', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670079529/Kimia_Farma_Apotek_653_fkbdaw.png'),
(59, '101.40604', '0.475402', 'Apotek Mama Pekanbaru', 'Delima', 'Tampan', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670077318/GIS/Apotek_Mama_q3yyot.png'),
(60, '101.405954', '0.464212', 'Apotek Kampar Medika', 'Delima', 'Tampan', 'https://res.cloudinary.com/dmcas6fmt/image/upload/v1670079261/Screen_Shot_2022-12-03_at_21.54.04_khd0jx.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apotek`
--
ALTER TABLE `apotek`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
