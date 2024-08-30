-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Agu 2024 pada 08.55
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webent`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(10) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `gambar` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`banner_id`, `judul`, `gambar`) VALUES
(5, 'PDIP Bakal Beri Kejutan Pilgub Jabar: Bisa Saja Cagubnya Bukan Kader  ', 'rakernas-iv-pdip-18_169.jpeg'),
(8, 'Daftar 26 Pemain Timnas Indonesia Lawan Arab Saudi dan Australia', 'latihan-timnas-sepak-bola-indonesia_169.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `berita_id` int(10) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `isi` varchar(300) NOT NULL,
  `kategori` int(10) NOT NULL,
  `gambar` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`berita_id`, `judul`, `isi`, `kategori`, `gambar`) VALUES
(26, 'RI-Korsel Sepakat Tinggalkan Dolar AS Mulai September 2024', 'Jakarta, CNN Indonesia -- Bank Indonesia (BI), Bank of Korea (BOK), dan Kementerian Keuangan Korea Selatan menyepakati kerangka kerja sama penggunaan mata uang lokal dalam transaksi keuangan dan ekonomi (Local Currency Transaction/ LCT) mulai September 2024.\r\nKesepakatan yang dicapai pada Sabtu (30/', 0, '70d5abd3-68a2-43e2-83ea-9735db9e86a4_43.jpg'),
(27, 'Butuh Keterangan soal Jet Pribadi, KPK Akan Undang Kaesang', 'Jakarta, CNN Indonesia -- Wakil Ketua Komisi Pemberantasan Korupsi (KPK) Alexander Marwata menyatakan pihaknya membutuhkan keterangan dari anak bungsu Presiden Joko Widodo (Jokowi), Kaesang Pangarep berkaitan dengan informasi dugaan gratifikasi berupa fasilitas pesawat jet pribadi.\r\nSurat undangan k', 0, 'kaesang-pangarep-akan-nyoblos-di-tps-jakarta-selatan_169.jpeg'),
(28, 'Indonesia vs Thailand U-20: Belum Saatnya Garuda Muda Diglorifikasi', 'Jakarta, CNN Indonesia -- Jika ada cerita besar di sepak bola Indonesia, keberhasilan Timnas Indonesia U-20 mengalahkan Argentina U-20, mungkin adalah salah satunya.\r\nIni hampir mirip dengan kisah sukses Indonesia U-19 mengalahkan Korea Selatan 3-2 di Stadion Utama Gelora Bung Karno pada 2013. Kemen', 0, 'kemenangan-bersejarah-timnas-u-20-atas-argentina-4_169.jpeg'),
(29, 'Hasil Drawing Liga Champions: Big Match Melimpah', '\r\nJakarta, CNN Indonesia -- Drawing pertandingan Liga Champions 2024/2025 berlangsung di Grimaldi Forum, Monako, Kamis (29/8) sore waktu setempat atau tengah malam waktu Indonesia. Berikut hasil drawing Liga Champions 2024/2025.', 0, 'liga-champions-1_169.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `foto` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `nama`, `email`, `password`, `foto`) VALUES
(2, 'pip', 'pip@gmail.com', '$2y$10$mh40iZTp8jCuwU/p1m3iYuwypmJV/maYcyJmMGwynVp5GeWrUTW9S', ''),
(3, 'dico', 'dico@gmail.com', '$2y$10$jjLYBC0gmv438YSCJ5v1ZOe9ob31xBExQFgbgY8nONwqkbahln4IK', ''),
(4, '1', '1@gmail.com', '$2y$10$eFsmkjSkPveyGI5hXfcBq.4V6.dcDF/A9dizmiLYRv0ZBmFZT4/GW', ''),
(5, '2', '2@gmail.com', '$2y$10$HNUnzhvudmDYgQDqNoMWm.Uro1Lz1w6iR/sLxDoIa7Oyw0RJC6Eke', ''),
(6, 'Rafif', 'rafif@gmail.com', '$2y$10$vNOmV8h8cVqxRNDtOS/k1eCL.vXL36hHPAn3uUnklwcJsO94uRbp.', ''),
(7, 'Nuha', 'nuha@gmail.com', '$2y$10$Zsq80Z/1.SsgFdhUqjLFXOh9jX5CrGYhPkBKF3/V5O61fQ3tnW2KK', ''),
(8, 'e', 'e@gmail.com', '$2y$10$nmH1ftWyMPRx.ikxchOpKeUBzGT4.3O.Le0uCJ3.NLV.5D7jIWwqe', '3430628.png'),
(9, '3', '3@gmail.com', '$2y$10$xFSc7ofXJYfXhi.pDH6kW.C0x9CCLOlsFZzfIIyhgWbujmqWDhH3C', '4hjg2f64mze61.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`berita_id`),
  ADD KEY `kategori` (`kategori`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `berita_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
