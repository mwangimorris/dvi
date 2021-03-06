-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2015 at 08:41 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dvidb`
--

-- --------------------------------------------------------

--
-- Structure for view `view_subcountycov_calculated`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_subcountycov_calculated` AS select `view_coverage_subcounty`.`periodname` AS `periodname`,`view_coverage_subcounty`.`county_id` AS `county_id`,`view_coverage_subcounty`.`subcounty_id` AS `subcounty_id`,((`view_coverage_subcounty`.`bcgdosesadm` / (`view_coverage_subcounty`.`population_one` / 12)) * 100) AS `totalbcg`,((`view_coverage_subcounty`.`dpt2dosesadministered` / (`view_coverage_subcounty`.`population_one` / 12)) * 100) AS `totaldpt2`,((`view_coverage_subcounty`.`dpt3dosesadm` / (`view_coverage_subcounty`.`population_one` / 12)) * 100) AS `totaldpt3`,((`view_coverage_subcounty`.`measlesdosesadm` / (`view_coverage_subcounty`.`population_one` / 12)) * 100) AS `totalmeasles`,((`view_coverage_subcounty`.`opvbirthdosesadm` / (`view_coverage_subcounty`.`population_one` / 12)) * 100) AS `totalopv`,((`view_coverage_subcounty`.`opv1dosesadm` / (`view_coverage_subcounty`.`population_one` / 12)) * 100) AS `totalopv1`,((`view_coverage_subcounty`.`opv2dosesadm` / (`view_coverage_subcounty`.`population_one` / 12)) * 100) AS `totalopv2`,((`view_coverage_subcounty`.`opv3dosesadm` / (`view_coverage_subcounty`.`population_one` / 12)) * 100) AS `totalopv3`,((`view_coverage_subcounty`.`pneumococal1adm` / (`view_coverage_subcounty`.`population_one` / 12)) * 100) AS `totalpcv1`,((`view_coverage_subcounty`.`pneumococal2adm` / (`view_coverage_subcounty`.`population_one` / 12)) * 100) AS `totalpcv2`,((`view_coverage_subcounty`.`pneumococal3administered` / (`view_coverage_subcounty`.`population_one` / 12)) * 100) AS `totalpcv3`,((`view_coverage_subcounty`.`rotavirus1dosesadministered` / (`view_coverage_subcounty`.`population_one` / 12)) * 100) AS `totalrota1`,((`view_coverage_subcounty`.`rotavirus2dosesadministered` / (`view_coverage_subcounty`.`population_one` / 12)) * 100) AS `totalrota2` from `view_coverage_subcounty`;

--
-- VIEW  `view_subcountycov_calculated`
-- Data: None
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
