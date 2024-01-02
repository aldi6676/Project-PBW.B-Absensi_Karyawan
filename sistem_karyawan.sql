-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2024 at 11:03 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_karyawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id` int(11) NOT NULL,
  `nama_karyawan` varchar(100) NOT NULL,
  `waktu` datetime NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `pesan` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tipe_absen` int(11) NOT NULL DEFAULT 0,
  `hadir` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id`, `nama_karyawan`, `waktu`, `lokasi`, `pesan`, `gambar`, `tipe_absen`, `hadir`) VALUES
(18, 'Muhammad Tegar', '2024-01-02 16:23:07', 'Kantor', 'Absen di Kantor', '953-ilustrasi-desain-kantor.jpeg', 1, 1),
(19, 'Muhammad Tegar', '2024-01-02 16:25:18', 'Parkiran', 'Absen Pulang di Parkiran Kantor', '477-24(28).jpg', 2, 3),
(20, 'Rhenaldy Josephan', '2024-01-02 16:26:22', 'Rumah', 'Absen Masuk di Rumah', '626-64e2ec07a40f4.jpg', 1, 1),
(21, 'Rhenaldy Josephan', '2024-01-02 16:27:12', 'Kantin', 'Absen Pulang di Kantin', '443-kantin.jpeg', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kepala_dept` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`id`, `nama`, `kepala_dept`) VALUES
(4, 'Information Systems', 'Afrialdy Syapitra'),
(5, 'Information Security', 'Afrialdy Syapitra'),
(6, 'Human Resources', 'Afrialdy Syapitra');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `account_type` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `email` varchar(200) NOT NULL,
  `no_ktp` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `id_shift` int(11) NOT NULL,
  `id_departemen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `username`, `password`, `account_type`, `nama`, `jenis_kelamin`, `no_telp`, `email`, `no_ktp`, `alamat`, `foto`, `id_shift`, `id_departemen`) VALUES
(9, 'afrialdy', 'admin', 1, 'Afrialdy Syaputra', 'L', '081296154504', 'afrialdy@gmail.com', '12345678', 'Kepulauan Riau', '757-43-profil.jpg', 1, 4),
(13, 'tegar', 'tegar', 2, 'Muhammad Tegar', 'L', '0857-7388-884', 'tegar@gmail.com', '0987654321', 'Jakarta', '984-Screenshot (203).png', 1, 6),
(14, 'rhenaldy', 'rhenaldy', 2, 'Rhenaldy Josephan', 'L', '0878-9501-281', 'rhenaldy@gmail.com', '8643856281', 'Bekasi', '644-WhatsApp Image 2024-01-02 at 16.14.42_e4a86ebb.jpg', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id`, `nama`) VALUES
(1, 'Kantor'),
(2, 'Kantin'),
(3, 'Rumah'),
(4, 'Parkiran');

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `id` int(11) NOT NULL,
  `shift` varchar(50) NOT NULL,
  `jam_mulai` varchar(8) NOT NULL,
  `jam_berhenti` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`id`, `shift`, `jam_mulai`, `jam_berhenti`) VALUES
(1, 'Pagi', '8:00 AM', '3:00 PM'),
(2, 'Sore', '3:00 PM', '10:00 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `departemen`
--
ALTER TABLE `departemen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
