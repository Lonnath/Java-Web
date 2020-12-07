-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2020 a las 19:58:38
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `guerras`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bandos`
--

CREATE TABLE `bandos` (
  `id_bando` int(11) NOT NULL,
  `ganador` tinyint(1) DEFAULT NULL,
  `nombre` varchar(30) NOT NULL,
  `id_guerra` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bandos`
--

INSERT INTO `bandos` (`id_bando`, `ganador`, `nombre`, `id_guerra`) VALUES
(1, NULL, 'Los Guarichos', 5),
(2, NULL, 'Los Cifrinos', 7),
(3, NULL, 'Los sin medias', 7),
(4, 0, 'Jodidos', 5),
(5, 1, 'EsteGano', 2),
(6, 1, 'EsteGano', 2),
(7, 1, 'EsteGano', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guerra`
--

CREATE TABLE `guerra` (
  `id_guerra` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `anio_inicio` int(4) NOT NULL,
  `anio_fin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `guerra`
--

INSERT INTO `guerra` (`id_guerra`, `nombre`, `anio_inicio`, `anio_fin`) VALUES
(1, 'peloponeso', 2000, 2020),
(2, 'peloponeso', 2000, 2020),
(3, 'peloponeso', 2000, 2020),
(4, 'peloponeso', 22, 23),
(5, 'peloponeso', 22, 23),
(6, '', 0, 0),
(7, '222', 22, 2),
(8, 'Joselito', 1020, 2020),
(9, 'Joselito', 1020, 2020),
(10, 'Joselito', 1020, 2020);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id_pais` int(11) NOT NULL,
  `nombre` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `id_bando` int(11) DEFAULT NULL,
  `anio_salida` int(11) DEFAULT NULL,
  `anio_entrada` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id_pais`, `nombre`, `id_bando`, `anio_salida`, `anio_entrada`) VALUES
(39, 'Colombia', 1, NULL, NULL),
(40, 'Colombia', 1, NULL, NULL),
(41, 'Chupamestepenco', 2, 2012, 2013);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodos_independencia`
--

CREATE TABLE `periodos_independencia` (
  `id_pais` int(11) NOT NULL,
  `n_periodo` int(11) NOT NULL,
  `inicio_periodo` int(11) NOT NULL,
  `fin_periodo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bandos`
--
ALTER TABLE `bandos`
  ADD PRIMARY KEY (`id_bando`);

--
-- Indices de la tabla `guerra`
--
ALTER TABLE `guerra`
  ADD PRIMARY KEY (`id_guerra`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id_pais`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bandos`
--
ALTER TABLE `bandos`
  MODIFY `id_bando` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `guerra`
--
ALTER TABLE `guerra`
  MODIFY `id_guerra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id_pais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
