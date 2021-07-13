-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2021 at 03:38 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sdpalembang`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `agenda_deskripsi` text,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(1, 'Penyembelihan Hewan Kurban Idul Adha 2017', '2017-01-22 06:18:01', 'Idul Adha yang biasa disebut lebaran haji atapun lebaran kurban sangat identik dengan penyembelihan hewan kurban. M-Sekolah tahun ini juga melakukan penyembelihan hewan kurban. Yang rencananya akan dihadiri oleh guru-guru, siswa dan pengurus OSIS.', '2017-01-22', '2017-01-22', 'M-Sekolah', '08.00 - 11.00 WIB', 'Dihadiri oleh guru-guru, siswa dan pengurus OSIS', 'M Fikri Setiadi'),
(2, 'Peluncuran Website Resmi M-Sekolah', '2017-01-22 06:26:33', 'Peluncuran website resmi  M-Sekolah, sebagai media informasi dan akademik online untuk pelayanan pendidikan yang lebih baik kepada siswa, orangtua, dan masyarakat pada umumnya semakin meningkat.', '2017-01-04', '2017-01-04', 'M-Sekolah', '07.30 - 12.00 WIB', '-', 'M Fikri Setiadi'),
(3, 'Penerimaan Raport Semester Ganjil Tahun Ajaran 2017-2018', '2017-01-22 06:29:49', 'Berakhirnya semester ganjil tahun pelajaran 2016-2017, ditandai dengan pembagian laporan hasil belajar.', '2017-02-17', '2017-02-17', 'M-Sekolah', '07.30 - 12.00 WIB', 'Untuk kelas XI dan XII, pembagian raport dimulai pukul 07.30 WIB. Sedangkan untuk kelas X pada pukul 09.00 WIB. Raport diambil oleh orang tua/wali murid masing-masing.', 'M Fikri Setiadi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT '0',
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(1, 'Kedatangan Tamu Asing', '2016-09-08 13:00:55', 1, 'M Fikri Setiadi', 5, '202aa754590dfc1070c624bad294abbc.jpg'),
(3, 'Pemilu Osis 2016-2017', '2017-01-21 01:58:16', 1, 'M Fikri Setiadi', 3, 'dc088a9fb62333012ff7a601828219d7.jpg'),
(4, 'Kegiatan Belajar Siswa', '2017-01-24 01:31:13', 1, 'M Fikri Setiadi', 7, '203bc0411a07ed0430d39bcc38ec2c56.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text,
  `file_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT '0',
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(2, 'Dasar-dasar CSS', 'Modul dasar-dasar CSS 3. Modul ini membantu anda untuk memahami struktur dasar CSS', '2017-01-23 04:30:01', 'Drs. Joko', 0, 'ab9a183ff240deadbedaff78e639af2f.pdf'),
(3, '14 Teknik Komunikasi Yang Paling Efektif', 'Ebook 14 teknik komunikasi paling efektif membantu anda untuk berkomunikasi dengan baik dan benar', '2017-01-23 15:26:06', 'Drs. Joko', 0, 'ab2cb34682bd94f30f2347523112ffb9.pdf'),
(4, 'Bagaimana Membentuk Pola Pikir yang Baru', 'Ebook ini membantu anda membentuk pola pikir baru.', '2017-01-23 15:27:07', 'Drs. Joko', 0, '30f588eb5c55324f8d18213f11651855.pdf'),
(5, '7 Tips Penting mengatasi Kritik', '7 Tips Penting mengatasi Kritik', '2017-01-23 15:27:44', 'Drs. Joko', 0, '329a62b25ad475a148e1546aa3db41de.docx'),
(6, '8 Racun dalam kehidupan kita', '8 Racun dalam kehidupan kita', '2017-01-23 15:28:17', 'Drs. Joko', 0, '8e38ad4948ba13758683dea443fbe6be.docx'),
(7, 'Jurnal Teknolgi Informasi', 'Jurnal Teknolgi Informasi', '2017-01-25 03:18:53', 'Gunawan, S.Pd', 0, '87ae0f009714ddfdd79e2977b2a64632.pdf'),
(8, 'Jurnal Teknolgi Informasi 2', 'Jurnal Teknolgi Informasi', '2017-01-25 03:19:22', 'Gunawan, S.Pd', 0, 'c4e966ba2c6e142155082854dc5b3602.pdf'),
(9, 'Naskah Publikasi IT', 'Naskah Teknolgi Informasi', '2017-01-25 03:21:04', 'Gunawan, S.Pd', 0, '71380b3cf16a17a02382098c028ece9c.pdf'),
(10, 'Modul Teknologi Informasi', 'Modul Teknologi Informasi', '2017-01-25 03:22:08', 'Gunawan, S.Pd', 0, '029143a3980232ab2900d94df36dbb0c.pdf'),
(11, 'Modul Teknologi Informasi Part II', 'Modul Teknologi Informasi', '2017-01-25 03:22:54', 'Gunawan, S.Pd', 0, 'ea8f3f732576083156e509657614f551.pdf'),
(12, 'Modul Teknologi Informasi Part III', 'Modul Teknologi Informasi', '2017-01-25 03:23:21', 'Gunawan, S.Pd', 0, 'c5e5e7d16e4cd6c3d22c11f64b0db2af.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(4, 'Diskusi Pemilihan Ketua Osis', '2017-01-21 14:04:53', '9b10fa300633f62f105e9b52789fc8f3.jpg', 3, 1, 'M Fikri Setiadi'),
(5, 'Panitia Pemilu Osis', '2017-01-22 04:13:20', '0ec0c2f9aae6501d7ed7930995d48b57.jpg', 3, 1, 'M Fikri Setiadi'),
(6, 'Proses Pemilu Osis', '2017-01-22 04:13:43', 'bfbe6cc1c8096f5f36c68e93da53c248.jpg', 3, 1, 'M Fikri Setiadi'),
(7, 'Belajar dengan native speaker', '2017-01-24 01:26:22', '831e5ad43ccc3c851d50c128ff095541.jpg', 1, 1, 'M Fikri Setiadi'),
(8, 'Diskusi dengan native speaker', '2017-01-24 01:27:05', '84afbf1d3ad45932f1d7ac47b8a00949.jpg', 1, 1, 'M Fikri Setiadi'),
(9, 'Foto bareng native speaker', '2017-01-24 01:27:28', 'a99ab060d5d5bf8c96f24fe385f7dd8b.jpg', 1, 1, 'M Fikri Setiadi'),
(10, 'Foto bareng native speaker', '2017-01-24 01:28:40', 'd70cedba6391b7b3c74b914efd82953f.jpg', 1, 1, 'M Fikri Setiadi'),
(11, 'Foto bareng native speaker', '2017-01-24 01:28:54', '10de99f425b9961ce1e87c5e5575f8f4.jpg', 1, 1, 'M Fikri Setiadi'),
(12, 'Belajar sambil bermain', '2017-01-24 01:31:42', '9df82241493b94d1e06b461129cf57b2.jpg', 4, 1, 'M Fikri Setiadi'),
(13, 'Belajar sambil bermain', '2017-01-24 01:31:55', '5374415f11683ad6dd31572a7bbf8a7b.jpg', 4, 1, 'M Fikri Setiadi'),
(14, 'Belajar komputer programming', '2017-01-24 01:32:24', '82b91bd35706b21c3ab04e205e358eb6.jpg', 4, 1, 'M Fikri Setiadi'),
(15, 'Belajar komputer programming', '2017-01-24 01:32:34', '93048f2a103987bce8c8ec8d6912de06.jpg', 4, 1, 'M Fikri Setiadi'),
(16, 'Belajar komputer programming', '2017-01-24 01:32:44', '41f46be181f2f8452c2041b5e79a05a5.jpg', 4, 1, 'M Fikri Setiadi'),
(17, 'Belajar sambil bermain', '2017-01-24 01:33:08', '2858b0555c252690e293d29b922ba8e6.jpg', 4, 1, 'M Fikri Setiadi'),
(18, 'Makan bersama', '2017-01-24 01:33:24', '90d67328e33a31d3f5eecd7dcb25b55d.jpg', 4, 1, 'M Fikri Setiadi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES
(9, '19680201 200103 2 002', 'Ely Suryana,S.Pd.SD ', 'P', 'palembang', '25 september 1989', 'Kepala Sekolah', '7b67052721465ddf161503bd76d4f929.jpg', '2020-11-06 03:34:16'),
(10, '19680201 200103 2 002', 'Hikmah Duroiyah, S.Pd.SD', 'P', 'palembang', '03 Februari 1990', 'Pendidikan Agama Islam', '8b8a7644cb80f3245eb53703b6657da2.jpg', '2020-11-06 03:37:08'),
(11, '19680201 200103 2 002', 'Asti Niarti, S.Pd', 'P', 'palembang', '20 september 1989', 'Wali Kelas IV', '6b4565504e381c9752a2155c547cca21.jpg', '2020-11-06 03:38:06'),
(12, '19680201 200103 2 002', 'Armi Karlina, S.Pd.', 'P', 'palembang', '17 september 1985', 'Wali kelas II', 'b69ede60f225c0ad2c06ea1772e34101.jpg', '2020-11-06 03:39:11'),
(13, '19860501 200103 2 002', 'Nujannah., S.pd', 'P', 'Medan ', '12 Maret 1980', 'Wali Kelas I', '316045d22a669def3f71ea7381644ffd.jpg', '2021-01-28 10:55:27'),
(14, '0', '	Pebri Asohir, S.Pd', 'L', 'palembang', '09 februari 1994', 'Olahraga', 'c27dfb3d0d93edfe2e05fa1cdc67753c.jpg', '2021-01-28 10:58:49'),
(15, '0', 'Indah Mayasari, S.pd', 'P', 'palembang ', '16 juli 1980', 'Wali Kelas III', '68bc515f5a2847175faa5f9ac94ce801.jpg', '2021-01-28 11:01:28'),
(16, '19680607 200103 2 002', 'Hamdani, S.pd', 'L', 'palembang ', '23 Februari 1990', 'Wali Kelas VI', '1b587bb2b982834b7c2b02e03422a25d.jpg', '2021-01-28 11:02:51'),
(17, '0', 'Mariam Fauzia, S.Pd.I', 'P', 'palembang ', '07april 1980', 'Bahasa Indonesia', '6aff0811eedc3ed31e9530d0c6af714a.jpg', '2021-01-28 11:04:36'),
(18, '0', 'Utami Ladewi, S.pd,i', 'P', 'palembang ', '13 mei1990', 'Wali Kelas V', '666d8705a2d53702147074f7bfcfeb3d.jpg', '2021-01-28 11:06:04'),
(19, '0', 'Sandrima Bidari, S.Pd', 'P', 'palembang ', '12 Agustus 1993', 'Kepala Perpustakaan', 'e9ef86e274cf73d2841d150ff72dac77.jpg', '2021-01-28 11:07:52'),
(20, '0', 'Anggisa Rama Eka, S.Pd ', 'L', 'palembang ', '16 November 1990', 'Matematika', 'c69c6bf956e91e2d8d3d8af5950fc784.jpg', '2021-01-28 11:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text,
  `inbox_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` int(11) DEFAULT '1' COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 03:44:12', 0),
(3, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ini adalah pesan ', '2017-06-21 03:45:57', 0),
(5, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 03:53:19', 0),
(7, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Hi, there!', '2017-07-01 07:28:08', 0),
(8, 'M Fikri', 'fikrifiver97@gmail.com', '084375684364', 'Hi There, Would you please help me about register?', '2018-08-06 13:51:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Pendidikan', '2016-09-06 05:49:04'),
(2, 'Politik', '2016-09-06 05:50:01'),
(3, 'Sains', '2016-09-06 05:59:39'),
(5, 'Penelitian', '2016-09-06 06:19:26'),
(6, 'Prestasi', '2016-09-07 02:51:09'),
(13, 'Olah Raga', '2017-01-13 13:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(22, 'Kelas 1'),
(23, 'Kelas 2'),
(24, 'Kelas 3'),
(25, 'Kelas 4'),
(26, 'Kelas 5'),
(27, 'Kelas 6');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(1, 'M Fikri', 'fikrifiver97@gmail.com', ' Nice Post.', '2018-08-07 15:09:07', '1', 24, 0),
(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', ' Awesome Post', '2018-08-07 15:14:26', '1', 24, 0),
(3, 'Joko', 'joko@gmail.com', 'Thank you.', '2018-08-08 03:54:56', '1', 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text,
  `log_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT '1',
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'Armi Karlina', 'Just do it', 'P', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'I am a mountainner. to me mountainerring is a life', 'armikarlina@yahoo.com', '081277159401', 'facebook.com/m_fikri_setiadi', 'twitter.com/fiver_fiver', '', '', 1, '1', '2016-09-03 06:07:55', '2dd648cc5b9305c5cb9b769de77d6858.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text,
  `pengumuman_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(1, 'Pengumuman Libur Semester Ganjil Tahun Ajaran 2016-2017', 'Libur semester ganjil tahun ajaran 2016-2017 dimulai dari tanggal 3 Maret 2017 sampai dengan tanggal 7 Maret 207.', '2017-01-21 01:17:30', 'M Fikri Setiadi'),
(2, 'Pengumuman Pembagian Raport Semester Ganjil Tahun Ajaran 2016-2017', 'Menjelang berakhirnya proses belajar-mengajar di semester ganjil tahun ajaran 2016-2017, maka akan diadakan pembagian hasil belajar/raport pada tanggal 4 Maret 2017 pukul 07.30 WIB.\r\nYang bertempat di M-Sekolah. Raport diambil oleh orang tua/wali kelas murid masing-masing', '2017-01-21 01:16:20', 'M Fikri Setiadi'),
(3, 'Pengumuman Peresmian dan Launching Website Perdana M-Sekolah', 'Peresmian dan launching website resmi M-Sekolah akan diadakan pada hari 23 Desember 2016 pukul 10.00, bertepatan dengan pembagian raport semester ganjil tahun ajaran 2016-2017', '2017-01-22 07:16:16', 'M Fikri Setiadi'),
(4, 'Pengumuman Proses Belajar Mengajar di Semester Genap Tahun Ajaran 2016-2017', 'Setelah libur semester ganjil tahun ajaran 2016-2017, proses belajar mengajar di semester genap tahun ajaran 2016-2017 mulai aktif kembali tanggal 2 Maret 2017.', '2017-01-22 07:15:28', 'M Fikri Setiadi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(930, '2018-08-09 08:04:59', '::1', 'Chrome'),
(931, '2020-11-04 12:54:13', '::1', 'Chrome'),
(932, '2020-11-05 07:55:31', '::1', 'Chrome'),
(933, '2020-11-06 02:13:01', '::1', 'Chrome'),
(934, '2020-11-07 07:20:33', '::1', 'Chrome'),
(935, '2020-11-16 07:50:08', '::1', 'Chrome'),
(936, '2020-11-17 04:07:21', '::1', 'Chrome'),
(937, '2020-11-21 04:03:51', '::1', 'Chrome'),
(938, '2020-11-26 11:38:56', '::1', 'Chrome'),
(939, '2020-11-29 05:45:50', '::1', 'Chrome'),
(940, '2020-12-03 07:06:44', '::1', 'Chrome'),
(941, '2020-12-05 15:27:54', '::1', 'Chrome'),
(942, '2020-12-05 18:06:41', '::1', 'Chrome'),
(943, '2020-12-17 09:49:18', '::1', 'Chrome'),
(944, '2020-12-23 01:52:55', '::1', 'Chrome'),
(945, '2021-01-25 11:51:16', '::1', 'Chrome'),
(946, '2021-01-28 10:38:39', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`) VALUES
(1, '001', 'Adittia Saputra', 'L', 22, '3cba358ad3f3a526457095cb3acd1535.png'),
(2, '002', 'Akhmal Haryanto', 'L', 22, '8ab4ff2a2ee1ab016d1178a33622e81a.png'),
(3, '003', 'Donita Rohma', 'L', 22, '166d1bc6988ccfb373288db2c3af660a.png'),
(4, '004', 'Dilon Saputra Wijaya', 'L', 22, 'dc635a02380f4591fed0fbe6a3661e4e.png'),
(5, '005', 'Fahira Salsabila', 'P', 22, '8941f24bf65d03046af05bf3001f09e3.png'),
(6, '006', 'Finelsya Cinberlian Pradona', 'P', 22, '48b3ae8dffd4443769f64bb2a74d988b.png'),
(7, '007', 'Gali Saputra', 'L', 22, '476f0fb1b6e51485c8777381d66bfa26.png'),
(8, '008', 'Gibran Al-Giano', 'L', 22, '7d046985da72b5d37ad21272db6b5ff8.png'),
(9, '009', 'Muhammad Ikhram Al-Hafiz', 'L', 22, '9d7bdd04ac7c5e75a79bc798a7f9a2b5.png'),
(10, '010', 'Muhammad Rayhan Al-Rafka', 'L', 22, '27b33bcc488f0d04df01a7fdd9091963.png'),
(11, '011', 'Muhammad Thoriq Aziz Kurniawan', 'L', 22, '01f5797e9ff15228f5183268a2d5e1fc.png'),
(12, '012', 'Rabil', 'L', 22, 'ef47a3c482fca503dd0bd9b698e80255.png'),
(13, '013', 'Rafka Nafira Zefta', 'P', 22, '04620edfc16cfb1082e6b2321053dcb4.png'),
(14, '014', 'Rahmad Ajibullah', 'L', 22, 'b8bbb3d0df28ef9eb0d9ba3f99a29b02.png'),
(15, '015', 'Saqila Salsabillah', 'P', 22, 'a70c34305380697d6ca94ec2f9d822f3.png'),
(16, '016', 'Syawqi Abri Samsyah', 'L', 22, 'af13da4c55f41089919ad9d31ac1d748.png'),
(17, '017', 'Tiwa Susantri', 'P', 22, '40c353c9070be4ae49184c813b335622.png'),
(18, '018', 'Zusabil', 'P', 22, '655d8d6e8ab5787136f4272c565986ac.png'),
(19, '0122171551', 'Adellia Shintia', 'P', 23, '4c8db529c7dd9be0bd2e02069b7d20a3.png'),
(20, '0124260004', 'Adly Dirensya Pratama', 'L', 23, '0ad3d724903069e4b6c5d267c78de255.png'),
(21, '0128181761', 'Ahya Hasanatus Syarfiah', 'P', 23, '8aa961d98189d59d2f3abd6fe8a0953a.png'),
(22, '0122333801', 'Aksel Vairollah', 'L', 23, '6b0f01b0f5856f0822748cfc6221da2d.png'),
(23, '0121555871', 'Alesha Caraya Putri', 'P', 23, 'e32547ca565209aee10e79255bb6f635.png'),
(24, '0128895390', 'Bunga Alizah', 'P', 23, '1572311511cceda273fdc140f07e5969.png'),
(25, '0128628482', 'Fitra Inzani Ramadhan', 'P', 23, '79aa85bfa399d269ff67c7a0b90e7361.png'),
(26, '0121457282', 'Gilang Abdillah', 'L', 23, '8c9a6ec5d4511efe0dd99831c4280713.png'),
(27, '0123505217', 'Kamilah Zahrah', 'P', 23, '61254a593c4c0e52fb804f1aef94fb35.png'),
(28, '0123549137', 'Khairil Dzakih Hartian', 'L', 23, '140aeb6e632f14bb1deea073f882ffcf.png'),
(29, '0129764363', 'Muhammad Afan Dwi Rizqi', 'L', 23, '0bcf9414b7359431439f03d642f23c89.png'),
(30, '0123232189', 'Muhammad Legiano Abdad', 'L', 23, '90b9e87337c5db71540cb1cd0dcbc612.png'),
(31, '0125873958', 'Oziel Wabilla Rahmat', 'L', 23, '065a29285367da1f09ea9cb5888ef9e4.png'),
(32, '0121143907', 'Raihan Ario Saputra', 'L', 23, 'e138f28e73c973c7e2c2e32e94ab310b.png'),
(33, '0121847398', 'Reyhan Tora Okselino', 'L', 23, '3aa8d449ded3dad7fa5f6a248cc9702d.png'),
(34, '0122907341', 'Rehan Aditya', 'L', 23, 'db5a1f29f433fefebe3cb0c690b608af.png'),
(35, '0124127368', 'Ririn Dayati', 'P', 23, '9dd7a1a2b9cbea5224c438cbde76bc98.png'),
(36, '0125835175', 'Sandra Saputri', 'P', 23, '467338c1d56804b5c54f5dd033ede111.png'),
(37, '0127451066', 'Younha Selviana Kurnaidi', 'P', 23, 'fd8e14d53fb2e7f972e779d6f8b2e539.png'),
(38, '0127441282', 'Aldo Novran Aksha', 'L', 24, '213177748887edf4098adabecad31d78.png'),
(39, '0114663695', 'Atiqa Rahimah', 'P', 24, 'c1ab24fb9fc0403ef385a935edc812cd.png'),
(40, '0118162712', 'Cinta Elsya', 'P', 24, '24c301a858fa2a4378bb01cace8e97e2.png'),
(41, '0112296245', 'Dedek Oktarul Iman', 'L', 24, '0f4f6da807e16227676ead5bcf5ead5a.png'),
(42, '0113321819', 'Dela Nawari', 'P', 24, '6c1fe6469ffe64c78974b49e9ebeb0f8.png'),
(43, '0114010971', 'Deli Nawira', 'P', 24, '7ecaf2e48a5ab653d1062e0cf088b314.png'),
(44, '0115436603', 'Diyano Praposa', 'L', 24, '74bca16b99b56d4ef6bfba3f8ad428d9.png'),
(45, '0111208035', 'Donal Aryando', 'L', 24, 'efadddf10cc2a746eef02ede550c88b0.png'),
(46, '0118792767', 'Fatima Azzarah', 'P', 24, 'bea2cf97f02193aa3ae6cc899df51a8a.png'),
(47, '0115028434', 'Gibran Putra Bintana', 'L', 24, 'f5706e2b194fc9346ed2d75278ac48d4.png'),
(48, '0111091964', 'Harian Aynul Hazis', 'L', 24, '15d447b1b5e8fcc718d43e12949549b3.png'),
(49, '0125003361', 'Hemista Altissa Priscillya', 'P', 24, '6cc531e9611457d736797730d87e8b24.png'),
(50, '0128030013', 'Jezzica Faramutia', 'P', 24, 'b2cf29c2b2cf81a4eccb7ec758aa2037.png'),
(51, '0119981557', 'Kayla Najwa Putriani', 'P', 24, 'cbb277d0738706947a0b1a6827bb590a.png'),
(52, '0111617836', 'Kepin Saputra', 'L', 24, 'ff2f5dc22881a942ed9b0c8f91ecbd54.png'),
(53, '0128334773', 'Laira Anggelina Syafana', 'P', 24, '2d3b179621dc1526a64bc11aeec37270.png'),
(54, '0122924478', 'Muhammad Alif Nizam Zulfikar', 'L', 24, '62f7522b2e3530331e726f84d3ca4769.png'),
(55, '0115134554', 'Muflih Tri Juliansyah', 'L', 24, '6221adad4afe6b3629b11ded7336dc6c.png'),
(56, '0127183202', 'Muhammad Rizqi Nurwahid', 'L', 24, '7e2196c08fa0e89eaab0ea4bc119cf46.png'),
(57, '000', 'Muhammad Syarfan Al Aziz', 'L', 24, 'a243f9bac477162bb5ef52b3b7b59044.png'),
(58, '0113568494', 'Nadien Putri Sevista', 'P', 24, '006b164e35d48ad7e1ccc21dc0c79729.png'),
(59, '0122338726', 'Naisa Avara', 'P', 24, 'f7a0df82f8097bb8448540fcacb01fc6.png'),
(60, '0113479564', 'Natasya Anggraini', 'P', 24, '8d5b0d8fdb28630162c173af376dd2aa.png'),
(61, '0127354664', 'Nathania Radella Kuina', 'P', 24, 'd722a24fb6a127eccfa867a0df2d4aff.png'),
(62, '0111346721', 'Ney Melzaiza', 'P', 24, 'd5a1ef1e1df6080b32b835cb78a4f388.png'),
(63, '0111454981', 'Rizky Ramadani', 'P', 24, '7d3611d4ff6c3ff482dd8853751f546f.png'),
(64, '0116871925', 'Satria Bintang', 'L', 24, '8eed391c53dc3cf4bf704ba2362be04f.png'),
(65, '0111077258', 'Syifa Rabiah Wardiyah', 'P', 24, 'd235ebe79630dd46c90e4e4b5d8cce12.png'),
(66, '0111357806', 'Zetha Fadran', 'L', 24, 'd99acc9c94abbc5c2ef76ddb3c942c0f.png'),
(67, '0108693362', 'Alna Kholifa  Funisa', 'P', 25, 'f540d7064941eb003edb783a0099bc33.png'),
(68, '0116051715', 'Anjeli Irharta', 'P', 25, '94a570372766bcd3825cfa9407f16749.png'),
(69, '0102387557', 'Dayang Tumas Kupa', 'L', 25, 'ce83350cebb04f2cc98030c3817fc88b.png'),
(70, '0107390729', 'Fahri Haryanto', 'L', 25, '7131f84f0068276e4834781025996aa6.png'),
(71, '0118237576', 'Farras Mumtaz', 'L', 25, '5c2c2644b86ba9501773f65360170dbe.png'),
(72, '010514', 'Febil Ganza Pratama', 'L', 25, '5c2c2644b86ba9501773f65360170dbe.png'),
(74, '0098', 'Indri Yani', 'P', 25, '5c2c2644b86ba9501773f65360170dbe.png'),
(75, '0111', 'Irsan Syaddas A Wahab', 'L', 25, '5c2c2644b86ba9501773f65360170dbe.png'),
(76, '011105', 'M ilyas Susno', 'L', 25, '5c2c2644b86ba9501773f65360170dbe.png'),
(77, '010945', 'Melanie Putri', 'P', 25, '5c2c2644b86ba9501773f65360170dbe.png'),
(78, '01169', 'Merlindra', 'P', 25, '5c2c2644b86ba9501773f65360170dbe.png'),
(79, '01138', 'Parhan Pitrulla', 'P', 25, '5c2c2644b86ba9501773f65360170dbe.png'),
(80, '010654', 'Priya Manda', 'P', 25, '5c2c2644b86ba9501773f65360170dbe.png'),
(81, '010121', 'Rafha Radhitya Farisqi', 'P', 25, '5c2c2644b86ba9501773f65360170dbe.png'),
(82, '010319', 'Ratesa Putri', 'P', 25, '5c2c2644b86ba9501773f65360170dbe.png'),
(83, '3252', 'Rifatul Annas', 'P', 25, '5c2c2644b86ba9501773f65360170dbe.png'),
(84, '8683', 'Rifka Aprilia', 'P', 25, '5c2c2644b86ba9501773f65360170dbe.png'),
(85, '3736', 'Tian Dwi Anggraini', 'P', 25, '5c2c2644b86ba9501773f65360170dbe.png'),
(86, '7626', 'Topan Wijaya', 'P', 25, '5c2c2644b86ba9501773f65360170dbe.png'),
(87, '2143', 'Aura Klara sati', 'P', 26, '5c2c2644b86ba9501773f65360170dbe.png'),
(88, '7454', 'Daffa Habibi', 'P', 26, '5c2c2644b86ba9501773f65360170dbe.png'),
(89, '669', 'Daffa Sukron Perdana', 'P', 26, '5c2c2644b86ba9501773f65360170dbe.png'),
(90, '3851', 'Dias Pratama', 'P', 26, '5c2c2644b86ba9501773f65360170dbe.png'),
(91, '6970', 'Dinofan Priana', 'L', 26, '5c2c2644b86ba9501773f65360170dbe.png'),
(92, '0368', 'Petro Marvel', 'P', 26, '5c2c2644b86ba9501773f65360170dbe.png'),
(93, '1291', 'Herlina Amelia', 'P', 26, '5c2c2644b86ba9501773f65360170dbe.png'),
(94, '9605', 'M abdul Tahalludin', 'L', 26, '5c2c2644b86ba9501773f65360170dbe.png'),
(95, '3305', 'M Fauzul Adhimi', 'L', 26, '5c2c2644b86ba9501773f65360170dbe.png'),
(96, '8781', 'M fahada Alfat Mufarid', 'L', 26, '5c2c2644b86ba9501773f65360170dbe.png'),
(97, '2397', 'Misba Rahmatullah', 'L', 26, '5c2c2644b86ba9501773f65360170dbe.png'),
(98, '0480', 'Muhammad Ibrahim', 'L', 26, '5c2c2644b86ba9501773f65360170dbe.png'),
(99, '1102', 'Najwa Aulia', 'P', 26, '5c2c2644b86ba9501773f65360170dbe.png'),
(100, '7039', 'Prima Satria Jumandala', 'L', 26, '5c2c2644b86ba9501773f65360170dbe.png'),
(101, '4642', 'Putri Nurfadhila Wati', 'P', 26, '5c2c2644b86ba9501773f65360170dbe.png'),
(102, '0632', 'Salsabilla Aulia Delfa', 'P', 26, '5c2c2644b86ba9501773f65360170dbe.png'),
(103, '2276', 'Shultana Anwari fadhil', 'L', 26, '5c2c2644b86ba9501773f65360170dbe.png'),
(104, '3554', 'Syaila Calya Hara', 'P', 26, '5c2c2644b86ba9501773f65360170dbe.png'),
(105, '8576', 'Yadiatil Ulya', 'P', 26, '5c2c2644b86ba9501773f65360170dbe.png'),
(106, '6890', 'Alif Gilang Aditya', 'L', 27, '5c2c2644b86ba9501773f65360170dbe.png'),
(107, '6063', 'Andhika', 'L', 27, '5c2c2644b86ba9501773f65360170dbe.png'),
(108, '8582', 'Anggun Fitratunnisa', 'P', 27, '5c2c2644b86ba9501773f65360170dbe.png'),
(109, '0227', 'Arga Anggara', 'L', 27, '5c2c2644b86ba9501773f65360170dbe.png'),
(110, '3120', 'Bima Reza', 'L', 27, '5c2c2644b86ba9501773f65360170dbe.png'),
(111, '6051', 'Decko Priana', 'L', 27, '5c2c2644b86ba9501773f65360170dbe.png'),
(112, '2086', 'Dewa Saputra', 'L', 27, '5c2c2644b86ba9501773f65360170dbe.png'),
(113, '6651', 'Gisallae Anggelia', 'L', 27, '5c2c2644b86ba9501773f65360170dbe.png'),
(114, '2978', 'Hanin Afiyana', 'P', 27, '5c2c2644b86ba9501773f65360170dbe.png'),
(115, '8439', 'M Fahri Akbar', 'L', 27, '5c2c2644b86ba9501773f65360170dbe.png'),
(116, '3463', 'M Rasvaldoe', 'L', 27, '5c2c2644b86ba9501773f65360170dbe.png'),
(117, '2789', 'Meylan Khumairoh', 'P', 27, '5c2c2644b86ba9501773f65360170dbe.png'),
(118, '5263', 'Mika Andri Juriansyah', 'P', 27, '5c2c2644b86ba9501773f65360170dbe.png'),
(119, '3626', 'Olivia Dwi Putri', 'P', 27, '5c2c2644b86ba9501773f65360170dbe.png'),
(120, '8750', 'Raffa kansyadiffa', 'L', 27, '5c2c2644b86ba9501773f65360170dbe.png'),
(121, '6784', 'Rangga Hendri Saputra', 'L', 27, '5c2c2644b86ba9501773f65360170dbe.png'),
(122, '4076', 'Rihadatul Aisyah', 'P', 27, '5c2c2644b86ba9501773f65360170dbe.png'),
(123, '7848', 'Syahril Anjas Permana', 'L', 27, '5c2c2644b86ba9501773f65360170dbe.png'),
(124, '2198', 'Thalita naela fathin', 'P', 27, '5c2c2644b86ba9501773f65360170dbe.png'),
(125, '472678', 'Tazzakir Awalu S', 'L', 27, '5c2c2644b86ba9501773f65360170dbe.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text,
  `tulisan_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT '0',
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT '0',
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(20, 'Persiapan siswa menjelang ujian nasional', '<p>Banyak metode bejalar yang dilakukan oleh siswa untuk persiapan menghadapi ujian nasional (UN). Biantaranya mengingat dengan metode Mind Map, ataupun bejalar diluar kelas (outdoor).&nbsp; Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 09:24:42', 1, 'Pendidikan', 27, '0a927c6d34dc5560b72f053313f14638.jpg', 1, 'M Fikri Setiadi', 0, 'persiapan-siswa-menjelang-ujian-nasional'),
(22, 'Prestasi membangga dari siswa MSchool', '<p>Prestasi dan penghargaan merupakan trigger (pemicu) semangat belajar siswa. Ada banyak prestasi yang telah diraih oleh siswa m-sekolah. Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 09:38:21', 6, 'Prestasi', 1, 'a59aa487ab2e3b57b2fcf75063b67575.jpg', 1, 'M Fikri Setiadi', 0, 'prestasi-membangga-dari-siswa-mschool'),
(23, 'Pelaksanaan Ujian Nasional MSchool', '<p>Pelaksanaan UN (Ujian Nasional) di sekolah M-Sekolah berlangsung tentram dan damai. Terlihat ketenangan terpancar diwajah siswa berprestasi.&nbsp; Ini adalah sampel artikel Ini adalah sampel artikel&nbsp; Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 09:41:30', 1, 'Pendidikan', 5, '12bfb1953df800c59835a2796f8c6619.jpg', 1, 'M Fikri Setiadi', 0, 'pelaksanaan-ujian-nasional-mschool'),
(24, 'Proses belajar mengajar MSchool', '<p>Proses belajar mengajar di sekolah m-sekolah berlangsung menyenangkan. Didukung oleh instruktur yang fun dengan metode mengajar yang tidak biasa. Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel a Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel .</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 09:46:29', 1, 'Pendidikan', 162, 'ea114dc1ec5275560a5ef3238fd04722.jpg', 1, 'M Fikri Setiadi', 0, 'proses-belajar-mengajar-mschool'),
(25, 'iPhone 8 Baru Mengungkapkan Fitur Mengecewakan', '<p>Apple CEO Tim Cook delivers the opening keynote address the 2017 Apple.</p>\r\n\r\n<p><br />\r\nSudah lama sekali sejak Apple mampu menyimpan kejutan nyata dari beledu digital dan mengungkapkan &#39;satu hal&#39; yang sebenarnya selama sebuah keynote. Fase desain dan prototyping yang panjang, ditambah dengan rantai pasokan yang diperluas, telah menghasilkan garis manufaktur yang bocor.<br />\r\n<br />\r\nTariklah permintaan yang tak terpuaskan dari si geekerati dan Anda tidak akan pernah bisa menyimpan rahasianya ... bahkan jika penonton akan berpura-pura bahwa segala sesuatu yang dikatakan Tim Cook adalah sebuah wahyu.<br />\r\n<br />\r\nSemuanya di tampilkan untuk portofolio iPhone baru, meskipun jika kita jujur ??tidak ada hal baru yang bisa dilihat. Ini hanya Tim Cook dan timnya yang membuat model tahun lalu &#39;sedikit lebih baik&#39; dan mengajukan konsumen proposisi yang sama seperti setiap produsen smartphone lainnya.<br />\r\n<br />\r\nMungkin aku berharap terlalu banyak dari Apple. Pengulangan Timey dari mimpi Silicon Valley tidak dibangun dengan risiko, mendorong amplop, atau bereksperimen dengan bentuk atau fungsinya. Bagaimana Tim Cook bisa mendorong inovasi ketika begitu banyak kekaisarannya dibangun di seputar kebutuhan akan penjualan siklis iPhone yang terjamin? Jika penjualan smartphone turun, maka yayasan Cupertino akan berada dalam bahaya.<br />\r\n<br />\r\nJawaban Apple untuk ini adalah iPhone 8. Sementara iPhone 7S dan iPhone 7S Plus menjaga harapan, iPhone 8 bisa bereksperimen dengan bentuk, harga, dan kekuatan. Ini adalah handset yang akan mendorong batas teknologi Apple dengan layar OLED yang cerah dan jelas di bawah kaca melengkung yang membentuk bagian luarnya. Inilah smartphone yang membawa kekuatan magis wireless charging ke ekosistem iOS dan akan menawarkan pengenalan wajah untuk keamanan.<br />\r\n<br />\r\nYang semua terdengar hebat tapi itu satu set poin peluru yang bisa diterapkan ke banyak handset Android terkemuka yang ada di pasaran saat ini. Bahkan dengan andalannya yang maju untuk tahun 2017, Apple melakukan sedikit lebih banyak daripada mengenalkan teknologi yang ada ke portofolio iOS.<br />\r\n<br />\r\nItu tidak terlihat seperti ini beberapa bulan yang lalu. Fitur yang diduga dikeluarkan oleh Apple dari iPhone 8 memamerkan beberapa pemikiran terbaru tentang perangkat mobile, termasuk pengisian daya nirkabel jarak jauh dan sensor biometrik tertanam di bawah layar kaca. Ini perlahan-lahan telah terbantahkan oleh industri rumahan dan desas-desus, sampai-sampai kita cukup tahu apa yang terjadi dari iPhone 8.<br />\r\n<br />\r\nTentu saja iPhone 8 (dan lebih dari kemungkinan iPhone 7S dan 7S Plus) akan mendapat keuntungan dari perubahan pada konstruksi interior. Akan ada pencantuman iOS 11 dan integrasi perangkat lunak yang ketat ke perangkat keras. Akan ada anggukan Apple untuk kesederhanaan di UI dan aplikasi pihak ketiga akan segera menghadirkan fitur lanjutan kepada pengguna rata-rata.<br />\r\n<br />\r\nIni bukan perubahan sepele, tapi yang menyoroti ini adalah menjelaskan bagaimana sosis dibuat. Mereka adalah rakit tweak untuk paket yang sama. Anda bisa menambahkan kancing diamante ke gaun Anda, mengganti lapisannya, dan mengeluarkan pinggulnya karena tahun-tahun yang lewat, tapi pakaiannya tetap sama seperti yang orang lihat berkali-kali. Itu cukup bagi bisnis Apple untuk terus melakukannya dengan baik dan membuat pemegang saham tetap bahagia, namun Anda tidak dapat terus kembali ke bidang yang sama dan berharap untuk tetap berada di puncak permainan smartphone. Sesuatu harus diberikan.<br />\r\n<br />\r\nPortofolio Apple 2017 membajak bidang yang sama persis dengan tahun-tahun sebelumnya. Tulang punggung penjualan akan terdiri dari iPhone 7S dan iPhone 7S Plus yang berulang-ulang saat Tim Cook kembali menanam benih di alur yang sama persis seperti model sebelumnya. IPhone 8 dapat diluncurkan tepat waktu, namun stok akan sulit didapat dan Apple akan, sekali lagi, tidak merilis angka penjualan. Ini akan menjadi hal baru yang menarik dan berkilau, tapi mari kita panggil apa adanya.</p>\r\n\r\n<p>Tim Cook akan menyilangkan jari-jarinya sehingga cukup banyak orang yang senang bisa &#39;membeli iPhone lain&#39; dan terus menggelontorkannya tanpa melihat persaingan. IPhone 8 adalah Apple yang bermain mengejar kemajuan teknologi kompetisi, dengan harapan tidak ada yang memperhatikan bahwa iPhone Baru Kaisar tidak semudah yang terlihat.</p>\r\n', '2018-08-08 13:26:08', 5, 'Penelitian', 3, 'a0b99616241c9aded7f2a02661798d98.jpg', 1, 'M Fikri Setiadi', 0, 'iphone-8-baru-mengungkapkan-fitur-mengecewakan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indexes for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indexes for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indexes for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indexes for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=947;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
