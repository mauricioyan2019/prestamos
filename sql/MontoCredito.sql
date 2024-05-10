-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-04-2024 a las 21:57:29
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
-- Estructura de tabla para la tabla `MontoCredito`
--

CREATE TABLE `MontoCredito` (
  `mc_id` bigint(20) NOT NULL,
  `mc_min` float DEFAULT NULL,
  `mc_max` float DEFAULT NULL,
  `mc_nombre` varchar(255) DEFAULT NULL,
  `mc_interes` float DEFAULT NULL,
  `mc_cantidad` int(11) DEFAULT NULL,
  `mc_estado` varchar(255) DEFAULT NULL,
  `mc_mostrar` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `MontoCredito`
--

INSERT INTO `MontoCredito` (`mc_id`, `mc_min`, `mc_max`, `mc_nombre`, `mc_interes`, `mc_cantidad`, `mc_estado`, `mc_mostrar`) VALUES
(2, 10000, 150000, 'PLAN NORMAL', 100, NULL, NULL, NULL),
(14, 20000, 100000, 'Simulador', NULL, 5, 'activo', NULL),
(16, 1000, 200000, 'REFINANCIAR 3 CUOTA', 120, NULL, 'activo', NULL),
(17, 1000, 200000, 'REFINANCIACION IVAN', 120, NULL, 'activo', NULL),
(18, 1000, 200000, 'REFINANCIAR 1 CUOTAS', 120, NULL, 'activo', 1),
(19, 1000, 200000, 'Refinanciaciones NO MODIFICAR', 150, NULL, 'activo', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `MontoCredito`
--
ALTER TABLE `MontoCredito`
  ADD PRIMARY KEY (`mc_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `MontoCredito`
--
ALTER TABLE `MontoCredito`
  MODIFY `mc_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
