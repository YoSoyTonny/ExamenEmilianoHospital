-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 22, 2020 at 08:41 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `extraxion_rodilla`
--

CREATE TABLE `extraxion_rodilla` (
  `rodilla_id` int(11) NOT NULL,
  `liquido_extraido` varchar(25) NOT NULL,
  `rodillaDI` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `extraxion_rodilla`
--

INSERT INTO `extraxion_rodilla` (`rodilla_id`, `liquido_extraido`, `rodillaDI`) VALUES
(1, '200 lt', 'Derecha'),
(2, '50 lt', 'izquierda');

-- --------------------------------------------------------

--
-- Table structure for table `reportes`
--

CREATE TABLE `reportes` (
  `id` int(11) NOT NULL,
  `numero_paciente` varchar(20) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `presion` decimal(10,2) DEFAULT NULL,
  `pulso` decimal(10,2) DEFAULT NULL,
  `temperatura` decimal(10,2) DEFAULT NULL,
  `observaciones` varchar(512) NOT NULL,
  `rodilla` varchar(10) NOT NULL,
  `cantidadliquido` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reportes`
--

INSERT INTO `reportes` (`id`, `numero_paciente`, `nombre`, `apellidos`, `nacimiento`, `fecha`, `hora`, `estado`, `presion`, `pulso`, `temperatura`, `observaciones`, `rodilla`, `cantidadliquido`, `created_at`, `updated_at`) VALUES
(2, '13', 'kiko suiso', 'luna kawengue', '2000-01-01', '2019-08-21', '13', 'vivo', '123.00', '77.00', '38.00', 'esta wey el vato', 'izquierda', '200 l', '2020-05-23 02:22:15', '2020-05-23 02:22:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `extraxion_rodilla`
--
ALTER TABLE `extraxion_rodilla`
  ADD PRIMARY KEY (`rodilla_id`);

--
-- Indexes for table `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `extraxion_rodilla`
--
ALTER TABLE `extraxion_rodilla`
  MODIFY `rodilla_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
