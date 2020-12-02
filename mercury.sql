-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2020 at 04:01 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mercury`
--

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE `makanan` (
  `ID_Makanan` int(3) NOT NULL,
  `Nama_Makanan` varchar(35) NOT NULL,
  `Harga` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`ID_Makanan`, `Nama_Makanan`, `Harga`) VALUES
(11, 'Nasi Goreng', 10000),
(12, 'Bihun Goreng', 11000),
(13, 'Mie Goreng', 11000),
(14, 'Kwetiau Goreng', 11000),
(15, 'Roti Panggang', 5000),
(16, 'French Fries', 5000),
(17, 'Waffle', 7000),
(18, 'Nasi Telur Sambal Matah', 8000),
(19, 'Indomie ', 3500),
(20, 'Indomie Double', 7000),
(21, 'Kopi Susu Aren', 12000),
(22, 'Americano', 10000),
(23, 'Moccacino', 15000),
(24, 'Espresso', 10000),
(25, 'Flat White', 15000),
(26, 'Cafe Latte', 12000),
(27, 'Vanilla Latte', 15000),
(28, 'Virgin Mojito', 20000),
(29, 'Dalgona Coffee', 16000),
(30, 'Soda Gembira', 8000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `ID_Transaksi` int(3) NOT NULL,
  `ID_Makanan` int(3) NOT NULL,
  `Jumlah` int(3) NOT NULL,
  `Total_Harga` int(10) NOT NULL,
  `Tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`ID_Transaksi`, `ID_Makanan`, `Jumlah`, `Total_Harga`, `Tanggal`) VALUES
(1, 11, 2, 20000, '2019-08-15 12:31:46'),
(2, 12, 2, 22000, '2020-10-26 12:32:44'),
(3, 11, 2, 30000, '2020-10-26 12:51:33'),
(4, 11, 2, 20000, '2018-04-19 02:16:57'),
(5, 13, 2, 22000, '2018-05-24 16:16:57'),
(6, 13, 2, 22000, '2020-08-26 02:26:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`ID_Makanan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`ID_Transaksi`),
  ADD KEY `ID_Makanan` (`ID_Makanan`),
  ADD KEY `ID_Makanan_2` (`ID_Makanan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `makanan`
--
ALTER TABLE `makanan`
  MODIFY `ID_Makanan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `ID_Transaksi` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
