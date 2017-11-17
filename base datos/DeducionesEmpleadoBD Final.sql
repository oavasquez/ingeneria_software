-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 17-11-2017 a las 20:54:23
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `DeducionesEmpleadoBD`
--
CREATE DATABASE IF NOT EXISTS `DeducionesEmpleadoBD` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `DeducionesEmpleadoBD`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Asistencias`
--

CREATE TABLE `Asistencias` (
  `idAsistencias` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora_entrada` int(11) DEFAULT NULL,
  `hora_salida` int(11) DEFAULT NULL,
  `idEmpleado` int(11) NOT NULL,
  `EstadoAsistencia` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

--
-- Truncar tablas antes de insertar `Asistencias`
--

TRUNCATE TABLE `Asistencias`;
--
-- Volcado de datos para la tabla `Asistencias`
--

INSERT INTO `Asistencias` (`idAsistencias`, `fecha`, `hora_entrada`, `hora_salida`, `idEmpleado`, `EstadoAsistencia`) VALUES
(1, '2017-11-17', 783, 1507, 1, 'Puntual'),
(2, '2017-11-17', 780, 1501, 2, 'Restrasado'),
(3, '2017-11-17', 769, 1501, 3, 'Restrasado'),
(4, '2017-11-17', 796, 1503, 4, 'Puntual'),
(5, '2017-11-17', 788, 1505, 5, 'Puntual'),
(6, '2017-11-17', 762, 1505, 6, 'Puntual'),
(7, '2017-11-17', 752, 1501, 7, 'Puntual'),
(8, '2017-11-17', 774, 1501, 8, 'Puntual'),
(9, '2017-11-17', 781, 1508, 9, 'Puntual'),
(10, '2017-11-17', 785, 1502, 10, 'Puntual'),
(11, '2017-11-17', 800, 1502, 11, 'Restrasado'),
(12, '2017-11-17', 781, 1509, 12, 'Restrasado'),
(13, '2017-11-17', 787, 1500, 13, 'Restrasado'),
(14, '2017-11-17', 769, 1503, 14, 'Restrasado'),
(15, '2017-11-17', 796, 1507, 15, 'Puntual'),
(16, '2017-11-17', 773, 1503, 16, 'Puntual'),
(17, '2017-11-17', 774, 1508, 17, 'Restrasado'),
(18, '2017-11-17', 759, 1504, 18, 'Restrasado'),
(19, '2017-11-17', 796, 1502, 19, 'Restrasado'),
(20, '2017-11-17', 782, 1506, 20, 'Restrasado'),
(21, '2017-11-17', 792, 1502, 21, 'Restrasado'),
(22, '2017-11-17', 773, 1501, 22, 'Restrasado'),
(23, '2017-11-17', 770, 1507, 23, 'Restrasado'),
(24, '2017-11-17', 759, 1507, 24, 'Puntual'),
(25, '2017-11-17', 802, 1508, 25, 'Puntual'),
(26, '2017-11-17', 791, 1500, 26, 'Restrasado'),
(27, '2017-11-17', 768, 1503, 27, 'Puntual'),
(28, '2017-11-17', 771, 1505, 28, 'Restrasado'),
(29, '2017-11-17', 758, 1501, 29, 'Puntual'),
(30, '2017-11-17', 755, 1509, 30, 'Restrasado'),
(31, '2017-11-17', 804, 1508, 31, 'Puntual'),
(32, '2017-11-17', 798, 1507, 32, 'Puntual'),
(33, '2017-11-17', 798, 1500, 33, 'Puntual'),
(34, '2017-11-17', 790, 1501, 34, 'Restrasado'),
(35, '2017-11-17', 796, 1500, 35, 'Restrasado'),
(36, '2017-11-17', 751, 1505, 36, 'Restrasado'),
(37, '2017-11-17', 786, 1502, 37, 'Puntual'),
(38, '2017-11-17', 802, 1500, 38, 'Puntual'),
(39, '2017-11-17', 803, 1500, 39, 'Puntual'),
(40, '2017-11-17', 784, 1504, 40, 'Restrasado'),
(41, '2017-11-17', 804, 1503, 41, 'Restrasado'),
(42, '2017-11-17', 760, 1503, 42, 'Restrasado'),
(43, '2017-11-17', 780, 1501, 43, 'Restrasado'),
(44, '2017-11-17', 780, 1506, 44, 'Puntual'),
(45, '2017-11-17', 777, 1507, 45, 'Restrasado'),
(46, '2017-11-17', 754, 1507, 46, 'Puntual'),
(47, '2017-11-17', 757, 1510, 47, 'Puntual'),
(48, '2017-11-17', 795, 1501, 48, 'Restrasado'),
(49, '2017-11-17', 792, 1501, 49, 'Restrasado'),
(50, '2017-11-17', 774, 1507, 50, 'Puntual'),
(51, '2017-11-17', 771, 1504, 51, 'Restrasado'),
(52, '2017-11-17', 752, 1500, 52, 'Restrasado'),
(53, '2017-11-17', 791, 1507, 53, 'Puntual'),
(54, '2017-11-17', 758, 1502, 54, 'Puntual'),
(55, '2017-11-17', 751, 1505, 55, 'Restrasado'),
(56, '2017-11-17', 754, 1500, 56, 'Restrasado'),
(57, '2017-11-17', 793, 1508, 57, 'Puntual'),
(58, '2017-11-17', 786, 1505, 58, 'Puntual'),
(59, '2017-11-17', 795, 1500, 59, 'Puntual'),
(60, '2017-11-17', 802, 1502, 60, 'Puntual'),
(61, '2017-11-17', 788, 1500, 61, 'Puntual'),
(62, '2017-11-17', 786, 1502, 62, 'Restrasado'),
(63, '2017-11-17', 751, 1501, 63, 'Restrasado'),
(64, '2017-11-17', 763, 1506, 64, 'Puntual'),
(65, '2017-11-17', 776, 1502, 65, 'Restrasado'),
(66, '2017-11-17', 776, 1502, 66, 'Restrasado'),
(67, '2017-11-17', 754, 1502, 67, 'Puntual'),
(68, '2017-11-17', 772, 1501, 68, 'Restrasado'),
(69, '2017-11-17', 752, 1506, 69, 'Puntual'),
(70, '2017-11-17', 783, 1506, 70, 'Puntual'),
(71, '2017-11-17', 799, 1506, 71, 'Puntual'),
(72, '2017-11-17', 777, 1504, 72, 'Restrasado'),
(73, '2017-11-17', 792, 1506, 73, 'Puntual'),
(74, '2017-11-17', 777, 1509, 74, 'Restrasado'),
(75, '2017-11-17', 760, 1503, 75, 'Restrasado'),
(76, '2017-11-17', 765, 1500, 76, 'Puntual'),
(77, '2017-11-17', 758, 1510, 77, 'Restrasado'),
(78, '2017-11-17', 801, 1507, 78, 'Puntual'),
(79, '2017-11-17', 753, 1510, 79, 'Puntual'),
(80, '2017-11-17', 803, 1500, 80, 'Restrasado'),
(81, '2017-11-17', 788, 1507, 81, 'Restrasado'),
(82, '2017-11-17', 785, 1506, 82, 'Restrasado'),
(83, '2017-11-17', 766, 1503, 83, 'Puntual'),
(84, '2017-11-17', 775, 1506, 84, 'Puntual'),
(85, '2017-11-17', 781, 1504, 85, 'Puntual'),
(86, '2017-11-17', 768, 1503, 86, 'Puntual'),
(87, '2017-11-17', 753, 1507, 87, 'Restrasado'),
(88, '2017-11-17', 762, 1504, 88, 'Restrasado'),
(89, '2017-11-17', 803, 1505, 89, 'Restrasado'),
(90, '2017-11-17', 768, 1502, 90, 'Puntual'),
(91, '2017-11-17', 783, 1508, 91, 'Restrasado'),
(92, '2017-11-17', 768, 1509, 92, 'Restrasado'),
(93, '2017-11-17', 790, 1500, 93, 'Restrasado'),
(94, '2017-11-17', 800, 1510, 94, 'Restrasado'),
(95, '2017-11-17', 796, 1508, 95, 'Puntual'),
(96, '2017-11-17', 760, 1510, 96, 'Restrasado'),
(97, '2017-11-17', 791, 1506, 97, 'Restrasado'),
(98, '2017-11-17', 751, 1508, 98, 'Puntual'),
(99, '2017-11-17', 796, 1502, 99, 'Puntual'),
(100, '2017-11-17', 771, 1502, 100, 'Restrasado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cargo`
--

CREATE TABLE `Cargo` (
  `idCargo` int(11) NOT NULL,
  `nombre_cargo` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Cargo`
--

TRUNCATE TABLE `Cargo`;
--
-- Volcado de datos para la tabla `Cargo`
--

INSERT INTO `Cargo` (`idCargo`, `nombre_cargo`) VALUES
(1, 'Gerente'),
(2, 'Encargado de Area'),
(3, 'Empleado'),


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Contrato`
--

CREATE TABLE `Contrato` (
  `idContrato` int(11) NOT NULL,
  `TipoContrato` varchar(45) DEFAULT NULL,
  `horaEntrada` int(11) DEFAULT NULL,
  `horaSalida` int(11) DEFAULT NULL,
  `diasDeTrabajo` int(11) DEFAULT NULL,
  `fechaContratacion` date DEFAULT NULL,
  `sueldo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Contrato`
--

TRUNCATE TABLE `Contrato`;
--
-- Volcado de datos para la tabla `Contrato`
--

INSERT INTO `Contrato` (`idContrato`, `TipoContrato`, `horaEntrada`, `horaSalida`, `diasDeTrabajo`, `fechaContratacion`, `sueldo`) VALUES
(1, 'Por Hora', 800, 1500, 5, '2017-08-22', 10000),
(2, 'Permanente', 800, 1500, 5, '2017-03-04', 10000),
(3, 'Permanente', 800, 1500, 5, '2017-06-14', 10000),
(4, 'Permanente', 800, 1500, 5, '2017-11-05', 10000),
(5, 'Por Hora', 800, 1500, 5, '2017-06-12', 10000),
(6, 'Por Hora', 800, 1500, 5, '2017-11-16', 10000),
(7, 'Permanente', 800, 1500, 5, '2017-08-27', 10000),
(8, 'Permanente', 800, 1500, 5, '2017-09-26', 10000),
(9, 'Permanente', 800, 1500, 5, '2017-08-16', 10000),
(10, 'Por Hora', 800, 1500, 5, '2017-10-17', 10000),
(11, 'Por Hora', 800, 1500, 5, '2017-01-02', 10000),
(12, 'Por Hora', 800, 1500, 5, '2017-07-17', 10000),
(13, 'Por Hora', 800, 1500, 5, '2017-09-12', 10000),
(14, 'Por Hora', 800, 1500, 5, '2017-10-02', 10000),
(15, 'Permanente', 800, 1500, 5, '2017-10-04', 10000),
(16, 'Permanente', 800, 1500, 5, '2017-06-28', 10000),
(17, 'Por Hora', 800, 1500, 5, '2017-01-04', 10000),
(18, 'Temporal', 800, 1500, 5, '2017-09-30', 10000),
(19, 'Permanente', 800, 1500, 5, '2017-01-08', 10000),
(20, 'Temporal', 800, 1500, 5, '2017-10-03', 10000),
(21, 'Temporal', 800, 1500, 5, '2017-02-06', 10000),
(22, 'Temporal', 800, 1500, 5, '2016-11-21', 10000),
(23, 'Temporal', 800, 1500, 5, '2017-03-01', 10000),
(24, 'Temporal', 800, 1500, 5, '2017-09-28', 10000),
(25, 'Temporal', 800, 1500, 5, '2017-07-26', 10000),
(26, 'Por Hora', 800, 1500, 5, '2017-04-01', 10000),
(27, 'Por Hora', 800, 1500, 5, '2017-02-27', 10000),
(28, 'Permanente', 800, 1500, 5, '2017-06-19', 10000),
(29, 'Por Hora', 800, 1500, 5, '2017-10-10', 10000),
(30, 'Permanente', 800, 1500, 5, '2017-07-08', 10000),
(31, 'Por Hora', 800, 1500, 5, '2017-09-24', 10000),
(32, 'Por Hora', 800, 1500, 5, '2017-04-10', 10000),
(33, 'Por Hora', 800, 1500, 5, '2017-08-14', 10000),
(34, 'Temporal', 800, 1500, 5, '2017-05-15', 10000),
(35, 'Temporal', 800, 1500, 5, '2017-01-21', 10000),
(36, 'Por Hora', 800, 1500, 5, '2017-02-26', 10000),
(37, 'Por Hora', 800, 1500, 5, '2016-12-20', 10000),
(38, 'Temporal', 800, 1500, 5, '2017-02-10', 10000),
(39, 'Por Hora', 800, 1500, 5, '2017-02-03', 10000),
(40, 'Permanente', 800, 1500, 5, '2017-03-28', 10000),
(41, 'Permanente', 800, 1500, 5, '2017-02-07', 10000),
(42, 'Permanente', 800, 1500, 5, '2017-06-09', 10000),
(43, 'Por Hora', 800, 1500, 5, '2017-02-18', 10000),
(44, 'Por Hora', 800, 1500, 5, '2017-06-11', 10000),
(45, 'Permanente', 800, 1500, 5, '2016-12-21', 10000),
(46, 'Temporal', 800, 1500, 5, '2017-02-19', 10000),
(47, 'Por Hora', 800, 1500, 5, '2017-01-28', 10000),
(48, 'Por Hora', 800, 1500, 5, '2017-10-12', 10000),
(49, 'Temporal', 800, 1500, 5, '2017-08-05', 10000),
(50, 'Permanente', 800, 1500, 5, '2017-10-30', 10000),
(51, 'Permanente', 800, 1500, 5, '2017-07-25', 10000),
(52, 'Temporal', 800, 1500, 5, '2017-08-04', 10000),
(53, 'Permanente', 800, 1500, 5, '2017-07-30', 10000),
(54, 'Por Hora', 800, 1500, 5, '2017-06-14', 10000),
(55, 'Temporal', 800, 1500, 5, '2017-06-05', 10000),
(56, 'Temporal', 800, 1500, 5, '2017-10-09', 10000),
(57, 'Permanente', 800, 1500, 5, '2016-12-08', 10000),
(58, 'Por Hora', 800, 1500, 5, '2017-03-23', 10000),
(59, 'Permanente', 800, 1500, 5, '2017-07-10', 10000),
(60, 'Temporal', 800, 1500, 5, '2017-01-13', 10000),
(61, 'Temporal', 800, 1500, 5, '2017-06-12', 10000),
(62, 'Por Hora', 800, 1500, 5, '2017-07-01', 10000),
(63, 'Temporal', 800, 1500, 5, '2017-11-21', 10000),
(64, 'Permanente', 800, 1500, 5, '2017-10-29', 10000),
(65, 'Permanente', 800, 1500, 5, '2017-04-23', 10000),
(66, 'Temporal', 800, 1500, 5, '2017-06-20', 10000),
(67, 'Temporal', 800, 1500, 5, '2017-08-27', 10000),
(68, 'Permanente', 800, 1500, 5, '2017-11-17', 10000),
(69, 'Permanente', 800, 1500, 5, '2017-05-28', 10000),
(70, 'Permanente', 800, 1500, 5, '2017-03-26', 10000),
(71, 'Permanente', 800, 1500, 5, '2017-11-11', 10000),
(72, 'Por Hora', 800, 1500, 5, '2017-07-19', 10000),
(73, 'Por Hora', 800, 1500, 5, '2017-11-15', 10000),
(74, 'Temporal', 800, 1500, 5, '2016-11-29', 10000),
(75, 'Temporal', 800, 1500, 5, '2017-03-23', 10000),
(76, 'Temporal', 800, 1500, 5, '2017-04-02', 10000),
(77, 'Por Hora', 800, 1500, 5, '2017-09-21', 10000),
(78, 'Temporal', 800, 1500, 5, '2016-11-21', 10000),
(79, 'Permanente', 800, 1500, 5, '2017-02-01', 10000),
(80, 'Por Hora', 800, 1500, 5, '2017-09-12', 10000),
(81, 'Por Hora', 800, 1500, 5, '2017-05-05', 10000),
(82, 'Temporal', 800, 1500, 5, '2017-07-14', 10000),
(83, 'Temporal', 800, 1500, 5, '2017-03-25', 10000),
(84, 'Por Hora', 800, 1500, 5, '2017-05-04', 10000),
(85, 'Por Hora', 800, 1500, 5, '2016-12-04', 10000),
(86, 'Permanente', 800, 1500, 5, '2017-10-18', 10000),
(87, 'Permanente', 800, 1500, 5, '2017-06-30', 10000),
(88, 'Temporal', 800, 1500, 5, '2017-05-13', 10000),
(89, 'Temporal', 800, 1500, 5, '2017-02-22', 10000),
(90, 'Temporal', 800, 1500, 5, '2017-01-15', 10000),
(91, 'Permanente', 800, 1500, 5, '2017-03-11', 10000),
(92, 'Permanente', 800, 1500, 5, '2016-11-25', 10000),
(93, 'Permanente', 800, 1500, 5, '2017-08-01', 10000),
(94, 'Por Hora', 800, 1500, 5, '2017-01-04', 10000),
(95, 'Por Hora', 800, 1500, 5, '2017-09-09', 10000),
(96, 'Permanente', 800, 1500, 5, '2017-09-19', 10000),
(97, 'Por Hora', 800, 1500, 5, '2017-07-21', 10000),
(98, 'Por Hora', 800, 1500, 5, '2017-08-15', 10000),
(99, 'Permanente', 800, 1500, 5, '2017-05-05', 10000),
(100, 'Temporal', 800, 1500, 5, '2016-12-14', 10000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Deducciones`
--

CREATE TABLE `Deducciones` (
  `idDeducciones` int(11) NOT NULL,
  `dedu_IHSS` float NOT NULL,
  `dedu_RAP` float NOT NULL,
  `dedu_aportaciones` float NOT NULL,
  `dedu_falta` float DEFAULT NULL,
  `idPermisos` int(11) NOT NULL,
  `idPago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Deducciones`
--

TRUNCATE TABLE `Deducciones`;
--
-- Volcado de datos para la tabla `Deducciones`
--

INSERT INTO `Deducciones` (`idDeducciones`, `dedu_IHSS`, `dedu_RAP`, `dedu_aportaciones`, `dedu_falta`, `idPermisos`, `idPago`) VALUES
(1, 200, 300, 0, 46, 61, 90),
(2, 200, 300, 0, 99, 39, 5),
(3, 200, 300, 0, 14, 65, 3),
(4, 200, 300, 0, 77, 16, 91),
(5, 200, 300, 0, 61, 40, 7),
(6, 200, 300, 0, 35, 34, 65),
(7, 200, 300, 0, 43, 19, 98),
(8, 200, 300, 0, 36, 16, 68),
(9, 200, 300, 0, 19, 65, 22),
(10, 200, 300, 0, 98, 82, 5),
(11, 200, 300, 0, 14, 12, 35),
(12, 200, 300, 0, 47, 95, 13),
(13, 200, 300, 0, 95, 53, 23),
(14, 200, 300, 0, 30, 25, 59),
(15, 200, 300, 0, 21, 50, 32),
(16, 200, 300, 0, 3, 72, 80),
(17, 200, 300, 0, 63, 65, 10),
(18, 200, 300, 0, 44, 39, 7),
(19, 200, 300, 0, 85, 52, 65),
(20, 200, 300, 0, 36, 51, 2),
(21, 200, 300, 0, 57, 41, 26),
(22, 200, 300, 0, 52, 97, 75),
(23, 200, 300, 0, 9, 76, 91),
(24, 200, 300, 0, 43, 29, 76),
(25, 200, 300, 0, 32, 60, 24),
(26, 200, 300, 0, 98, 77, 44),
(27, 200, 300, 0, 84, 72, 45),
(28, 200, 300, 0, 84, 47, 57),
(29, 200, 300, 0, 57, 54, 61),
(30, 200, 300, 0, 33, 35, 65),
(31, 200, 300, 0, 52, 90, 24),
(32, 200, 300, 0, 76, 16, 61),
(33, 200, 300, 0, 89, 62, 78),
(34, 200, 300, 0, 97, 19, 14),
(35, 200, 300, 0, 68, 97, 63),
(36, 200, 300, 0, 13, 3, 23),
(37, 200, 300, 0, 88, 4, 61),
(38, 200, 300, 0, 21, 16, 50),
(39, 200, 300, 0, 45, 55, 38),
(40, 200, 300, 0, 93, 56, 22),
(41, 200, 300, 0, 34, 80, 49),
(42, 200, 300, 0, 24, 79, 82),
(43, 200, 300, 0, 60, 91, 2),
(44, 200, 300, 0, 43, 93, 97),
(45, 200, 300, 0, 92, 89, 82),
(46, 200, 300, 0, 28, 84, 86),
(47, 200, 300, 0, 54, 89, 41),
(48, 200, 300, 0, 7, 12, 33),
(49, 200, 300, 0, 77, 62, 19),
(50, 200, 300, 0, 61, 29, 28),
(51, 200, 300, 0, 47, 11, 36),
(52, 200, 300, 0, 68, 63, 97),
(53, 200, 300, 0, 2, 31, 18),
(54, 200, 300, 0, 87, 91, 12),
(55, 200, 300, 0, 77, 64, 84),
(56, 200, 300, 0, 32, 22, 68),
(57, 200, 300, 0, 62, 72, 80),
(58, 200, 300, 0, 48, 31, 9),
(59, 200, 300, 0, 30, 96, 98),
(60, 200, 300, 0, 1, 22, 53),
(61, 200, 300, 0, 66, 78, 91),
(62, 200, 300, 0, 72, 4, 23),
(63, 200, 300, 0, 84, 90, 33),
(64, 200, 300, 0, 81, 67, 53),
(65, 200, 300, 0, 58, 85, 39),
(66, 200, 300, 0, 58, 77, 58),
(67, 200, 300, 0, 21, 60, 30),
(68, 200, 300, 0, 53, 5, 98),
(69, 200, 300, 0, 31, 25, 32),
(70, 200, 300, 0, 59, 69, 78),
(71, 200, 300, 0, 51, 55, 84),
(72, 200, 300, 0, 96, 60, 24),
(73, 200, 300, 0, 22, 12, 15),
(74, 200, 300, 0, 87, 51, 65),
(75, 200, 300, 0, 87, 84, 59),
(76, 200, 300, 0, 40, 98, 34),
(77, 200, 300, 0, 42, 28, 21),
(78, 200, 300, 0, 99, 82, 57),
(79, 200, 300, 0, 79, 74, 83),
(80, 200, 300, 0, 75, 67, 54),
(81, 200, 300, 0, 90, 49, 26),
(82, 200, 300, 0, 95, 85, 70),
(83, 200, 300, 0, 96, 71, 67),
(84, 200, 300, 0, 32, 15, 65),
(85, 200, 300, 0, 65, 8, 8),
(86, 200, 300, 0, 95, 74, 49),
(87, 200, 300, 0, 70, 74, 11),
(88, 200, 300, 0, 50, 2, 97),
(89, 200, 300, 0, 45, 85, 26),
(90, 200, 300, 0, 53, 77, 37),
(91, 200, 300, 0, 59, 43, 19),
(92, 200, 300, 0, 67, 7, 35),
(93, 200, 300, 0, 97, 74, 50),
(94, 200, 300, 0, 57, 53, 62),
(95, 200, 300, 0, 57, 11, 7),
(96, 200, 300, 0, 64, 28, 98),
(97, 200, 300, 0, 6, 83, 48),
(98, 200, 300, 0, 33, 36, 58),
(99, 200, 300, 0, 43, 33, 39),
(100, 200, 300, 0, 100, 19, 54);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empleado`
--

CREATE TABLE `Empleado` (
  `idEmpleado` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `identidad` varchar(45) NOT NULL,
  `genero` varchar(20) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `cod_empleado` int(11) NOT NULL,
  `idCargo` int(11) NOT NULL,
  `idEncargado` int(11) DEFAULT NULL,
  `idContrato` int(11) NOT NULL,
  `nombreUsuario` varchar(45) DEFAULT NULL,
  `contrasena` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Empleado`
--

TRUNCATE TABLE `Empleado`;
--
-- Volcado de datos para la tabla `Empleado`
--

INSERT INTO `Empleado` (`idEmpleado`, `nombre`, `apellido`, `identidad`, `genero`, `edad`, `fecha_nacimiento`, `telefono`, `correo`, `direccion`, `cod_empleado`, `idCargo`, `idEncargado`, `idContrato`, `nombreUsuario`, `contrasena`) VALUES
(1, 'Nissim Bryan', 'Saunders', '1628093060799', 'F', 27, '0000-00-00', '+504 106-7861', NULL, 'P.O. Box 145, 1013 Consequat, Street', 6528, 3, 2, 1, 'Dane', 'asd'),
(2, 'Slade Mayer', 'Vazquez', '1679110173099', 'F', 30, '0000-00-00', '+504 896-6264', NULL, 'P.O. Box 312, 9323 Velit St.', 3866, 3, 2, 2, 'Howard', 'asd'),
(3, 'Ulysses Cochran', 'Kidd', '1681082252699', 'M', 27, '1986-01-09', '+504 177-6488', NULL, 'P.O. Box 173, 1125 Donec Rd.', 9223, 3, 2, 3, 'Rajah', 'asd'),
(4, 'Lionel Thompson', 'Ballard', '1611111709699', 'M', 25, '0000-00-00', '+504 128-1807', NULL, 'Ap #167-535 Quis Ave', 8970, 3, 2, 4, 'Lance', 'asd'),
(5, 'Abraham Bell', 'England', '1616011825499', 'M', 32, '0000-00-00', '+504 705-6708', NULL, 'Ap #777-5334 Mollis Rd.', 6319, 3, 2, 5, 'Lillian', 'asd'),
(6, 'Guy Combs', 'Ashley', '1657071354899', 'M', 42, '0000-00-00', '+504 340-4162', NULL, 'Ap #495-8361 Euismod Avenue', 9863, 3, 2, 6, 'Aubrey', 'asd'),
(7, 'Alec Marquez', 'Smith', '1608101260999', 'M', 33, '1986-09-07', '+504 389-7965', NULL, '4749 Nibh Ave', 8057, 3, 2, 7, 'Sarah', 'asd'),
(8, 'Wade Guthrie', 'Williams', '1647090417799', 'M', 48, '1967-04-05', '+504 797-5883', NULL, 'Ap #506-7155 Non, St.', 4306, 3, 2, 8, 'Dean', 'asd'),
(9, 'Blaze Donovan', 'Lloyd', '1659052938199', 'F', 43, '0000-00-00', '+504 632-7469', NULL, 'Ap #733-716 Aliquam, Ave', 4715, 3, 2, 9, 'Amethyst', 'asd'),
(10, 'Thane Calhoun', 'Velasquez', '1695022844999', 'F', 20, '1985-01-09', '+504 789-8053', NULL, 'Ap #729-263 Nascetur Avenue', 2321, 3, 2, 10, 'Clementine', 'asd'),
(11, 'Dennis Hampton', 'Salas', '1606111024599', 'F', 31, '0000-00-00', '+504 329-2165', NULL, 'Ap #198-4754 Sit Street', 3287, 3, 2, 11, 'Ella', 'asd'),
(12, 'Jerome Armstrong', 'Cash', '1688112916799', 'M', 39, '0000-00-00', '+504 529-1226', NULL, 'P.O. Box 919, 2456 Erat St.', 7913, 3, 2, 12, 'Ursa', 'asd'),
(13, 'Victor Soto', 'Garrison', '1610012279499', 'F', 28, '1979-11-02', '+504 862-2286', NULL, '627-5971 At St.', 3929, 3, 2, 13, 'Arsenio', 'asd'),
(14, 'Abraham Stark', 'Underwood', '1647050120999', 'F', 30, '0000-00-00', '+504 261-7977', NULL, 'Ap #542-3400 Vel, Rd.', 6996, 3, 2, 14, 'Ciaran', 'asd'),
(15, 'Paki Fitzpatrick', 'Rowland', '1677010469699', 'F', 45, '1967-11-12', '+504 736-7441', NULL, 'Ap #783-7395 Amet St.', 2733, 3, 2, 15, 'Richard', 'asd'),
(16, 'Silas Farley', 'House', '1602111590099', 'M', 28, '0000-00-00', '+504 730-9891', NULL, 'Ap #229-7834 Et Road', 6693, 3, 2, 16, 'Ezra', 'asd'),
(17, 'Hedley Franco', 'Nunez', '1678101657399', 'F', 42, '1995-06-10', '+504 714-5261', NULL, '820-5429 Dolor, Avenue', 2754, 3, 2, 17, 'Illana', 'asd'),
(18, 'Yardley Barrera', 'Molina', '1691072939999', 'F', 48, '1989-03-02', '+504 484-5582', NULL, 'Ap #421-6258 Facilisis, Avenue', 6841, 3, 2, 18, 'Myles', 'asd'),
(19, 'Matthew Waller', 'Rowe', '1648091027599', 'M', 43, '1985-05-05', '+504 489-8493', NULL, 'Ap #276-7848 Mi. St.', 8989, 3, 2, 19, 'Shoshana', 'asd'),
(20, 'Lucius Ferguson', 'Valentine', '1695011582099', 'F', 38, '0000-00-00', '+504 463-8265', NULL, '735-3219 Magna St.', 5145, 3, 2, 20, 'Xavier', 'asd'),
(21, 'Jesse Hooper', 'Cherry', '1693082327599', 'F', 41, '0000-00-00', '+504 872-4111', NULL, '9883 Mauris Street', 7912, 3, 2, 21, 'Connor', 'asd'),
(22, 'Emmanuel Poole', 'Keller', '1635022044399', 'F', 31, '0000-00-00', '+504 553-6323', NULL, '339 Odio. St.', 4093, 3, 2, 22, 'Amos', 'asd'),
(23, 'Porter Moon', 'Morales', '1684010640899', 'M', 25, '1965-02-03', '+504 434-2277', NULL, 'P.O. Box 557, 8024 Ridiculus Ave', 9892, 3, 2, 23, 'Aaron', 'asd'),
(24, 'Jesse Vazquez', 'Hewitt', '1616102953599', 'F', 47, '0000-00-00', '+504 382-0004', NULL, '258-908 Ultrices Street', 8749, 3, 2, 24, 'Leandra', 'asd'),
(25, 'Orson Shields', 'Garner', '1601092996699', 'F', 31, '0000-00-00', '+504 491-9422', NULL, 'Ap #446-9029 Nullam Rd.', 5457, 3, 2, 25, 'Frances', 'asd'),
(26, 'Samson Young', 'Preston', '1665120991599', 'M', 28, '0000-00-00', '+504 638-4150', NULL, 'P.O. Box 474, 9043 Sagittis Avenue', 6099, 3, 2, 26, 'Jackson', 'asd'),
(27, 'Lance Sharp', 'Sutton', '1695070463899', 'M', 32, '0000-00-00', '+504 949-2451', NULL, '565 Cursus, Road', 5044, 3, 2, 27, 'Jared', 'asd'),
(28, 'Cooper Nunez', 'Le', '1652031712499', 'M', 29, '0000-00-00', '+504 213-6126', NULL, '838-3604 Sociis Av.', 2218, 3, 2, 28, 'Jonas', 'asd'),
(29, 'Gage Welch', 'Mckinney', '1682122695099', 'F', 36, '0000-00-00', '+504 965-7178', NULL, '2185 Neque Road', 7357, 3, 2, 29, 'Garrett', 'asd'),
(30, 'Alan House', 'Simmons', '1659051639099', 'F', 39, '1980-10-01', '+504 752-3078', NULL, '6961 Aliquam St.', 7306, 3, 2, 30, 'Allen', 'asd'),
(31, 'Odysseus Randolph', 'Parker', '1675112518099', 'M', 48, '0000-00-00', '+504 345-7050', NULL, 'P.O. Box 379, 5003 Natoque Rd.', 2090, 3, 2, 31, 'Rhona', 'asd'),
(32, 'Oren Moses', 'Sherman', '1676042808499', 'F', 20, '1965-04-04', '+504 216-7303', NULL, 'P.O. Box 955, 2838 Eget, Rd.', 2850, 3, 2, 32, 'Amery', 'asd'),
(33, 'David Calderon', 'Hendricks', '1685091046099', 'F', 38, '0000-00-00', '+504 233-6310', NULL, 'Ap #995-2276 Mi, Street', 5681, 3, 2, 33, 'Kameko', 'asd'),
(34, 'Paul Massey', 'Alston', '1607120538399', 'F', 48, '0000-00-00', '+504 157-7908', NULL, 'Ap #826-362 Magna. St.', 4727, 3, 2, 34, 'Althea', 'asd'),
(35, 'Wang Morgan', 'Rush', '1684011023699', 'F', 23, '1978-07-04', '+504 117-5284', NULL, '5512 At, St.', 7190, 3, 2, 35, 'Carter', 'asd'),
(36, 'Ralph Powers', 'Dorsey', '1619102600399', 'F', 22, '1966-03-05', '+504 675-0016', NULL, 'P.O. Box 560, 5940 Inceptos Ave', 8234, 3, 2, 36, 'Sara', 'asd'),
(37, 'Brandon Kidd', 'Rosa', '1615012815499', 'M', 47, '1968-08-12', '+504 707-7732', NULL, 'P.O. Box 875, 2871 Bibendum. Rd.', 7647, 3, 2, 37, 'Jasmine', 'asd'),
(38, 'Brock Massey', 'Nolan', '1691011879799', 'M', 42, '0000-00-00', '+504 815-8181', NULL, '975 Sodales St.', 7566, 3, 2, 38, 'Dana', 'asd'),
(39, 'Kevin Vance', 'Sharpe', '1658072498499', 'F', 36, '0000-00-00', '+504 819-4514', NULL, '437-4869 Hymenaeos. Road', 7034, 3, 2, 39, 'Neville', 'asd'),
(40, 'Vincent Walker', 'Stone', '1676101397999', 'F', 38, '0000-00-00', '+504 619-1682', NULL, 'P.O. Box 966, 8367 Tempor Rd.', 4602, 3, 2, 40, 'Fletcher', 'asd'),
(41, 'Dale Schmidt', 'Lynn', '1646091991799', 'F', 35, '1984-03-06', '+504 496-8671', NULL, '855-3499 Erat Rd.', 3895, 3, 2, 41, 'Ima', 'asd'),
(42, 'Norman Barry', 'Ferrell', '1676052845099', 'M', 46, '0000-00-00', '+504 777-6220', NULL, 'P.O. Box 119, 4704 Ridiculus Street', 7144, 3, 2, 42, 'Abigail', 'asd'),
(43, 'Oliver Rodriguez', 'William', '1697032202299', 'M', 20, '1984-12-02', '+504 856-2322', NULL, 'Ap #579-4207 Accumsan Rd.', 3331, 3, 2, 43, 'Destiny', 'asd'),
(44, 'Lance Luna', 'Dixon', '1672100572399', 'F', 30, '0000-00-00', '+504 839-5212', NULL, 'Ap #497-3688 At, Avenue', 6740, 3, 2, 44, 'Aurelia', 'asd'),
(45, 'Merrill Duke', 'Williamson', '1660101436299', 'F', 37, '0000-00-00', '+504 539-9828', NULL, '328-9014 Adipiscing St.', 6537, 3, 2, 45, 'Mannix', 'asd'),
(46, 'Merrill Hammond', 'Hines', '1608122046499', 'M', 37, '1982-12-11', '+504 610-1230', NULL, 'Ap #686-7359 Ante. St.', 3875, 3, 2, 46, 'Raymond', 'asd'),
(47, 'Aidan Peterson', 'Fernandez', '1618040124599', 'M', 41, '0000-00-00', '+504 358-1627', NULL, 'P.O. Box 274, 2768 Sodales Street', 4425, 3, 2, 47, 'Harper', 'asd'),
(48, 'Yoshio Oliver', 'Miranda', '1683112603999', 'F', 35, '0000-00-00', '+504 572-4255', NULL, '469-7315 Habitant Ave', 3872, 3, 2, 48, 'Jane', 'asd'),
(49, 'Lewis Allison', 'Whitley', '1643100987699', 'F', 32, '0000-00-00', '+504 192-8245', NULL, 'Ap #945-7221 Nunc Av.', 3216, 3, 2, 49, 'Nehru', 'asd'),
(50, 'Elijah Middleton', 'Gibson', '1672062222299', 'F', 28, '1989-08-09', '+504 584-3750', NULL, '9667 Erat Rd.', 9869, 3, 2, 50, 'Jelani', 'asd'),
(51, 'Berk Kim', 'Ochoa', '1624022362799', 'F', 41, '1995-12-07', '+504 213-6612', NULL, '453 Nulla. Street', 4876, 3, 2, 51, 'Uta', 'asd'),
(52, 'Hector Pollard', 'Reeves', '1608021378599', 'F', 30, '0000-00-00', '+504 394-3328', NULL, 'P.O. Box 942, 1724 Vel, Rd.', 8826, 3, 2, 52, 'Brent', 'asd'),
(53, 'Wyatt Lowery', 'Rush', '1656050644599', 'M', 33, '0000-00-00', '+504 783-6197', NULL, 'P.O. Box 659, 4576 Pellentesque Av.', 6136, 3, 2, 53, 'Carlos', 'asd'),
(54, 'Cedric Conley', 'Nielsen', '1693062119999', 'F', 40, '0000-00-00', '+504 304-0870', NULL, 'Ap #262-2927 Lorem Av.', 3467, 3, 2, 54, 'Kay', 'asd'),
(55, 'Dillon Meadows', 'Kirby', '1656072400199', 'M', 39, '0000-00-00', '+504 798-0390', NULL, '275-6973 Inceptos Rd.', 3179, 3, 2, 55, 'Orla', 'asd'),
(56, 'Axel Yates', 'Mckee', '1682071199299', 'F', 20, '0000-00-00', '+504 467-5748', NULL, '8151 Pellentesque St.', 7473, 3, 2, 56, 'Jaime', 'asd'),
(57, 'Zahir Ewing', 'Morales', '1693020138899', 'F', 48, '0000-00-00', '+504 961-7182', NULL, '224-2519 Nunc Ave', 1336, 3, 2, 57, 'Herman', 'asd'),
(58, 'Guy Anthony', 'Duke', '1646092379899', 'F', 39, '0000-00-00', '+504 786-8797', NULL, 'Ap #872-4653 Sed Av.', 3042, 3, 2, 58, 'Delilah', 'asd'),
(59, 'Howard Perkins', 'Parrish', '1629090909299', 'F', 29, '0000-00-00', '+504 961-8820', NULL, '6004 Egestas St.', 4835, 3, 2, 59, 'Noah', 'asd'),
(60, 'Fitzgerald Joseph', 'Chambers', '1612071428599', 'F', 27, '0000-00-00', '+504 325-0318', NULL, '6859 Tincidunt St.', 4587, 3, 2, 60, 'Merrill', 'asd'),
(61, 'Kasimir Mendoza', 'Herman', '1604041112899', 'F', 43, '1981-08-01', '+504 835-8350', NULL, 'Ap #403-2471 Class St.', 6763, 3, 2, 61, 'Ivan', 'asd'),
(62, 'Hiram Weaver', 'Dudley', '1682070430399', 'F', 42, '0000-00-00', '+504 617-8969', NULL, '120-7308 Auctor, Av.', 8055, 3, 2, 62, 'Aspen', 'asd'),
(63, 'Abel Buckley', 'Bright', '1621042863899', 'F', 29, '0000-00-00', '+504 541-9134', NULL, '4202 Eu St.', 2837, 3, 2, 63, 'Daria', 'asd'),
(64, 'Daniel Salinas', 'Bolton', '1648082566599', 'F', 32, '1987-02-10', '+504 294-8844', NULL, 'P.O. Box 488, 3256 Pede, Road', 5440, 3, 2, 64, 'Emi', 'asd'),
(65, 'Louis Lang', 'Warner', '1693102928399', 'M', 29, '1966-11-03', '+504 702-2234', NULL, '614-6052 Tellus Avenue', 8603, 3, 2, 65, 'Sharon', 'asd'),
(66, 'Donovan Gamble', 'Dale', '1642011663999', 'F', 43, '0000-00-00', '+504 290-8535', NULL, '598-109 Enim, Street', 5108, 3, 2, 66, 'Skyler', 'asd'),
(67, 'Guy Little', 'Nash', '1658070168599', 'M', 38, '1982-03-10', '+504 669-3475', NULL, '882-2062 In St.', 3217, 3, 2, 67, 'Yoshi', 'asd'),
(68, 'Gabriel Davidson', 'Newton', '1675081726199', 'F', 46, '0000-00-00', '+504 527-8259', NULL, 'P.O. Box 662, 2051 Turpis Ave', 2066, 3, 2, 68, 'Dane', 'asd'),
(69, 'Byron Juarez', 'Kirby', '1694082896799', 'F', 22, '0000-00-00', '+504 643-6840', NULL, 'P.O. Box 778, 4409 Fringilla. Road', 4852, 3, 2, 69, 'Kitra', 'asd'),
(70, 'Cedric Castaneda', 'Dunlap', '1610010248599', 'M', 38, '1983-03-11', '+504 989-0386', NULL, 'P.O. Box 156, 4218 Pulvinar Rd.', 4599, 3, 2, 70, 'Medge', 'asd'),
(71, 'Devin Townsend', 'Frost', '1605062992299', 'M', 21, '0000-00-00', '+504 867-1677', NULL, 'P.O. Box 446, 7316 Ultricies Street', 6248, 3, 2, 71, 'Jarrod', 'asd'),
(72, 'Nissim Gardner', 'Benton', '1641120352799', 'M', 23, '0000-00-00', '+504 498-7762', NULL, 'Ap #949-4696 Neque St.', 5289, 3, 2, 72, 'Serena', 'asd'),
(73, 'Harper Dominguez', 'Craig', '1672051407499', 'F', 43, '1966-09-07', '+504 696-4981', NULL, '3626 Sit St.', 8204, 3, 2, 73, 'Barrett', 'asd'),
(74, 'Evan Malone', 'Cooke', '1671080929099', 'F', 37, '0000-00-00', '+504 403-6322', NULL, '4168 Integer Rd.', 1366, 3, 2, 74, 'Darrel', 'asd'),
(75, 'Burke Mills', 'Robles', '1691122923099', 'M', 23, '1979-07-04', '+504 680-5272', NULL, 'P.O. Box 990, 8522 At St.', 7324, 3, 2, 75, 'Aquila', 'asd'),
(76, 'Robert Perkins', 'Anderson', '1669122490799', 'F', 36, '0000-00-00', '+504 774-9286', NULL, 'P.O. Box 420, 802 Dictum Street', 5175, 3, 2, 76, 'Brock', 'asd'),
(77, 'Fuller Barnes', 'Holmes', '1682100672599', 'M', 26, '1966-12-08', '+504 415-1483', NULL, 'Ap #572-7087 In St.', 8167, 3, 2, 77, 'Idola', 'asd'),
(78, 'Drake Conway', 'Morin', '1651032123799', 'M', 20, '1967-10-07', '+504 710-9961', NULL, '385-3154 Montes, St.', 7020, 3, 2, 78, 'Caleb', 'asd'),
(79, 'Thor Carson', 'Rogers', '1657112623199', 'F', 27, '1986-05-04', '+504 152-0268', NULL, '6092 Metus Av.', 7359, 3, 2, 79, 'Martina', 'asd'),
(80, 'Scott Alston', 'Slater', '1672050885399', 'F', 42, '1981-06-01', '+504 103-5407', NULL, '1920 Integer Rd.', 9155, 3, 2, 80, 'Hu', 'asd'),
(81, 'Brennan Navarro', 'Hunt', '1616052689199', 'F', 49, '1991-02-09', '+504 905-2268', NULL, 'P.O. Box 455, 1860 Ipsum. St.', 8427, 3, 2, 81, 'Yvonne', 'asd'),
(82, 'Clayton Griffith', 'Nielsen', '1634011603899', 'F', 33, '0000-00-00', '+504 111-5646', NULL, 'P.O. Box 777, 6406 Mauris. Ave', 2428, 3, 2, 82, 'Whoopi', 'asd'),
(83, 'Brendan Bartlett', 'Flynn', '1601042156399', 'F', 31, '1966-10-08', '+504 121-4641', NULL, '179 Phasellus Avenue', 2341, 3, 2, 83, 'Theodore', 'asd'),
(84, 'Ezra Whitehead', 'Ryan', '1694041384599', 'F', 39, '1982-11-11', '+504 862-3119', NULL, 'P.O. Box 903, 6648 Sem, St.', 7396, 3, 2, 84, 'Evelyn', 'asd'),
(85, 'Edward Frank', 'Gray', '1606111957299', 'M', 44, '0000-00-00', '+504 248-3430', NULL, '1793 Augue, Rd.', 3299, 3, 2, 85, 'Reese', 'asd'),
(86, 'Emery Mcpherson', 'Cardenas', '1698080598599', 'M', 46, '0000-00-00', '+504 290-6567', NULL, 'Ap #472-9822 Eu St.', 1573, 3, 2, 86, 'Elizabeth', 'asd'),
(87, 'Brody Russo', 'Francis', '1625010737899', 'M', 45, '1976-07-08', '+504 175-0294', NULL, '5688 Nunc St.', 8184, 3, 2, 87, 'Sawyer', 'asd'),
(88, 'Ezekiel Lancaster', 'Black', '1647040634499', 'M', 30, '1977-03-11', '+504 905-3520', NULL, 'P.O. Box 986, 1024 Ullamcorper St.', 8454, 3, 2, 88, 'Devin', 'asd'),
(89, 'Robert Elliott', 'Sears', '1651022479199', 'F', 35, '1971-04-07', '+504 246-8763', NULL, '207-782 Malesuada Rd.', 7381, 3, 2, 89, 'Nehru', 'asd'),
(90, 'Damon Wallace', 'Talley', '1608020886799', 'F', 50, '0000-00-00', '+504 408-6682', NULL, '749-3000 Congue Av.', 2287, 3, 2, 90, 'Lillith', 'asd'),
(91, 'Hedley Holman', 'Owens', '1612070423399', 'M', 40, '0000-00-00', '+504 948-4936', NULL, 'P.O. Box 714, 5532 A Road', 6413, 3, 2, 91, 'Breanna', 'asd'),
(92, 'Chester Ochoa', 'Calderon', '1697042838199', 'M', 36, '0000-00-00', '+504 723-7505', NULL, 'Ap #592-7847 Velit. Avenue', 5210, 3, 2, 92, 'May', 'asd'),
(93, 'Harper Dejesus', 'Kidd', '1682090622399', 'M', 34, '1982-07-08', '+504 619-2975', NULL, '459-9064 Elit Rd.', 5230, 3, 2, 93, 'George', 'asd'),
(94, 'Cairo Ayers', 'Calderon', '1687032716499', 'M', 40, '0000-00-00', '+504 215-0145', NULL, 'Ap #392-2467 Massa Av.', 1709, 3, 2, 94, 'Ezra', 'asd'),
(95, 'Uriel Norton', 'Reyes', '1602101167399', 'F', 27, '1969-07-10', '+504 934-6478', NULL, '1613 Egestas Street', 5275, 3, 2, 95, 'Iris', 'asd'),
(96, 'Kieran Guerrero', 'Bender', '1697061016899', 'F', 38, '1972-03-01', '+504 262-9842', NULL, 'P.O. Box 422, 6561 Cras Av.', 5804, 3, 2, 96, 'Ulric', 'asd'),
(97, 'Maxwell Herrera', 'Head', '1643010574699', 'M', 21, '1986-06-08', '+504 293-9593', NULL, 'P.O. Box 334, 5675 Senectus St.', 8803, 3, 2, 97, 'Rhoda', 'asd'),
(98, 'Craig Kelley', 'Francis', '1681062899899', 'M', 28, '0000-00-00', '+504 179-7893', NULL, '1920 Donec Ave', 6647, 3, 2, 98, 'Berk', 'asd'),
(99, 'Zane Higgins', 'Adkins', '1610080291799', 'M', 44, '0000-00-00', '+504 375-0114', NULL, 'P.O. Box 677, 1517 Sollicitudin Rd.', 5420, 3, 2, 99, 'Jelani', 'asd'),
(100, 'Samson Chaney', 'Williams', '1637100835599', 'M', 36, '1982-12-04', '+504 464-0976', NULL, '5082 Nibh. Rd.', 4368, 3, 2, 100, 'Jarrod', 'asd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pago`
--

CREATE TABLE `Pago` (
  `idPago` int(11) NOT NULL,
  `fecha_pago` date NOT NULL,
  `total_deducciones` float DEFAULT NULL,
  `total_pago` float DEFAULT NULL,
  `IdEmpleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Pago`
--

TRUNCATE TABLE `Pago`;
--
-- Volcado de datos para la tabla `Pago`
--

INSERT INTO `Pago` (`idPago`, `fecha_pago`, `total_deducciones`, `total_pago`, `IdEmpleado`) VALUES
(1, '2017-12-15', 610, 9371, 1),
(2, '2017-12-15', 543, 9521, 2),
(3, '2017-12-16', 687, 9456, 3),
(4, '2017-12-15', 572, 8915, 4),
(5, '2017-12-15', 572, 8492, 5),
(6, '2017-12-16', 520, 8007, 6),
(7, '2017-12-16', 661, 8134, 7),
(8, '2017-12-16', 626, 9530, 8),
(9, '2017-12-15', 580, 9643, 9),
(10, '2017-12-16', 605, 9045, 10),
(11, '2017-12-15', 587, 9365, 11),
(12, '2017-12-16', 635, 9471, 12),
(13, '2017-12-15', 562, 9673, 13),
(14, '2017-12-16', 622, 8499, 14),
(15, '2017-12-15', 526, 8759, 15),
(16, '2017-12-15', 679, 9628, 16),
(17, '2017-12-16', 647, 9699, 17),
(18, '2017-12-16', 641, 9836, 18),
(19, '2017-12-16', 512, 8768, 19),
(20, '2017-12-16', 602, 8231, 20),
(21, '2017-12-16', 579, 8173, 21),
(22, '2017-12-15', 572, 9488, 22),
(23, '2017-12-15', 521, 8642, 23),
(24, '2017-12-16', 641, 8012, 24),
(25, '2017-12-15', 533, 9442, 25),
(26, '2017-12-15', 583, 9501, 26),
(27, '2017-12-16', 576, 8520, 27),
(28, '2017-12-15', 633, 9721, 28),
(29, '2017-12-16', 513, 8786, 29),
(30, '2017-12-16', 545, 8313, 30),
(31, '2017-12-15', 550, 9344, 31),
(32, '2017-12-16', 618, 8489, 32),
(33, '2017-12-16', 629, 9587, 33),
(34, '2017-12-15', 592, 8763, 34),
(35, '2017-12-15', 512, 8286, 35),
(36, '2017-12-15', 564, 8901, 36),
(37, '2017-12-15', 658, 9487, 37),
(38, '2017-12-15', 608, 8472, 38),
(39, '2017-12-15', 610, 8391, 39),
(40, '2017-12-15', 615, 8964, 40),
(41, '2017-12-16', 564, 8345, 41),
(42, '2017-12-16', 638, 8033, 42),
(43, '2017-12-15', 695, 8809, 43),
(44, '2017-12-16', 536, 8006, 44),
(45, '2017-12-15', 632, 9863, 45),
(46, '2017-12-15', 525, 9818, 46),
(47, '2017-12-15', 565, 8884, 47),
(48, '2017-12-15', 601, 8973, 48),
(49, '2017-12-15', 596, 8116, 49),
(50, '2017-12-16', 613, 9280, 50),
(51, '2017-12-15', 538, 9811, 51),
(52, '2017-12-16', 626, 9884, 52),
(53, '2017-12-15', 643, 8932, 53),
(54, '2017-12-15', 623, 9584, 54),
(55, '2017-12-16', 588, 9483, 55),
(56, '2017-12-15', 614, 9578, 56),
(57, '2017-12-15', 663, 8156, 57),
(58, '2017-12-16', 528, 8927, 58),
(59, '2017-12-15', 594, 9866, 59),
(60, '2017-12-16', 637, 8868, 60),
(61, '2017-12-15', 586, 8057, 61),
(62, '2017-12-16', 697, 8309, 62),
(63, '2017-12-15', 574, 9225, 63),
(64, '2017-12-16', 611, 9316, 64),
(65, '2017-12-15', 598, 9951, 65),
(66, '2017-12-15', 600, 8665, 66),
(67, '2017-12-16', 602, 8625, 67),
(68, '2017-12-15', 500, 8204, 68),
(69, '2017-12-15', 568, 8919, 69),
(70, '2017-12-15', 510, 8246, 70),
(71, '2017-12-16', 604, 8249, 71),
(72, '2017-12-16', 509, 9124, 72),
(73, '2017-12-16', 579, 8285, 73),
(74, '2017-12-15', 565, 9595, 74),
(75, '2017-12-15', 633, 9595, 75),
(76, '2017-12-15', 510, 9409, 76),
(77, '2017-12-15', 693, 8719, 77),
(78, '2017-12-16', 700, 8733, 78),
(79, '2017-12-15', 559, 8761, 79),
(80, '2017-12-15', 692, 8143, 80),
(81, '2017-12-15', 653, 9545, 81),
(82, '2017-12-15', 511, 8031, 82),
(83, '2017-12-15', 683, 9009, 83),
(84, '2017-12-15', 559, 9792, 84),
(85, '2017-12-15', 557, 9764, 85),
(86, '2017-12-15', 608, 8260, 86),
(87, '2017-12-15', 585, 8361, 87),
(88, '2017-12-15', 592, 9063, 88),
(89, '2017-12-16', 507, 8573, 89),
(90, '2017-12-15', 568, 9912, 90),
(91, '2017-12-15', 663, 9348, 91),
(92, '2017-12-15', 525, 8921, 92),
(93, '2017-12-16', 548, 8566, 93),
(94, '2017-12-15', 618, 8535, 94),
(95, '2017-12-15', 530, 8283, 95),
(96, '2017-12-15', 508, 8261, 96),
(97, '2017-12-16', 544, 8015, 97),
(98, '2017-12-16', 677, 8584, 98),
(99, '2017-12-15', 616, 9273, 99),
(100, '2017-12-15', 510, 9822, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Permisos`
--

CREATE TABLE `Permisos` (
  `idPermisos` int(11) NOT NULL,
  `descrip_permiso` varchar(70) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  `num_dias` int(11) DEFAULT NULL,
  `idTipo_Permiso` int(11) NOT NULL,
  `idEmpleado` int(11) NOT NULL,
  `idResposable` int(11) NOT NULL,
  `estadoPermiso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Permisos`
--

TRUNCATE TABLE `Permisos`;
--
-- Volcado de datos para la tabla `Permisos`
--

INSERT INTO `Permisos` (`idPermisos`, `descrip_permiso`, `fecha_inicio`, `fecha_final`, `num_dias`, `idTipo_Permiso`, `idEmpleado`, `idResposable`, `estadoPermiso`) VALUES
(1, 'fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed', '2017-11-03', '2017-12-16', 4, 2, 62, 2, 2),
(2, 'eros nec tellus. Nunc lectus pede, ultrices a, auctor non,', '2017-11-23', '2017-12-30', 7, 6, 46, 2, 2),
(3, 'Sed neque. Sed eget lacus. Mauris non dui nec urna', '2017-11-05', '2017-12-23', 2, 2, 29, 2, 2),
(4, 'convallis, ante lectus convallis est, vitae sodales nisi magna sed', '2017-11-30', '2017-12-08', 7, 6, 40, 2, 2),
(5, 'nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus,', '2017-11-03', '2017-12-29', 6, 4, 84, 2, 2),
(6, 'Donec est mauris, rhoncus id, mollis nec, cursus a, enim.', '2017-11-11', '2017-12-19', 3, 3, 47, 1, 2),
(7, 'eu dui. Cum sociis natoque penatibus et magnis dis parturient', '2017-11-04', '2017-12-14', 6, 5, 81, 2, 2),
(8, 'Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesen', '2017-11-23', '2017-12-11', 1, 4, 21, 2, 1),
(9, 'dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornar', '2017-11-07', '2017-12-23', 7, 1, 7, 2, 1),
(10, 'diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus', '2017-11-27', '2017-12-27', 2, 5, 58, 2, 2),
(11, 'Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisq', '2017-11-29', '2017-12-11', 5, 6, 22, 1, 1),
(12, 'Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere ', '2017-11-21', '2017-12-09', 1, 1, 79, 2, 2),
(13, 'velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque', '2017-11-02', '2017-12-16', 6, 3, 83, 2, 1),
(14, 'est, mollis non, cursus non, egestas a, dui. Cras pellentesque.', '2017-11-09', '2017-12-05', 5, 2, 93, 1, 1),
(15, 'fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed', '2017-11-13', '2017-12-25', 5, 6, 34, 2, 2),
(16, 'a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed', '2017-11-08', '2017-12-31', 4, 4, 13, 1, 2),
(17, 'malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna.', '2017-11-10', '2017-12-11', 6, 4, 49, 1, 1),
(18, 'nec mauris blandit mattis. Cras eget nisi dictum augue malesuada', '2017-11-17', '2017-12-28', 1, 4, 31, 1, 2),
(19, 'pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare', '2017-11-14', '2017-12-25', 7, 3, 56, 1, 2),
(20, 'accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vu', '2017-11-18', '2017-12-19', 1, 4, 56, 2, 1),
(21, 'Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, or', '2017-11-21', '2017-12-28', 3, 2, 94, 1, 2),
(22, 'sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id', '2017-11-03', '2017-12-14', 1, 3, 54, 1, 2),
(23, 'Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu,', '2017-11-11', '2017-12-26', 3, 2, 88, 2, 1),
(24, 'aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet od', '2017-11-05', '2017-12-26', 2, 6, 72, 2, 1),
(25, 'pharetra, felis eget varius ultrices, mauris ipsum porta elit, a', '2017-11-14', '2017-12-17', 7, 6, 86, 1, 1),
(26, 'dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit.', '2017-11-19', '2017-12-11', 4, 2, 59, 1, 2),
(27, 'sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id', '2017-11-20', '2017-12-29', 3, 2, 44, 1, 1),
(28, 'tristique senectus et netus et malesuada fames ac turpis egestas.', '2017-11-09', '2017-12-02', 2, 6, 55, 1, 1),
(29, 'leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis,', '2017-11-17', '2017-12-14', 4, 1, 36, 2, 2),
(30, 'mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit ', '2017-11-13', '2017-12-05', 3, 3, 59, 2, 2),
(31, 'sit amet, risus. Donec nibh enim, gravida sit amet, dapibus', '2017-11-06', '2017-12-19', 6, 2, 62, 1, 1),
(32, 'Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dol', '2017-11-05', '2017-12-22', 1, 1, 63, 1, 2),
(33, 'nisi dictum augue malesuada malesuada. Integer id magna et ipsum', '2017-11-06', '2017-12-01', 5, 3, 49, 1, 2),
(34, 'vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend', '2017-11-30', '2017-12-25', 1, 1, 44, 2, 2),
(35, 'luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi', '2017-11-25', '2017-12-12', 2, 2, 58, 1, 1),
(36, 'quam quis diam. Pellentesque habitant morbi tristique senectus et netu', '2017-11-12', '2017-12-15', 5, 4, 28, 1, 2),
(37, 'sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id', '2017-11-18', '2017-12-28', 3, 2, 24, 2, 2),
(38, 'sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis', '2017-11-08', '2017-12-12', 6, 3, 22, 1, 2),
(39, 'Donec non justo. Proin non massa non ante bibendum ullamcorper.', '2017-11-12', '2017-12-18', 5, 3, 72, 1, 1),
(40, 'tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel,', '2017-11-06', '2017-12-13', 1, 6, 42, 2, 2),
(41, 'nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae', '2017-11-11', '2017-12-09', 1, 5, 12, 1, 2),
(42, 'lectus convallis est, vitae sodales nisi magna sed dui. Fusce', '2017-11-09', '2017-12-21', 6, 6, 18, 1, 1),
(43, 'dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. In', '2017-11-30', '2017-12-18', 2, 1, 90, 1, 1),
(44, 'libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit ', '2017-11-09', '2017-12-02', 1, 5, 21, 2, 2),
(45, 'Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue,', '2017-11-07', '2017-12-10', 2, 6, 79, 2, 1),
(46, 'In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Done', '2017-11-30', '2017-12-13', 1, 2, 67, 2, 1),
(47, 'id nunc interdum feugiat. Sed nec metus facilisis lorem tristique', '2017-11-19', '2017-12-17', 2, 1, 40, 2, 1),
(48, 'magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices.', '2017-11-05', '2017-12-01', 1, 1, 93, 1, 1),
(49, 'Sed congue, elit sed consequat auctor, nunc nulla vulputate dui,', '2017-11-06', '2017-12-23', 7, 5, 7, 2, 1),
(50, 'Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla', '2017-11-02', '2017-12-09', 2, 2, 21, 1, 1),
(51, 'ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget', '2017-11-25', '2017-12-27', 1, 6, 76, 1, 2),
(52, 'lorem, eget mollis lectus pede et risus. Quisque libero lacus,', '2017-11-21', '2017-12-19', 1, 5, 8, 2, 2),
(53, 'mollis lectus pede et risus. Quisque libero lacus, varius et,', '2017-11-20', '2017-12-03', 5, 4, 88, 1, 2),
(54, 'pretium neque. Morbi quis urna. Nunc quis arcu vel quam', '2017-11-14', '2017-12-14', 2, 6, 75, 1, 2),
(55, 'varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesua', '2017-11-20', '2017-12-07', 7, 3, 27, 2, 2),
(56, 'est, vitae sodales nisi magna sed dui. Fusce aliquam, enim', '2017-11-27', '2017-12-07', 1, 2, 63, 2, 1),
(57, 'dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. In', '2017-11-14', '2017-12-25', 4, 6, 87, 2, 2),
(58, 'augue ac ipsum. Phasellus vitae mauris sit amet lorem semper', '2017-11-16', '2017-12-21', 2, 1, 42, 2, 2),
(59, 'magna a neque. Nullam ut nisi a odio semper cursus.', '2017-11-06', '2017-12-06', 5, 6, 32, 2, 2),
(60, 'consequat, lectus sit amet luctus vulputate, nisi sem semper erat,', '2017-11-09', '2017-12-28', 3, 3, 30, 1, 1),
(61, 'consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, soda', '2017-11-03', '2017-12-12', 2, 2, 75, 1, 2),
(62, 'ac metus vitae velit egestas lacinia. Sed congue, elit sed', '2017-11-30', '2017-12-02', 2, 3, 87, 1, 2),
(63, 'Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. ', '2017-11-20', '2017-12-22', 4, 3, 76, 1, 1),
(64, 'risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non', '2017-11-08', '2017-12-16', 4, 1, 11, 2, 2),
(65, 'adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tell', '2017-11-05', '2017-12-27', 5, 1, 84, 1, 1),
(66, 'id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque', '2017-11-05', '2017-12-22', 3, 3, 14, 1, 2),
(67, 'tristique pellentesque, tellus sem mollis dui, in sodales elit erat', '2017-11-18', '2017-12-19', 3, 3, 92, 1, 1),
(68, 'tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel,', '2017-11-18', '2017-12-26', 2, 6, 2, 1, 2),
(69, 'semper, dui lectus rutrum urna, nec luctus felis purus ac', '2017-11-28', '2017-12-26', 4, 3, 49, 2, 1),
(70, 'tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus.', '2017-11-11', '2017-12-02', 5, 5, 55, 2, 2),
(71, 'vitae risus. Duis a mi fringilla mi lacinia mattis. Integer', '2017-11-06', '2017-12-12', 5, 2, 97, 2, 1),
(72, 'pharetra, felis eget varius ultrices, mauris ipsum porta elit, a', '2017-11-08', '2017-12-26', 2, 2, 39, 2, 2),
(73, 'lectus ante dictum mi, ac mattis velit justo nec ante.', '2017-11-19', '2017-12-12', 5, 3, 4, 2, 1),
(74, 'mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dap', '2017-11-08', '2017-12-02', 6, 2, 95, 2, 1),
(75, 'leo, in lobortis tellus justo sit amet nulla. Donec non', '2017-11-11', '2017-12-22', 7, 6, 60, 2, 2),
(76, 'lorem, eget mollis lectus pede et risus. Quisque libero lacus,', '2017-11-09', '2017-12-07', 5, 2, 43, 2, 1),
(77, 'sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent ', '2017-11-25', '2017-12-12', 3, 3, 68, 1, 1),
(78, 'leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in,', '2017-11-05', '2017-12-23', 5, 1, 43, 1, 2),
(79, 'morbi tristique senectus et netus et malesuada fames ac turpis', '2017-11-01', '2017-12-29', 2, 3, 75, 1, 2),
(80, 'vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue', '2017-11-19', '2017-12-26', 1, 3, 95, 1, 1),
(81, 'feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ali', '2017-11-21', '2017-12-06', 3, 6, 40, 1, 1),
(82, 'elit erat vitae risus. Duis a mi fringilla mi lacinia', '2017-11-18', '2017-12-05', 5, 1, 89, 1, 2),
(83, 'mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus.', '2017-11-14', '2017-12-08', 1, 5, 22, 1, 1),
(84, 'non justo. Proin non massa non ante bibendum ullamcorper. Duis', '2017-11-07', '2017-12-21', 6, 2, 89, 2, 2),
(85, 'Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet,', '2017-11-22', '2017-12-22', 4, 2, 71, 1, 2),
(86, 'Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae', '2017-11-10', '2017-12-01', 5, 5, 17, 2, 2),
(87, 'Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectu', '2017-11-30', '2017-12-23', 7, 4, 22, 2, 1),
(88, 'metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tin', '2017-11-19', '2017-12-09', 1, 5, 5, 2, 2),
(89, 'justo. Proin non massa non ante bibendum ullamcorper. Duis cursus,', '2017-11-09', '2017-12-27', 4, 5, 32, 1, 1),
(90, 'quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam', '2017-11-18', '2017-12-29', 6, 2, 99, 1, 2),
(91, 'feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare,', '2017-11-21', '2017-12-10', 2, 4, 69, 2, 2),
(92, 'Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas', '2017-11-16', '2017-12-05', 7, 1, 56, 1, 1),
(93, 'odio tristique pharetra. Quisque ac libero nec ligula consectetuer rho', '2017-11-07', '2017-12-12', 3, 1, 53, 1, 1),
(94, 'ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu', '2017-11-30', '2017-12-20', 4, 2, 10, 2, 2),
(95, 'sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget lao', '2017-11-26', '2017-12-15', 2, 2, 24, 2, 1),
(96, 'ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget', '2017-11-08', '2017-12-04', 4, 5, 100, 1, 2),
(97, 'Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo.', '2017-11-27', '2017-12-24', 3, 6, 61, 1, 2),
(98, 'a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam', '2017-11-03', '2017-12-19', 6, 2, 3, 1, 1),
(99, 'posuere, enim nisl elementum purus, accumsan interdum libero dui nec', '2017-11-20', '2017-12-28', 4, 2, 63, 1, 2),
(100, 'augue porttitor interdum. Sed auctor odio a purus. Duis elementum,', '2017-11-16', '2017-12-14', 2, 6, 1, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tipo_Permiso`
--

CREATE TABLE `Tipo_Permiso` (
  `idTipo_Permiso` int(11) NOT NULL,
  `nombre_permiso` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Tipo_Permiso`
--

TRUNCATE TABLE `Tipo_Permiso`;
--
-- Volcado de datos para la tabla `Tipo_Permiso`
--

INSERT INTO `Tipo_Permiso` (`idTipo_Permiso`, `nombre_permiso`) VALUES
(1, 'Permiso por dia'),
(2, 'permiso por maternidad'),
(3, 'permiso por medico'),
(4, 'permiso por salida'),
(5, 'permiso por duelo '),
(6, 'permiso por matrimonio ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Asistencias`
--
ALTER TABLE `Asistencias`
  ADD PRIMARY KEY (`idAsistencias`),
  ADD KEY `fk_Asistencias_Empleado1_idx` (`idEmpleado`);

--
-- Indices de la tabla `Cargo`
--
ALTER TABLE `Cargo`
  ADD PRIMARY KEY (`idCargo`);

--
-- Indices de la tabla `Contrato`
--
ALTER TABLE `Contrato`
  ADD PRIMARY KEY (`idContrato`);

--
-- Indices de la tabla `Deducciones`
--
ALTER TABLE `Deducciones`
  ADD PRIMARY KEY (`idDeducciones`,`idPermisos`),
  ADD KEY `fk_Deducciones_Permisos1_idx` (`idPermisos`),
  ADD KEY `fk_Deducciones_Pago1_idx` (`idPago`);

--
-- Indices de la tabla `Empleado`
--
ALTER TABLE `Empleado`
  ADD PRIMARY KEY (`idEmpleado`,`idCargo`,`idContrato`),
  ADD KEY `fk_Empleado_Cargo1_idx` (`idCargo`),
  ADD KEY `fk_Empleado_Empleado1_idx` (`idEncargado`),
  ADD KEY `fk_Empleado_Sueldos1_idx` (`idContrato`);

--
-- Indices de la tabla `Pago`
--
ALTER TABLE `Pago`
  ADD PRIMARY KEY (`idPago`,`IdEmpleado`),
  ADD KEY `fk_Pago_Empleado1_idx` (`IdEmpleado`);

--
-- Indices de la tabla `Permisos`
--
ALTER TABLE `Permisos`
  ADD PRIMARY KEY (`idPermisos`,`idEmpleado`,`idResposable`),
  ADD KEY `fk_Permisos_Tipo_Permiso1_idx` (`idTipo_Permiso`),
  ADD KEY `fk_Permisos_Empleado1_idx` (`idEmpleado`),
  ADD KEY `fk_Permisos_Empleado2_idx` (`idResposable`);

--
-- Indices de la tabla `Tipo_Permiso`
--
ALTER TABLE `Tipo_Permiso`
  ADD PRIMARY KEY (`idTipo_Permiso`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Asistencias`
--
ALTER TABLE `Asistencias`
  MODIFY `idAsistencias` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT de la tabla `Cargo`
--
ALTER TABLE `Cargo`
  MODIFY `idCargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `Contrato`
--
ALTER TABLE `Contrato`
  MODIFY `idContrato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT de la tabla `Deducciones`
--
ALTER TABLE `Deducciones`
  MODIFY `idDeducciones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT de la tabla `Empleado`
--
ALTER TABLE `Empleado`
  MODIFY `idEmpleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT de la tabla `Pago`
--
ALTER TABLE `Pago`
  MODIFY `idPago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT de la tabla `Permisos`
--
ALTER TABLE `Permisos`
  MODIFY `idPermisos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT de la tabla `Tipo_Permiso`
--
ALTER TABLE `Tipo_Permiso`
  MODIFY `idTipo_Permiso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Asistencias`
--
ALTER TABLE `Asistencias`
  ADD CONSTRAINT `fk_Asistencias_Empleado1` FOREIGN KEY (`idEmpleado`) REFERENCES `Empleado` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Deducciones`
--
ALTER TABLE `Deducciones`
  ADD CONSTRAINT `fk_Deducciones_Pago1` FOREIGN KEY (`idPago`) REFERENCES `Pago` (`idPago`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Deducciones_Permisos1` FOREIGN KEY (`idPermisos`) REFERENCES `Permisos` (`idPermisos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Empleado`
--
ALTER TABLE `Empleado`
  ADD CONSTRAINT `fk_Empleado_Cargo1` FOREIGN KEY (`idCargo`) REFERENCES `Cargo` (`idCargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Empleado_Empleado1` FOREIGN KEY (`idEncargado`) REFERENCES `Empleado` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Empleado_Sueldos1` FOREIGN KEY (`idContrato`) REFERENCES `Contrato` (`idContrato`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Pago`
--
ALTER TABLE `Pago`
  ADD CONSTRAINT `fk_Pago_Empleado1` FOREIGN KEY (`IdEmpleado`) REFERENCES `Empleado` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Permisos`
--
ALTER TABLE `Permisos`
  ADD CONSTRAINT `fk_Permisos_Empleado1` FOREIGN KEY (`idEmpleado`) REFERENCES `Empleado` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Permisos_Empleado2` FOREIGN KEY (`idResposable`) REFERENCES `Empleado` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Permisos_Tipo_Permiso1` FOREIGN KEY (`idTipo_Permiso`) REFERENCES `Tipo_Permiso` (`idTipo_Permiso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
