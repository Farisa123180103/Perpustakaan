-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2020 at 12:24 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(7) NOT NULL,
  `nama_admin` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `no_telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `username`, `password`, `no_telepon`) VALUES
(1, 'admin', 'admin', 'admin', '088882738'),
(7946417, 'lalapo', 'lala', 'lala', '547389'),
(10877582, 'hayu', 'hayu', 'hayu', '94'),
(3015594, 'jojo', 'jojo', 'jojo', '223'),
(9353940, 'wo', 'wo', 'wo', '123');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(7) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `tahun` varchar(20) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `stok` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul_buku`, `pengarang`, `penerbit`, `tahun`, `genre`, `stok`) VALUES
(1271624, 'Dear Nathan', 'J.Andika', 'Gramedia', '2018', 'Novel', 19),
(3237157, 'Permrograman Web', 'wilis', 'Yudistira', '2005', 'Pelajaran', 18),
(5985989, 'Mandalika', 'JJ. Thompson', 'Sinarpadiu', '2019', 'Novel', 0),
(10014320, 'apa', 'apa', 'apa', '2011', 'apa', 18);

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman_buku`
--

CREATE TABLE `peminjaman_buku` (
  `id_peminjaman` int(7) NOT NULL,
  `id_buku` int(7) NOT NULL,
  `id_user` int(7) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `no_telepon` varchar(20) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman_buku`
--

INSERT INTO `peminjaman_buku` (`id_peminjaman`, `id_buku`, `id_user`, `judul_buku`, `pengarang`, `genre`, `nama_user`, `no_telepon`, `status`) VALUES
(1221070, 10014320, 3941887, 'apa', 'apa', 'apa', 'Baba', '08293', 'Dipinjam'),
(1268980, 10014320, 2, 'apa', 'apa', 'apa', 'user1', '234', 'Dipinjam'),
(2951466, 1271624, 3941887, 'Dear Nathan', 'J.Andika', 'Novel', 'Baba', '08293', 'Dipinjam'),
(4165436, 9371517, 1, 'Bawah Tanah', 'J. David', 'Novel', 'user', '68293', 'Dikembalikan'),
(4290130, 3237157, 2, 'Permrograman Web', 'wilis', 'Pelajaran', 'user1', '234', 'Dikembalikan'),
(6102201, 5985989, 3941887, 'Mandalika', 'JJ. Thompson', 'Novel', 'Baba', '08293', 'Dikembalikan'),
(7894328, 9483347, 3941887, 'Dear Nathan', 'Dirga', 'Pendidikan', 'Baba', '08293', 'Dikembalikan'),
(8487521, 9371517, 2, 'Bawah Tanah', 'J. David', 'Novel', 'user1', '234', 'Dikembalikan'),
(8885512, 1112, 1, 'hujan', 'bambang', 'novel', 'user', '68293', 'Dikembalikan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(7) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `no_telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`, `no_telepon`) VALUES
(1, 'user', 'user', 'user', '68293'),
(2, 'user1', 'user1', 'user1', '234'),
(3941887, 'Baba', 'baba1', 'baba1', '08293'),
(4007575, 're', 're', '123', '123'),
(4452123, 'Wulandari', 'wulan', 'wulan', '089966836479'),
(10478132, 'use2', 'use2', 'use2', 'use2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `peminjaman_buku`
--
ALTER TABLE `peminjaman_buku`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
