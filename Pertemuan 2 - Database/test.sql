-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2020 at 01:40 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

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
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(1, 'informatika'),
(2, 'mesin'),
(3, 'kimia'),
(4, 'statistika'),
(5, 'matematika'),
(6, 'geologi');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mhs` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `nama_mhs` varchar(20) NOT NULL,
  `tgl_lahir` varchar(30) NOT NULL,
  `no_telp` int(11) NOT NULL,
  `alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mhs`, `id_jurusan`, `nama_mhs`, `tgl_lahir`, `no_telp`, `alamat`) VALUES
(1, 1, 'tommy', ' 10 maret 2000', 5165432, 'madura'),
(2, 1, 'wahid', '20 mei 2000', 216543, 'sidoarjo'),
(3, 1, 'ali kharozim', '03 januari 2000', 16543, 'pacitan'),
(4, 2, 'hanif', '10 agustus 2000', 16546, 'boyolali'),
(5, 3, 'yudha', '09 november 2000', 216546, 'magetan'),
(6, 4, 'zain', '25 desember 2000', 16546, 'surabaya'),
(7, 5, 'aji', '06 oktober 2000', 16546, 'gresik'),
(8, 6, 'sumiati', '17 februari 2000', 16546, 'klaten'),
(9, 1, 'romi', '18 april 2000', 16546, 'magelang'),
(10, 2, 'ridho', '19 mei 2000', 56164, 'bangkalan'),
(11, 6, 'fincent', '26 februari 2001', 21654, 'arosbaya'),
(12, 1, 'darul', '17 september 2001', 21563, 'blega'),
(13, 3, 'ulum', '14 februari 1999', 2654, 'kamal'),
(14, 5, 'simbah', '19 april 2000', 16464, 'jakarta'),
(15, 3, 'logitech', '12 desember 2012', 16544, 'surabaya'),
(16, 2, 'mastekno', '31 desember 2012', 15654, 'jogja'),
(17, 4, 'lentik', '29 oktober 2000', 215664, 'surakarta'),
(18, 5, 'math heri', '18 juni 2000', 5562, 'surakarta'),
(19, 1, 'august', '17 agustus 2000 ', 21654, 'surabaya'),
(20, 6, 'gempur sari', '18 juli 2000', 15642, 'tegal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mhs`),
  ADD KEY `foreginkeyjurusan` (`id_jurusan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `foreginkeyjurusan` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
