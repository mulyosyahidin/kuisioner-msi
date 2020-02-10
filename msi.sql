-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Feb 2020 pada 10.51
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
-- Database: `geznine19`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `msi_survey_items`
--

CREATE TABLE `msi_survey_items` (
  `id` int(10) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `msi_survey_items`
--

INSERT INTO `msi_survey_items` (`id`, `parent_id`, `name`) VALUES
(1, 1, 'PHP'),
(2, 1, 'Microsoft ASPX'),
(3, 1, 'Adobe Cold Fusion'),
(4, 1, 'Ruby on Rails'),
(5, 1, 'Java'),
(6, 1, 'Django (Pyhton)'),
(7, 1, 'Node JS'),
(8, 2, 'Java'),
(9, 2, 'Kotlin'),
(10, 2, 'Swift'),
(11, 2, 'React JS'),
(12, 2, 'Microsoft Xamarin'),
(14, 3, 'Java'),
(15, 3, 'C++'),
(16, 3, 'Pyhton'),
(17, 3, 'Apple Swift'),
(18, 3, 'C#'),
(19, 3, 'Micosoft .NET');

-- --------------------------------------------------------

--
-- Struktur dari tabel `msi_survey_parents`
--

CREATE TABLE `msi_survey_parents` (
  `id` int(10) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `msi_survey_parents`
--

INSERT INTO `msi_survey_parents` (`id`, `name`, `description`) VALUES
(1, 'Web', NULL),
(2, 'Mobile', 'Android, iOS'),
(3, 'Desktop', 'Windows, Mac OS, Linux');

-- --------------------------------------------------------

--
-- Struktur dari tabel `msi_survey_results`
--

CREATE TABLE `msi_survey_results` (
  `id` int(10) NOT NULL,
  `student` varchar(16) NOT NULL DEFAULT '',
  `item_id` int(10) NOT NULL,
  `input_time` datetime DEFAULT NULL,
  `input_device` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `msi_survey_results`
--

INSERT INTO `msi_survey_results` (`id`, `student`, `item_id`, `input_time`, `input_device`) VALUES
(1, 'G1A019063', 5, '2020-02-04 10:44:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'),
(2, 'G1A019075', 8, '2020-02-04 10:47:08', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.4 Mobile/15E148 Safari/604.1'),
(3, 'G1A019075', 17, '2020-02-04 10:47:08', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.4 Mobile/15E148 Safari/604.1'),
(4, 'G1A019075', 15, '2020-02-04 10:47:08', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.4 Mobile/15E148 Safari/604.1'),
(5, 'G1A019075', 14, '2020-02-04 10:47:08', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.4 Mobile/15E148 Safari/604.1'),
(6, 'G1A019075', 16, '2020-02-04 10:47:08', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.4 Mobile/15E148 Safari/604.1'),
(7, 'G1A019015', 5, '2020-02-04 10:47:53', 'Mozilla/5.0 (Linux; U; Android 9; in-id; RMX1911 Build/PKQ1.190616.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/53.0.2785.134 Mobile Safari/537.36 RealmeBrowser/35.5.0.8'),
(8, 'G1A019015', 8, '2020-02-04 10:47:53', 'Mozilla/5.0 (Linux; U; Android 9; in-id; RMX1911 Build/PKQ1.190616.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/53.0.2785.134 Mobile Safari/537.36 RealmeBrowser/35.5.0.8'),
(9, 'G1A019015', 14, '2020-02-04 10:47:53', 'Mozilla/5.0 (Linux; U; Android 9; in-id; RMX1911 Build/PKQ1.190616.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/53.0.2785.134 Mobile Safari/537.36 RealmeBrowser/35.5.0.8'),
(10, 'G1A019001', 1, '2020-02-04 10:48:44', 'Mozilla/5.0 (Linux; Android 9; ASUS_X01AD) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Mobile Safari/537.36'),
(11, 'G1A019049', 5, '2020-02-04 10:49:16', 'Mozilla/5.0 (Linux; Android 9; vivo 1902) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 Mobile Safari/537.36'),
(12, 'G1A019049', 15, '2020-02-04 10:49:16', 'Mozilla/5.0 (Linux; Android 9; vivo 1902) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 Mobile Safari/537.36'),
(13, 'G1A019049', 14, '2020-02-04 10:49:16', 'Mozilla/5.0 (Linux; Android 9; vivo 1902) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 Mobile Safari/537.36'),
(14, 'G1A019049', 8, '2020-02-04 10:49:16', 'Mozilla/5.0 (Linux; Android 9; vivo 1902) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 Mobile Safari/537.36'),
(15, 'G1A019011', 8, '2020-02-04 10:49:37', 'Mozilla/5.0 (Linux; Android 8.1.0; vivo 1724 Build/OPM1.171019.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36 VivoBrowser/6.0.0.2'),
(16, 'G1A019081', 5, '2020-02-04 10:49:50', 'Mozilla/5.0 (Linux; U; Android 7.1.1; in-id; CPH1729 Build/N6F26Q) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/70.0.3538.80 Mobile Safari/537.36 OppoBrowser/15.6.2.5'),
(17, 'G1A019085', 8, '2020-02-04 10:50:28', 'Mozilla/5.0 (Linux; Android 7.1.1; ASUS_X00ID) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Mobile Safari/537.36'),
(18, 'G1A019065', 8, '2020-02-04 10:51:33', 'Mozilla/5.0 (Linux; Android 8.1.0; vivo 1724 Build/OPM1.171019.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36 VivoBrowser/5.8.0.10'),
(19, 'G1A019021', 3, '2020-02-04 10:53:56', 'Mozilla/5.0 (Linux; Android 9; ASUS_X01AD) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Mobile Safari/537.36'),
(20, 'G1A019025', 8, '2020-02-04 10:54:26', 'Mozilla/5.0 (Linux; Android 5.1.1; A37f) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.90 Mobile Safari/537.36'),
(21, 'G1A019033', 14, '2020-02-04 10:57:36', 'Mozilla/5.0 (Linux; Android 8.1.0; vivo 1727 Build/OPM1.171019.026; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36 VivoBrowser/6.0.0.2'),
(22, 'G1A019033', 16, '2020-02-04 10:57:36', 'Mozilla/5.0 (Linux; Android 8.1.0; vivo 1727 Build/OPM1.171019.026; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36 VivoBrowser/6.0.0.2'),
(23, 'G1A019007', 5, '2020-02-04 10:58:22', 'Mozilla/5.0 (Linux; Android 5.1; CPH1605) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 Mobile Safari/537.36'),
(24, 'G1A019001', 17, '2020-02-04 10:59:16', 'Mozilla/5.0 (Linux; Android 8.1.0; M5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.116 Mobile Safari/537.36'),
(25, 'G1A019001', 18, '2020-02-04 10:59:16', 'Mozilla/5.0 (Linux; Android 8.1.0; M5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.116 Mobile Safari/537.36'),
(26, 'G1A019001', 8, '2020-02-04 10:59:16', 'Mozilla/5.0 (Linux; Android 8.1.0; M5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.116 Mobile Safari/537.36'),
(27, 'G1A019001', 9, '2020-02-04 10:59:16', 'Mozilla/5.0 (Linux; Android 8.1.0; M5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.116 Mobile Safari/537.36'),
(28, 'G1A019009', 8, '2020-02-04 11:01:19', 'Mozilla/5.0 (Linux; Android 8.1.0; M5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.116 Mobile Safari/537.36'),
(29, 'G1A019009', 9, '2020-02-04 11:01:19', 'Mozilla/5.0 (Linux; Android 8.1.0; M5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.116 Mobile Safari/537.36'),
(30, 'G1A019009', 12, '2020-02-04 11:01:19', 'Mozilla/5.0 (Linux; Android 8.1.0; M5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.116 Mobile Safari/537.36'),
(31, 'G1A019009', 11, '2020-02-04 11:01:19', 'Mozilla/5.0 (Linux; Android 8.1.0; M5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.116 Mobile Safari/537.36'),
(32, 'G1A019059', 8, '2020-02-04 11:03:06', 'Mozilla/5.0 (Linux; Android 8.0.0; SAMSUNG SM-J720F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/10.2 Chrome/71.0.3578.99 Mobile Safari/537.36'),
(33, 'G1A019043', 5, '2020-02-04 11:16:00', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.4 Mobile/15E148 Safari/604.1'),
(34, 'G1A019077', 14, '2020-02-04 11:25:46', 'Mozilla/5.0 (Linux; Android 6.0.1; vivo 1603) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Mobile Safari/537.36'),
(35, 'G1A019055', 14, '2020-02-04 11:57:44', 'Mozilla/5.0 (Linux; Android 5.1.1; A37f) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.116 Mobile Safari/537.36'),
(36, 'G1A019093', 8, '2020-02-04 12:05:33', 'Mozilla/5.0 (Linux; Android 7.1.1; CPH1723) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 Mobile Safari/537.36'),
(37, 'G1A019057', 5, '2020-02-04 12:22:26', 'Mozilla/5.0 (Linux; U; Android 9; en-US; SM-G885F Build/PPR1.180610.011) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.108 UCBrowser/13.0.0.1288 Mobile Safari/537.36'),
(38, 'G1A019003', 15, '2020-02-04 13:37:30', 'Mozilla/5.0 (Linux; Android 9; RMX1805) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 Mobile Safari/537.36'),
(39, 'G1A019047', 15, '2020-02-04 13:50:47', 'Mozilla/5.0 (Linux; Android 5.1.1; A37f) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.116 Mobile Safari/537.36'),
(40, 'G1A019047', 16, '2020-02-04 13:50:47', 'Mozilla/5.0 (Linux; Android 5.1.1; A37f) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.116 Mobile Safari/537.36'),
(41, 'G1A019009', 8, '2020-02-04 14:10:58', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1'),
(42, 'G1A019039', 1, '2020-02-04 14:55:07', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 4A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.116 Mobile Safari/537.36'),
(43, 'G1A019091', 19, '2020-02-04 19:41:28', 'Mozilla/5.0 (Linux; Android 10; Nokia 6.1 Plus) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 Mobile Safari/537.36'),
(44, 'G1A019023', 14, '2020-02-04 19:43:19', 'Mozilla/5.0 (Linux; Android 8.1.0; vivo 1724 Build/OPM1.171019.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36 VivoBrowser/5.8.0.10'),
(45, 'G1A019023', 8, '2020-02-04 19:43:19', 'Mozilla/5.0 (Linux; Android 8.1.0; vivo 1724 Build/OPM1.171019.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36 VivoBrowser/5.8.0.10'),
(46, 'G1A019034', 8, '2020-02-04 19:43:23', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.111 Mobile Safari/537.36'),
(47, 'G1A019034', 15, '2020-02-04 19:43:23', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.111 Mobile Safari/537.36'),
(48, 'G1A019046', 5, '2020-02-04 19:43:27', 'Mozilla/5.0 (Linux; U; Android 9; in-id; RMX1941 Build/PPR1.180610.011) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/53.0.2785.134 Mobile Safari/537.36 RealmeBrowser/35.5.0.8'),
(49, 'G1A019022', 5, '2020-02-04 19:43:45', 'Mozilla/5.0 (Linux; U; Android 8.1.0; id-id; Redmi 6 Pro Build/OPM1.171019.019) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.141 Mobile Safari/537.36 XiaoMi/MiuiBrowser/11.4.3-g'),
(50, 'G1A019010', 14, '2020-02-04 19:44:28', 'Mozilla/5.0 (Linux; U; Android 9; en-us; Redmi Note 5 Build/PKQ1.180904.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.141 Mobile Safari/537.36 XiaoMi/MiuiBrowser/11.3.4-g'),
(51, 'G1A019010', 16, '2020-02-04 19:44:28', 'Mozilla/5.0 (Linux; U; Android 9; en-us; Redmi Note 5 Build/PKQ1.180904.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.141 Mobile Safari/537.36 XiaoMi/MiuiBrowser/11.3.4-g'),
(52, 'G1A019008', 8, '2020-02-04 19:46:47', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1'),
(53, 'G1A019050', 8, '2020-02-04 19:46:55', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 4X) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 Mobile Safari/537.36'),
(54, 'G1A019064', 8, '2020-02-04 19:46:58', 'Mozilla/5.0 (Linux; Android 8.1.0; ASUS_X00TD Build/OPM1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36'),
(55, 'G1A019064', 15, '2020-02-04 19:46:58', 'Mozilla/5.0 (Linux; Android 8.1.0; ASUS_X00TD Build/OPM1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36'),
(56, 'G1A019064', 14, '2020-02-04 19:46:58', 'Mozilla/5.0 (Linux; Android 8.1.0; ASUS_X00TD Build/OPM1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36'),
(57, 'G1A019064', 16, '2020-02-04 19:46:58', 'Mozilla/5.0 (Linux; Android 8.1.0; ASUS_X00TD Build/OPM1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.126 Mobile Safari/537.36'),
(58, 'G1A019036', 8, '2020-02-04 19:47:00', 'Mozilla/5.0 (Linux; U; Android 9; en-us; CPH1969 Build/PPR1.180610.011) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/70.0.3538.80 Mobile Safari/537.36 OppoBrowser/25.6.3.1'),
(59, 'G1A019006', 8, '2020-02-04 19:48:06', 'Mozilla/5.0 (Linux; Android 8.1.0; vivo 1820 Build/O11019; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36 VivoBrowser/6.0.0.2'),
(60, 'G1A019026', 5, '2020-02-04 19:48:40', 'Mozilla/5.0 (Linux; Android 9; Mi A1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 Mobile Safari/537.36'),
(61, 'G1A019052', 9, '2020-02-04 19:49:32', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36'),
(62, 'G1A019028', 8, '2020-02-04 19:49:47', 'Mozilla/5.0 (Linux; U; Android 9; id-id; Redmi Note 8 Pro Build/PPR1.180610.011) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.141 Mobile Safari/537.36 XiaoMi/MiuiBrowser/11.4.3-g'),
(63, 'G1A019076', 8, '2020-02-04 19:50:22', 'Mozilla/5.0 (Linux; Android 6.0; Redmi Note 4X) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.90 Mobile Safari/537.36'),
(64, 'G1A019086', 5, '2020-02-04 19:51:16', 'Mozilla/5.0 (Symbian/3; Series60/5.2 NokiaN8-00/012.002; Profile/MIDP-2.1 Configuration/CLDC-1.1 ) AppleWebKit/533.4 (KHTML, like Gecko) NokiaBrowser/7.3.0 Mobile Safari/533.4 3gpp-gba'),
(65, 'G1A019086', 1, '2020-02-04 19:51:16', 'Mozilla/5.0 (Symbian/3; Series60/5.2 NokiaN8-00/012.002; Profile/MIDP-2.1 Configuration/CLDC-1.1 ) AppleWebKit/533.4 (KHTML, like Gecko) NokiaBrowser/7.3.0 Mobile Safari/533.4 3gpp-gba'),
(66, 'G1A019086', 15, '2020-02-04 19:51:16', 'Mozilla/5.0 (Symbian/3; Series60/5.2 NokiaN8-00/012.002; Profile/MIDP-2.1 Configuration/CLDC-1.1 ) AppleWebKit/533.4 (KHTML, like Gecko) NokiaBrowser/7.3.0 Mobile Safari/533.4 3gpp-gba'),
(67, 'G1A019086', 14, '2020-02-04 19:51:16', 'Mozilla/5.0 (Symbian/3; Series60/5.2 NokiaN8-00/012.002; Profile/MIDP-2.1 Configuration/CLDC-1.1 ) AppleWebKit/533.4 (KHTML, like Gecko) NokiaBrowser/7.3.0 Mobile Safari/533.4 3gpp-gba'),
(68, 'G1A019086', 16, '2020-02-04 19:51:16', 'Mozilla/5.0 (Symbian/3; Series60/5.2 NokiaN8-00/012.002; Profile/MIDP-2.1 Configuration/CLDC-1.1 ) AppleWebKit/533.4 (KHTML, like Gecko) NokiaBrowser/7.3.0 Mobile Safari/533.4 3gpp-gba'),
(69, 'G1A019041', 8, '2020-02-04 19:51:21', 'Mozilla/5.0 (Linux; Android 9; CPH1819) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 Mobile Safari/537.36'),
(70, 'G1A019040', 1, '2020-02-04 19:51:46', 'Mozilla/5.0 (Linux; Android 9; RMX1821) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 Mobile Safari/537.36'),
(71, 'G1A019016', 5, '2020-02-04 19:52:55', 'Mozilla/5.0 (Linux; Android 7.1.2; Redmi 4A) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Mobile Safari/537.36'),
(72, 'G1A019044', 8, '2020-02-04 19:53:16', 'Mozilla/5.0 (Linux; U; Android 9; id-id; Redmi 7 Build/PKQ1.181021.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.141 Mobile Safari/537.36 XiaoMi/MiuiBrowser/11.3.4-g'),
(73, 'G1A019062', 5, '2020-02-04 19:53:37', 'Mozilla/5.0 (Linux; U; Android 7.1.2; id-id; Redmi 4A Build/N2G47H) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.141 Mobile Safari/537.36 XiaoMi/MiuiBrowser/11.3.4-g'),
(74, 'G1A019018', 8, '2020-02-04 19:53:54', 'Mozilla/5.0 (Linux; Android 5.1.1; A37f) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.116 Mobile Safari/537.36'),
(75, 'G1A019054', 8, '2020-02-04 19:56:14', 'Mozilla/5.0 (Linux; U; Android 9; in-id; CPH1823 Build/PPR1.180610.011) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/70.0.3538.80 Mobile Safari/537.36 OppoBrowser/15.6.3.1'),
(76, 'G1A019090', 9, '2020-02-04 19:57:07', 'Mozilla/5.0 (Linux; Android 6.0; LG-K350) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.136 Mobile Safari/537.36'),
(77, 'G1A019071', 9, '2020-02-04 20:00:20', 'Mozilla/5.0 (Linux; U; Android 7.0; id-id; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.141 Mobile Safari/537.36 XiaoMi/MiuiBrowser/11.4.3-g'),
(78, 'G1C016006', 5, '2020-02-04 20:00:30', 'Mozilla/5.0 (Linux; U; Android 9; in-id; RMX1941 Build/PPR1.180610.011) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/53.0.2785.134 Mobile Safari/537.36 RealmeBrowser/35.5.0.8'),
(79, 'G1C016006', 2, '2020-02-04 20:00:30', 'Mozilla/5.0 (Linux; U; Android 9; in-id; RMX1941 Build/PPR1.180610.011) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/53.0.2785.134 Mobile Safari/537.36 RealmeBrowser/35.5.0.8'),
(80, 'G1C016006', 14, '2020-02-04 20:00:30', 'Mozilla/5.0 (Linux; U; Android 9; in-id; RMX1941 Build/PPR1.180610.011) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/53.0.2785.134 Mobile Safari/537.36 RealmeBrowser/35.5.0.8'),
(81, 'G1C016006', 19, '2020-02-04 20:00:30', 'Mozilla/5.0 (Linux; U; Android 9; in-id; RMX1941 Build/PPR1.180610.011) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/53.0.2785.134 Mobile Safari/537.36 RealmeBrowser/35.5.0.8'),
(82, 'G1C016006', 8, '2020-02-04 20:00:30', 'Mozilla/5.0 (Linux; U; Android 9; in-id; RMX1941 Build/PPR1.180610.011) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/53.0.2785.134 Mobile Safari/537.36 RealmeBrowser/35.5.0.8'),
(83, 'G1C016006', 12, '2020-02-04 20:00:30', 'Mozilla/5.0 (Linux; U; Android 9; in-id; RMX1941 Build/PPR1.180610.011) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/53.0.2785.134 Mobile Safari/537.36 RealmeBrowser/35.5.0.8'),
(84, 'G1A019072', 14, '2020-02-04 20:01:36', 'Mozilla/5.0 (Linux; U; Android 9; en-US; RMX1801 Build/PKQ1.181121.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.108 UCBrowser/13.0.0.1288 Mobile Safari/537.36'),
(85, 'G1A019090', 6, '2020-02-04 20:02:24', 'Mozilla/5.0 (Linux; Android 6.0; LG-K350) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.136 Mobile Safari/537.36'),
(86, 'G1A019090', 1, '2020-02-04 20:02:24', 'Mozilla/5.0 (Linux; Android 6.0; LG-K350) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.136 Mobile Safari/537.36'),
(87, 'G1A019090', 9, '2020-02-04 20:02:24', 'Mozilla/5.0 (Linux; Android 6.0; LG-K350) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.136 Mobile Safari/537.36'),
(88, 'G1A019038', 5, '2020-02-04 20:08:38', 'Mozilla/5.0 (Linux; Android 7.0; vivo 1714 Build/NRD90M; wv) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.84 Mobile Safari/537.36 VivoBrowser/5.8.0.10'),
(89, 'G1A019079', 5, '2020-02-04 20:10:56', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.4 Mobile/15E148 Safari/604.1'),
(90, 'G1A019017', 5, '2020-02-04 20:15:20', 'Mozilla/5.0 (Linux; U; Android 9; en-us; RMX1941 Build/PPR1.180610.011) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/53.0.2785.134 Mobile Safari/537.36 RealmeBrowser/35.5.0.8'),
(91, 'G1A019096', 1, '2020-02-04 20:19:45', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.4 Mobile/15E148 Safari/604.1'),
(92, 'G1A019068', 1, '2020-02-04 20:23:53', 'Mozilla/5.0 (Linux; Android 5.1.1; A37f) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.92 Mobile Safari/537.36'),
(93, 'G1A019073', 1, '2020-02-04 20:26:22', 'Mozilla/5.0 (Linux; U; Android 4.4.4; en-US; 2014811 Build/KTU84P) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.108 UCBrowser/12.13.0.1207 Mobile Safari/537.36'),
(94, 'C1B019028', 3, '2020-02-04 20:55:10', 'Mozilla/5.0 (Linux; Android 5.1.1; A37fw Build/LMY47V) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36'),
(95, 'G1A019005', 8, '2020-02-04 20:55:46', 'Mozilla/5.0 (Linux; U; Android 9; in-id; CPH1923 Build/PPR1.180610.011) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/70.0.3538.80 Mobile Safari/537.36 OppoBrowser/25.6.3.1'),
(96, 'G1A019014', 8, '2020-02-04 21:17:55', 'Mozilla/5.0 (Linux; Android 9; ASUS_X00TD) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.116 Mobile Safari/537.36'),
(97, 'G1A019014', 9, '2020-02-04 21:17:55', 'Mozilla/5.0 (Linux; Android 9; ASUS_X00TD) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.116 Mobile Safari/537.36'),
(98, 'G1A019014', 11, '2020-02-04 21:17:55', 'Mozilla/5.0 (Linux; Android 9; ASUS_X00TD) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.116 Mobile Safari/537.36'),
(99, 'G1A019014', 6, '2020-02-04 21:17:55', 'Mozilla/5.0 (Linux; Android 9; ASUS_X00TD) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.116 Mobile Safari/537.36'),
(100, 'G1A019014', 5, '2020-02-04 21:17:55', 'Mozilla/5.0 (Linux; Android 9; ASUS_X00TD) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.116 Mobile Safari/537.36'),
(101, 'G1A019014', 1, '2020-02-04 21:17:55', 'Mozilla/5.0 (Linux; Android 9; ASUS_X00TD) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.116 Mobile Safari/537.36'),
(102, 'G1A019048', 5, '2020-02-04 21:34:29', 'Mozilla/5.0 (Linux; Android 9; SM-A750GN) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 Mobile Safari/537.36'),
(103, 'G1A019029', 15, '2020-02-04 21:49:04', 'Mozilla/5.0 (Linux; Android 9; CPH1917) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.136 Mobile Safari/537.36'),
(104, 'G1A019027', 5, '2020-02-04 21:53:05', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36'),
(105, 'G1A019002', 8, '2020-02-04 22:01:06', 'Mozilla/5.0 (Linux; U; Android 9; en-US; ASUS_X00TD Build/PKQ1) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.108 UCBrowser/12.14.0.1221 Mobile Safari/537.36'),
(106, 'G1A019098', 8, '2020-02-04 22:21:49', 'Mozilla/5.0 (iPhone; CPU iPhone OS 12_4_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.2 Mobile/15E148 Safari/604.1'),
(107, 'G1A019037', 14, '2020-02-05 04:51:10', 'Mozilla/5.0 (Linux; U; Android 9; id-id; Redmi Note 5 Build/PKQ1.180904.001) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.141 Mobile Safari/537.36 XiaoMi/MiuiBrowser/11.3.4-g'),
(108, 'G1A019031', 8, '2020-02-05 09:14:26', 'Mozilla/5.0 (Linux; U; Android 7.0; id-id; Redmi Note 4 Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/71.0.3578.141 Mobile Safari/537.36 XiaoMi/MiuiBrowser/10.9.9-g');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `npm` varchar(12) NOT NULL,
  `name` varchar(32) NOT NULL,
  `birthPlace` varchar(32) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `highSchoolSource` varchar(64) DEFAULT NULL,
  `gender` enum('L','P') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `npm`, `name`, `birthPlace`, `birthDate`, `highSchoolSource`, `gender`) VALUES
(1, 'G1A019001', 'Ismiranda Syahfitri', 'Binjai', '2001-10-25', 'SMA N 1 Binjai', 'P'),
(2, 'G1A019002', 'Yusuf Nasrulloh', 'Suka Makmur', '2000-12-26', 'SMA N 9 Bengkulu Utara', 'L'),
(3, 'G1A019003', 'Firsti Eliora', 'Curup', '2001-11-12', 'SMA N 1 Rejang Lebong', 'P'),
(4, 'G1A019004', 'Emilia Dwifirana', 'Mangunharjo', '2000-01-01', 'SMA Negeri Purwodadi', 'P'),
(5, 'G1A019005', 'Ninda Puji Lestari', 'Awat Mata', '2001-02-19', 'SMAN 2 Bengkulu Selatan', 'P'),
(6, 'G1A019006', 'Astuti Zahrroh', 'Manna', '2002-05-28', ' SMAN 2 Bengkulu Selatan', 'P'),
(7, 'G1A019007', 'Renti epana sari', 'Tanjung Raman', '2001-03-31', 'SMA N 2 Bengkulu Selatan', 'P'),
(8, 'G1A019008', 'Balqis Nabila Aulia Putri', 'Bengkulu', '2001-05-15', 'SMAN 5 KOTA BENGKULU', 'P'),
(9, 'G1A019009', 'FADILLAH DWIKY ANDANI LUMBAN RAJ', 'Manna', '2001-02-10', 'SMAN 2 BENGKULU SELATAN', 'L'),
(10, 'G1A019010', 'Wahyu Dwi Prasetio', 'Bengkulu', '2001-06-29', 'sman 5 kota bengkulu', 'L'),
(11, 'G1A019011', 'Yahya Masykur Nurhamdi', 'Bengkulu', '2001-03-10', 'SMA 2 Kota Bengkulu', 'L'),
(12, 'G1A019012', 'Fedryanto Dartiko', 'Pekanbaru', '2001-07-20', 'SMAN 1 kaur', 'L'),
(13, 'G1A019013', 'Setiawan Ariansyah', 'Gunung Selan', '2001-06-09', 'SMAN 1 Bengkulu Utara', 'L'),
(14, 'G1A019014', 'Mufti restu mahesa', 'Cilacap', '2001-10-26', 'Sman 4 sungai penuh', 'L'),
(15, 'G1A019015', 'Febrianto Ramandes', 'Bengkulu', '2000-12-09', 'SMAN 3 Bengkulu Tengah', 'L'),
(16, 'G1A019016', 'Elya Nurhajiza', 'Taba Anyar', '2001-03-05', 'SMA N 3 Lebong', 'P'),
(17, 'G1A019017', 'Ridha Nafila Turrahma', 'Timbang Deli', '2002-08-24', 'SMAIT IQRA\'', 'P'),
(18, 'G1A019018', 'Rizki Gusmanto', 'Bengkulu', '2000-07-29', 'sma muhammadiyah 4 bengkulu', 'L'),
(19, 'G1A019019', '', '', '0000-00-00', '', NULL),
(20, 'G1A019020', 'Desi AdeWinda .P ', 'Siabu', '2002-12-22', 'SMA N 1 SIABU ', 'P'),
(21, 'G1A019021', 'Muflihatun Robingah', 'Jagong', '2002-05-10', 'SMAN 5 Takengon', 'P'),
(22, 'G1A019022', 'Dewi Silvia Panjaitan', 'Pematang Siantar', '2000-08-24', 'SMA Teladan Pematangsiantar', 'P'),
(23, 'G1A019023', 'Adam Idham Ramadhan', 'Bengkulu', '2001-12-09', 'SMAN 5 BKL', 'L'),
(24, 'G1A019024', 'Muhammad Gusfach Afrialdho Utama', 'Bengkulu', '2001-04-03', 'SMA Negeri 1 Lebong', 'L'),
(25, 'G1A019025', 'Rifqi Naufal', 'Bengkulu', '2001-05-29', 'SMAN 06 Kota Bengkulu', 'L'),
(26, 'G1A019026', 'Aisyah Amalia', 'Bengkulu', '2000-12-29', 'SMAN 1 Bengkulu Utara', 'P'),
(27, 'G1A019027', 'Daffa Khoiri', 'Bengkulu', '2001-08-24', 'SMA: 4 kota bengkulu', 'L'),
(28, 'G1A019028', 'M. Naufal Fahrezi', 'Curup', '2001-04-04', ' SMAN 1 Rejang Lebong', 'L'),
(29, 'G1A019029', 'Rivaldi Arta Wijaya', 'Tanjung Jaya', '2001-11-04', 'SMAN 01 Curup', 'L'),
(30, 'G1A019030', 'Andrei Jonior Gustari', 'Bengkulu', '2000-06-06', 'Smk Negeri 1 Bengkulu', 'L'),
(31, 'G1A019031', 'M. Pandu Patana', 'Palembang', '2001-11-13', ' SMAN 01 Bengkulu Selatan', 'L'),
(32, 'G1A019032', 'Aidil syadam radihan ', 'Padang', '2001-06-14', 'sman2 Padang', 'L'),
(33, 'G1A019033', 'M. Daffa alfajri', 'Curup', '2001-10-25', 'sman 01 rejang lebong', 'L'),
(34, 'G1A019034', 'Adde nanda caesario putra', 'Bengkulu', '1999-07-06', 'SMAN 1 LLG', 'L'),
(35, 'G1A019035', 'Febby novriananda putri', 'Bengkulu', '2001-11-13', 'SMA N 5 BKL', 'P'),
(36, 'G1A019036', 'Yusni meihesa', 'Bengkulu', '2001-05-01', 'sman5 kota bkl', 'L'),
(37, 'G1A019037', 'Muhammad Fajrianto', 'Bengkulu', '2000-06-29', 'SMAN 2 Kota Bengkulu', 'P'),
(38, 'G1A019038', 'Diyah Ishita Azaharah', 'Bengkulu', '2001-04-09', 'SMAN 2 kota BKL', 'P'),
(39, 'G1A019039', 'Sindhi Vinata', 'Lahat', '2001-04-10', 'SMA Negeri 4 Lahat', 'P'),
(40, 'G1A019040', 'Hafidz muhammad wirawan', 'Bengkulu', '2001-10-02', 'SMAN5 bengkulu', 'L'),
(41, 'G1A019041', 'Faridho Catur Pamungkas', 'Bengkulu', '2001-06-18', 'Sman 2 Kota Bengkulu', 'L'),
(42, 'G1A019042', 'Ilpiklus Andika Putra', 'Selika', '2001-06-29', 'SMAN 2 kaur', 'L'),
(43, 'G1A019043', 'Gita Dwi Putriani', 'Bengkulu', '2001-07-13', 'SMAN 1 Kota Bengkulu', 'P'),
(44, 'G1A019044', 'Siti Rochika Qori', 'Pendopo', '2001-11-03', 'SMA N 1 pendopo barat', 'P'),
(45, 'G1A019045', '', '', '0000-00-00', '', NULL),
(46, 'G1A019046', 'Ikhsan Adi Nugroho', 'Pulau Tanding', '2000-05-25', 'SMAN 5 Lubuklinggau', 'L'),
(47, 'G1A019047', 'Ahmad Faris', 'Bengkulu', '2001-10-01', ' sman 5 kota bengkulu', 'L'),
(48, 'G1A019048', 'Refki Jorgi Pradana', 'Bengkulu', '2001-05-31', 'SMA N 7 KOTA BENGKULU', 'L'),
(49, 'G1A019049', 'Bryan Pasaribu', 'Medan', '2001-02-25', 'SMAN 3 Rantau utara ', 'L'),
(50, 'G1A019050', 'Gabriel ananthasadewa ', 'Curup', '2001-02-04', ' SMAN 1 CURUP', 'L'),
(51, 'G1A019051', 'Jessy Mandasari', 'Lubuk Linggau', '2001-10-13', 'sman 2 lebongselatan', 'P'),
(52, 'G1A019052', 'Nabillah Ayudia Sari ', 'Bengkulu', '2001-10-27', 'Sma : 5 kota bengkulu', 'P'),
(53, 'G1A019053', '', '', '0000-00-00', '', NULL),
(54, 'G1A019054', 'Hanan Raihana', 'Bengkulu', '2000-01-01', 'SMAIT Darul Quran', 'P'),
(55, 'G1A019055', 'ADHA DONT DIFFERATAMA', 'Sarolangun', '2001-03-18', 'SMAN 2 SAROLANGUN', 'L'),
(56, 'G1A019056', 'Agung Tri Saputra', 'Air Hitam', '2001-05-15', 'Sman 4 mukomuko', 'L'),
(57, 'G1A019057', 'Muhammad Rizki Fadilah', 'Bintuhan', '2001-08-07', 'SMAN 1 Kaur', 'P'),
(58, 'G1A019058', '', '', '0000-00-00', '', NULL),
(59, 'G1A019059', 'Miranda Tiara Sella', 'Bengkulu', '2001-09-20', 'SMAN 7 Bengkulu Utara', 'L'),
(60, 'G1A019060', 'Abrar Abe Mujaddid', 'Batam', '2001-12-22', 'SMAN 09 Kota Bengkulu', 'L'),
(62, 'G1A019062', 'Muhammad Wijaya Permana', 'Tais', '2001-04-10', 'SMAN 5 KOTA BENGKULU', 'L'),
(63, 'G1A019063', 'Shaddam Muhammad Iqbal', 'Bengkulu', '2001-09-14', 'SMA IT IQRA\'', 'L'),
(64, 'G1A019064', 'Rhedo Francesco', 'Simpang Tiga', '2002-06-03', 'SMAN 4 KAUR', 'L'),
(65, 'G1A019065', 'Joi Pebrianty Hasian Lumbanraja ', 'Pematang Siantar', '2002-02-24', 'SMAN 1 PEMATANGSIANTAR ', 'P'),
(66, 'G1A019066', 'RANDI JULIAN SAPUTRA', 'Bengkulu', '2001-07-19', 'Sman 2 kota bkl ', 'L'),
(67, 'G1A019067', 'Muhammad Dzakwan', 'Pasaman', '2000-04-17', 'SMA IT IQRA', 'L'),
(68, 'G1A019068', 'Rolin Sanjaya Tamba', '', '0000-00-00', '', NULL),
(69, 'G1A019069', 'Andre Wahyu Novriansyah', 'Cahaya Negeri', '2000-11-24', 'SMA N keberbakatan Olahraga bengkulu', 'L'),
(70, 'G1A019070', '', '', '0000-00-00', '', NULL),
(71, 'G1A019071', 'M. Aulia Abdurrahman ', 'Palembang', '2001-11-29', 'MAN 1 Bengkulu Utara ', 'L'),
(72, 'G1A019072', 'Hendra Yesekyel Pangaribuan', 'Argamakmur', '1999-12-02', 'SMA 01 Argamakmur', 'L'),
(73, 'G1A019073', 'krisna wahyudi ', 'Curup', '2001-11-09', ' sma n 2 rejang lebong', 'L'),
(74, 'G1A019074', 'Nabilatul balqis', 'Bengkulu', '2001-01-14', 'SMAN 4 kota Bengkulu', 'P'),
(75, 'G1A019075', 'Firmansyah Alfarisi', 'Bengkulu', '2001-03-24', 'SMA N 7 BKL', 'L'),
(76, 'G1A019076', 'Murfid aqil', 'Bekasi', '2002-04-22', 'SMAN 2 kota Bengkulu', 'P'),
(77, 'G1A019077', 'MUHAMMAD IKHSAN PRASANIDIRTA', 'Manna', '2001-06-04', 'SMAN2 BENGKULU SELATAN', 'P'),
(78, 'G1A019078', 'Rasya ratu meilani', 'Jakarta', '2001-05-16', 'SMA 2 rejang Lebong ', 'P'),
(79, 'G1A019079', 'Nabilla Wardah Bonitta', 'Bengkulu', '2000-12-14', 'Sman 5 bkl', 'P'),
(80, 'G1A019080', 'Reza Utami', 'Bengkulu', '0000-00-00', 'sman 7 kota bengkulu', 'P'),
(81, 'G1A019081', 'annisa kurniati', 'Lahat', '2001-06-15', 'sma n 3 lahat', 'P'),
(82, 'G1A019082', 'Alfath Arif Rizkullah', 'Lawang Agung', '2001-10-02', 'SMA N Rupit', 'L'),
(83, 'G1A019083', 'Berlian Tri Saputra', 'Bengkulu', '2001-05-15', 'SMAN 5', 'L'),
(84, 'G1A019084', 'Nofa Rima Yanti Nasution', 'Bengkulu', '2000-11-01', 'Man 2Kota Bengkulu.', 'P'),
(85, 'G1A019085', 'Yogi Pratama', 'Lubuk Linggau', '2001-07-21', 'SMKN 3 LUBUKLINGGAU', 'L'),
(86, 'G1A019086', 'Rizky Aruni', 'Lubuk Linggau', '2000-10-19', 'SMAN 2 Kota Bengkulu', 'L'),
(87, 'G1A019087', 'WIKO REDHO ILLAHI ', 'Batu Raja', '2001-05-23', 'SMA N 2 BENGKULU ', 'L'),
(88, 'G1A019088', 'Alan Syahlan Santriago', 'Bengkulu', '1999-11-24', 'SMKN 1 Bengkulu Selatan', 'L'),
(89, 'G1A019089', 'Muhammad Rizky Aditya', 'Bengkulu', '2001-06-02', 'Sma 7 kota Bengkulu', 'L'),
(90, 'G1A019090', 'Muhammad Ighfahry Triputra', 'Bengkulu', '2001-10-04', 'SMAN 2 Kota Bengkulu', 'L'),
(91, 'G1A019091', 'Muhammad Fikri Hidayatullah', 'Lamongan', '2000-07-24', 'SMAN 2 KOTA BENGKULU', 'L'),
(92, 'G1A019092', 'Okto Redo', 'Jambat Akar', '2001-10-01', 'SMA Muhammadiyah 1 Bengkulu', 'P'),
(93, 'G1A019093', 'Nadila Zumitia Putri', 'Manna', '2001-07-25', 'SMKN 1 Bengkulu Selatan', 'P'),
(94, 'G1A019094', 'Rizkianda rachmansyah', 'Bengkulu', '2001-04-25', 'SMAN 7 BKL', 'L'),
(95, 'G1A019095', 'Muhammad Alif Fachriansyah', 'Bengkulu', '0000-00-00', 'SMA IT IQRA', 'L'),
(96, 'G1A019096', 'Agung Rahmatsyah', 'Bengkulu', '2000-12-21', 'SMAS IT ASSYIFA BOARDING SCHOOL SUBANG', 'L'),
(97, 'G1A019097', 'Muhammad Syah Rahmadhani ', 'Bengkulu', '2000-12-05', 'sman 7 kota bkl', 'L'),
(98, 'G1A019098', 'Rahwini Harpa Helda ', 'Argamakmur', '2001-04-11', 'SMAN 1 BENGKULU UTARA', 'P'),
(99, 'G1A019061', 'Martin Mulyo Syahidin', 'Mukomuko', '2001-05-26', 'SMA N 3 Mukomuko', 'L');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `msi_survey_items`
--
ALTER TABLE `msi_survey_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_msi_survey_item_msi_survey_parent` (`parent_id`);

--
-- Indeks untuk tabel `msi_survey_parents`
--
ALTER TABLE `msi_survey_parents`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `msi_survey_results`
--
ALTER TABLE `msi_survey_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_msi_survey_results_msi_survey_item` (`item_id`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `msi_survey_items`
--
ALTER TABLE `msi_survey_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `msi_survey_parents`
--
ALTER TABLE `msi_survey_parents`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `msi_survey_results`
--
ALTER TABLE `msi_survey_results`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `msi_survey_items`
--
ALTER TABLE `msi_survey_items`
  ADD CONSTRAINT `FK_msi_survey_item_msi_survey_parent` FOREIGN KEY (`parent_id`) REFERENCES `msi_survey_parents` (`id`);

--
-- Ketidakleluasaan untuk tabel `msi_survey_results`
--
ALTER TABLE `msi_survey_results`
  ADD CONSTRAINT `FK_msi_survey_results_msi_survey_item` FOREIGN KEY (`item_id`) REFERENCES `msi_survey_items` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
