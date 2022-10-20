/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.21-MariaDB : Database - db_kampus
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_kampus` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_kampus`;

/*Table structure for table `ambil_mk` */

DROP TABLE IF EXISTS `ambil_mk`;

CREATE TABLE `ambil_mk` (
  `nim` int(20) NOT NULL,
  `kode_mk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `ambil_mk` */

insert  into `ambil_mk`(`nim`,`kode_mk`) values 
(101,'PTI447'),
(103,'TIK333'),
(104,'PTI777'),
(104,'PTI333'),
(111,'PTI123'),
(123,'PTI999');

/*Table structure for table `mahasiswa` */

DROP TABLE IF EXISTS `mahasiswa`;

CREATE TABLE `mahasiswa` (
  `nim` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  `jenis_kelamin` enum('P','L') NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4;

/*Data for the table `mahasiswa` */

insert  into `mahasiswa`(`nim`,`nama`,`jenis_kelamin`,`alamat`) values 
(101,'Arif','L','Jl.Kenangan'),
(102,'Budi','L','Jl.Jombang'),
(103,'Wati','P','Jl.Surabaya'),
(104,'Ika','P','Jl.Jombang'),
(105,'Tono','L','Jl.Jakarta'),
(106,'Iwan','L','Jl.Bandung'),
(107,'Sari','P','Jl.Malang');

/*Table structure for table `mata_kuliah` */

DROP TABLE IF EXISTS `mata_kuliah`;

CREATE TABLE `mata_kuliah` (
  `kode_mk` varchar(50) NOT NULL,
  `nama_mk` text NOT NULL,
  `sks` int(20) NOT NULL,
  `semester` int(20) NOT NULL,
  PRIMARY KEY (`kode_mk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `mata_kuliah` */

insert  into `mata_kuliah`(`kode_mk`,`nama_mk`,`sks`,`semester`) values 
('PTI123','Grafika Multimedia',3,5),
('PTI333','Basis Data Terdistribusi',3,5),
('PTI447','Praktikum Basis Data',1,3),
('PTI777','Sistem Informasi',2,3),
('TIK123','Jaringan Komputer',2,5),
('TIK333','Sistem Operasi',3,5),
('TIK342','Praktikum Basis Data',1,3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
