-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-12-2020 a las 15:08:41
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
-- Base de datos: `academia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `dni` varchar(16) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombre` varchar(25) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellidos` varchar(25) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `edad` int(11) NOT NULL,
  `direccion` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `telefono` varchar(18) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `id_empresa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`dni`, `nombre`, `apellidos`, `edad`, `direccion`, `telefono`, `id_empresa`) VALUES
('125415', 'Jose', 'Gutierrez', 23, 'Clle 2 A...', '311223333', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `n_concreto` int(11) NOT NULL,
  `fecha_fin` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `fecha_inicio` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `id_tipos_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`n_concreto`, `fecha_fin`, `fecha_inicio`, `id_tipos_curso`) VALUES
(1, '2018-12-31', '2018-12-07', 1151010);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `cif` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `nombre` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `direccion` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `telefono` varchar(18) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`cif`, `nombre`, `direccion`, `telefono`) VALUES
('25415', 'Palmeras', 'Clle 6ta...', '3111000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `id_alumno` int(11) NOT NULL,
  `id_curso` int(11) NOT NULL,
  `nota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`id`, `id_alumno`, `id_curso`, `nota`) VALUES
(1, 125415, 1, 11),
(2, 125415, 1, 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `dni` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `apellidos` varchar(20) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `direccion` varchar(30) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `telefono` varchar(18) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `id_curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`dni`, `nombre`, `apellidos`, `direccion`, `telefono`, `id_curso`) VALUES
(254525, 'Hernesto', 'Botilla', 'Clle 3ra A...', '321321321', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_curso`
--

CREATE TABLE `tipos_curso` (
  `cod_curso` int(11) NOT NULL,
  `duracion` int(11) NOT NULL,
  `programa` varchar(25) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `titulo` varchar(45) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `tipos_curso`
--

INSERT INTO `tipos_curso` (`cod_curso`, `duracion`, `programa`, `titulo`) VALUES
(111111, 20000, 'Ingenieria Electronica', 'Ingeniero Electronico'),
(1151010, 50000, 'Ingenieria de Sistemas', 'Ingeniero De Sistemas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`dni`),
  ADD KEY `id_empresa` (`id_empresa`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`n_concreto`),
  ADD KEY `id_tipos_curso` (`id_tipos_curso`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`cif`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_alumno` (`id_alumno`,`id_curso`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`dni`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indices de la tabla `tipos_curso`
--
ALTER TABLE `tipos_curso`
  ADD PRIMARY KEY (`cod_curso`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `n_concreto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipos_curso`
--
ALTER TABLE `tipos_curso`
  MODIFY `cod_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1151011;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
