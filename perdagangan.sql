-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2017 at 08:26 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perdagangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang1`
--

CREATE TABLE `barang1` (
  `kode_barang` varchar(6) NOT NULL,
  `Nama_barang` varchar(30) NOT NULL,
  `satuan_barang` varchar(20) NOT NULL,
  `stok_barang` int(10) DEFAULT NULL,
  `Harga_barang` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang1`
--

INSERT INTO `barang1` (`kode_barang`, `Nama_barang`, `satuan_barang`, `stok_barang`, `Harga_barang`) VALUES
('B1', 'Hardisk', 'buah', 12, 500000),
('B2', 'Mp3 Player', 'unit', 30, 200000),
('B3', 'DVD Player', 'unit', 50, 400000),
('B4', 'Flashdisk', 'Buah', 12, 70000),
('B5', 'Mouse', 'Buah', 34, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `barang2`
--

CREATE TABLE `barang2` (
  `kodebarang` int(11) NOT NULL,
  `namabarang` varchar(20) NOT NULL,
  `hargamodal` int(11) NOT NULL,
  `hargajual` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang2`
--

INSERT INTO `barang2` (`kodebarang`, `namabarang`, `hargamodal`, `hargajual`, `stok`) VALUES
(1, 'Sabun', 2000, 2500, 15),
(2, 'Pasta Gigi', 2500, 3000, 15),
(3, 'Sikat Gigi', 3000, 4000, 10),
(4, 'Rokok', 6000, 7000, 30),
(5, 'Korek Api', 500, 600, 10);

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `kode` varchar(5) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `merk` varchar(15) NOT NULL,
  `tarif` int(11) NOT NULL,
  `nopol` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`kode`, `jenis`, `merk`, `tarif`, `nopol`) VALUES
('M001', 'Sedan', 'BMW E5', 500000, 'BG1234AA'),
('M002', 'Sedan', 'Honda CRV', 350000, 'BG2345BB'),
('M003', 'Bus', 'Mercedez', 1000000, 'BG3456CC'),
('M004', 'Bus', 'Dyna', 800000, 'BG8443DD'),
('M005', 'Truck', 'Hyno ZX', 1500000, 'BG4638EE'),
('M006', 'Truck', 'Dyna X1', 1500000, 'BG8473FF');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kode` varchar(6) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `kontak` varchar(15) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `kota` varchar(15) NOT NULL,
  `kodepos` varchar(5) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`kode`, `nama`, `kontak`, `alamat`, `kota`, `kodepos`, `telepon`, `fax`) VALUES
('P001', 'PT Fox River', 'Hendra', 'Jl. Jend. Sudriman 657', 'Bengkulu', '30245', '1234567', '1234568'),
('P002', 'PT Foxcon', 'Iwan', 'Jl. Wahid Hasyim', 'Jakarta', '73429', '234567', '234568'),
('P003', 'PT Farmacon', 'Yani', 'Jl. Ahmad Dahlan 45', 'Lampung', '28349', '3334445', '3334446');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `kode_penjualan` varchar(6) NOT NULL,
  `kode_barang` varchar(6) NOT NULL,
  `bulan_terjual` varchar(50) DEFAULT NULL,
  `jumlah_terjual` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`kode_penjualan`, `kode_barang`, `bulan_terjual`, `jumlah_terjual`) VALUES
('P1', 'B2', 'January', 4),
('P2', 'B4', 'Februari', 2);

-- --------------------------------------------------------

--
-- Table structure for table `sewa`
--

CREATE TABLE `sewa` (
  `nofaktursewa` varchar(5) NOT NULL,
  `kodepelanggan` varchar(6) NOT NULL,
  `tglsewa` date NOT NULL,
  `kodemobil` varchar(5) NOT NULL,
  `lamasewa` int(11) NOT NULL,
  `uangmuka` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sewa`
--

INSERT INTO `sewa` (`nofaktursewa`, `kodepelanggan`, `tglsewa`, `kodemobil`, `lamasewa`, `uangmuka`) VALUES
('F001', 'P001', '2008-12-01', 'M001', 2, 200000),
('F001', 'P001', '2008-12-01', 'M003', 2, 200000),
('F002', 'P002', '2008-12-02', 'M002', 1, 100000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang1`
--
ALTER TABLE `barang1`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `barang2`
--
ALTER TABLE `barang2`
  ADD PRIMARY KEY (`kodebarang`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`kode_penjualan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang2`
--
ALTER TABLE `barang2`
  MODIFY `kodebarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
