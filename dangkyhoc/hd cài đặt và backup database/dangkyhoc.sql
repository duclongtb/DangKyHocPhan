-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2021 at 09:21 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dangkyhoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `dsdangky`
--

CREATE TABLE `dsdangky` (
  `mamonhoc` varchar(50) NOT NULL,
  `masinhvien` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dstenmonhoc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dsgiangvien` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dssotinchi` int(10) NOT NULL,
  `dshocphi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dsdangky`
--

INSERT INTO `dsdangky` (`mamonhoc`, `masinhvien`, `dstenmonhoc`, `dsgiangvien`, `dssotinchi`, `dshocphi`) VALUES
('CNTT02', '2018603434', 'Lập trình di động', 'Nguyễn Văn A', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `khoa`
--

CREATE TABLE `khoa` (
  `makhoa` varchar(50) NOT NULL,
  `tenkhoa` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `khoa`
--

INSERT INTO `khoa` (`makhoa`, `tenkhoa`) VALUES
('CNTT', 'Công nghệ thông tin'),
('CT', 'Cơ khí'),
('KT', 'Kế Toán');

-- --------------------------------------------------------

--
-- Table structure for table `lophoc`
--

CREATE TABLE `lophoc` (
  `lop` varchar(50) NOT NULL,
  `makhoa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lophoc`
--

INSERT INTO `lophoc` (`lop`, `makhoa`) VALUES
('202160000CNTT01', 'CNTT'),
('202160000CNTT02', 'CNTT'),
('202160000CNTT03', 'CNTT'),
('202160000CT01', 'CT'),
('202160000CT02', 'CT'),
('202160000CT03', 'CT'),
('202160000KT01', 'KT'),
('202160000KT02', 'KT'),
('202160000KT03', 'KT'),
('202160000KT04', 'KT');

-- --------------------------------------------------------

--
-- Table structure for table `monhoc`
--

CREATE TABLE `monhoc` (
  `mamonhoc` varchar(50) NOT NULL,
  `tenmonhoc` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `giangvien` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lichhoc` varchar(50) DEFAULT NULL,
  `sotinchi` int(10) NOT NULL,
  `hocphi` varchar(50) DEFAULT NULL,
  `makhoa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monhoc`
--

INSERT INTO `monhoc` (`mamonhoc`, `tenmonhoc`, `giangvien`, `lichhoc`, `sotinchi`, `hocphi`, `makhoa`) VALUES
('CNTT02', 'Lập trình di động', 'Nguyễn Văn A', NULL, 3, NULL, 'CNTT'),
('CNTT01', 'Lập trình căn bản', 'Nguyễn Đức B', NULL, 3, NULL, 'CNTT'),
('CT01', 'Vẽ kỹ thuật', 'Nguyễn Văn C', NULL, 3, NULL, 'CT'),
('CT02', 'Chi tiết máy', 'Trần Văn D', NULL, 3, NULL, 'CT'),
('KT03', 'Nguyên lý kế toán', 'Nguyễn Thị E', NULL, 3, NULL, 'KT');

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien`
--

CREATE TABLE `sinhvien` (
  `masinhvien` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `hoten` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(50) CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `lop` varchar(50) NOT NULL,
  `quequan` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sinhvien`
--

INSERT INTO `sinhvien` (`masinhvien`, `username`, `password`, `hoten`, `ngaysinh`, `gioitinh`, `lop`, `quequan`, `avatar`) VALUES
('2018601243', 'phuong', '12345', 'Hà Minh Phương', '2000-02-18', 'Nam', '202160000CNTT01', 'Nam Định', '../model/uploads/image-icon-24.jpg'),
('2018603123', 'tienLong', '12345', 'Nguyễn Tiến Long', '2000-02-16', 'Nam', '202160000CNTT02', 'Hải Phòng', '../model/uploads/image-icon-24.jpg'),
('2018603434', 'long', '12345', 'Nguyễn Đức Long', '2000-02-18', 'Nam', '202160000CNTT01', 'Thái Bình', '../model/uploads/image-icon-24.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dsdangky`
--
ALTER TABLE `dsdangky`
  ADD PRIMARY KEY (`mamonhoc`),
  ADD KEY `masinhvien` (`masinhvien`);

--
-- Indexes for table `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`makhoa`);

--
-- Indexes for table `lophoc`
--
ALTER TABLE `lophoc`
  ADD PRIMARY KEY (`lop`),
  ADD KEY `makhoa` (`makhoa`);

--
-- Indexes for table `monhoc`
--
ALTER TABLE `monhoc`
  ADD KEY `makhoa` (`makhoa`);

--
-- Indexes for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`masinhvien`),
  ADD KEY `malop` (`lop`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dsdangky`
--
ALTER TABLE `dsdangky`
  ADD CONSTRAINT `dsdangky_ibfk_1` FOREIGN KEY (`masinhvien`) REFERENCES `sinhvien` (`masinhvien`);

--
-- Constraints for table `lophoc`
--
ALTER TABLE `lophoc`
  ADD CONSTRAINT `lophoc_ibfk_1` FOREIGN KEY (`makhoa`) REFERENCES `khoa` (`makhoa`);

--
-- Constraints for table `monhoc`
--
ALTER TABLE `monhoc`
  ADD CONSTRAINT `monhoc_ibfk_1` FOREIGN KEY (`makhoa`) REFERENCES `khoa` (`makhoa`);

--
-- Constraints for table `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_ibfk_1` FOREIGN KEY (`lop`) REFERENCES `lophoc` (`lop`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
