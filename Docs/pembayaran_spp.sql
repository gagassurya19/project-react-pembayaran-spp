-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 04, 2021 at 03:42 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pembayaran_spp`
--

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kompetensi_keahlian`, `createdAt`, `updatedAt`) VALUES
(2, 'xirpl1', 'rekayasa perangkat lunak', '2021-03-21 12:07:32', '2021-03-21 12:16:59'),
(5, 'xirpl3', 'Rekayasa Perangkat Lunak', '2021-04-01 08:47:39', '2021-04-04 01:42:03');

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_petugas`, `nisn`, `tgl_bayar`, `bulan_dibayar`, `tahun_dibayar`, `id_spp`, `jumlah_bayar`, `createdAt`, `updatedAt`) VALUES
(3, 1, 12345, '2020-05-01 14:27:13', '5', '2020', 2, 4000000, '2021-03-25 09:59:23', '2021-04-04 03:13:25'),
(4, 1, 12345, '2020-05-01 14:27:13', '5', '2019', 2, 350000, '2021-03-25 10:03:46', '2021-03-25 10:03:46'),
(6, 1, 12345, '2021-03-21 14:27:13', '3', '2021', 2, 300000, '2021-04-01 08:37:51', '2021-04-01 08:37:51'),
(7, 1, 12345, '2020-05-01 14:27:13', '4', '2020', 7, 250000, '2021-04-04 03:14:37', '2021-04-04 03:14:37');

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', '2021-03-21 12:47:58', '2021-04-03 07:00:07'),
(12, 'gagassurya19', 'fa0d70153933df53a4c91b660fdc389c', 'Gagas Surya Laksana', 'admin', '2021-04-03 06:07:48', '2021-04-03 07:25:35'),
(15, 'petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'petugas', 'petugas', '2021-04-03 07:01:16', '2021-04-03 07:01:16');

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20210309021520-create-spp.js'),
('20210309021708-create-kelas.js'),
('20210309031817-create-petugas.js'),
('20210309050217-create-siswa.js'),
('20210309050434-create-pembayaran.js');

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`, `id_spp`, `createdAt`, `updatedAt`) VALUES
(12345, '123', 'admin', 5, 'Tulungagung', '08124124112', 2, '2021-03-21 14:17:30', '2021-04-04 02:41:50'),
(19042002, '1904', 'Gagas', 5, 'Tulungagung', '081241241124', 2, '2021-03-30 02:59:35', '2021-04-04 03:21:11');

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id_spp`, `tahun`, `nominal`, `createdAt`, `updatedAt`) VALUES
(2, 2021, 350000, '2021-03-21 12:36:22', '2021-03-21 12:36:22'),
(7, 2022, 450000, '2021-04-04 02:25:19', '2021-04-04 02:32:02');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
