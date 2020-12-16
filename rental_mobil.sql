-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Des 2020 pada 13.35
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental_mobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pel` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jenis_mobil` varchar(100) NOT NULL,
  `tgl_sewa` date NOT NULL,
  `tgl_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pelanggan`, `nama_pel`, `alamat`, `jenis_mobil`, `tgl_sewa`, `tgl_kembali`) VALUES
(12, 'Icang', 'Jl. Jakarta No.11', 'susuki Ertiga', '2020-12-02', '2020-12-04'),
(13, 'Sucipto', 'Jl. Bendungan Sutami No.100', 'Avanza', '2020-12-01', '2020-12-02'),
(14, 'Angga pratama', 'Jl. Kaliurang No.98', 'Suzuki ertiga', '2020-12-06', '2020-12-08'),
(15, 'Beto mario', 'Jl. Sudimoro 123', 'Innova', '2020-12-01', '2020-12-03'),
(11, 'Tresno yuda Pratama', 'Jl. Bandung No200', 'Toyota Rush', '2020-12-03', '2020-12-05');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
