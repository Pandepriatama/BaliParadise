-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2024 at 03:19 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone_3`
--

-- --------------------------------------------------------

--
-- Table structure for table `pura`
--

CREATE TABLE `pura` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pura`
--

INSERT INTO `pura` (`id`, `nama`, `deskripsi`, `foto`, `lokasi`) VALUES
(1, 'Pura Besakih', 'Pura Besakih merupakan pura terbesar dan tertua di Bali, yang memiliki sejarah panjang sejak abad ke-8 Masehi. Awal mula berdirinya pura ini berawal dari perjalanan spiritual seorang pertapa bernama Rsi Markandeya. Ia memimpin sekelompok pengikutnya dari Jawa ke Bali untuk membuka lahan baru di lereng Gunung Agung. Dalam prosesnya, banyak pengikutnya yang meninggal karena kondisi alam yang keras. Untuk menghindari hal serupa, Rsi Markandeya melakukan meditasi dan ritual suci, kemudian menanam sebuah paku tanah (Basuki) sebagai lambang perlindungan. Dari sinilah nama \"Besakih\" berasal.\r\nPura ini kemudian berkembang menjadi pusat keagamaan Hindu di Bali, terutama setelah konsep Tri Hita Karana harmoni antara manusia, alam, dan Tuhan mengakar kuat dalam budaya masyarakat Bali. Kini, Pura Besakih tidak hanya menjadi tempat ibadah, tetapi juga simbol spiritual dan budaya yang melibatkan berbagai ritual besar seperti Upacara Eka Dasa Rudra yang dilakukan setiap seratus tahun sekali.\r\n<br><br>\r\nPura Besakih berlokasi di Desa Besakih, Kecamatan Rendang, Kabupaten Karangasem, Bali, Indonesia, tepatnya di lereng Gunung Agung dengan ketinggian sekitar 1.000 meter di atas permukaan laut.\r\n<br><br>\r\n<b>Larangan bagi Wisatawan di Pura Besakih</b>\r\n<ul>\r\n<li>- Tidak diperbolehkan memasuki area utama pura bagi wanita yang sedang menstruasi.</li>\r\n<li>- Wajib mengenakan pakaian sopan seperti kain dan selendang yang bisa disewa di pintu masuk.</li>\r\n<li>- Dilarang berbicara keras atau menunjukkan sikap tidak hormat selama berada di area pura.</li>\r\n<li>- Tidak boleh memanjat atau menyentuh bangunan maupun tempat pemujaan.</li>\r\n<li>- Larangan membawa makanan atau minuman ke dalam pura.</li>\r\n<li>- Tidak diperkenankan mengambil foto atau video saat berlangsungnya upacara keagamaan tanpa izin.</li>\r\n<li>- Dilarang membawa hewan peliharaan ke dalam area pura.</li>\r\n', '1735556244298.jpg', 'Karangasem, Bali'),
(3, 'Pura Lempuyang', 'Pura Lempuyang adalah salah satu pura tertua di Bali dan termasuk dalam jajaran pura kahyangan jagat, yaitu pura yang dianggap sangat suci oleh umat Hindu Bali. Pura ini berada di lereng Gunung Lempuyang, Kabupaten Karangasem, Bali, pada ketinggian sekitar 1.170 meter di atas permukaan laut. Sejarahnya berakar dari keyakinan Hindu Bali bahwa Gunung Lempuyang adalah tempat bersemayamnya Dewa Iswara, salah satu manifestasi Tuhan dalam agama Hindu. Pura ini dikenal sebagai \"Gerbang Surga\" karena pemandangannya yang menakjubkan, terutama gerbang utama (Candi Bentar) yang membingkai latar belakang Gunung Agung secara sempurna.\nPura Lempuyang tidak hanya dianggap sebagai tempat ibadah tetapi juga sebagai tempat penyucian diri. Untuk mencapai pura utama, pengunjung harus menaiki lebih dari 1.700 anak tangga, sebuah perjalanan spiritual yang melambangkan perjuangan manusia dalam mencapai kesucian.\n\nPura Lempuyang berlokasi di Desa Tista, Kecamatan Abang, Kabupaten Karangasem, Bali, Indonesia.\n\nLarangan bagi Wisatawan di Pura Lempuyang\n\nTidak diperbolehkan memasuki area pura bagi wanita yang sedang menstruasi.\nWajib mengenakan kain dan selendang, yang biasanya disediakan di pintu masuk.\nDilarang berbicara keras, bercanda, atau menunjukkan perilaku yang tidak hormat.\nTidak boleh membawa makanan atau minuman ke dalam area pura.\nDilarang mengambil foto dengan pose yang tidak sopan, terutama di area Candi Bentar.\nTidak diperkenankan menaiki atau memanjat gerbang maupun tempat pemujaan.\nLarangan keras menggunakan drone tanpa izin, terutama di area suci.\nPengunjung yang hanya datang untuk berfoto tanpa menghormati kesakralan pura dapat ditegur atau tidak diizinkan masuk ke area tertentu.\nMemakai pakaian yang terbuka atau tidak sopan dianggap pelanggaran berat.\n', '1735556266854.jpg', 'Karangasem, Bali'),
(4, 'Pura Tanah Lot', 'Pura Tanah Lot adalah salah satu pura laut (Pura Segara) yang paling terkenal di Bali, yang didirikan untuk memuja Dewa Baruna, dewa laut dalam keyakinan Hindu. Sejarahnya berawal dari abad ke-16, ketika seorang pendeta bernama Dang Hyang Nirartha melakukan perjalanan spiritual menyusuri pantai selatan Bali. Ia tertarik pada keindahan sebuah batu karang besar yang menjorok ke laut, dan menganggap tempat tersebut suci. Di sana, ia bermeditasi dan membangun sebuah pura sebagai penghormatan kepada dewa laut.\nPura ini terletak di atas batu karang besar yang dikelilingi oleh air laut saat pasang, menciptakan pemandangan ikonik yang menarik banyak wisatawan. Tanah Lot juga merupakan bagian dari jajaran pura laut yang menjaga Bali dari energi negatif, bersama pura-pura lainnya seperti Pura Uluwatu.\n\nPura Tanah Lot berlokasi di Desa Beraban, Kecamatan Kediri, Kabupaten Tabanan, Bali, Indonesia.\n\nLarangan bagi Wisatawan di Pura Tanah Lot\n\nTidak diperkenankan memasuki pura utama karena hanya digunakan untuk kegiatan ibadah umat Hindu.\nWajib mengenakan pakaian sopan, terutama jika mendekati area suci.\nDilarang memanjat atau menyentuh tempat pemujaan.\nTidak boleh berbicara keras atau bercanda yang tidak pantas di area pura.\nLarangan membawa makanan dan minuman ke dalam area pura.\nTidak diperbolehkan berenang di sekitar pura, karena selain untuk menjaga kesucian, ombak di sekitar sangat berbahaya.\nDilarang mengambil foto secara tidak sopan, terutama yang dapat dianggap tidak menghormati kesucian pura.\nTidak boleh membuang sampah sembarangan di area pura dan sekitarnya.\n', '1735556305999.jpg', 'Tabanan, Bali');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pura`
--
ALTER TABLE `pura`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pura`
--
ALTER TABLE `pura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
