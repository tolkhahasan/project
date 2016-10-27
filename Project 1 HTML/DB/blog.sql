-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.1.16-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.5120
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for blog
CREATE DATABASE IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `blog`;

-- Dumping structure for table blog.artikel
CREATE TABLE IF NOT EXISTS `artikel` (
  `id_artikel` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_upload` date NOT NULL,
  `judul_artikel` varchar(50) NOT NULL,
  `gambar_artikel` varchar(225) NOT NULL,
  `isi_artikel` text NOT NULL,
  `jumlah_view` varchar(50) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_author` int(11) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  PRIMARY KEY (`id_artikel`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table blog.artikel: ~3 rows (approximately)
DELETE FROM `artikel`;
/*!40000 ALTER TABLE `artikel` DISABLE KEYS */;
INSERT INTO `artikel` (`id_artikel`, `tgl_upload`, `judul_artikel`, `gambar_artikel`, `isi_artikel`, `jumlah_view`, `id_kategori`, `id_author`, `keyword`) VALUES
	(1, '2016-10-06', 'HTML ??', 'html.png', 'Pengertian dan Fungsi HTML (HyperText Markup Language)\r\nHTML adalah singkatan dari HyperText Markup Language yaitu bahasa pemrograman  standar yang digunakan untuk membuat sebuah halaman web, yang kemudian dapat diakses untuk menampilkan berbagai informasi di dalam sebuah penjelajah web Internet (Browser). HTML dapat juga digunakan sebagai link link antara file-file dalam situs atau dalam komputer dengan menggunakan localhost, atau link yang menghubungkan antar situs dalam dunia internet.\r\n<br><br>\r\nSupaya  dapat menghasilkan tampilan wujud yang terintegerasi Pemformatan hiperteks sederhana ditulis dalam berkas format ASCII sehingga menjadi halaman web dengan perintah-perintah HTML.\r\nHTML merupakan sebuah bahasa yang bermula bahasa yang sebelumnya banyak dipakai di dunia percetakan dan penerbirtan yang disebut  Standard Generalized Markup Language (SGML)\r\n<br><br>\r\nSekarang ini HTML merupakan standar Internet yang dikendalikan dan didefinisikan pemakaiannya oleh World Wide Web Consortium (W3C).  Pada tahun 1989, HTML dibuat oleh kolaborasi Berners-lee Robert dengan Caillau TIM  pada saat mereka bekerja di CERN (CERN merupakan lembaga penelitian fisika energi tinggi di Jenewa)\r\n<br><br>\r\nHTTP atau Hypertext Transfer Protokol merupakan protokol yang digunakan untuk mentransfer data atau document yang berformat HTML dari web server ke web browser. Dengan HTTP inilah yang memungkinkan Anda menjelajah internet dan melihat halaman web', '6756', 1, 2, 'html'),
	(2, '2016-10-16', 'PHP ??', 'php.png', 'PHP adalah bahasa pemrograman script server-side yang didesain untuk pengembangan web. Selain itu, PHP juga bisa digunakan sebagai bahasa pemrograman umum (wikipedia). PHP di kembangkan pada tahun 1995 oleh Rasmus Lerdorf, dan sekarang dikelola oleh The PHP Group. Situs resmi PHP beralamat di http://www.php.net.\r\n<br><br>\r\nPHP disebut bahasa pemrograman server side karena PHP diproses pada komputer server. Hal ini berbeda dibandingkan dengan bahasa pemrograman client-side seperti JavaScript yang diproses pada web browser (client).\r\n<br><br>\r\nPada awalnya PHP merupakan singkatan dari Personal Home Page. Sesuai dengan namanya, PHP digunakan untuk membuat website pribadi. Dalam beberapa tahun perkembangannya, PHP menjelma menjadi bahasa pemrograman web yang powerful dan tidak hanya digunakan untuk membuat halaman web sederhana, tetapi juga website populer yang digunakan oleh jutaan orang seperti wikipedia, wordpress, joomla, dll.\r\n<br><br>\r\nSaat ini PHP adalah singkatan dari PHP: Hypertext Preprocessor, sebuah kepanjangan rekursif, yakni permainan kata dimana kepanjangannya terdiri dari singkatan itu sendiri: PHP: Hypertext Preprocessor.\r\n<br><br>\r\nPHP dapat digunakan dengan gratis (free) dan bersifat Open Source. PHP dirilis dalam lisensi PHP License, sedikit berbeda dengan lisensi GNU General Public License (GPL) yang biasa digunakan untuk proyek Open Source.\r\n<br><br>\r\nKemudahan dan kepopuleran PHP sudah menjadi standar bagi programmer web di seluruh dunia. Menurut wikipedia pada februari 2014, sekitar 82% dari web server di dunia menggunakan PHP. PHP juga menjadi dasar dari aplikasi CMS (Content Management System) populer seperti Joomla, Drupal, dan WordPress.', '4562', 2, 3, 'php'),
	(3, '2016-10-26', 'JAVA SCRIPT ??', 'javascript.png', 'JavaScript adalah bahasa pemrograman web yang bersifat Client Side Programming Language. Client Side Programming Language adalah tipe bahasa pemrograman yang pemrosesannya dilakukan oleh client. Aplikasi client yang dimaksud merujuk kepada web browser seperti Google Chrome dan Mozilla Firefox.\r\n<br><br>\r\nJenis bahasa pemrograman Client Side berbeda dengan bahasa pemrograman Server Side seperti PHP, dimana untuk server side seluruh kode program dijalankan di sisi server.\r\n<br><br>\r\nUntuk menjalankan JavaScript, kita hanya membutuhkan aplikasi text editor, dan web browser. JavaScript memiliki fitur: high-level programming language, client-side, loosely tiped, dan berorientasi objek.\r\n<br><br>\r\nFungsi JavaScript Dalam Pemograman Web\r\nJavaScript pada awal perkembangannya berfungsi untuk membuat interaksi antara user dengan situs web menjadi lebih cepat tanpa harus menunggu pemrosesan di web server. Sebelum javascript, setiap interaksi dari user harus diproses oleh web server.\r\n<br><br>\r\nBayangkan ketika kita mengisi form registrasi untuk pendaftaran sebuah situs web, lalu men-klik tombol submit, menunggu sekitar 20 detik untuk website memproses isian form tersebut, dan mendapati halaman yang menyatakan bahwa terdapat kolom form yang masih belum diisi.\r\n<br><br>\r\nUntuk keperluan seperti inilah JavaScript dikembangkan. Pemrosesan untuk mengecek apakah seluruh form telah terisi atau tidak, bisa dipindahkan dari web server ke dalam web browser.\r\n<br><br>\r\nDalam perkembangan selanjutnya, JavaScript tidak hanya berguna untuk validasi form, namun untuk berbagai keperluan yang lebih modern. Berbagai animasi untuk mempercantik halaman web, fitur chatting, efek-efek modern, games, semuanya bisa dibuat menggunakan JavaScript.\r\n\r\nAkan tetapi karena sifatnya yang dijalankan di sisi client yakni di dalam web browser yang digunakan oleh pengunjung situs, user sepenuhnya dapat mengontrol eksekusi JavaScript. Hampir semua web browser menyediakan fasilitas untuk mematikan JavaScript, atau bahkan mengubah kode JavaScript yang ada. Sehingga kita tidak bisa bergantung sepenuhnya kepada JavaScript.', '98923', 3, 1, 'java script');
/*!40000 ALTER TABLE `artikel` ENABLE KEYS */;

-- Dumping structure for table blog.author
CREATE TABLE IF NOT EXISTS `author` (
  `id_author` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `deskripsi` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_author`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table blog.author: ~3 rows (approximately)
DELETE FROM `author`;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` (`id_author`, `nama`, `deskripsi`, `foto`) VALUES
	(1, 'Kang Mus', 'Saya Kang Mus, yang memegang Kepanjen Lawang Elor', 'kangmus.jpg'),
	(2, 'Kang Wan', 'Kang Wawan asli made in tulungangung.', 'wawan.jpg'),
	(3, 'Mbahbey', 'lhaaa ini baru saya sendiriii hahahahaahaha,...', 'saya.jpg');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;

-- Dumping structure for table blog.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table blog.kategori: ~2 rows (approximately)
DELETE FROM `kategori`;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
	(1, 'HTML'),
	(2, 'PHP'),
	(3, 'JAVA SCRIPT');
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;

-- Dumping structure for table blog.komentar
CREATE TABLE IF NOT EXISTS `komentar` (
  `id_komentar` int(11) NOT NULL AUTO_INCREMENT,
  `id_artikel` int(11) DEFAULT NULL,
  `konten` varchar(255) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_komentar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table blog.komentar: ~0 rows (approximately)
DELETE FROM `komentar`;
/*!40000 ALTER TABLE `komentar` DISABLE KEYS */;
/*!40000 ALTER TABLE `komentar` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
