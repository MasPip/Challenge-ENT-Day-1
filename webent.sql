-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Agu 2024 pada 11.25
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
  `kategori` varchar(300) NOT NULL,
  `gambar` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`berita_id`, `judul`, `isi`, `kategori`, `gambar`) VALUES
(9, 'Demo Potongan Tarif, Ratusan Pengemudi Ojol Menyemut di Patung Kuda  Baca artikel CNN Indonesia ', 'Jakarta, CNN Indonesia -- Ratusan pengemudi ojek online (ojol) mulai memadati kawasan Patung Kuda, Jakarta Pusat, jelang aksi unjuk rasa pada Kamis (29/8) ini. Mereka menuntut penurunan potongan tarif dari perusahaan penyedia aplikasi.\r\n', 'Sosial', 'ratusan-pengemudi-ojol-mulai-memadati-kawasan-patung-kuda-jakarta-pusat-jelang-aksi-unjuk-rasa-pada-kamis-298-ini_169.jpeg'),
(10, 'Haidar TKN Bocorkan 3 Kriteria Menteri Keuangan Idaman Prabowo.', 'Jakarta, CNN Indonesia -- Dewan Pakar TKN Prabowo-Gibran Laode M Kamaluddin membongkar kriteria menteri keuangan (menkeu) idaman Presiden Terpilih Prabowo Subianto.\r\nIa menegaskan sosok menkeu yang dibutuhkan prabowo adalah profesional ahli dan mempunyai latar belakang politik.\r\n\r\n\"Liat passion du', 'Ekonomi', '2d5c82ac-007b-4cc9-a61c-9c511c1b6990_169.jpeg'),
(15, 'Anies Terpental dari Pilgub Jakarta, Bagaimana Nasibnya ke Depan?  Baca artikel CNN Indonesia ', 'Jakarta, CNN Indonesia -- Peluang Anies Baswedan maju sebagai calon gubernur di Pilkada DKI Jakarta 2024 tertutup lantaran tak ada lagi partai politik yang punya cukup suara untuk mengusungnya.\r\nSebanyak 15 partai politik telah resmi mendaftarkan pasangan Ridwan Kamil-Suswono sebagai calon gubernur ', 'Analisis', 'kampanye-akbar-anies-muhaimin-di-jis-28_169.jpeg'),
(16, 'Daftar Negara Pemasok Senjata Hamas buat Serang Israel, 2 dari Eropa  Baca artikel CNN Indonesia ', 'Jakarta, CNN Indonesia -- Kelompok perlawanan dari Palestina, Hamas disebut-sebut memperoleh persenjataan dari sejumlah negara, salah satunya negara Asia.\r\nSebanyak dua negara juga disebut ikut memasok senjata buat Hamas.\r\n', 'Internasional', 'militer-hamas-pamer-rudal-saat-parade-di-gaza-usai-gencatan-senjata-5_169.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `nama`, `email`, `password`) VALUES
(2, 'pip', 'pip@gmail.com', '$2y$10$mh40iZTp8jCuwU/p1m3iYuwypmJV/maYcyJmMGwynVp5GeWrUTW9S'),
(3, 'dico', 'dico@gmail.com', '$2y$10$jjLYBC0gmv438YSCJ5v1ZOe9ob31xBExQFgbgY8nONwqkbahln4IK'),
(4, '1', '1@gmail.com', '$2y$10$eFsmkjSkPveyGI5hXfcBq.4V6.dcDF/A9dizmiLYRv0ZBmFZT4/GW');

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
  ADD PRIMARY KEY (`berita_id`);

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
  MODIFY `banner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `berita_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
