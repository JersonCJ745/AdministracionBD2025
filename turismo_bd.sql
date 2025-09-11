-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-09-2025 a las 10:25:32
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `turismo_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `COD_CLIE` char(18) NOT NULL,
  `NOMBRE_CLIE` varchar(25) DEFAULT NULL,
  `APELLIDO_CLIE` varchar(25) DEFAULT NULL,
  `NRO_DNI_CLIE` char(8) DEFAULT NULL,
  `TELEFONO_CLIE` char(9) DEFAULT NULL,
  `EMAIL_CLIE` varchar(40) DEFAULT NULL,
  `EDAD_CLIE` int(11) DEFAULT NULL,
  `FECHA_NACIMIENTO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cronograma_actividad`
--

CREATE TABLE `cronograma_actividad` (
  `NRO_CRONOG_ACT` char(18) NOT NULL,
  `COD_PAQUETE_V` char(18) NOT NULL,
  `FECHA_EMISION` date DEFAULT NULL,
  `SITUACION_CRONOG` varchar(20) DEFAULT NULL,
  `FECHA_SALIDA` date DEFAULT NULL,
  `HORA_SALIDA` datetime DEFAULT NULL,
  `FECHA_RETORNO` date DEFAULT NULL,
  `HORA_RETORNO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destino`
--

CREATE TABLE `destino` (
  `COD_DESTINO` char(18) NOT NULL,
  `NOMBRE_DESTINO` varchar(25) DEFAULT NULL,
  `PROVINCIA` varchar(25) DEFAULT NULL,
  `DISTACIA_KM` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_viaje`
--

