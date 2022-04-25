-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Apr 2022 pada 04.11
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `Id_buku` int(11) NOT NULL,
  `Judul` varchar(50) NOT NULL,
  `Penulis` varchar(50) NOT NULL,
  `Penerbit` varchar(50) NOT NULL,
  `Tahun_terbit` year(4) NOT NULL,
  `Cover_buku` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`Id_buku`, `Judul`, `Penulis`, `Penerbit`, `Tahun_terbit`, `Cover_buku`) VALUES
(26, 'Maaf Tuhan Aku Hampir Menyerah', 'Alfialghazali', 'Ashima', 2020, '04-25-22.03-01-53.buku1.jpg'),
(27, 'Seni Merayu Tuhan', 'Husain Jafar Al-Hadar', 'Mizan Media Utama', 2022, '04-25-22.03-16-14.buku2.jpg'),
(28, 'Sebuah Seni Untuk Bersikap Bodo Amat', 'Mark Manson', 'Gramedia', 2016, '04-25-22.03-12-27.buku3.jpg'),
(29, 'Mantapu Jiwa', 'Jerome Polin Sijabat', 'PT Gramedia Pustaka Utama', 2019, '04-25-22.03-14-36.buku4.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `Id_peminjaman` int(11) NOT NULL,
  `nama_peminjam` varchar(25) NOT NULL,
  `judul_buku` varchar(50) NOT NULL,
  `waktu_peminjaman` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`Id_peminjaman`, `nama_peminjam`, `judul_buku`, `waktu_peminjaman`) VALUES
(9, 'Liza Umma Nur Hidayah', 'Seni Merayu Tuhan', '2022-04-25 01:16:59'),
(10, 'Novita S Sari', 'Mantapu Jiwa', '2022-04-25 01:17:41'),
(11, 'Sannindya Berlian Savita', 'Maaf Tuhan Aku Hampir Menyerah', '2022-04-25 01:18:06'),
(12, 'Nimatul Adhima', 'Sebuah Seni Untuk Bersikap Bodo Amat', '2022-04-25 01:18:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `Id_user` int(11) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(8) NOT NULL,
  `Hak_akses` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`Id_user`, `Username`, `Password`, `Hak_akses`) VALUES
(5, 'admin', 'admin', 'admin'),
(7, 'anggota', 'anggota', 'anggota'),
(9, 'lizaumma', '110910', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`Id_buku`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`Id_peminjaman`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`Id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `Id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `Id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `Id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
