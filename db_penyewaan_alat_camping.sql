-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Bulan Mei 2025 pada 06.24
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penyewaan_alat_camping`
--
CREATE DATABASE IF NOT EXISTS `db_penyewaan_alat_camping` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_penyewaan_alat_camping`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `alat_camping`
--

CREATE TABLE `alat_camping` (
  `kd_alat` varchar(10) NOT NULL,
  `nama_alat` varchar(100) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `kondisi` varchar(20) DEFAULT NULL,
  `kelengkapan` text DEFAULT NULL,
  `harga_sewa` decimal(10,2) DEFAULT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `alat_camping`
--

INSERT INTO `alat_camping` (`kd_alat`, `nama_alat`, `merk`, `kondisi`, `kelengkapan`, `harga_sewa`, `stok`) VALUES
('KD001', 'Tenda', 'Eiger', 'Baik', 'Tiang, Pasak, Flysheet, Tas', 75000.00, 5),
('KD002', 'Kompor Portable', 'Naturehike', 'Sangat Baik', 'Kompor, Selang adaptor, Kotak', 35000.00, 8),
('KD003', 'Matras Camping', 'Rei', 'Baik', 'Matras, Strap pengikat', 15000.00, 10),
('KD004', 'Kursi Lipat', 'Consina', 'Baru', 'Kursi lipat, Tas penyimpanan', 25000.00, 6);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alat_camping`
--
ALTER TABLE `alat_camping`
  ADD PRIMARY KEY (`kd_alat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
