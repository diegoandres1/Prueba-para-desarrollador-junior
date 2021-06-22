-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2021 a las 09:43:24
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appx_department`
--

CREATE TABLE `appx_department` (
  `id` int(10) NOT NULL,
  `department_name` varchar(30) NOT NULL,
  `department_city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `appx_department`
--

INSERT INTO `appx_department` (`id`, `department_name`, `department_city`) VALUES
(1, 'Cundinamarca', 'Bogota'),
(2, 'Antioquia', 'Medellín'),
(3, 'Atlántico', 'Barranquilla'),
(4, 'Amazonas', 'Leticia'),
(5, 'Boyacá', 'Tunja'),
(6, 'Valle del Cauca', 'Cali'),
(7, 'Meta', 'Villavicencio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appx_educationlevel`
--

CREATE TABLE `appx_educationlevel` (
  `id` int(10) NOT NULL,
  `description` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `appx_educationlevel`
--

INSERT INTO `appx_educationlevel` (`id`, `description`) VALUES
(1, 'educación básica'),
(2, 'educación media'),
(3, 'bachiller'),
(4, 'tecnico'),
(5, 'tecnologo'),
(6, 'profesional'),
(7, 'posgrado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appx_employee`
--

CREATE TABLE `appx_employee` (
  `id` int(10) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `department_id` int(2) NOT NULL,
  `salary` int(7) NOT NULL,
  `educationlevel_id` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `appx_employee`
--

INSERT INTO `appx_employee` (`id`, `firstname`, `lastname`, `department_id`, `salary`, `educationlevel_id`) VALUES
(1755147, 'juan', 'hernandez', 5, 250000, 3),
(10785147, 'leidy', 'murcia', 1, 4000000, 7),
(10852147, 'juan', 'moreno', 3, 1500000, 5),
(25252147, 'sebastia', 'perez', 2, 1800000, 6),
(45625877, 'jose', 'duarte', 2, 100000, 1),
(65248147, 'carlos', 'silva', 4, 200000, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `appx_department`
--
ALTER TABLE `appx_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `appx_educationlevel`
--
ALTER TABLE `appx_educationlevel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `appx_employee`
--
ALTER TABLE `appx_employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `educationlevel_id` (`educationlevel_id`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `appx_employee`
--
ALTER TABLE `appx_employee`
  ADD CONSTRAINT `appx_employee_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `appx_department` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appx_employee_ibfk_2` FOREIGN KEY (`educationlevel_id`) REFERENCES `appx_educationlevel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