CREATE TABLE `lista_viaje` (
  `NRO_LISTA` char(18) NOT NULL,
  `FECHA_REGISTRO` date DEFAULT NULL,
  `FECHA_CADUCIDAD` date DEFAULT NULL,
  `COD_PAQUETE_V` char(18) NOT NULL,
  `NRO_CRONOG_ACT` char(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_viaje_cliente`
--

CREATE TABLE `lista_viaje_cliente` (
  `NRO_LISTA` char(18) NOT NULL,
  `COD_CLIE` char(18) NOT NULL,
  `NOMBRE_CLIE` varchar(25) DEFAULT NULL,
  `APELLIDO_CLIE` varchar(25) DEFAULT NULL,
  `VIAJE_EFECTIVO` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista_viaje_personal_viaje`
--

CREATE TABLE `lista_viaje_personal_viaje` (
  `NRO_LISTA` char(18) NOT NULL,
  `COD_PRES_V` char(18) NOT NULL,
  `NOMBRE_PERS_V` varchar(25) DEFAULT NULL,
  `APELLIDO_PERS_V` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquetes_viaje`
--

CREATE TABLE `paquetes_viaje` (
  `COD_PAQUETE_V` char(18) NOT NULL,
  `DENOMINACION` varchar(20) DEFAULT NULL,
  `DURACION_TOUR` time DEFAULT NULL,
  `TIPO_TOUR` varchar(20) DEFAULT NULL,
  `COSTO_PAQUETE_ADULTO` decimal(10,2) DEFAULT NULL,
  `COSTO_PAQUETE_NIÑOS` decimal(10,2) DEFAULT NULL,
  `HOSPEDAJE` char(18) DEFAULT NULL,
  `DESAYUNO` tinyint(1) DEFAULT NULL,
  `ALMUERZO` tinyint(1) DEFAULT NULL,
  `CENA` tinyint(1) DEFAULT NULL,
  `CUPOS_DISPONIBLES` char(8) DEFAULT NULL,
  `TIPO_BUS` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquetes_viaje_destino`
--

CREATE TABLE `paquetes_viaje_destino` (
  `COD_PAQUETE_V` char(18) NOT NULL,
  `COD_DESTINO` char(18) NOT NULL,
  `NOMBRE_DESTINO` varchar(25) DEFAULT NULL,
  `DENOMINACION` varchar(20) DEFAULT NULL,
  `ESTADIA_DESTINO` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_viaje`
--

CREATE TABLE `personal_viaje` (
  `COD_PRES_V` char(18) NOT NULL,
  `NOMBRE_PERS_V` varchar(25) DEFAULT NULL,
  `APELLIDOS_PERS_V` varchar(25) DEFAULT NULL,
  `CARGO_PERS_V` varchar(25) DEFAULT NULL,
  `NRO_DNI_PERS_V` char(8) DEFAULT NULL,
  `TELEFONO_PERS_V` char(9) DEFAULT NULL,
  `DISPONIBILIDAD_PERS_V` char(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas_turisticas`
--

CREATE TABLE `zonas_turisticas` (
  `COD_ZONA_TUR` char(18) NOT NULL,
  `NOMBRE_ZONA_TUR` varchar(25) DEFAULT NULL,
  `TIPO_ZONA_TUR` varchar(20) DEFAULT NULL,
  `COD_DESTINO` char(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`COD_CLIE`);

--
-- Indices de la tabla `cronograma_actividad`
--
ALTER TABLE `cronograma_actividad`
  ADD PRIMARY KEY (`NRO_CRONOG_ACT`,`COD_PAQUETE_V`),
  ADD KEY `R_6` (`COD_PAQUETE_V`);

--
-- Indices de la tabla `destino`
--
ALTER TABLE `destino`
  ADD PRIMARY KEY (`COD_DESTINO`);

--
-- Indices de la tabla `lista_viaje`
--
ALTER TABLE `lista_viaje`
  ADD PRIMARY KEY (`NRO_LISTA`),
  ADD KEY `R_5` (`NRO_CRONOG_ACT`,`COD_PAQUETE_V`);

--
-- Indices de la tabla `lista_viaje_cliente`
--
ALTER TABLE `lista_viaje_cliente`
  ADD PRIMARY KEY (`NRO_LISTA`,`COD_CLIE`),
  ADD KEY `R_1` (`COD_CLIE`);

--
-- Indices de la tabla `lista_viaje_personal_viaje`
--
ALTER TABLE `lista_viaje_personal_viaje`
  ADD PRIMARY KEY (`NRO_LISTA`,`COD_PRES_V`),
  ADD KEY `R_4` (`COD_PRES_V`);

--
-- Indices de la tabla `paquetes_viaje`
--
ALTER TABLE `paquetes_viaje`
  ADD PRIMARY KEY (`COD_PAQUETE_V`);

--
-- Indices de la tabla `paquetes_viaje_destino`
--
ALTER TABLE `paquetes_viaje_destino`
  ADD PRIMARY KEY (`COD_PAQUETE_V`,`COD_DESTINO`),
  ADD KEY `R_8` (`COD_DESTINO`);

--
-- Indices de la tabla `personal_viaje`
--
ALTER TABLE `personal_viaje`
  ADD PRIMARY KEY (`COD_PRES_V`);

--
-- Indices de la tabla `zonas_turisticas`
--
ALTER TABLE `zonas_turisticas`
  ADD PRIMARY KEY (`COD_ZONA_TUR`),
  ADD KEY `R_9` (`COD_DESTINO`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cronograma_actividad`
--
ALTER TABLE `cronograma_actividad`
  ADD CONSTRAINT `R_6` FOREIGN KEY (`COD_PAQUETE_V`) REFERENCES `paquetes_viaje` (`COD_PAQUETE_V`);

--
-- Filtros para la tabla `lista_viaje`
--
ALTER TABLE `lista_viaje`
  ADD CONSTRAINT `R_5` FOREIGN KEY (`NRO_CRONOG_ACT`,`COD_PAQUETE_V`) REFERENCES `cronograma_actividad` (`NRO_CRONOG_ACT`, `COD_PAQUETE_V`);

--
-- Filtros para la tabla `lista_viaje_cliente`
--
ALTER TABLE `lista_viaje_cliente`
  ADD CONSTRAINT `R_1` FOREIGN KEY (`COD_CLIE`) REFERENCES `cliente` (`COD_CLIE`),
  ADD CONSTRAINT `R_2` FOREIGN KEY (`NRO_LISTA`) REFERENCES `lista_viaje` (`NRO_LISTA`);

--
-- Filtros para la tabla `lista_viaje_personal_viaje`
--
ALTER TABLE `lista_viaje_personal_viaje`
  ADD CONSTRAINT `R_3` FOREIGN KEY (`NRO_LISTA`) REFERENCES `lista_viaje` (`NRO_LISTA`),
  ADD CONSTRAINT `R_4` FOREIGN KEY (`COD_PRES_V`) REFERENCES `personal_viaje` (`COD_PRES_V`);

--
-- Filtros para la tabla `paquetes_viaje_destino`
--
ALTER TABLE `paquetes_viaje_destino`
  ADD CONSTRAINT `R_7` FOREIGN KEY (`COD_PAQUETE_V`) REFERENCES `paquetes_viaje` (`COD_PAQUETE_V`),
  ADD CONSTRAINT `R_8` FOREIGN KEY (`COD_DESTINO`) REFERENCES `destino` (`COD_DESTINO`);

--
-- Filtros para la tabla `zonas_turisticas`
--
ALTER TABLE `zonas_turisticas`
  ADD CONSTRAINT `R_9` FOREIGN KEY (`COD_DESTINO`) REFERENCES `destino` (`COD_DESTINO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
