-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 12-11-2017 a las 19:27:30
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

CREATE TABLE IF NOT EXISTS `Asistencias` (
  `idAsistencias` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `hora_entrada` int(11) DEFAULT NULL,
  `hora_salida` int(11) DEFAULT NULL,
  `idEmpleado` int(11) NOT NULL,
  `EstadoAsistencia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAsistencias`),
  KEY `fk_Asistencias_Empleado1_idx` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=big5;

--
-- Truncar tablas antes de insertar `Asistencias`
--

TRUNCATE TABLE `Asistencias`;
--
-- Volcado de datos para la tabla `Asistencias`
--

INSERT INTO `Asistencias` (`idAsistencias`, `fecha`, `hora_entrada`, `hora_salida`, `idEmpleado`, `EstadoAsistencia`) VALUES
(1, '2017-11-14', 815, 1500, 1, NULL),
(2, '2017-11-15', 800, 1500, 1, NULL),
(3, '2017-11-16', 830, 1500, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cargo`
--

CREATE TABLE IF NOT EXISTS `Cargo` (
  `idCargo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_cargo` varchar(70) NOT NULL,
  PRIMARY KEY (`idCargo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Cargo`
--

TRUNCATE TABLE `Cargo`;
--
-- Volcado de datos para la tabla `Cargo`
--

INSERT INTO `Cargo` (`idCargo`, `nombre_cargo`) VALUES
(1, 'Gerente'),
(2, 'Empleado'),
(3, 'Patron');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Contrato`
--

CREATE TABLE IF NOT EXISTS `Contrato` (
  `idContrato` int(11) NOT NULL AUTO_INCREMENT,
  `TipoContrato` varchar(45) DEFAULT NULL,
  `horaEntrada` int(11) DEFAULT NULL,
  `horaSalida` int(11) DEFAULT NULL,
  `diasDeTrabajo` int(11) DEFAULT NULL,
  `fechaContratacion` date DEFAULT NULL,
  `sueldo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idContrato`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Contrato`
--

TRUNCATE TABLE `Contrato`;
--
-- Volcado de datos para la tabla `Contrato`
--

INSERT INTO `Contrato` (`idContrato`, `TipoContrato`, `horaEntrada`, `horaSalida`, `diasDeTrabajo`, `fechaContratacion`, `sueldo`) VALUES
(1, 'Permanente', 800, 1500, 5, '2017-11-14', 10000),
(2, 'Permanente', 800, 1500, 5, '2017-11-05', 12000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Deducciones`
--

CREATE TABLE IF NOT EXISTS `Deducciones` (
  `idDeducciones` int(11) NOT NULL AUTO_INCREMENT,
  `dedu_IHSS` float NOT NULL,
  `dedu_RAP` float NOT NULL,
  `dedu_aportaciones` float NOT NULL,
  `dedu_falta` float DEFAULT NULL,
  `idPermisos` int(11) NOT NULL,
  `idPago` int(11) NOT NULL,
  PRIMARY KEY (`idDeducciones`,`idPermisos`),
  KEY `fk_Deducciones_Permisos1_idx` (`idPermisos`),
  KEY `fk_Deducciones_Pago1_idx` (`idPago`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Deducciones`
--

TRUNCATE TABLE `Deducciones`;
--
-- Volcado de datos para la tabla `Deducciones`
--

INSERT INTO `Deducciones` (`idDeducciones`, `dedu_IHSS`, `dedu_RAP`, `dedu_aportaciones`, `dedu_falta`, `idPermisos`, `idPago`) VALUES
(1, 200, 200, 0, 200, 1, 1),
(2, 400, 400, 0, 100, 1, 1),
(3, 200, 200, 0, 0, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empleado`
--

CREATE TABLE IF NOT EXISTS `Empleado` (
  `idEmpleado` int(11) NOT NULL AUTO_INCREMENT,
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
  `contrasena` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`,`idCargo`,`idContrato`),
  KEY `fk_Empleado_Cargo1_idx` (`idCargo`),
  KEY `fk_Empleado_Empleado1_idx` (`idEncargado`),
  KEY `fk_Empleado_Sueldos1_idx` (`idContrato`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Empleado`
--

TRUNCATE TABLE `Empleado`;
--
-- Volcado de datos para la tabla `Empleado`
--

INSERT INTO `Empleado` (`idEmpleado`, `nombre`, `apellido`, `identidad`, `genero`, `edad`, `fecha_nacimiento`, `telefono`, `correo`, `direccion`, `cod_empleado`, `idCargo`, `idEncargado`, `idContrato`, `nombreUsuario`, `contrasena`) VALUES
(1, 'Jose', 'Lopez', '1234-1234-12345', NULL, NULL, '2017-11-22', NULL, NULL, NULL, 1, 2, NULL, 1, 'usuario1', 'bfd59291e825b5f2bbf1eb76569f8fe7'),
(2, 'Marco', 'Martinez', '5678-5678-56789', NULL, NULL, '2017-11-05', NULL, NULL, NULL, 2, 1, NULL, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pago`
--

CREATE TABLE IF NOT EXISTS `Pago` (
  `idPago` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_pago` date NOT NULL,
  `total_deducciones` float DEFAULT NULL,
  `total_pago` float DEFAULT NULL,
  `IdEmpleado` int(11) NOT NULL,
  PRIMARY KEY (`idPago`,`IdEmpleado`),
  KEY `fk_Pago_Empleado1_idx` (`IdEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Pago`
--

TRUNCATE TABLE `Pago`;
--
-- Volcado de datos para la tabla `Pago`
--

INSERT INTO `Pago` (`idPago`, `fecha_pago`, `total_deducciones`, `total_pago`, `IdEmpleado`) VALUES
(1, '2017-11-22', 0, 0, 1),
(2, '2017-12-22', 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Permisos`
--

CREATE TABLE IF NOT EXISTS `Permisos` (
  `idPermisos` int(11) NOT NULL AUTO_INCREMENT,
  `descrip_permiso` varchar(70) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  `num_dias` int(11) DEFAULT NULL,
  `idTipo_Permiso` int(11) NOT NULL,
  `idEmpleado` int(11) NOT NULL,
  `idResposable` int(11) NOT NULL,
  `estadoPermiso` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPermisos`,`idEmpleado`,`idResposable`),
  KEY `fk_Permisos_Tipo_Permiso1_idx` (`idTipo_Permiso`),
  KEY `fk_Permisos_Empleado1_idx` (`idEmpleado`),
  KEY `fk_Permisos_Empleado2_idx` (`idResposable`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Permisos`
--

TRUNCATE TABLE `Permisos`;
--
-- Volcado de datos para la tabla `Permisos`
--

INSERT INTO `Permisos` (`idPermisos`, `descrip_permiso`, `fecha_inicio`, `fecha_final`, `num_dias`, `idTipo_Permiso`, `idEmpleado`, `idResposable`, `estadoPermiso`) VALUES
(1, 'motivos familiares', '2017-11-10', NULL, NULL, 1, 1, 2, NULL),
(2, 'motivos personales', '2017-11-18', NULL, NULL, 1, 1, 2, NULL),
(3, 'asd', '2017-11-12', NULL, NULL, 1, 1, 2, NULL),
(4, 'asd', NULL, NULL, NULL, 1, 1, 2, NULL),
(5, 'aadsasd', '2017-11-12', NULL, NULL, 1, 1, 2, NULL),
(6, 'a1212d', '2017-11-12', NULL, NULL, 1, 1, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Tipo_Permiso`
--

CREATE TABLE IF NOT EXISTS `Tipo_Permiso` (
  `idTipo_Permiso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_permiso` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipo_Permiso`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

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
