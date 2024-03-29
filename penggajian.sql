-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2024 at 02:01 PM
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
-- Database: `penggajian`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_jabatan`
--

CREATE TABLE `data_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(120) NOT NULL,
  `gaji_pokok` varchar(50) NOT NULL,
  `tj_transport` varchar(50) NOT NULL,
  `uang_makan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_jabatan`
--

INSERT INTO `data_jabatan` (`id_jabatan`, `nama_jabatan`, `gaji_pokok`, `tj_transport`, `uang_makan`) VALUES
(1, 'Staff Marketing', '4000000', '800000', '500000'),
(3, 'Staff Finance', '4500000', '800000', '540000'),
(4, 'Admin', '4700000', '850000', '500000'),
(5, 'Operator', '3000000', '700000', '500000'),
(6, 'Security', '5000000', '300000', '300000');

-- --------------------------------------------------------

--
-- Table structure for table `data_kehadiran`
--

CREATE TABLE `data_kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `bulan` varchar(15) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_pegawai` varchar(225) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `hadir` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `alpha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_kehadiran`
--

INSERT INTO `data_kehadiran` (`id_kehadiran`, `bulan`, `nik`, `nama_pegawai`, `jenis_kelamin`, `nama_jabatan`, `hadir`, `sakit`, `alpha`) VALUES
(4, '112020', '1234567893', 'Boy', 'Laki-laki', 'Staff Finance', 20, 1, 2),
(5, '112020', '1234567890', 'Doni', 'Laki-laki', 'Staff Marketing', 19, 1, 3),
(6, '122020', '1234567893', 'Boy', 'Laki-laki', 'Staff Finance', 20, 1, 2),
(7, '122020', '1234567890', 'Doni', 'Laki-laki', 'Staff Marketing', 19, 2, 2),
(8, '122020', '167856001', 'Andi', 'Laki-laki', 'Staff Marketing', 20, 1, 2),
(9, '122020', '123457778', 'Indah', 'Perempuan', 'Staff Marketing', 20, 2, 1),
(10, '122020', '1122334456', 'Sandi Nagoya', 'Laki-laki', 'Staff Finance', 19, 2, 2),
(11, '122020', '12789012', 'Tuti', 'Perempuan', 'Admin', 20, 2, 0),
(42, '012024', '12789012', 'admin', 'Perempuan', 'Admin', 0, 0, 0),
(43, '012024', '167856001', 'Andi', 'Laki-laki', 'Security', 0, 0, 0),
(44, '012024', '1234567893', 'Boy', 'Laki-laki', 'Staff Finance', 0, 0, 0),
(45, '012024', '1234567890', 'Doni', 'Laki-laki', 'Staff Marketing', 0, 0, 0),
(46, '012024', '3216100806740024', 'Hanuji', 'Laki-laki', 'Staff Marketing', 20, 0, 0),
(47, '012024', '123457778', 'Indah', 'Perempuan', 'Staff Marketing', 0, 0, 0),
(48, '012024', '1122334456', 'Sandi Nagoya', 'Laki-laki', 'Staff Finance', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_pegawai` varchar(255) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data_pegawai`
--

INSERT INTO `data_pegawai` (`id_pegawai`, `nik`, `nama_pegawai`, `username`, `password`, `jenis_kelamin`, `jabatan`, `tanggal_masuk`, `status`, `photo`, `hak_akses`) VALUES
(1, '1234567890', 'Doni', 'doni', '2da9cd653f63c010b6d6c5a5ad73fe32', 'Laki-laki', 'Staff Marketing', '2020-08-21', 'Pegawai Tetap', 'doni.jpg', 2),
(3, '1234567893', 'Boy', 'boy', '202cb962ac59075b964b07152d234b70', 'Laki-laki', 'Staff Finance', '2020-10-12', 'Pegawai Tetap', 'profil6.jpg', 2),
(4, '12789012', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Perempuan', 'Admin', '2020-11-05', 'Pegawai Tetap', 'av24.png', 1),
(5, '167856001', 'Andi', 'andi', 'ce0e5bf55e4f71749eade7a8b95c4e46', 'Laki-laki', 'Security', '2020-11-10', 'Pegawai Tidak Tetap', 'profil4.jpg', 2),
(6, '123457778', 'Indah', 'indah', '202cb962ac59075b964b07152d234b70', 'Perempuan', 'Staff Marketing', '2020-11-10', 'Pegawai Tidak Tetap', 'profil92.jpg', 2),
(7, '1122334456', 'Sandi Nagoya', 'sandi', 'd9b1d7db4cd6e70935368a1efb10e377', 'Laki-laki', 'Staff Finance', '2020-12-07', 'Pegawai Tidak Tetap', 'profil5.jpg', 2),
(8, '3216100806740024', 'Hanuji', 'Hanuji', 'be701ae69abfff1d1d05a7b0f844462e', 'Laki-laki', 'Staff Marketing', '2023-01-01', 'Pegawai Tetap', 'pegawai-220617-4a461bb2261.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hak_akses`
--

INSERT INTO `hak_akses` (`id`, `keterangan`, `hak_akses`) VALUES
(1, 'admin', 1),
(2, 'pegawai', 2);

-- --------------------------------------------------------

--
-- Table structure for table `potongan_gaji`
--

CREATE TABLE `potongan_gaji` (
  `id` int(11) NOT NULL,
  `potongan` varchar(120) NOT NULL,
  `jml_potongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `potongan_gaji`
--

INSERT INTO `potongan_gaji` (`id`, `potongan`, `jml_potongan`) VALUES
(1, 'Alpha', 200000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_jabatan`
--
ALTER TABLE `data_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `hak_akses`
--
ALTER TABLE `hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
