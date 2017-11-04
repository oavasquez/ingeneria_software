-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-11-2017 a las 08:49:28
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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Asistencias`
--

CREATE TABLE `Asistencias` (
  `idAsistencias` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora_entrada` datetime DEFAULT NULL,
  `hora_salida` datetime DEFAULT NULL,
  `Empleado_idEmpleado` int(11) NOT NULL,
  `Empleado_Cargo_idCargo` int(11) NOT NULL,
  `EstadoAsistencia` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Asistencias`
--

TRUNCATE TABLE `Asistencias`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cargo`
--

CREATE TABLE `Cargo` (
  `IdCargo` int(11) NOT NULL,
  `nombre_cargo` varchar(70) NOT NULL,
  `Sueldo_idPlanilla` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Cargo`
--

TRUNCATE TABLE `Cargo`;
--
-- Volcado de datos para la tabla `Cargo`
--

INSERT INTO `Cargo` (`idCargo`, `nombre_cargo`, `Sueldo_idPlanilla`) VALUES
(1, 'cargo1', 123);

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
  `fechaContratacion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Contrato`
--

TRUNCATE TABLE `Contrato`;
--
-- Volcado de datos para la tabla `Contrato`
--

INSERT INTO `Contrato` (`idContrato`, `TipoContrato`, `horaEntrada`, `horaSalida`, `diasDeTrabajo`, `fechaContratacion`) VALUES
(1, 'Temporal', 1, 1, 1, 'asdsads');

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
  `Tipo_Deducciones_idTipo_Deduccion` int(11) NOT NULL,
  `Permisos_idPermisos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Deducciones`
--

TRUNCATE TABLE `Deducciones`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empleado`
--

CREATE TABLE `Empleado` (
  `idEmpleado` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `identidad` varchar(45) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `edad` int(11) NOT NULL,
  `fecha_nacimineto` date NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `cod_empleado` varchar(45) DEFAULT NULL,
  `idCargo` int(11) NOT NULL,
  `IdEncargado` int(11) DEFAULT NULL,
  `idContrato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Empleado`
--

TRUNCATE TABLE `Empleado`;
--
-- Volcado de datos para la tabla `Empleado`
--

INSERT INTO `Empleado` (`idEmpleado`, `nombre`, `apellido`, `identidad`, `genero`, `edad`, `fecha_nacimineto`, `telefono`, `correo`, `direccion`, `cod_empleado`, `idCargo`, `IdEncargado`, `idContrato`) VALUES
(1, 'asdsa', 'asd', 'asd', 'asd', 1, '2017-11-13', 'asd', 'asd', 'asddsa', '1', 1, NULL, 1),
(2, 'prueba2', 'asdas', 'asdas', 'asdas', 1, '2017-11-01', 'dasd', 'asdas', 'dasdas', '2', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pago`
--

CREATE TABLE `Pago` (
  `idPago` int(11) NOT NULL,
  `fecha_pago` date NOT NULL,
  `total_deducciones` float NOT NULL,
  `total_pago` float NOT NULL,
  `IdDeducciones` int(11) NOT NULL,
  `IdPermisos` int(11) NOT NULL,
  `IdEmpleado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Pago`
--

TRUNCATE TABLE `Pago`;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Permisos`
--

CREATE TABLE `Permisos` (
  `idPermisos` int(11) NOT NULL,
  `descrip_permiso` varchar(70) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_final` date NOT NULL,
  `num_dias` int(11) NOT NULL,
  `Tipo_Permiso_idTipo_Permiso` int(11) NOT NULL,
  `idEmpleado` int(11) NOT NULL,
  `idResposable` int(11) NOT NULL,
  `estadoPermiso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Truncar tablas antes de insertar `Permisos`
--

TRUNCATE TABLE `Permisos`;
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
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Asistencias`
--
ALTER TABLE `Asistencias`
  ADD PRIMARY KEY (`idAsistencias`,`Empleado_idEmpleado`,`Empleado_Cargo_idCargo`),
  ADD KEY `fk_Asistencias_Empleado1_idx` (`Empleado_idEmpleado`,`Empleado_Cargo_idCargo`);

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
  ADD PRIMARY KEY (`idDeducciones`,`Permisos_idPermisos`),
  ADD KEY `fk_Deducciones_Permisos1_idx` (`Permisos_idPermisos`);

--
-- Indices de la tabla `Empleado`
--
ALTER TABLE `Empleado`
  ADD PRIMARY KEY (`idEmpleado`,`idCargo`,`idContrato`),
  ADD KEY `fk_Empleado_Cargo1_idx` (`idCargo`),
  ADD KEY `fk_Empleado_Empleado1_idx` (`IdEncargado`),
  ADD KEY `fk_Empleado_Sueldos1_idx` (`idContrato`);

--
-- Indices de la tabla `Pago`
--
ALTER TABLE `Pago`
  ADD PRIMARY KEY (`idPago`,`IdDeducciones`,`IdPermisos`,`IdEmpleado`),
  ADD KEY `fk_Pago_Deducciones1_idx` (`IdDeducciones`,`IdPermisos`),
  ADD KEY `fk_Pago_Empleado1_idx` (`IdEmpleado`);

--
-- Indices de la tabla `Permisos`
--
ALTER TABLE `Permisos`
  ADD PRIMARY KEY (`idPermisos`,`idEmpleado`,`idResposable`),
  ADD KEY `fk_Permisos_Tipo_Permiso1_idx` (`Tipo_Permiso_idTipo_Permiso`),
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
-- AUTO_INCREMENT de la tabla `Contrato`
--
ALTER TABLE `Contrato`
  MODIFY `idContrato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Asistencias`
--
ALTER TABLE `Asistencias`
  ADD CONSTRAINT `fk_Asistencias_Empleado1` FOREIGN KEY (`Empleado_idEmpleado`,`Empleado_Cargo_idCargo`) REFERENCES `Empleado` (`idEmpleado`, `idCargo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Deducciones`
--
ALTER TABLE `Deducciones`
  ADD CONSTRAINT `fk_Deducciones_Permisos1` FOREIGN KEY (`Permisos_idPermisos`) REFERENCES `Permisos` (`idPermisos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Empleado`
--
ALTER TABLE `Empleado`
  ADD CONSTRAINT `fk_Empleado_Cargo1` FOREIGN KEY (`idCargo`) REFERENCES `Cargo` (`idCargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Empleado_Empleado1` FOREIGN KEY (`IdEncargado`) REFERENCES `Empleado` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Empleado_Sueldos1` FOREIGN KEY (`idContrato`) REFERENCES `Contrato` (`idContrato`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Pago`
--
ALTER TABLE `Pago`
  ADD CONSTRAINT `fk_Pago_Deducciones1` FOREIGN KEY (`IdDeducciones`,`IdPermisos`) REFERENCES `Deducciones` (`idDeducciones`, `Permisos_idPermisos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pago_Empleado1` FOREIGN KEY (`IdEmpleado`) REFERENCES `Empleado` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `Permisos`
--
ALTER TABLE `Permisos`
  ADD CONSTRAINT `fk_Permisos_Empleado1` FOREIGN KEY (`idEmpleado`) REFERENCES `Empleado` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Permisos_Empleado2` FOREIGN KEY (`idResposable`) REFERENCES `Empleado` (`idEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Permisos_Tipo_Permiso1` FOREIGN KEY (`Tipo_Permiso_idTipo_Permiso`) REFERENCES `Tipo_Permiso` (`idTipo_Permiso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
