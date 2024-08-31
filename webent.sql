-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Agu 2024 pada 02.30
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
  `isi` mediumtext NOT NULL,
  `kategori` int(10) NOT NULL,
  `gambar` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`berita_id`, `judul`, `isi`, `kategori`, `gambar`) VALUES
(43, 'RI-Korsel Sepakat Tinggalkan Dolar AS Mulai September 2024', 'Jakarta, CNN Indonesia -- Bank Indonesia (BI), Bank of Korea (BOK), dan Kementerian Keuangan Korea Selatan menyepakati kerangka kerja sama penggunaan mata uang lokal dalam transaksi keuangan dan ekonomi (Local Currency Transaction/ LCT) mulai September 2024.\r\nKesepakatan yang dicapai pada Sabtu (30/8) itu akan mendorong penggunaan mata uang lokal rupiah-won untuk transaksi perdagangan antara kedua negara.\r\n\r\nKesepakatan ini merupakan tindak lanjut dari penandatanganan Memorandum of Understanding (MoU) yang ditandatangani pada Mei 2023 dan kesepakatan kerangka operasionalnya pada Juni 2024.\r\n\r\n\r\nBI dalam pernyataannya mengatakan implementasi kerangka LCT antara Indonesia dan Korea Selatan ini merupakan capaian penting dalam kerja sama keuangan bilateral kedua negara.\r\n\r\n\"Kerangka LCT akan memperkuat interkoneksi bank Appointed Cross Currency Dealer (ACCD) dalam memfasilitasi transaksi berjalan antar negara dengan menggunakan mata uang lokal,\" bunyi pernyataan BI.\r\n\r\nKerja sama ini juga mendorong kuotasi nilai tukar secara langsung (direct quotation) antara rupiah terhadap won Korea Selatan serta relaksasi ketentuan yang diperlukan untuk mendorong pemanfaatan LCT.\r\n\r\nKe depan, implementasi kerangka LCT akan mendorong peningkatan transaksi perdagangan bilateral, mengurangi eksposur risiko nilai tukar, dan meningkatkan efisiensi transaksi.\r\n\r\nUntuk memfasilitasi kerja sama ini, BI dan BOK menetapkan sejumlah bank sebagai bank AACD. Bank AACD akan memfasilitasi pelaksanaan LCT melalui pembukaan rekening mata uang negara mitra di negara masing-masing.', 22, '70d5abd3-68a2-43e2-83ea-9735db9e86a4_43.jpg'),
(44, 'Butuh Keterangan soal Jet Pribadi, KPK Akan Undang Kaesang', 'Jakarta, CNN Indonesia -- Wakil Ketua Komisi Pemberantasan Korupsi (KPK) Alexander Marwata menyatakan pihaknya membutuhkan keterangan dari anak bungsu Presiden Joko Widodo (Jokowi), Kaesang Pangarep berkaitan dengan informasi dugaan gratifikasi berupa fasilitas pesawat jet pribadi.\r\nSurat undangan klarifikasi itu, kata dia, sedang disiapkan pihaknya untuk dikirim ke Kaesang.', 19, 'kaesang-pangarep-akan-nyoblos-di-tps-jakarta-selatan_169.jpeg'),
(45, 'Indonesia vs Thailand U-20: Belum Saatnya Garuda Muda Diglorifikasi', 'Jakarta, CNN Indonesia -- Jika ada cerita besar di sepak bola Indonesia, keberhasilan Timnas Indonesia U-20 mengalahkan Argentina U-20, mungkin adalah salah satunya.\r\nIni hampir mirip dengan kisah sukses Indonesia U-19 mengalahkan Korea Selatan 3-2 di Stadion Utama Gelora Bung Karno pada 2013. Kemenangan ini begitu diglorifikasi pada masanya.', 20, 'kemenangan-bersejarah-timnas-u-20-atas-argentina-4_169.jpeg'),
(46, 'Hasil Drawing Liga Champions: Big Match Melimpah', 'Jakarta, CNN Indonesia -- Drawing pertandingan Liga Champions 2024/2025 berlangsung di Grimaldi Forum, Monako, Kamis (29/8) sore waktu setempat atau tengah malam waktu Indonesia. Berikut hasil drawing Liga Champions 2024/2025.', 20, 'liga-champions-1_169.jpeg'),
(47, 'Tampil Luar Biasa, Jay Idzes Telan Kekalahan Pertama Bersama Venezia', 'Jakarta, CNN Indonesia -- Jay Idzes menelan kekalahan pertamanya di Serie A Liga Italia meski bermain bagus saat Venezia dikalahkan Torino di Stadion Pier Luigi Penzo, Venice, Jumat (30/8) malam waktu setempat.\r\nIdzes lagi-lagi menampilkan permainan yang solid meski Venezia dikalahkan Torino. Kali ini bek Timnas Indonesia tampil penuh saat melawan Torino. Venezia ditekuk Torino 0-1 pada laga ini. Gol kemenangan tim tamu dicetak Saul Coco melalui sundulan pada menit ke-86.\r\n\r\nMeski kalah, penampilan Jay Idzes terbilang cemerlang. Bek 24 tahun itu kembali mampu tampil solid dan mampu mengatur lini pertahanan Venezia dengan baik.', 20, 'venezia-vs-torino-di-serie-a_169.png'),
(48, 'Cara Daftar QR Code Pertalite Jelang Pembatasan 1 Oktober', 'Jakarta, CNN Indonesia -- Menunjukkan QR Code sebelum pengisian BBM subsidi akan menjadi syarat saat hendak mengisi Biosolar maupun Pertalite di SPBU milik Pertamina saat pembatasan sudah diterapkan. Ada sejumlah cara untuk mendaftarkan mobil Anda biar dapat BBM subsidi.\r\nQR Code merupakan bukti kendaraan boleh diisi BBM bersubsidi di SPBU. Jika tidak membawa QR Code ini maka masyarakat tak boleh mengisi BBM subsidi ketika aturan sudah diterapkan.\r\n\r\nLangkah ini merupakan bagian dari sosialisasi untuk pembatasan BBM bersubsidi agar diterima kepada masyarakat secara tepat sasaran. Sedangkan penggunaan QR Code ini sudah dilakukan sejak awal Agustus oleh Pertamina di sejumlah wilayah.', 24, 'uji-coba-pembelian-pertalite-menggunakan-aplikasi-2_169.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(255) NOT NULL,
  `kategori_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_nama`, `kategori_status`) VALUES
(18, 'Sosial', ''),
(19, 'Nasional', ''),
(20, 'Olahraga', ''),
(22, 'Ekonomi', ''),
(23, 'Internasional', ''),
(24, 'Otomotif', '');

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
(9, '3', '3@gmail.com', '$2y$10$xFSc7ofXJYfXhi.pDH6kW.C0x9CCLOlsFZzfIIyhgWbujmqWDhH3C', '4hjg2f64mze61.jpg'),
(10, 'admin', 'admin@gmail.com', '$2y$10$wFYzaS4eRqcmK7LoKrbfrOUyJPgVxRqoDfKiPaGjBJ4SG/2pIZDnK', 'kemenangan-bersejarah-timnas-u-20-atas-argentina-4_169.jpeg');

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
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `berita_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
