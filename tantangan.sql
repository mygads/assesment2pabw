-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Bulan Mei 2024 pada 05.27
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
-- Database: `edutrashgo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tantangan`
--

CREATE TABLE `tantangan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `status` enum('ongoing','completed') DEFAULT 'ongoing',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `progress` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tantangan`
--

INSERT INTO `tantangan` (`id`, `name`, `description`, `deadline`, `status`, `created_at`, `progress`) VALUES
(1, 'Pengumpulan Sampah di Taman', 'Bantu membersihkan sampah di taman sekitar dengan menjaga kebersihan dan menabungkan sampah pada tempatnya.', '2024-06-30', 'ongoing', '2024-05-06 02:15:08', 20),
(2, 'Mengurangi Penggunaan Plastik', 'Mengurangi penggunaan plastik sekali pakai dengan menggunakan alat makan dan minum yang dapat digunakan kembali.', '2024-07-15', 'ongoing', '2024-05-06 02:15:08', 40),
(3, 'Menanam Pohon di Lingkungan Sekitar', 'Tanam pohon di lingkungan sekitar untuk membantu mengurangi polusi udara dan memberikan kesejukan.', '2024-07-30', 'completed', '2024-05-06 02:15:08', 100),
(5, 'Pengurangan Penggunaan Plastik', 'Mengurangi penggunaan plastik sekali pakai dengan menggunakan alat makan dan minum yang dapat digunakan kembali.', '2024-06-30', 'ongoing', '2024-05-06 03:03:28', 0),
(6, 'Pemisahan Sampah', 'Memisahkan sampah menjadi kategori organik dan anorganik untuk mempermudah proses daur ulang dan pengelolaan sampah.', '2024-07-15', 'ongoing', '2024-05-06 03:03:28', 0),
(7, 'Penghijauan Lingkungan', 'Menanam pohon di lingkungan sekitar untuk membantu mengurangi polusi udara dan memberikan kesejukan.', '2024-07-30', 'completed', '2024-05-06 03:03:28', 100);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tantangan`
--
ALTER TABLE `tantangan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tantangan`
--
ALTER TABLE `tantangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
