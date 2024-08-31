-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Agu 2024 pada 06.59
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
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `berita_id` int(10) NOT NULL,
  `judul` varchar(300) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kategori` int(10) NOT NULL,
  `gambar` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`berita_id`, `judul`, `isi`, `kategori`, `gambar`) VALUES
(53, 'Anies Respons Ono PDIP soal Peran \'Mulyono\' di Pilgub Jabar 2024', '<p style=\"text-align: justify;\"><strong>Jakarta, CNN Indonesia</strong> -- Anies Baswedan menanggapi pernyataan Ketua DPD PDIP Jabar Ono Surono tentang kekuatan yang disebut menghalangi pencalonan Anies di Pilgub Jabar 2024. Ono pada Kamis (29/8) malam mengatakan sosok tersebut adalah Mulyono. Mendengar hal itu, Anies menyatakan Ono PDIP tentu lebih paham mengenai situasi tersebut. Ia pun memilih tak berkomentar lebih lanjut mengenai Mulyono.</p>\r\n<p style=\"text-align: justify;\">\"Saya rasa Pak Ono [Surono] mengalami dan menyaksikan dari dekat,\" kata Anies Baswedan pada Jumat (30/8) malam seperti diberitakan detikcom.</p>\r\n<p style=\"text-align: justify;\">Semua bermula ketika Ketua DPD PDIP Jabar Ono Surono mengungkapkan alasan PDIP batal mengusung Anies Baswedan karena ada campur tangan lain yang tidak menyetujui hal itu.</p>\r\n<p style=\"text-align: justify;\">Saat ditanyakan siapa orang atau kekuatan yang disebut-sebut menghalangi Anies untuk dicalonkan oleh PDIP di Pilgub Jabar, Ono menyebut sosok itu bernama \'Mulyono\'. Hal itu disampaikan di KPU Jabar usai mengantar pendaftaran bapaslon Pilgub Jabar, Kamis (29/8) malam.</p>\r\n<p style=\"text-align: justify;\">\"Setelah beliau [Anies] tidak jadi diusung di DKI dan kami tidak tahu cara persis proses yang dilakukan oleh DPP dan Ibu Ketua Umum tapi kami menilai bahwa yang sudah mengerucut pada akhirnya bubar itu karena ada tangan-tangan dari luar yang tidak menghendaki Pak Anies diusung di Jabar,\" kata Ono.</p>\r\n<p style=\"text-align: justify;\">\"Mulyono dan geng,\" jawab Ono saat ditanya tangan dari luar yang dimaksud.</p>\r\n<p style=\"text-align: justify;\">Nama Mulyono saat ini kerap diasosiasikan oleh publik dengan Jokowi mengingat nama tersebut adalah nama masa kecil Jokowi.</p>', 26, 'anies-baswedan-3_169.png'),
(54, 'Indonesia Raih Medali Pertama Paralimpiade, Saptoyogo Cetak Sejarah', '<p style=\"text-align: justify;\"><strong>Jakarta, CNN Indonesia</strong> -- Indonesia merebut medali pertamanya di Paralimpiade 2024 Paris setelah Saptoyogo Purnomo mencetak sejarah dengan merebut medali perak cabang atletik nomor 100 meter putra T37 di Stade de France, Paris, Jumat (30/8). Saptoyogo merebut medali perak dengan catatan waktu 11,26 detik. Atlet para atletik 25 tahun itu finis di belakang Ricardo Gomes de Mendonca asal Brasil yang meraih catatan waktu 11,07 detik.</p>\r\n<p style=\"text-align: justify;\">Medali perunggu jatuh ke tangan Andrei Vdovin dari Neutral Paralympic Athletes (NPA), yang merupakan nama yang digunakan untuk mewakili atlet Rusia dan Belarusia yang disetujui di Paralimpiade.</p>', 20, 'medali-pertama-indonesia-di-paralimpiade-2024-2_169.jpeg'),
(55, 'Cara Daftar QR Code Pertalite Jelang Pembatasan 1 Oktober', '<p style=\"text-align: justify;\"><strong>Jakarta, CNN Indonesia</strong> -- Indonesia merebut medali pertamanya di Paralimpiade 2024 Paris setelah Saptoyogo Purnomo mencetak sejarah dengan merebut medali perak cabang atletik nomor 100 meter putra T37 di Stade de France, Paris, Jumat (30/8).<br />Saptoyogo merebut medali perak dengan catatan waktu 11,26 detik. Atlet para atletik 25 tahun itu finis di belakang Ricardo Gomes de Mendonca asal Brasil yang meraih catatan waktu 11,07 detik.</p>\r\n<p style=\"text-align: justify;\">Medali perunggu jatuh ke tangan Andrei Vdovin dari Neutral Paralympic Athletes (NPA), yang merupakan nama yang digunakan untuk mewakili atlet Rusia dan Belarusia yang disetujui di Paralimpiade.</p>', 24, 'uji-coba-pembelian-pertalite-menggunakan-aplikasi-2_169.jpeg'),
(56, 'Tampil Luar Biasa, Jay Idzes Telan Kekalahan Pertama Bersama Venezia', '<p style=\"text-align: justify;\">Jakarta, CNN Indonesia -- Jay Idzes menelan kekalahan pertamanya di Serie A Liga Italia meski bermain bagus saat Venezia dikalahkan Torino di Stadion Pier Luigi Penzo, Venice, Jumat (30/8) malam waktu setempat.<br />Idzes lagi-lagi menampilkan permainan yang solid meski Venezia dikalahkan Torino. Kali ini bek Timnas Indonesia tampil penuh saat melawan Torino. Venezia ditekuk Torino 0-1 pada laga ini. Gol kemenangan tim tamu dicetak Saul Coco melalui sundulan pada menit ke-86.</p>\r\n<p style=\"text-align: justify;\">Meski kalah, penampilan Jay Idzes terbilang cemerlang. Bek 24 tahun itu kembali mampu tampil solid dan mampu mengatur lini pertahanan Venezia dengan baik.</p>', 20, 'venezia-vs-torino-di-serie-a_169.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`) VALUES
(19, 'Nasional'),
(20, 'Olahraga'),
(24, 'Otomotif'),
(26, 'Politik');

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
(7, 'Nuha', 'nuha@gmail.com', '$2y$10$Zsq80Z/1.SsgFdhUqjLFXOh9jX5CrGYhPkBKF3/V5O61fQ3tnW2KK', '4hjg2f64mze61.jpg'),
(8, 'e', 'e@gmail.com', '$2y$10$nmH1ftWyMPRx.ikxchOpKeUBzGT4.3O.Le0uCJ3.NLV.5D7jIWwqe', '3430628.png'),
(9, '3', '3@gmail.com', '$2y$10$xFSc7ofXJYfXhi.pDH6kW.C0x9CCLOlsFZzfIIyhgWbujmqWDhH3C', '4hjg2f64mze61.jpg'),
(10, 'admin', 'admin@gmail.com', '$2y$10$wFYzaS4eRqcmK7LoKrbfrOUyJPgVxRqoDfKiPaGjBJ4SG/2pIZDnK', '4hjg2f64mze61.jpg'),
(11, 'admin2', 'admin2@gmail.com', '$2y$10$9l3aapybNXvk83p7pRwdVuevDU5OXjyKWm6ZhhvkhYEKV/cZzH5UG', '4hjg2f64mze61.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`berita_id`),
  ADD KEY `kategori` (`kategori`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `berita_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `kategori` (`kategori_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
