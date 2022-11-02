-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2022 at 04:27 PM
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
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `no_hp` decimal(15,0) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Pasword` varchar(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Tanggal_Bergabung` varchar(30) NOT NULL,
  `Picture` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `Nama`, `no_hp`, `Email`, `Pasword`, `Gender`, `Tanggal_Bergabung`, `Picture`) VALUES
(4, 'Shafira Octafia', '82254091122', 'Shafira@gmail.com', '12345678', 'perempuan', '27-10-2022', 'Shafira Octafia.png'),
(5, 'Adlina Safa Sephia Putri', '83153516631', 'Adlina@gmail.com', 'Adlina123', 'laki-laki', '27-10-2022', 'Adlina Safa Sephia Putri.png'),
(6, 'Al Fiana Nur Priyanti', '81254090818', 'Alfiana@gmail.com', 'Alfiana123', 'perempuan', '27-10-2022', 'Al Fiana Nur Priyanti.png'),
(7, 'Andi Nur Fadillah', '82145678890', 'Andi@gmail.com', 'Andi123', 'perempuan', '27-10-2022', 'Andi Nur Fadillah.png'),
(9, 'Khairina Nafiza', '89156789012', 'Khairina@gmail.com', '12345678', 'perempuan', '27-10-2022', 'Khairina Nafiza.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
