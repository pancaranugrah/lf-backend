-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Feb 2023 pada 04.51
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lifetech`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `price` int(10) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `file_path`, `description`, `price`, `created_at`, `updated_at`) VALUES
(7, 'Oppo Find X5', 'products/jk9u2i1JnMJRMppJS4ZUdqkZWy9zMHw5fxCWumtw.webp', 'Oppo Find X5 Pro flagship dari Oppo', 2000000, '2023-01-14', '2023-01-16'),
(8, 'Zenfone 9', 'products/OxZAGdZXPW55L8hVGdVFZSHZS1E2V8IzfbEBVyUR.jpg', 'HP mungil flasgship', 10000000, '2023-01-14', '2023-01-15'),
(9, 'Samsung Galaxy S22 Ultra', 'products/Gjs7bkFBEeYOwfLUk4tcjGAXGfKgzieeZra62dSo.webp', 'HP Samsung Flagship Sejati', 20000000, '2023-01-15', '2023-01-15'),
(10, 'iPhone 14 Pro', 'products/Sy8E0TGgvqe9bgvcAAWiLgmv2EofL9AmHo6QANc3.webp', 'iPhone Boba terbaru dengan infinity display fitur terbaru dari iPhone', 20000000, '2023-01-16', '2023-01-16'),
(11, 'Samsung SmartWatch', 'products/yfqYxmdgtDmiSlln2UXOkQTSFVPAEdwFKi4lVnHa.webp', 'SmartWatch beneran bro!', 5000000, '2023-01-16', '2023-01-16'),
(12, 'Infinix Hot 11 NFC', 'products/XhhXfVWSR50wzM9yd9zIoo5r0NHpsKobD2bsLsIG.webp', 'Smartphone murah dengan NFC dan spesifikasi tinggi', 1800000, '2023-01-16', '2023-01-16'),
(13, 'Xiaomi Redmi 10C', 'products/Kdws1TqGsdLIl7X7GIsyQhenbVOZfqMP629yFz63.png', 'Xiaomi dengan snapdragon murah', 1900000, '2023-01-16', '2023-01-16'),
(14, 'Samsung Galaxy S20 FE', 'products/MJetPEPbC2ssE4lveLfemnT4QKvWET2IUmDu8rpw.webp', 'Kelas Flasgship terjangkau dari samsung', 5300000, '2023-01-16', '2023-01-16'),
(15, 'Samsung Galaxy A73 5G', 'products/7do9Q0SIdC08Ab6RAAzZispVRIjNWmEVSr4MJcq2.avif', 'Midrange terbaik dari samsung', 7000000, '2023-01-16', '2023-01-16'),
(16, 'Samsung Galaxy A52 5G', 'products/gW53hFOdzPkBeNAeB9WZHd8KZwaK7fSwNsjZ5I1W.jpg', 'Midrange dengan harga dan spesifikasi yang cocok', 5000000, '2023-01-16', '2023-01-16'),
(17, 'Samsung Galaxy M31', 'products/LwXpvDRusNESagQZ8Ht7dV2SzeX3pfPdZRMY6Eac.webp', 'HP yang dijual hanya online dan harga ekonomis', 3000000, '2023-01-16', '2023-01-16'),
(18, 'Samsung Core A02s', 'products/ZT6iBATL4QFXEqVo6nAPnqqgLIdc2nuKTrNkMO2x.webp', 'Smartphone samsung murah dengan dual mic', 1600000, '2023-01-16', '2023-01-16'),
(19, 'Vivo T1 Pro 5G', 'products/wVwCbH2Jl183La0HGU8ZwkrgU64UNqeYJjXfgv67.jpg', 'Midrange terbaik di kelas 4 juataan', 4500000, '2023-01-16', '2023-01-16'),
(20, 'Asus Chromebook', 'products/3EhZTR5fYgoHxqpQ2AnbrFN0zjKiubCXORMNBLrM.jpg', 'Asus version chromebook', 2500000, '2023-01-16', '2023-01-16'),
(21, 'Asus Zenbook', 'products/KNig91nrklRmPCiIS8NZkyoICjhhcPoHB0OQ6F0J.png', 'Laptop Flagship tipis dan ringan', 35000000, '2023-01-16', '2023-01-16'),
(22, 'Asus Tuf Gamming', 'products/R21CSzHIUPxXhWRbIQK6ssukQMv6Mc7zAB2aNnDv.png', 'Asus Gamming Laptop 15 jutaan', 15000000, '2023-01-16', '2023-01-16'),
(23, 'Asus Rog Duo', 'products/IfD3XCmnKKKYaFHgIakfF0kUnbeS4Gi0BBIrrWPt.jpg', 'Rog Duo Layar', 40000000, '2023-01-16', '2023-01-16'),
(24, 'Asus Vivobook', 'products/7MUL7eKMSFzoeBo3ftxZ4nZ0TZWdFT2QAqfxXQ98.jpg', 'Serie laptop terjangkau dari Asus', 9000000, '2023-01-16', '2023-01-16'),
(25, 'Infinix X1', 'products/XtafxUqi9zDrjXNupcLerDgcL6rg1HwID0eV5OMe.jpg', 'Laptop goib dengan spesifikasi gak masuk akal', 7000000, '2023-01-16', '2023-01-16'),
(26, 'Huawei Book', 'products/YdSjbrAHuqpSreHq49JODORcq7GXI3CA0bAdZEKW.png', 'seri laptop dari Huawei', 12000000, '2023-01-16', '2023-01-16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Pancar', 'pancar@gmail.com', '$2y$10$o/vdEwFAY8/29nGPGtYjcO.0qkU/pZsZtK6wVsycB2fTozZB5oZV.'),
(2, 'Surya', 'surya@kencana.com', '$2y$10$ibhU3XtWztkT5TfWtLToJeOvpVCpU.KsAcTRjwoJhJsdq7M6VFUi2'),
(3, 'Anugrah', 'anugrah@mail.com', '$2y$10$ugl2fqRkyQWK75hnSu3Mje0FBA9kldkjIRtuwodtfWkWLM17k7xSm'),
(4, 'Sejati', 'sejati@gmail.com', '$2y$10$K5XuzQP2PNM5uRhzrZDz9uUyWgnNlMajYgkpIzwBu2stO6SKRHWRO'),
(5, 'Kencana', 'kencana@gmaill.com', '$2y$10$EW83UssB1F6a3yA5sK/K1OrIXxP0fnrhE7z6HaWxrh2JTP194/uhG'),
(6, 'Rizal', 'rizal@gmaill.com', '$2y$10$5tlsB2DkjouqIi1SQGq4pezfoyw7IF7cqnDdJ/N8kLpcbBTvze.ja'),
(7, 'Adony', 'adony@gmail.com', '$2y$10$uJNOtN.FJHlyBXrvQQqFMOYoNW/aT.8WPjosQKTXMPx0hHadvflAC'),
(8, 'Vera', 'vera@aprilia.com', '$2y$10$b9Olr86UK16YL5r.R4iHoeIyT2j67qVSo82uyowzh1u0k/HGxpKpa'),
(9, 'Takashi Mura', 'takashi@mura.com', '$2y$10$R0cOCDJz2T5cdiXpP11zk.ejNgUOSOMN4spjD6/AO1XsJHjDFFC9m'),
(10, 'xcxcxc', 'xcxcx', '$2y$10$Ww/XKKEzB./dLxrEIFUXiO0TDyfBCqFlLCC2fbdZK.9.rVe7YDppe'),
(11, 'sempak', 'sempak@mail.com', '$2y$10$acbf0gG9t1m4q/7egH.mDeMAbvRXcLIpBhvia5Vsq5DatqKCqAsYO');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
