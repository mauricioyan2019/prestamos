-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2024 a las 21:57:33
-- Versión del servidor: 10.11.7-MariaDB-cll-lve
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u103988412_as`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MontoCreditoCuotas`
--

CREATE TABLE `MontoCreditoCuotas` (
  `mcc_id` bigint(20) NOT NULL,
  `mcc_cuota` int(11) DEFAULT NULL,
  `mcc_porcentaje` float DEFAULT NULL,
  `montoCredito_mc_id` bigint(20) NOT NULL,
  `mcc_mostrar` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `MontoCreditoCuotas`
--

INSERT INTO `MontoCreditoCuotas` (`mcc_id`, `mcc_cuota`, `mcc_porcentaje`, `montoCredito_mc_id`, `mcc_mostrar`) VALUES
(7416, 3, 1, 13, 1),
(7417, 6, 1, 13, 1),
(7854, 6, 120, 11, NULL),
(7855, 7, 125, 11, NULL),
(9119, 7, 100, 12, 1),
(9120, 7, 24, 12, 1),
(9121, 7, 25, 12, 1),
(9122, 7, 27, 12, 1),
(9984, 12, 73, 14, 1),
(9985, 11, 66, 14, 1),
(9986, 10, 60, 14, 1),
(9987, 9, 54, 14, 1),
(9988, 8, 48, 14, 1),
(9989, 7, 42, 14, 1),
(9990, 6, 36, 14, 1),
(9991, 5, 30, 14, 1),
(9992, 4, 24, 14, 1),
(9993, 3, 18, 14, 1),
(9994, 2, 12, 14, 1),
(9995, 1, 6, 14, 1),
(10173, 2, 10, 19, NULL),
(10174, 3, 10, 19, NULL),
(10175, 4, 10, 19, NULL),
(10176, 5, 10, 19, 1),
(10177, 6, 10, 19, NULL),
(11067, 1, 28, 18, 1),
(11068, 1, 29, 18, 1),
(11069, 1, 30, 18, 1),
(11070, 1, 31, 18, 1),
(11071, 1, 23, 18, 1),
(11072, 1, 22, 18, 1),
(11073, 1, 21, 18, 1),
(11074, 1, -85, 18, 1),
(11075, 1, -76, 18, 1),
(11076, 1, -75, 18, 1),
(11077, 1, -74, 18, 1),
(11078, 1, -13, 18, 1),
(11079, 1, -14, 18, 1),
(11080, 1, -15, 18, 1),
(11081, 1, -4, 18, 1),
(11082, 1, -16, 18, 1),
(11083, 1, -17, 18, 1),
(11084, 1, -1, 18, 1),
(11085, 1, 10, 18, 1),
(11086, 1, 9, 18, 1),
(11087, 1, 8, 18, 1),
(11088, 1, 4, 18, 1),
(11089, 1, 2, 18, 1),
(11090, 1, 13, 18, 1),
(11091, 1, 14, 18, 1),
(11092, 1, 15, 18, 1),
(11093, 1, 16, 18, 1),
(11094, 1, 17, 18, 1),
(11095, 1, 6, 18, 1),
(11096, 1, 5, 18, 1),
(11097, 1, 4, 18, 1),
(11098, 1, 3, 18, 1),
(11099, 1, 1, 18, 1),
(11100, 1, 7, 18, 1),
(11197, 1, 7, 16, 1),
(11198, 2, 14, 16, 1),
(11199, 3, 21, 16, 1),
(11200, 4, 28, 16, 1),
(11201, 5, 35, 16, 1),
(11202, 6, 42, 16, 1),
(11247, 1, 7, 17, 1),
(11248, 2, 14, 17, 1),
(11249, 3, 21, 17, 1),
(11250, 4, 28, 17, 1),
(11251, 5, 35, 17, 1),
(11252, 6, 42, 17, 1),
(11281, 9, 225, 2, NULL),
(11282, 8, 200, 2, NULL),
(11283, 7, 175, 2, NULL),
(11284, 6, 150, 2, NULL),
(11285, 5, 125, 2, NULL),
(11286, 4, 100, 2, NULL),
(11287, 3, 75, 2, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MontoCreditoCuotas`
--
ALTER TABLE `MontoCreditoCuotas`
  ADD PRIMARY KEY (`mcc_id`),
  ADD KEY `FKMCCMONTOCREDITO` (`montoCredito_mc_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `MontoCreditoCuotas`
--
ALTER TABLE `MontoCreditoCuotas`
  MODIFY `mcc_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11288;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
