-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Des 2022 pada 02.44
-- Versi server: 10.4.17-MariaDB-log
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kantin_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(120) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_barang`, `nama_barang`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Tipat Cantok', 'Tipat Enak Banget', 'Makanan', 7000, 16, 'tipatkalas.jpg'),
(3, 'Nasi Goreng', 'Nasi Goreng Spesial', 'Makanan', 10000, 13, 'nasigoreng.jpg'),
(4, 'Coca Cola', 'Coca Cola Original', 'Minuman', 8000, 22, 'cocacola.jpg'),
(9, 'Nasi Kuning', 'Nasi Kuning Enak', 'Makanan', 7000, 12, 'nasikuning.jpg'),
(11, 'Baju', 'Baju Hitam Polos', 'Pakaian', 40000, 22, 'pngegg_(1).png'),
(12, 'Nasi Jinggo', 'Nasi Jinggo Goceng', 'Makanan', 5000, 18, 'nasijinggo.jpg'),
(15, 'Dancow', 'Dancow sachet vanilla', 'Minuman', 5000, 17, 'dancow.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `metode` varchar(20) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `telepon`, `metode`, `tgl_pesan`, `batas_bayar`) VALUES
(2, 'Sukirman', 'Banyuwangi', '081526534122', 'Cash', '2022-07-10 22:53:57', '2022-07-11 22:53:57'),
(3, 'Rah', 'Bali', '089786124521', 'Transfer', '2022-07-10 23:26:53', '2022-07-11 23:26:53'),
(4, 'Iwan', 'Bllng', '087562777122', 'Cash', '2022-07-11 19:03:42', '2022-07-12 19:03:42'),
(5, 'Hardi', 'Denpasar', '081456245123', 'Cash', '2022-07-14 23:02:05', '2022-07-15 23:02:05'),
(6, 'Arya', 'Gianyar', '087888908123', 'Cash', '2022-07-14 23:12:52', '2022-07-15 23:12:52'),
(7, 'Kadek', 'Karangasem', '081234766123', 'Transfer', '2022-07-23 10:26:32', '2022-07-24 10:26:32'),
(8, 'Jayak', 'Bualu', '083233563111', 'Transfer', '2022-07-25 23:51:37', '2022-07-26 23:51:37'),
(9, 'Dedo', 'Jumbaran', '082567544342', 'Cash', '2022-07-26 08:12:13', '2022-07-27 08:12:13'),
(10, 'hr', 'hrhr', '088767823123', 'Cash', '2022-07-26 10:34:28', '2022-07-27 10:34:28'),
(11, 'Rudi', 'Malang', '085676233562', 'Transfer', '2022-07-26 22:45:01', '2022-07-27 22:45:01'),
(15, 'Ardhita', 'Ungasan', '089767255123', 'Transfer', '2022-07-28 22:12:43', '2022-07-29 22:12:43'),
(16, 'Dedi', 'Jimbaran', '088786123421', 'Cash', '2022-07-28 22:14:03', '2022-07-29 22:14:03'),
(17, 'Mahdi', 'Arab', '087123567111', 'Cash', '2022-07-29 10:00:21', '2022-07-30 10:00:21'),
(18, 'Akai', 'Pedungan', '087267352123', 'Cash', '2022-07-29 13:41:50', '2022-07-30 13:41:50'),
(19, 'Hermawan', 'Bung Tomo', '08723456212', 'Cash', '2022-07-29 14:36:49', '2022-07-30 14:36:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_barang`, `nama_barang`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 2, 3, 'Nasi Goreng', 2, 10000, ''),
(2, 3, 1, 'Tipat Cantok', 1, 7000, ''),
(3, 3, 2, 'Sprite', 1, 7000, ''),
(4, 3, 3, 'Nasi Goreng', 1, 10000, ''),
(5, 3, 4, 'Coca Cola', 1, 8000, ''),
(6, 4, 1, 'Tipat Cantok', 1, 7000, ''),
(7, 4, 3, 'Nasi Goreng', 1, 10000, ''),
(8, 5, 11, 'Baju', 2, 40000, ''),
(9, 6, 11, 'Baju', 2, 40000, ''),
(10, 7, 2, 'Sprite', 3, 8000, ''),
(11, 8, 11, 'Baju', 1, 40000, ''),
(12, 8, 2, 'Sprite', 1, 8000, ''),
(13, 8, 3, 'Nasi Goreng', 1, 10000, ''),
(14, 8, 4, 'Coca Cola', 1, 8000, ''),
(15, 9, 2, 'Sprite', 1, 8000, ''),
(16, 9, 3, 'Nasi Goreng', 2, 10000, ''),
(17, 10, 2, 'Sprite', 11, 8000, ''),
(18, 11, 2, 'Sprite', 1, 8000, ''),
(19, 13, 1, 'Tipat Cantok', 1, 7000, ''),
(20, 13, 3, 'Nasi Goreng', 1, 10000, ''),
(21, 14, 1, 'Tipat Cantok', 1, 7000, ''),
(22, 14, 4, 'Coca Cola', 1, 8000, ''),
(23, 14, 3, 'Nasi Goreng', 1, 10000, ''),
(24, 15, 1, 'Tipat Cantok', 1, 7000, ''),
(25, 15, 3, 'Nasi Goreng', 1, 10000, ''),
(26, 16, 11, 'Baju', 3, 40000, ''),
(27, 17, 1, 'Tipat Cantok', 1, 7000, ''),
(28, 17, 3, 'Nasi Goreng', 1, 10000, ''),
(29, 18, 15, 'Dancow', 3, 5000, ''),
(30, 19, 1, 'Tipat Cantok', 1, 7000, '');

--
-- Trigger `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_barang = NEW.id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'Anna Chairman', 'Anna', '123', 2),
(4, 'Hardi', 'har', '234', 2),
(5, 'Sukirman', 'suki', 'suki', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
