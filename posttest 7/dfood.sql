-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 01:17 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id` int(10) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `No_Handphone` int(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Pasword` varchar(10) NOT NULL,
  `Gender` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`id`, `Nama`, `No_Handphone`, `Email`, `Pasword`, `Gender`) VALUES
(20, 'Shafira Octafia', 2147483647, 'shafiraoctfa@gmail.com', '22334455', 'perempuan'),
(21, 'Kamilah Maulida', 2147483647, 'kamilah@gmail.com', '11223344', 'perempuan'),
(22, 'Sadam Apriliyanto', 2147483647, 'sadam@gmail.com', '09090909', 'laki-laki'),
(23, 'Adlina Safa Sephia Putri', 2147483647, 'adlina@gmail.vom', '78787878', 'perempuan'),
(24, 'Alfiana Nur Priyanti', 2147483647, 'Alfiana@gmail.com', '454545454', 'perempuan'),
(25, 'Akmal fadillah', 2147483647, 'akmal@gmail.com', '12121212', 'laki-laki');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
