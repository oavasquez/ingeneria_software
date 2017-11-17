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
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-17",783,1507,1,"Puntual"),(NULL,"2017-11-17",780,1501,2,"Restrasado"),(NULL,"2017-11-17",769,1501,3,"Restrasado"),(NULL,"2017-11-17",796,1503,4,"Puntual"),(NULL,"2017-11-17",788,1505,5,"Puntual"),(NULL,"2017-11-17",762,1505,6,"Puntual"),(NULL,"2017-11-17",752,1501,7,"Puntual"),(NULL,"2017-11-17",774,1501,8,"Puntual"),(NULL,"2017-11-17",781,1508,9,"Puntual"),(NULL,"2017-11-17",785,1502,10,"Puntual");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-17",800,1502,11,"Restrasado"),(NULL,"2017-11-17",781,1509,12,"Restrasado"),(NULL,"2017-11-17",787,1500,13,"Restrasado"),(NULL,"2017-11-17",769,1503,14,"Restrasado"),(NULL,"2017-11-17",796,1507,15,"Puntual"),(NULL,"2017-11-17",773,1503,16,"Puntual"),(NULL,"2017-11-17",774,1508,17,"Restrasado"),(NULL,"2017-11-17",759,1504,18,"Restrasado"),(NULL,"2017-11-17",796,1502,19,"Restrasado"),(NULL,"2017-11-17",782,1506,20,"Restrasado");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-17",792,1502,21,"Restrasado"),(NULL,"2017-11-17",773,1501,22,"Restrasado"),(NULL,"2017-11-17",770,1507,23,"Restrasado"),(NULL,"2017-11-17",759,1507,24,"Puntual"),(NULL,"2017-11-17",802,1508,25,"Puntual"),(NULL,"2017-11-17",791,1500,26,"Restrasado"),(NULL,"2017-11-17",768,1503,27,"Puntual"),(NULL,"2017-11-17",771,1505,28,"Restrasado"),(NULL,"2017-11-17",758,1501,29,"Puntual"),(NULL,"2017-11-17",755,1509,30,"Restrasado");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-17",804,1508,31,"Puntual"),(NULL,"2017-11-17",798,1507,32,"Puntual"),(NULL,"2017-11-17",798,1500,33,"Puntual"),(NULL,"2017-11-17",790,1501,34,"Restrasado"),(NULL,"2017-11-17",796,1500,35,"Restrasado"),(NULL,"2017-11-17",751,1505,36,"Restrasado"),(NULL,"2017-11-17",786,1502,37,"Puntual"),(NULL,"2017-11-17",802,1500,38,"Puntual"),(NULL,"2017-11-17",803,1500,39,"Puntual"),(NULL,"2017-11-17",784,1504,40,"Restrasado");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-17",804,1503,41,"Restrasado"),(NULL,"2017-11-17",760,1503,42,"Restrasado"),(NULL,"2017-11-17",780,1501,43,"Restrasado"),(NULL,"2017-11-17",780,1506,44,"Puntual"),(NULL,"2017-11-17",777,1507,45,"Restrasado"),(NULL,"2017-11-17",754,1507,46,"Puntual"),(NULL,"2017-11-17",757,1510,47,"Puntual"),(NULL,"2017-11-17",795,1501,48,"Restrasado"),(NULL,"2017-11-17",792,1501,49,"Restrasado"),(NULL,"2017-11-17",774,1507,50,"Puntual");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-17",771,1504,51,"Restrasado"),(NULL,"2017-11-17",752,1500,52,"Restrasado"),(NULL,"2017-11-17",791,1507,53,"Puntual"),(NULL,"2017-11-17",758,1502,54,"Puntual"),(NULL,"2017-11-17",751,1505,55,"Restrasado"),(NULL,"2017-11-17",754,1500,56,"Restrasado"),(NULL,"2017-11-17",793,1508,57,"Puntual"),(NULL,"2017-11-17",786,1505,58,"Puntual"),(NULL,"2017-11-17",795,1500,59,"Puntual"),(NULL,"2017-11-17",802,1502,60,"Puntual");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-17",788,1500,61,"Puntual"),(NULL,"2017-11-17",786,1502,62,"Restrasado"),(NULL,"2017-11-17",751,1501,63,"Restrasado"),(NULL,"2017-11-17",763,1506,64,"Puntual"),(NULL,"2017-11-17",776,1502,65,"Restrasado"),(NULL,"2017-11-17",776,1502,66,"Restrasado"),(NULL,"2017-11-17",754,1502,67,"Puntual"),(NULL,"2017-11-17",772,1501,68,"Restrasado"),(NULL,"2017-11-17",752,1506,69,"Puntual"),(NULL,"2017-11-17",783,1506,70,"Puntual");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-17",799,1506,71,"Puntual"),(NULL,"2017-11-17",777,1504,72,"Restrasado"),(NULL,"2017-11-17",792,1506,73,"Puntual"),(NULL,"2017-11-17",777,1509,74,"Restrasado"),(NULL,"2017-11-17",760,1503,75,"Restrasado"),(NULL,"2017-11-17",765,1500,76,"Puntual"),(NULL,"2017-11-17",758,1510,77,"Restrasado"),(NULL,"2017-11-17",801,1507,78,"Puntual"),(NULL,"2017-11-17",753,1510,79,"Puntual"),(NULL,"2017-11-17",803,1500,80,"Restrasado");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-17",788,1507,81,"Restrasado"),(NULL,"2017-11-17",785,1506,82,"Restrasado"),(NULL,"2017-11-17",766,1503,83,"Puntual"),(NULL,"2017-11-17",775,1506,84,"Puntual"),(NULL,"2017-11-17",781,1504,85,"Puntual"),(NULL,"2017-11-17",768,1503,86,"Puntual"),(NULL,"2017-11-17",753,1507,87,"Restrasado"),(NULL,"2017-11-17",762,1504,88,"Restrasado"),(NULL,"2017-11-17",803,1505,89,"Restrasado"),(NULL,"2017-11-17",768,1502,90,"Puntual");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-17",783,1508,91,"Restrasado"),(NULL,"2017-11-17",768,1509,92,"Restrasado"),(NULL,"2017-11-17",790,1500,93,"Restrasado"),(NULL,"2017-11-17",800,1510,94,"Restrasado"),(NULL,"2017-11-17",796,1508,95,"Puntual"),(NULL,"2017-11-17",760,1510,96,"Restrasado"),(NULL,"2017-11-17",791,1506,97,"Restrasado"),(NULL,"2017-11-17",751,1508,98,"Puntual"),(NULL,"2017-11-17",796,1502,99,"Puntual"),(NULL,"2017-11-17",771,1502,100,"Restrasado");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",783,1507,1,"Puntual"),(NULL,"2017-11-18",780,1501,2,"Restrasado"),(NULL,"2017-11-18",769,1501,3,"Restrasado"),(NULL,"2017-11-18",796,1503,4,"Puntual"),(NULL,"2017-11-18",788,1505,5,"Puntual"),(NULL,"2017-11-18",762,1505,6,"Puntual"),(NULL,"2017-11-18",752,1501,7,"Puntual"),(NULL,"2017-11-18",774,1501,8,"Puntual"),(NULL,"2017-11-18",781,1508,9,"Puntual"),(NULL,"2017-11-18",785,1502,10,"Puntual");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",800,1502,11,"Restrasado"),(NULL,"2017-11-18",781,1509,12,"Restrasado"),(NULL,"2017-11-18",787,1500,13,"Restrasado"),(NULL,"2017-11-18",769,1503,14,"Restrasado"),(NULL,"2017-11-18",796,1507,15,"Puntual"),(NULL,"2017-11-18",773,1503,16,"Puntual"),(NULL,"2017-11-18",774,1508,17,"Restrasado"),(NULL,"2017-11-18",759,1504,18,"Restrasado"),(NULL,"2017-11-18",796,1502,19,"Restrasado"),(NULL,"2017-11-18",782,1506,20,"Restrasado");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",792,1502,21,"Restrasado"),(NULL,"2017-11-18",773,1501,22,"Restrasado"),(NULL,"2017-11-18",770,1507,23,"Restrasado"),(NULL,"2017-11-18",759,1507,24,"Puntual"),(NULL,"2017-11-18",802,1508,25,"Puntual"),(NULL,"2017-11-18",791,1500,26,"Restrasado"),(NULL,"2017-11-18",768,1503,27,"Puntual"),(NULL,"2017-11-18",771,1505,28,"Restrasado"),(NULL,"2017-11-18",758,1501,29,"Puntual"),(NULL,"2017-11-18",755,1509,30,"Restrasado");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",804,1508,31,"Puntual"),(NULL,"2017-11-18",798,1507,32,"Puntual"),(NULL,"2017-11-18",798,1500,33,"Puntual"),(NULL,"2017-11-18",790,1501,34,"Restrasado"),(NULL,"2017-11-18",796,1500,35,"Restrasado"),(NULL,"2017-11-18",751,1505,36,"Restrasado"),(NULL,"2017-11-18",786,1502,37,"Puntual"),(NULL,"2017-11-18",802,1500,38,"Puntual"),(NULL,"2017-11-18",803,1500,39,"Puntual"),(NULL,"2017-11-18",784,1504,40,"Restrasado");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",804,1503,41,"Restrasado"),(NULL,"2017-11-18",760,1503,42,"Restrasado"),(NULL,"2017-11-18",780,1501,43,"Restrasado"),(NULL,"2017-11-18",780,1506,44,"Puntual"),(NULL,"2017-11-18",777,1507,45,"Restrasado"),(NULL,"2017-11-18",754,1507,46,"Puntual"),(NULL,"2017-11-18",757,1510,47,"Puntual"),(NULL,"2017-11-18",795,1501,48,"Restrasado"),(NULL,"2017-11-18",792,1501,49,"Restrasado"),(NULL,"2017-11-18",774,1507,50,"Puntual");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",771,1504,51,"Restrasado"),(NULL,"2017-11-18",752,1500,52,"Restrasado"),(NULL,"2017-11-18",791,1507,53,"Puntual"),(NULL,"2017-11-18",758,1502,54,"Puntual"),(NULL,"2017-11-18",751,1505,55,"Restrasado"),(NULL,"2017-11-18",754,1500,56,"Restrasado"),(NULL,"2017-11-18",793,1508,57,"Puntual"),(NULL,"2017-11-18",786,1505,58,"Puntual"),(NULL,"2017-11-18",795,1500,59,"Puntual"),(NULL,"2017-11-18",802,1502,60,"Puntual");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",788,1500,61,"Puntual"),(NULL,"2017-11-18",786,1502,62,"Restrasado"),(NULL,"2017-11-18",751,1501,63,"Restrasado"),(NULL,"2017-11-18",763,1506,64,"Puntual"),(NULL,"2017-11-18",776,1502,65,"Restrasado"),(NULL,"2017-11-18",776,1502,66,"Restrasado"),(NULL,"2017-11-18",754,1502,67,"Puntual"),(NULL,"2017-11-18",772,1501,68,"Restrasado"),(NULL,"2017-11-18",752,1506,69,"Puntual"),(NULL,"2017-11-18",783,1506,70,"Puntual");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",799,1506,71,"Puntual"),(NULL,"2017-11-18",777,1504,72,"Restrasado"),(NULL,"2017-11-18",792,1506,73,"Puntual"),(NULL,"2017-11-18",777,1509,74,"Restrasado"),(NULL,"2017-11-18",760,1503,75,"Restrasado"),(NULL,"2017-11-18",765,1500,76,"Puntual"),(NULL,"2017-11-18",758,1510,77,"Restrasado"),(NULL,"2017-11-18",801,1507,78,"Puntual"),(NULL,"2017-11-18",753,1510,79,"Puntual"),(NULL,"2017-11-18",803,1500,80,"Restrasado");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",788,1507,81,"Restrasado"),(NULL,"2017-11-18",785,1506,82,"Restrasado"),(NULL,"2017-11-18",766,1503,83,"Puntual"),(NULL,"2017-11-18",775,1506,84,"Puntual"),(NULL,"2017-11-18",781,1504,85,"Puntual"),(NULL,"2017-11-18",768,1503,86,"Puntual"),(NULL,"2017-11-18",753,1507,87,"Restrasado"),(NULL,"2017-11-18",762,1504,88,"Restrasado"),(NULL,"2017-11-18",803,1505,89,"Restrasado"),(NULL,"2017-11-18",768,1502,90,"Puntual");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",783,1508,91,"Restrasado"),(NULL,"2017-11-18",768,1509,92,"Restrasado"),(NULL,"2017-11-18",790,1500,93,"Restrasado"),(NULL,"2017-11-18",800,1510,94,"Restrasado"),(NULL,"2017-11-18",796,1508,95,"Puntual"),(NULL,"2017-11-18",760,1510,96,"Restrasado"),(NULL,"2017-11-18",791,1506,97,"Restrasado"),(NULL,"2017-11-18",751,1508,98,"Puntual"),(NULL,"2017-11-18",796,1502,99,"Puntual"),(NULL,"2017-11-18",771,1502,100,"Restrasado");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",783,1507,1,"Puntual"),(NULL,"2017-11-18",780,1501,2,"Restrasado"),(NULL,"2017-11-18",769,1501,3,"Restrasado"),(NULL,"2017-11-18",796,1503,4,"Puntual"),(NULL,"2017-11-18",788,1505,5,"Puntual"),(NULL,"2017-11-18",762,1505,6,"Puntual"),(NULL,"2017-11-18",752,1501,7,"Puntual"),(NULL,"2017-11-18",774,1501,8,"Puntual"),(NULL,"2017-11-18",781,1508,9,"Puntual"),(NULL,"2017-11-18",785,1502,10,"Puntual");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",800,1502,11,"Restrasado"),(NULL,"2017-11-18",781,1509,12,"Restrasado"),(NULL,"2017-11-18",787,1500,13,"Restrasado"),(NULL,"2017-11-18",769,1503,14,"Restrasado"),(NULL,"2017-11-18",796,1507,15,"Puntual"),(NULL,"2017-11-18",773,1503,16,"Puntual"),(NULL,"2017-11-18",774,1508,17,"Restrasado"),(NULL,"2017-11-18",759,1504,18,"Restrasado"),(NULL,"2017-11-18",796,1502,19,"Restrasado"),(NULL,"2017-11-18",782,1506,20,"Restrasado");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",792,1502,21,"Restrasado"),(NULL,"2017-11-18",773,1501,22,"Restrasado"),(NULL,"2017-11-18",770,1507,23,"Restrasado"),(NULL,"2017-11-18",759,1507,24,"Puntual"),(NULL,"2017-11-18",802,1508,25,"Puntual"),(NULL,"2017-11-18",791,1500,26,"Restrasado"),(NULL,"2017-11-18",768,1503,27,"Puntual"),(NULL,"2017-11-18",771,1505,28,"Restrasado"),(NULL,"2017-11-18",758,1501,29,"Puntual"),(NULL,"2017-11-18",755,1509,30,"Restrasado");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",804,1508,31,"Puntual"),(NULL,"2017-11-18",798,1507,32,"Puntual"),(NULL,"2017-11-18",798,1500,33,"Puntual"),(NULL,"2017-11-18",790,1501,34,"Restrasado"),(NULL,"2017-11-18",796,1500,35,"Restrasado"),(NULL,"2017-11-18",751,1505,36,"Restrasado"),(NULL,"2017-11-18",786,1502,37,"Puntual"),(NULL,"2017-11-18",802,1500,38,"Puntual"),(NULL,"2017-11-18",803,1500,39,"Puntual"),(NULL,"2017-11-18",784,1504,40,"Restrasado");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",804,1503,41,"Restrasado"),(NULL,"2017-11-18",760,1503,42,"Restrasado"),(NULL,"2017-11-18",780,1501,43,"Restrasado"),(NULL,"2017-11-18",780,1506,44,"Puntual"),(NULL,"2017-11-18",777,1507,45,"Restrasado"),(NULL,"2017-11-18",754,1507,46,"Puntual"),(NULL,"2017-11-18",757,1510,47,"Puntual"),(NULL,"2017-11-18",795,1501,48,"Restrasado"),(NULL,"2017-11-18",792,1501,49,"Restrasado"),(NULL,"2017-11-18",774,1507,50,"Puntual");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",771,1504,51,"Restrasado"),(NULL,"2017-11-18",752,1500,52,"Restrasado"),(NULL,"2017-11-18",791,1507,53,"Puntual"),(NULL,"2017-11-18",758,1502,54,"Puntual"),(NULL,"2017-11-18",751,1505,55,"Restrasado"),(NULL,"2017-11-18",754,1500,56,"Restrasado"),(NULL,"2017-11-18",793,1508,57,"Puntual"),(NULL,"2017-11-18",786,1505,58,"Puntual"),(NULL,"2017-11-18",795,1500,59,"Puntual"),(NULL,"2017-11-18",802,1502,60,"Puntual");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",788,1500,61,"Puntual"),(NULL,"2017-11-18",786,1502,62,"Restrasado"),(NULL,"2017-11-18",751,1501,63,"Restrasado"),(NULL,"2017-11-18",763,1506,64,"Puntual"),(NULL,"2017-11-18",776,1502,65,"Restrasado"),(NULL,"2017-11-18",776,1502,66,"Restrasado"),(NULL,"2017-11-18",754,1502,67,"Puntual"),(NULL,"2017-11-18",772,1501,68,"Restrasado"),(NULL,"2017-11-18",752,1506,69,"Puntual"),(NULL,"2017-11-18",783,1506,70,"Puntual");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",799,1506,71,"Puntual"),(NULL,"2017-11-18",777,1504,72,"Restrasado"),(NULL,"2017-11-18",792,1506,73,"Puntual"),(NULL,"2017-11-18",777,1509,74,"Restrasado"),(NULL,"2017-11-18",760,1503,75,"Restrasado"),(NULL,"2017-11-18",765,1500,76,"Puntual"),(NULL,"2017-11-18",758,1510,77,"Restrasado"),(NULL,"2017-11-18",801,1507,78,"Puntual"),(NULL,"2017-11-18",753,1510,79,"Puntual"),(NULL,"2017-11-18",803,1500,80,"Restrasado");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",788,1507,81,"Restrasado"),(NULL,"2017-11-18",785,1506,82,"Restrasado"),(NULL,"2017-11-18",766,1503,83,"Puntual"),(NULL,"2017-11-18",775,1506,84,"Puntual"),(NULL,"2017-11-18",781,1504,85,"Puntual"),(NULL,"2017-11-18",768,1503,86,"Puntual"),(NULL,"2017-11-18",753,1507,87,"Restrasado"),(NULL,"2017-11-18",762,1504,88,"Restrasado"),(NULL,"2017-11-18",803,1505,89,"Restrasado"),(NULL,"2017-11-18",768,1502,90,"Puntual");
INSERT INTO `Asistencias` (`idAsistencias`,`fecha`,`hora_entrada`,`hora_salida`,`idEmpleado`,`EstadoAsistencia`) VALUES (NULL,"2017-11-18",783,1508,91,"Restrasado"),(NULL,"2017-11-18",768,1509,92,"Restrasado"),(NULL,"2017-11-18",790,1500,93,"Restrasado"),(NULL,"2017-11-18",800,1510,94,"Restrasado"),(NULL,"2017-11-18",796,1508,95,"Puntual"),(NULL,"2017-11-18",760,1510,96,"Restrasado"),(NULL,"2017-11-18",791,1506,97,"Restrasado"),(NULL,"2017-11-18",751,1508,98,"Puntual"),(NULL,"2017-11-18",796,1502,99,"Puntual"),(NULL,"2017-11-18",771,1502,100,"Restrasado");

--



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
(2, 'Patron');
(3, 'Empleado'),


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

INSERT INTO `Contrato` (`idContrato`,`TipoContrato`,`horaEntrada`,`horaSalida`,`diasDeTRabajo`,`fechaContratacion`,`sueldo`) VALUES (NULL,"Por Hora",800,1500,5,"2017-08-22",10000),(NULL,"Permanente",800,1500,5,"2017-03-04",10000),(NULL,"Permanente",800,1500,5,"2017-06-14",10000),(NULL,"Permanente",800,1500,5,"2017-11-05",10000),(NULL,"Por Hora",800,1500,5,"2017-06-12",10000),(NULL,"Por Hora",800,1500,5,"2017-11-16",10000),(NULL,"Permanente",800,1500,5,"2017-08-27",10000),(NULL,"Permanente",800,1500,5,"2017-09-26",10000),(NULL,"Permanente",800,1500,5,"2017-08-16",10000),(NULL,"Por Hora",800,1500,5,"2017-10-17",10000);
INSERT INTO `Contrato` (`idContrato`,`TipoContrato`,`horaEntrada`,`horaSalida`,`diasDeTRabajo`,`fechaContratacion`,`sueldo`) VALUES (NULL,"Por Hora",800,1500,5,"2017-01-02",10000),(NULL,"Por Hora",800,1500,5,"2017-07-17",10000),(NULL,"Por Hora",800,1500,5,"2017-09-12",10000),(NULL,"Por Hora",800,1500,5,"2017-10-02",10000),(NULL,"Permanente",800,1500,5,"2017-10-04",10000),(NULL,"Permanente",800,1500,5,"2017-06-28",10000),(NULL,"Por Hora",800,1500,5,"2017-01-04",10000),(NULL,"Temporal",800,1500,5,"2017-09-30",10000),(NULL,"Permanente",800,1500,5,"2017-01-08",10000),(NULL,"Temporal",800,1500,5,"2017-10-03",10000);
INSERT INTO `Contrato` (`idContrato`,`TipoContrato`,`horaEntrada`,`horaSalida`,`diasDeTRabajo`,`fechaContratacion`,`sueldo`) VALUES (NULL,"Temporal",800,1500,5,"2017-02-06",10000),(NULL,"Temporal",800,1500,5,"2016-11-21",10000),(NULL,"Temporal",800,1500,5,"2017-03-01",10000),(NULL,"Temporal",800,1500,5,"2017-09-28",10000),(NULL,"Temporal",800,1500,5,"2017-07-26",10000),(NULL,"Por Hora",800,1500,5,"2017-04-01",10000),(NULL,"Por Hora",800,1500,5,"2017-02-27",10000),(NULL,"Permanente",800,1500,5,"2017-06-19",10000),(NULL,"Por Hora",800,1500,5,"2017-10-10",10000),(NULL,"Permanente",800,1500,5,"2017-07-08",10000);
INSERT INTO `Contrato` (`idContrato`,`TipoContrato`,`horaEntrada`,`horaSalida`,`diasDeTRabajo`,`fechaContratacion`,`sueldo`) VALUES (NULL,"Por Hora",800,1500,5,"2017-09-24",10000),(NULL,"Por Hora",800,1500,5,"2017-04-10",10000),(NULL,"Por Hora",800,1500,5,"2017-08-14",10000),(NULL,"Temporal",800,1500,5,"2017-05-15",10000),(NULL,"Temporal",800,1500,5,"2017-01-21",10000),(NULL,"Por Hora",800,1500,5,"2017-02-26",10000),(NULL,"Por Hora",800,1500,5,"2016-12-20",10000),(NULL,"Temporal",800,1500,5,"2017-02-10",10000),(NULL,"Por Hora",800,1500,5,"2017-02-03",10000),(NULL,"Permanente",800,1500,5,"2017-03-28",10000);
INSERT INTO `Contrato` (`idContrato`,`TipoContrato`,`horaEntrada`,`horaSalida`,`diasDeTRabajo`,`fechaContratacion`,`sueldo`) VALUES (NULL,"Permanente",800,1500,5,"2017-02-07",10000),(NULL,"Permanente",800,1500,5,"2017-06-09",10000),(NULL,"Por Hora",800,1500,5,"2017-02-18",10000),(NULL,"Por Hora",800,1500,5,"2017-06-11",10000),(NULL,"Permanente",800,1500,5,"2016-12-21",10000),(NULL,"Temporal",800,1500,5,"2017-02-19",10000),(NULL,"Por Hora",800,1500,5,"2017-01-28",10000),(NULL,"Por Hora",800,1500,5,"2017-10-12",10000),(NULL,"Temporal",800,1500,5,"2017-08-05",10000),(NULL,"Permanente",800,1500,5,"2017-10-30",10000);
INSERT INTO `Contrato` (`idContrato`,`TipoContrato`,`horaEntrada`,`horaSalida`,`diasDeTRabajo`,`fechaContratacion`,`sueldo`) VALUES (NULL,"Permanente",800,1500,5,"2017-07-25",10000),(NULL,"Temporal",800,1500,5,"2017-08-04",10000),(NULL,"Permanente",800,1500,5,"2017-07-30",10000),(NULL,"Por Hora",800,1500,5,"2017-06-14",10000),(NULL,"Temporal",800,1500,5,"2017-06-05",10000),(NULL,"Temporal",800,1500,5,"2017-10-09",10000),(NULL,"Permanente",800,1500,5,"2016-12-08",10000),(NULL,"Por Hora",800,1500,5,"2017-03-23",10000),(NULL,"Permanente",800,1500,5,"2017-07-10",10000),(NULL,"Temporal",800,1500,5,"2017-01-13",10000);
INSERT INTO `Contrato` (`idContrato`,`TipoContrato`,`horaEntrada`,`horaSalida`,`diasDeTRabajo`,`fechaContratacion`,`sueldo`) VALUES (NULL,"Temporal",800,1500,5,"2017-06-12",10000),(NULL,"Por Hora",800,1500,5,"2017-07-01",10000),(NULL,"Temporal",800,1500,5,"2017-11-21",10000),(NULL,"Permanente",800,1500,5,"2017-10-29",10000),(NULL,"Permanente",800,1500,5,"2017-04-23",10000),(NULL,"Temporal",800,1500,5,"2017-06-20",10000),(NULL,"Temporal",800,1500,5,"2017-08-27",10000),(NULL,"Permanente",800,1500,5,"2017-11-17",10000),(NULL,"Permanente",800,1500,5,"2017-05-28",10000),(NULL,"Permanente",800,1500,5,"2017-03-26",10000);
INSERT INTO `Contrato` (`idContrato`,`TipoContrato`,`horaEntrada`,`horaSalida`,`diasDeTRabajo`,`fechaContratacion`,`sueldo`) VALUES (NULL,"Permanente",800,1500,5,"2017-11-11",10000),(NULL,"Por Hora",800,1500,5,"2017-07-19",10000),(NULL,"Por Hora",800,1500,5,"2017-11-15",10000),(NULL,"Temporal",800,1500,5,"2016-11-29",10000),(NULL,"Temporal",800,1500,5,"2017-03-23",10000),(NULL,"Temporal",800,1500,5,"2017-04-02",10000),(NULL,"Por Hora",800,1500,5,"2017-09-21",10000),(NULL,"Temporal",800,1500,5,"2016-11-21",10000),(NULL,"Permanente",800,1500,5,"2017-02-01",10000),(NULL,"Por Hora",800,1500,5,"2017-09-12",10000);
INSERT INTO `Contrato` (`idContrato`,`TipoContrato`,`horaEntrada`,`horaSalida`,`diasDeTRabajo`,`fechaContratacion`,`sueldo`) VALUES (NULL,"Por Hora",800,1500,5,"2017-05-05",10000),(NULL,"Temporal",800,1500,5,"2017-07-14",10000),(NULL,"Temporal",800,1500,5,"2017-03-25",10000),(NULL,"Por Hora",800,1500,5,"2017-05-04",10000),(NULL,"Por Hora",800,1500,5,"2016-12-04",10000),(NULL,"Permanente",800,1500,5,"2017-10-18",10000),(NULL,"Permanente",800,1500,5,"2017-06-30",10000),(NULL,"Temporal",800,1500,5,"2017-05-13",10000),(NULL,"Temporal",800,1500,5,"2017-02-22",10000),(NULL,"Temporal",800,1500,5,"2017-01-15",10000);
INSERT INTO `Contrato` (`idContrato`,`TipoContrato`,`horaEntrada`,`horaSalida`,`diasDeTRabajo`,`fechaContratacion`,`sueldo`) VALUES (NULL,"Permanente",800,1500,5,"2017-03-11",10000),(NULL,"Permanente",800,1500,5,"2016-11-25",10000),(NULL,"Permanente",800,1500,5,"2017-08-01",10000),(NULL,"Por Hora",800,1500,5,"2017-01-04",10000),(NULL,"Por Hora",800,1500,5,"2017-09-09",10000),(NULL,"Permanente",800,1500,5,"2017-09-19",10000),(NULL,"Por Hora",800,1500,5,"2017-07-21",10000),(NULL,"Por Hora",800,1500,5,"2017-08-15",10000),(NULL,"Permanente",800,1500,5,"2017-05-05",10000),(NULL,"Temporal",800,1500,5,"2016-12-14",10000);


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
INSERT INTO `Deducciones` (`idDeducciones`,`dedu_IHSS`,`dedu_RAP`,`dedu_aportaciones`,`dedu_falta`,`idPermisos`,`idpago`) VALUES (NULL,200,300,0,46,61,90),(NULL,200,300,0,99,39,5),(NULL,200,300,0,14,65,3),(NULL,200,300,0,77,16,91),(NULL,200,300,0,61,40,7),(NULL,200,300,0,35,34,65),(NULL,200,300,0,43,19,98),(NULL,200,300,0,36,16,68),(NULL,200,300,0,19,65,22),(NULL,200,300,0,98,82,5);
INSERT INTO `Deducciones` (`idDeducciones`,`dedu_IHSS`,`dedu_RAP`,`dedu_aportaciones`,`dedu_falta`,`idPermisos`,`idpago`) VALUES (NULL,200,300,0,14,12,35),(NULL,200,300,0,47,95,13),(NULL,200,300,0,95,53,23),(NULL,200,300,0,30,25,59),(NULL,200,300,0,21,50,32),(NULL,200,300,0,3,72,80),(NULL,200,300,0,63,65,10),(NULL,200,300,0,44,39,7),(NULL,200,300,0,85,52,65),(NULL,200,300,0,36,51,2);
INSERT INTO `Deducciones` (`idDeducciones`,`dedu_IHSS`,`dedu_RAP`,`dedu_aportaciones`,`dedu_falta`,`idPermisos`,`idpago`) VALUES (NULL,200,300,0,57,41,26),(NULL,200,300,0,52,97,75),(NULL,200,300,0,9,76,91),(NULL,200,300,0,43,29,76),(NULL,200,300,0,32,60,24),(NULL,200,300,0,98,77,44),(NULL,200,300,0,84,72,45),(NULL,200,300,0,84,47,57),(NULL,200,300,0,57,54,61),(NULL,200,300,0,33,35,65);
INSERT INTO `Deducciones` (`idDeducciones`,`dedu_IHSS`,`dedu_RAP`,`dedu_aportaciones`,`dedu_falta`,`idPermisos`,`idpago`) VALUES (NULL,200,300,0,52,90,24),(NULL,200,300,0,76,16,61),(NULL,200,300,0,89,62,78),(NULL,200,300,0,97,19,14),(NULL,200,300,0,68,97,63),(NULL,200,300,0,13,3,23),(NULL,200,300,0,88,4,61),(NULL,200,300,0,21,16,50),(NULL,200,300,0,45,55,38),(NULL,200,300,0,93,56,22);
INSERT INTO `Deducciones` (`idDeducciones`,`dedu_IHSS`,`dedu_RAP`,`dedu_aportaciones`,`dedu_falta`,`idPermisos`,`idpago`) VALUES (NULL,200,300,0,34,80,49),(NULL,200,300,0,24,79,82),(NULL,200,300,0,60,91,2),(NULL,200,300,0,43,93,97),(NULL,200,300,0,92,89,82),(NULL,200,300,0,28,84,86),(NULL,200,300,0,54,89,41),(NULL,200,300,0,7,12,33),(NULL,200,300,0,77,62,19),(NULL,200,300,0,61,29,28);
INSERT INTO `Deducciones` (`idDeducciones`,`dedu_IHSS`,`dedu_RAP`,`dedu_aportaciones`,`dedu_falta`,`idPermisos`,`idpago`) VALUES (NULL,200,300,0,47,11,36),(NULL,200,300,0,68,63,97),(NULL,200,300,0,2,31,18),(NULL,200,300,0,87,91,12),(NULL,200,300,0,77,64,84),(NULL,200,300,0,32,22,68),(NULL,200,300,0,62,72,80),(NULL,200,300,0,48,31,9),(NULL,200,300,0,30,96,98),(NULL,200,300,0,1,22,53);
INSERT INTO `Deducciones` (`idDeducciones`,`dedu_IHSS`,`dedu_RAP`,`dedu_aportaciones`,`dedu_falta`,`idPermisos`,`idpago`) VALUES (NULL,200,300,0,66,78,91),(NULL,200,300,0,72,4,23),(NULL,200,300,0,84,90,33),(NULL,200,300,0,81,67,53),(NULL,200,300,0,58,85,39),(NULL,200,300,0,58,77,58),(NULL,200,300,0,21,60,30),(NULL,200,300,0,53,5,98),(NULL,200,300,0,31,25,32),(NULL,200,300,0,59,69,78);
INSERT INTO `Deducciones` (`idDeducciones`,`dedu_IHSS`,`dedu_RAP`,`dedu_aportaciones`,`dedu_falta`,`idPermisos`,`idpago`) VALUES (NULL,200,300,0,51,55,84),(NULL,200,300,0,96,60,24),(NULL,200,300,0,22,12,15),(NULL,200,300,0,87,51,65),(NULL,200,300,0,87,84,59),(NULL,200,300,0,40,98,34),(NULL,200,300,0,42,28,21),(NULL,200,300,0,99,82,57),(NULL,200,300,0,79,74,83),(NULL,200,300,0,75,67,54);
INSERT INTO `Deducciones` (`idDeducciones`,`dedu_IHSS`,`dedu_RAP`,`dedu_aportaciones`,`dedu_falta`,`idPermisos`,`idpago`) VALUES (NULL,200,300,0,90,49,26),(NULL,200,300,0,95,85,70),(NULL,200,300,0,96,71,67),(NULL,200,300,0,32,15,65),(NULL,200,300,0,65,8,8),(NULL,200,300,0,95,74,49),(NULL,200,300,0,70,74,11),(NULL,200,300,0,50,2,97),(NULL,200,300,0,45,85,26),(NULL,200,300,0,53,77,37);
INSERT INTO `Deducciones` (`idDeducciones`,`dedu_IHSS`,`dedu_RAP`,`dedu_aportaciones`,`dedu_falta`,`idPermisos`,`idpago`) VALUES (NULL,200,300,0,59,43,19),(NULL,200,300,0,67,7,35),(NULL,200,300,0,97,74,50),(NULL,200,300,0,57,53,62),(NULL,200,300,0,57,11,7),(NULL,200,300,0,64,28,98),(NULL,200,300,0,6,83,48),(NULL,200,300,0,33,36,58),(NULL,200,300,0,43,33,39),(NULL,200,300,0,100,19,54);


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
INSERT INTO `Empleado` (`idEmpleado`,`nombre`,`apellido`,`identidad`,`genero`,`edad`,`fecha_nacimiento`,`telefono`,`direccion`,`cod_empleado`,`idCargo`,`idEncargado`,`idContrato`,`nombreUsuario`,`contrasena`) VALUES (NULL,"Nissim Bryan","Saunders","1628093060799","F",27,"1987-27-11","+504 106-7861","P.O. Box 145, 1013 Consequat, Street","6528",3,2,1,"Dane","asd"),(NULL,"Slade Mayer","Vazquez","1679110173099","F",30,"1967-28-06","+504 896-6264","P.O. Box 312, 9323 Velit St.","3866",3,2,2,"Howard","asd"),(NULL,"Ulysses Cochran","Kidd","1681082252699","M",27,"1986-01-09","+504 177-6488","P.O. Box 173, 1125 Donec Rd.","9223",3,2,3,"Rajah","asd"),(NULL,"Lionel Thompson","Ballard","1611111709699","M",25,"1991-21-10","+504 128-1807","Ap #167-535 Quis Ave","8970",3,2,4,"Lance","asd"),(NULL,"Abraham Bell","England","1616011825499","M",32,"1971-25-08","+504 705-6708","Ap #777-5334 Mollis Rd.","6319",3,2,5,"Lillian","asd"),(NULL,"Guy Combs","Ashley","1657071354899","M",42,"1972-29-06","+504 340-4162","Ap #495-8361 Euismod Avenue","9863",3,2,6,"Aubrey","asd"),(NULL,"Alec Marquez","Smith","1608101260999","M",33,"1986-09-07","+504 389-7965","4749 Nibh Ave","8057",3,2,7,"Sarah","asd"),(NULL,"Wade Guthrie","Williams","1647090417799","M",48,"1967-04-05","+504 797-5883","Ap #506-7155 Non, St.","4306",3,2,8,"Dean","asd"),(NULL,"Blaze Donovan","Lloyd","1659052938199","F",43,"1978-18-07","+504 632-7469","Ap #733-716 Aliquam, Ave","4715",3,2,9,"Amethyst","asd"),(NULL,"Thane Calhoun","Velasquez","1695022844999","F",20,"1985-01-09","+504 789-8053","Ap #729-263 Nascetur Avenue","2321",3,2,10,"Clementine","asd");
INSERT INTO `Empleado` (`idEmpleado`,`nombre`,`apellido`,`identidad`,`genero`,`edad`,`fecha_nacimiento`,`telefono`,`direccion`,`cod_empleado`,`idCargo`,`idEncargado`,`idContrato`,`nombreUsuario`,`contrasena`) VALUES (NULL,"Dennis Hampton","Salas","1606111024599","F",31,"1985-23-10","+504 329-2165","Ap #198-4754 Sit Street","3287",3,2,11,"Ella","asd"),(NULL,"Jerome Armstrong","Cash","1688112916799","M",39,"1983-25-04","+504 529-1226","P.O. Box 919, 2456 Erat St.","7913",3,2,12,"Ursa","asd"),(NULL,"Victor Soto","Garrison","1610012279499","F",28,"1979-11-02","+504 862-2286","627-5971 At St.","3929",3,2,13,"Arsenio","asd"),(NULL,"Abraham Stark","Underwood","1647050120999","F",30,"1996-27-03","+504 261-7977","Ap #542-3400 Vel, Rd.","6996",3,2,14,"Ciaran","asd"),(NULL,"Paki Fitzpatrick","Rowland","1677010469699","F",45,"1967-11-12","+504 736-7441","Ap #783-7395 Amet St.","2733",3,2,15,"Richard","asd"),(NULL,"Silas Farley","House","1602111590099","M",28,"1969-28-12","+504 730-9891","Ap #229-7834 Et Road","6693",3,2,16,"Ezra","asd"),(NULL,"Hedley Franco","Nunez","1678101657399","F",42,"1995-06-10","+504 714-5261","820-5429 Dolor, Avenue","2754",3,2,17,"Illana","asd"),(NULL,"Yardley Barrera","Molina","1691072939999","F",48,"1989-03-02","+504 484-5582","Ap #421-6258 Facilisis, Avenue","6841",3,2,18,"Myles","asd"),(NULL,"Matthew Waller","Rowe","1648091027599","M",43,"1985-05-05","+504 489-8493","Ap #276-7848 Mi. St.","8989",3,2,19,"Shoshana","asd"),(NULL,"Lucius Ferguson","Valentine","1695011582099","F",38,"1991-15-04","+504 463-8265","735-3219 Magna St.","5145",3,2,20,"Xavier","asd");
INSERT INTO `Empleado` (`idEmpleado`,`nombre`,`apellido`,`identidad`,`genero`,`edad`,`fecha_nacimiento`,`telefono`,`direccion`,`cod_empleado`,`idCargo`,`idEncargado`,`idContrato`,`nombreUsuario`,`contrasena`) VALUES (NULL,"Jesse Hooper","Cherry","1693082327599","F",41,"1964-20-12","+504 872-4111","9883 Mauris Street","7912",3,2,21,"Connor","asd"),(NULL,"Emmanuel Poole","Keller","1635022044399","F",31,"1981-22-09","+504 553-6323","339 Odio. St.","4093",3,2,22,"Amos","asd"),(NULL,"Porter Moon","Morales","1684010640899","M",25,"1965-02-03","+504 434-2277","P.O. Box 557, 8024 Ridiculus Ave","9892",3,2,23,"Aaron","asd"),(NULL,"Jesse Vazquez","Hewitt","1616102953599","F",47,"1984-28-02","+504 382-0004","258-908 Ultrices Street","8749",3,2,24,"Leandra","asd"),(NULL,"Orson Shields","Garner","1601092996699","F",31,"1984-19-07","+504 491-9422","Ap #446-9029 Nullam Rd.","5457",3,2,25,"Frances","asd"),(NULL,"Samson Young","Preston","1665120991599","M",28,"1976-19-12","+504 638-4150","P.O. Box 474, 9043 Sagittis Avenue","6099",3,2,26,"Jackson","asd"),(NULL,"Lance Sharp","Sutton","1695070463899","M",32,"1965-23-10","+504 949-2451","565 Cursus, Road","5044",3,2,27,"Jared","asd"),(NULL,"Cooper Nunez","Le","1652031712499","M",29,"1990-24-08","+504 213-6126","838-3604 Sociis Av.","2218",3,2,28,"Jonas","asd"),(NULL,"Gage Welch","Mckinney","1682122695099","F",36,"1985-20-01","+504 965-7178","2185 Neque Road","7357",3,2,29,"Garrett","asd"),(NULL,"Alan House","Simmons","1659051639099","F",39,"1980-10-01","+504 752-3078","6961 Aliquam St.","7306",3,2,30,"Allen","asd");
INSERT INTO `Empleado` (`idEmpleado`,`nombre`,`apellido`,`identidad`,`genero`,`edad`,`fecha_nacimiento`,`telefono`,`direccion`,`cod_empleado`,`idCargo`,`idEncargado`,`idContrato`,`nombreUsuario`,`contrasena`) VALUES (NULL,"Odysseus Randolph","Parker","1675112518099","M",48,"1998-18-02","+504 345-7050","P.O. Box 379, 5003 Natoque Rd.","2090",3,2,31,"Rhona","asd"),(NULL,"Oren Moses","Sherman","1676042808499","F",20,"1965-04-04","+504 216-7303","P.O. Box 955, 2838 Eget, Rd.","2850",3,2,32,"Amery","asd"),(NULL,"David Calderon","Hendricks","1685091046099","F",38,"1993-28-09","+504 233-6310","Ap #995-2276 Mi, Street","5681",3,2,33,"Kameko","asd"),(NULL,"Paul Massey","Alston","1607120538399","F",48,"1970-17-05","+504 157-7908","Ap #826-362 Magna. St.","4727",3,2,34,"Althea","asd"),(NULL,"Wang Morgan","Rush","1684011023699","F",23,"1978-07-04","+504 117-5284","5512 At, St.","7190",3,2,35,"Carter","asd"),(NULL,"Ralph Powers","Dorsey","1619102600399","F",22,"1966-03-05","+504 675-0016","P.O. Box 560, 5940 Inceptos Ave","8234",3,2,36,"Sara","asd"),(NULL,"Brandon Kidd","Rosa","1615012815499","M",47,"1968-08-12","+504 707-7732","P.O. Box 875, 2871 Bibendum. Rd.","7647",3,2,37,"Jasmine","asd"),(NULL,"Brock Massey","Nolan","1691011879799","M",42,"1983-29-09","+504 815-8181","975 Sodales St.","7566",3,2,38,"Dana","asd"),(NULL,"Kevin Vance","Sharpe","1658072498499","F",36,"1991-19-08","+504 819-4514","437-4869 Hymenaeos. Road","7034",3,2,39,"Neville","asd"),(NULL,"Vincent Walker","Stone","1676101397999","F",38,"1970-24-05","+504 619-1682","P.O. Box 966, 8367 Tempor Rd.","4602",3,2,40,"Fletcher","asd");
INSERT INTO `Empleado` (`idEmpleado`,`nombre`,`apellido`,`identidad`,`genero`,`edad`,`fecha_nacimiento`,`telefono`,`direccion`,`cod_empleado`,`idCargo`,`idEncargado`,`idContrato`,`nombreUsuario`,`contrasena`) VALUES (NULL,"Dale Schmidt","Lynn","1646091991799","F",35,"1984-03-06","+504 496-8671","855-3499 Erat Rd.","3895",3,2,41,"Ima","asd"),(NULL,"Norman Barry","Ferrell","1676052845099","M",46,"1981-28-11","+504 777-6220","P.O. Box 119, 4704 Ridiculus Street","7144",3,2,42,"Abigail","asd"),(NULL,"Oliver Rodriguez","William","1697032202299","M",20,"1984-12-02","+504 856-2322","Ap #579-4207 Accumsan Rd.","3331",3,2,43,"Destiny","asd"),(NULL,"Lance Luna","Dixon","1672100572399","F",30,"1988-19-09","+504 839-5212","Ap #497-3688 At, Avenue","6740",3,2,44,"Aurelia","asd"),(NULL,"Merrill Duke","Williamson","1660101436299","F",37,"1986-19-04","+504 539-9828","328-9014 Adipiscing St.","6537",3,2,45,"Mannix","asd"),(NULL,"Merrill Hammond","Hines","1608122046499","M",37,"1982-12-11","+504 610-1230","Ap #686-7359 Ante. St.","3875",3,2,46,"Raymond","asd"),(NULL,"Aidan Peterson","Fernandez","1618040124599","M",41,"1977-27-05","+504 358-1627","P.O. Box 274, 2768 Sodales Street","4425",3,2,47,"Harper","asd"),(NULL,"Yoshio Oliver","Miranda","1683112603999","F",35,"1992-30-07","+504 572-4255","469-7315 Habitant Ave","3872",3,2,48,"Jane","asd"),(NULL,"Lewis Allison","Whitley","1643100987699","F",32,"1994-22-06","+504 192-8245","Ap #945-7221 Nunc Av.","3216",3,2,49,"Nehru","asd"),(NULL,"Elijah Middleton","Gibson","1672062222299","F",28,"1989-08-09","+504 584-3750","9667 Erat Rd.","9869",3,2,50,"Jelani","asd");
INSERT INTO `Empleado` (`idEmpleado`,`nombre`,`apellido`,`identidad`,`genero`,`edad`,`fecha_nacimiento`,`telefono`,`direccion`,`cod_empleado`,`idCargo`,`idEncargado`,`idContrato`,`nombreUsuario`,`contrasena`) VALUES (NULL,"Berk Kim","Ochoa","1624022362799","F",41,"1995-12-07","+504 213-6612","453 Nulla. Street","4876",3,2,51,"Uta","asd"),(NULL,"Hector Pollard","Reeves","1608021378599","F",30,"1974-27-05","+504 394-3328","P.O. Box 942, 1724 Vel, Rd.","8826",3,2,52,"Brent","asd"),(NULL,"Wyatt Lowery","Rush","1656050644599","M",33,"1996-23-12","+504 783-6197","P.O. Box 659, 4576 Pellentesque Av.","6136",3,2,53,"Carlos","asd"),(NULL,"Cedric Conley","Nielsen","1693062119999","F",40,"1965-31-05","+504 304-0870","Ap #262-2927 Lorem Av.","3467",3,2,54,"Kay","asd"),(NULL,"Dillon Meadows","Kirby","1656072400199","M",39,"1965-20-09","+504 798-0390","275-6973 Inceptos Rd.","3179",3,2,55,"Orla","asd"),(NULL,"Axel Yates","Mckee","1682071199299","F",20,"1975-24-02","+504 467-5748","8151 Pellentesque St.","7473",3,2,56,"Jaime","asd"),(NULL,"Zahir Ewing","Morales","1693020138899","F",48,"1992-26-01","+504 961-7182","224-2519 Nunc Ave","1336",3,2,57,"Herman","asd"),(NULL,"Guy Anthony","Duke","1646092379899","F",39,"1967-27-06","+504 786-8797","Ap #872-4653 Sed Av.","3042",3,2,58,"Delilah","asd"),(NULL,"Howard Perkins","Parrish","1629090909299","F",29,"1990-26-05","+504 961-8820","6004 Egestas St.","4835",3,2,59,"Noah","asd"),(NULL,"Fitzgerald Joseph","Chambers","1612071428599","F",27,"1978-31-05","+504 325-0318","6859 Tincidunt St.","4587",3,2,60,"Merrill","asd");
INSERT INTO `Empleado` (`idEmpleado`,`nombre`,`apellido`,`identidad`,`genero`,`edad`,`fecha_nacimiento`,`telefono`,`direccion`,`cod_empleado`,`idCargo`,`idEncargado`,`idContrato`,`nombreUsuario`,`contrasena`) VALUES (NULL,"Kasimir Mendoza","Herman","1604041112899","F",43,"1981-08-01","+504 835-8350","Ap #403-2471 Class St.","6763",3,2,61,"Ivan","asd"),(NULL,"Hiram Weaver","Dudley","1682070430399","F",42,"1973-24-12","+504 617-8969","120-7308 Auctor, Av.","8055",3,2,62,"Aspen","asd"),(NULL,"Abel Buckley","Bright","1621042863899","F",29,"1971-13-07","+504 541-9134","4202 Eu St.","2837",3,2,63,"Daria","asd"),(NULL,"Daniel Salinas","Bolton","1648082566599","F",32,"1987-02-10","+504 294-8844","P.O. Box 488, 3256 Pede, Road","5440",3,2,64,"Emi","asd"),(NULL,"Louis Lang","Warner","1693102928399","M",29,"1966-11-03","+504 702-2234","614-6052 Tellus Avenue","8603",3,2,65,"Sharon","asd"),(NULL,"Donovan Gamble","Dale","1642011663999","F",43,"1997-29-11","+504 290-8535","598-109 Enim, Street","5108",3,2,66,"Skyler","asd"),(NULL,"Guy Little","Nash","1658070168599","M",38,"1982-03-10","+504 669-3475","882-2062 In St.","3217",3,2,67,"Yoshi","asd"),(NULL,"Gabriel Davidson","Newton","1675081726199","F",46,"1974-14-07","+504 527-8259","P.O. Box 662, 2051 Turpis Ave","2066",3,2,68,"Dane","asd"),(NULL,"Byron Juarez","Kirby","1694082896799","F",22,"1988-31-10","+504 643-6840","P.O. Box 778, 4409 Fringilla. Road","4852",3,2,69,"Kitra","asd"),(NULL,"Cedric Castaneda","Dunlap","1610010248599","M",38,"1983-03-11","+504 989-0386","P.O. Box 156, 4218 Pulvinar Rd.","4599",3,2,70,"Medge","asd");
INSERT INTO `Empleado` (`idEmpleado`,`nombre`,`apellido`,`identidad`,`genero`,`edad`,`fecha_nacimiento`,`telefono`,`direccion`,`cod_empleado`,`idCargo`,`idEncargado`,`idContrato`,`nombreUsuario`,`contrasena`) VALUES (NULL,"Devin Townsend","Frost","1605062992299","M",21,"1965-29-03","+504 867-1677","P.O. Box 446, 7316 Ultricies Street","6248",3,2,71,"Jarrod","asd"),(NULL,"Nissim Gardner","Benton","1641120352799","M",23,"1979-18-11","+504 498-7762","Ap #949-4696 Neque St.","5289",3,2,72,"Serena","asd"),(NULL,"Harper Dominguez","Craig","1672051407499","F",43,"1966-09-07","+504 696-4981","3626 Sit St.","8204",3,2,73,"Barrett","asd"),(NULL,"Evan Malone","Cooke","1671080929099","F",37,"1984-14-11","+504 403-6322","4168 Integer Rd.","1366",3,2,74,"Darrel","asd"),(NULL,"Burke Mills","Robles","1691122923099","M",23,"1979-07-04","+504 680-5272","P.O. Box 990, 8522 At St.","7324",3,2,75,"Aquila","asd"),(NULL,"Robert Perkins","Anderson","1669122490799","F",36,"1986-14-01","+504 774-9286","P.O. Box 420, 802 Dictum Street","5175",3,2,76,"Brock","asd"),(NULL,"Fuller Barnes","Holmes","1682100672599","M",26,"1966-12-08","+504 415-1483","Ap #572-7087 In St.","8167",3,2,77,"Idola","asd"),(NULL,"Drake Conway","Morin","1651032123799","M",20,"1967-10-07","+504 710-9961","385-3154 Montes, St.","7020",3,2,78,"Caleb","asd"),(NULL,"Thor Carson","Rogers","1657112623199","F",27,"1986-05-04","+504 152-0268","6092 Metus Av.","7359",3,2,79,"Martina","asd"),(NULL,"Scott Alston","Slater","1672050885399","F",42,"1981-06-01","+504 103-5407","1920 Integer Rd.","9155",3,2,80,"Hu","asd");
INSERT INTO `Empleado` (`idEmpleado`,`nombre`,`apellido`,`identidad`,`genero`,`edad`,`fecha_nacimiento`,`telefono`,`direccion`,`cod_empleado`,`idCargo`,`idEncargado`,`idContrato`,`nombreUsuario`,`contrasena`) VALUES (NULL,"Brennan Navarro","Hunt","1616052689199","F",49,"1991-02-09","+504 905-2268","P.O. Box 455, 1860 Ipsum. St.","8427",3,2,81,"Yvonne","asd"),(NULL,"Clayton Griffith","Nielsen","1634011603899","F",33,"1976-28-02","+504 111-5646","P.O. Box 777, 6406 Mauris. Ave","2428",3,2,82,"Whoopi","asd"),(NULL,"Brendan Bartlett","Flynn","1601042156399","F",31,"1966-10-08","+504 121-4641","179 Phasellus Avenue","2341",3,2,83,"Theodore","asd"),(NULL,"Ezra Whitehead","Ryan","1694041384599","F",39,"1982-11-11","+504 862-3119","P.O. Box 903, 6648 Sem, St.","7396",3,2,84,"Evelyn","asd"),(NULL,"Edward Frank","Gray","1606111957299","M",44,"1998-30-10","+504 248-3430","1793 Augue, Rd.","3299",3,2,85,"Reese","asd"),(NULL,"Emery Mcpherson","Cardenas","1698080598599","M",46,"1984-23-07","+504 290-6567","Ap #472-9822 Eu St.","1573",3,2,86,"Elizabeth","asd"),(NULL,"Brody Russo","Francis","1625010737899","M",45,"1976-07-08","+504 175-0294","5688 Nunc St.","8184",3,2,87,"Sawyer","asd"),(NULL,"Ezekiel Lancaster","Black","1647040634499","M",30,"1977-03-11","+504 905-3520","P.O. Box 986, 1024 Ullamcorper St.","8454",3,2,88,"Devin","asd"),(NULL,"Robert Elliott","Sears","1651022479199","F",35,"1971-04-07","+504 246-8763","207-782 Malesuada Rd.","7381",3,2,89,"Nehru","asd"),(NULL,"Damon Wallace","Talley","1608020886799","F",50,"1971-18-11","+504 408-6682","749-3000 Congue Av.","2287",3,2,90,"Lillith","asd");
INSERT INTO `Empleado` (`idEmpleado`,`nombre`,`apellido`,`identidad`,`genero`,`edad`,`fecha_nacimiento`,`telefono`,`direccion`,`cod_empleado`,`idCargo`,`idEncargado`,`idContrato`,`nombreUsuario`,`contrasena`) VALUES (NULL,"Hedley Holman","Owens","1612070423399","M",40,"1977-20-07","+504 948-4936","P.O. Box 714, 5532 A Road","6413",3,2,91,"Breanna","asd"),(NULL,"Chester Ochoa","Calderon","1697042838199","M",36,"1983-30-03","+504 723-7505","Ap #592-7847 Velit. Avenue","5210",3,2,92,"May","asd"),(NULL,"Harper Dejesus","Kidd","1682090622399","M",34,"1982-07-08","+504 619-2975","459-9064 Elit Rd.","5230",3,2,93,"George","asd"),(NULL,"Cairo Ayers","Calderon","1687032716499","M",40,"1994-26-06","+504 215-0145","Ap #392-2467 Massa Av.","1709",3,2,94,"Ezra","asd"),(NULL,"Uriel Norton","Reyes","1602101167399","F",27,"1969-07-10","+504 934-6478","1613 Egestas Street","5275",3,2,95,"Iris","asd"),(NULL,"Kieran Guerrero","Bender","1697061016899","F",38,"1972-03-01","+504 262-9842","P.O. Box 422, 6561 Cras Av.","5804",3,2,96,"Ulric","asd"),(NULL,"Maxwell Herrera","Head","1643010574699","M",21,"1986-06-08","+504 293-9593","P.O. Box 334, 5675 Senectus St.","8803",3,2,97,"Rhoda","asd"),(NULL,"Craig Kelley","Francis","1681062899899","M",28,"1968-21-12","+504 179-7893","1920 Donec Ave","6647",3,2,98,"Berk","asd"),(NULL,"Zane Higgins","Adkins","1610080291799","M",44,"1965-14-04","+504 375-0114","P.O. Box 677, 1517 Sollicitudin Rd.","5420",3,2,99,"Jelani","asd"),(NULL,"Samson Chaney","Williams","1637100835599","M",36,"1982-12-04","+504 464-0976","5082 Nibh. Rd.","4368",3,2,100,"Jarrod","asd");




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

INSERT INTO `Pago` (`idPago`,`total_deducciones`,`total_pago`,`IdEmpleado`,`fecha_pago`) VALUES (NULL,610,9371,1,"2017-12-15"),(NULL,543,9521,2,"2017-12-15"),(NULL,687,9456,3,"2017-12-16"),(NULL,572,8915,4,"2017-12-15"),(NULL,572,8492,5,"2017-12-15"),(NULL,520,8007,6,"2017-12-16"),(NULL,661,8134,7,"2017-12-16"),(NULL,626,9530,8,"2017-12-16"),(NULL,580,9643,9,"2017-12-15"),(NULL,605,9045,10,"2017-12-16");
INSERT INTO `Pago` (`idPago`,`total_deducciones`,`total_pago`,`IdEmpleado`,`fecha_pago`) VALUES (NULL,587,9365,11,"2017-12-15"),(NULL,635,9471,12,"2017-12-16"),(NULL,562,9673,13,"2017-12-15"),(NULL,622,8499,14,"2017-12-16"),(NULL,526,8759,15,"2017-12-15"),(NULL,679,9628,16,"2017-12-15"),(NULL,647,9699,17,"2017-12-16"),(NULL,641,9836,18,"2017-12-16"),(NULL,512,8768,19,"2017-12-16"),(NULL,602,8231,20,"2017-12-16");
INSERT INTO `Pago` (`idPago`,`total_deducciones`,`total_pago`,`IdEmpleado`,`fecha_pago`) VALUES (NULL,579,8173,21,"2017-12-16"),(NULL,572,9488,22,"2017-12-15"),(NULL,521,8642,23,"2017-12-15"),(NULL,641,8012,24,"2017-12-16"),(NULL,533,9442,25,"2017-12-15"),(NULL,583,9501,26,"2017-12-15"),(NULL,576,8520,27,"2017-12-16"),(NULL,633,9721,28,"2017-12-15"),(NULL,513,8786,29,"2017-12-16"),(NULL,545,8313,30,"2017-12-16");
INSERT INTO `Pago` (`idPago`,`total_deducciones`,`total_pago`,`IdEmpleado`,`fecha_pago`) VALUES (NULL,550,9344,31,"2017-12-15"),(NULL,618,8489,32,"2017-12-16"),(NULL,629,9587,33,"2017-12-16"),(NULL,592,8763,34,"2017-12-15"),(NULL,512,8286,35,"2017-12-15"),(NULL,564,8901,36,"2017-12-15"),(NULL,658,9487,37,"2017-12-15"),(NULL,608,8472,38,"2017-12-15"),(NULL,610,8391,39,"2017-12-15"),(NULL,615,8964,40,"2017-12-15");
INSERT INTO `Pago` (`idPago`,`total_deducciones`,`total_pago`,`IdEmpleado`,`fecha_pago`) VALUES (NULL,564,8345,41,"2017-12-16"),(NULL,638,8033,42,"2017-12-16"),(NULL,695,8809,43,"2017-12-15"),(NULL,536,8006,44,"2017-12-16"),(NULL,632,9863,45,"2017-12-15"),(NULL,525,9818,46,"2017-12-15"),(NULL,565,8884,47,"2017-12-15"),(NULL,601,8973,48,"2017-12-15"),(NULL,596,8116,49,"2017-12-15"),(NULL,613,9280,50,"2017-12-16");
INSERT INTO `Pago` (`idPago`,`total_deducciones`,`total_pago`,`IdEmpleado`,`fecha_pago`) VALUES (NULL,538,9811,51,"2017-12-15"),(NULL,626,9884,52,"2017-12-16"),(NULL,643,8932,53,"2017-12-15"),(NULL,623,9584,54,"2017-12-15"),(NULL,588,9483,55,"2017-12-16"),(NULL,614,9578,56,"2017-12-15"),(NULL,663,8156,57,"2017-12-15"),(NULL,528,8927,58,"2017-12-16"),(NULL,594,9866,59,"2017-12-15"),(NULL,637,8868,60,"2017-12-16");
INSERT INTO `Pago` (`idPago`,`total_deducciones`,`total_pago`,`IdEmpleado`,`fecha_pago`) VALUES (NULL,586,8057,61,"2017-12-15"),(NULL,697,8309,62,"2017-12-16"),(NULL,574,9225,63,"2017-12-15"),(NULL,611,9316,64,"2017-12-16"),(NULL,598,9951,65,"2017-12-15"),(NULL,600,8665,66,"2017-12-15"),(NULL,602,8625,67,"2017-12-16"),(NULL,500,8204,68,"2017-12-15"),(NULL,568,8919,69,"2017-12-15"),(NULL,510,8246,70,"2017-12-15");
INSERT INTO `Pago` (`idPago`,`total_deducciones`,`total_pago`,`IdEmpleado`,`fecha_pago`) VALUES (NULL,604,8249,71,"2017-12-16"),(NULL,509,9124,72,"2017-12-16"),(NULL,579,8285,73,"2017-12-16"),(NULL,565,9595,74,"2017-12-15"),(NULL,633,9595,75,"2017-12-15"),(NULL,510,9409,76,"2017-12-15"),(NULL,693,8719,77,"2017-12-15"),(NULL,700,8733,78,"2017-12-16"),(NULL,559,8761,79,"2017-12-15"),(NULL,692,8143,80,"2017-12-15");
INSERT INTO `Pago` (`idPago`,`total_deducciones`,`total_pago`,`IdEmpleado`,`fecha_pago`) VALUES (NULL,653,9545,81,"2017-12-15"),(NULL,511,8031,82,"2017-12-15"),(NULL,683,9009,83,"2017-12-15"),(NULL,559,9792,84,"2017-12-15"),(NULL,557,9764,85,"2017-12-15"),(NULL,608,8260,86,"2017-12-15"),(NULL,585,8361,87,"2017-12-15"),(NULL,592,9063,88,"2017-12-15"),(NULL,507,8573,89,"2017-12-16"),(NULL,568,9912,90,"2017-12-15");
INSERT INTO `Pago` (`idPago`,`total_deducciones`,`total_pago`,`IdEmpleado`,`fecha_pago`) VALUES (NULL,663,9348,91,"2017-12-15"),(NULL,525,8921,92,"2017-12-15"),(NULL,548,8566,93,"2017-12-16"),(NULL,618,8535,94,"2017-12-15"),(NULL,530,8283,95,"2017-12-15"),(NULL,508,8261,96,"2017-12-15"),(NULL,544,8015,97,"2017-12-16"),(NULL,677,8584,98,"2017-12-16"),(NULL,616,9273,99,"2017-12-15"),(NULL,510,9822,100,"2017-12-15");



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
--2 y 17
/*1, 'Permiso por dia'),
(2, 'permiso por maternidad'),
(3, 'permiso por medico'),
(4, 'permiso por salida'),
(5, 'permiso por duelo '),
(6, 'permiso por matrimonio ');

*/


INSERT INTO `Permisos` (`idPermisos`,`descrip_permiso`,`fecha_inicio`,`fecha_final`,`num_dias`,`idTipo_Permiso`,`idEmpleado`,`idResposable`,`estadoPermiso`) VALUES (NULL,"fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed","2017-11-03","2017-12-16",4,2,62,2,2),(NULL,"eros nec tellus. Nunc lectus pede, ultrices a, auctor non,","2017-11-23","2017-12-30",7,6,46,2,2),(NULL,"Sed neque. Sed eget lacus. Mauris non dui nec urna","2017-11-05","2017-12-23",2,2,29,2,2),(NULL,"convallis, ante lectus convallis est, vitae sodales nisi magna sed","2017-11-30","2017-12-08",7,6,40,2,2),(NULL,"nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus,","2017-11-03","2017-12-29",6,4,84,2,2),(NULL,"Donec est mauris, rhoncus id, mollis nec, cursus a, enim.","2017-11-11","2017-12-19",3,3,47,1,2),(NULL,"eu dui. Cum sociis natoque penatibus et magnis dis parturient","2017-11-04","2017-12-14",6,5,81,2,2),(NULL,"Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent","2017-11-23","2017-12-11",1,4,21,2,1),(NULL,"dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas","2017-11-07","2017-12-23",7,1,7,2,1),(NULL,"diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus","2017-11-27","2017-12-27",2,5,58,2,2);
INSERT INTO `Permisos` (`idPermisos`,`descrip_permiso`,`fecha_inicio`,`fecha_final`,`num_dias`,`idTipo_Permiso`,`idEmpleado`,`idResposable`,`estadoPermiso`) VALUES (NULL,"Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque.","2017-11-29","2017-12-11",5,6,22,1,1),(NULL,"Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus.","2017-11-21","2017-12-09",1,1,79,2,2),(NULL,"velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque","2017-11-02","2017-12-16",6,3,83,2,1),(NULL,"est, mollis non, cursus non, egestas a, dui. Cras pellentesque.","2017-11-09","2017-12-05",5,2,93,1,1),(NULL,"fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed","2017-11-13","2017-12-25",5,6,34,2,2),(NULL,"a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed","2017-11-08","2017-12-31",4,4,13,1,2),(NULL,"malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna.","2017-11-10","2017-12-11",6,4,49,1,1),(NULL,"nec mauris blandit mattis. Cras eget nisi dictum augue malesuada","2017-11-17","2017-12-28",1,4,31,1,2),(NULL,"pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare","2017-11-14","2017-12-25",7,3,56,1,2),(NULL,"accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate,","2017-11-18","2017-12-19",1,4,56,2,1);
INSERT INTO `Permisos` (`idPermisos`,`descrip_permiso`,`fecha_inicio`,`fecha_final`,`num_dias`,`idTipo_Permiso`,`idEmpleado`,`idResposable`,`estadoPermiso`) VALUES (NULL,"Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci.","2017-11-21","2017-12-28",3,2,94,1,2),(NULL,"sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id","2017-11-03","2017-12-14",1,3,54,1,2),(NULL,"Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu,","2017-11-11","2017-12-26",3,2,88,2,1),(NULL,"aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam","2017-11-05","2017-12-26",2,6,72,2,1),(NULL,"pharetra, felis eget varius ultrices, mauris ipsum porta elit, a","2017-11-14","2017-12-17",7,6,86,1,1),(NULL,"dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit.","2017-11-19","2017-12-11",4,2,59,1,2),(NULL,"sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id","2017-11-20","2017-12-29",3,2,44,1,1),(NULL,"tristique senectus et netus et malesuada fames ac turpis egestas.","2017-11-09","2017-12-02",2,6,55,1,1),(NULL,"leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis,","2017-11-17","2017-12-14",4,1,36,2,2),(NULL,"mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In","2017-11-13","2017-12-05",3,3,59,2,2);
INSERT INTO `Permisos` (`idPermisos`,`descrip_permiso`,`fecha_inicio`,`fecha_final`,`num_dias`,`idTipo_Permiso`,`idEmpleado`,`idResposable`,`estadoPermiso`) VALUES (NULL,"sit amet, risus. Donec nibh enim, gravida sit amet, dapibus","2017-11-06","2017-12-19",6,2,62,1,1),(NULL,"Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor,","2017-11-05","2017-12-22",1,1,63,1,2),(NULL,"nisi dictum augue malesuada malesuada. Integer id magna et ipsum","2017-11-06","2017-12-01",5,3,49,1,2),(NULL,"vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend","2017-11-30","2017-12-25",1,1,44,2,2),(NULL,"luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi","2017-11-25","2017-12-12",2,2,58,1,1),(NULL,"quam quis diam. Pellentesque habitant morbi tristique senectus et netus","2017-11-12","2017-12-15",5,4,28,1,2),(NULL,"sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id","2017-11-18","2017-12-28",3,2,24,2,2),(NULL,"sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis","2017-11-08","2017-12-12",6,3,22,1,2),(NULL,"Donec non justo. Proin non massa non ante bibendum ullamcorper.","2017-11-12","2017-12-18",5,3,72,1,1),(NULL,"tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel,","2017-11-06","2017-12-13",1,6,42,2,2);
INSERT INTO `Permisos` (`idPermisos`,`descrip_permiso`,`fecha_inicio`,`fecha_final`,`num_dias`,`idTipo_Permiso`,`idEmpleado`,`idResposable`,`estadoPermiso`) VALUES (NULL,"nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae","2017-11-11","2017-12-09",1,5,12,1,2),(NULL,"lectus convallis est, vitae sodales nisi magna sed dui. Fusce","2017-11-09","2017-12-21",6,6,18,1,1),(NULL,"dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer","2017-11-30","2017-12-18",2,1,90,1,1),(NULL,"libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet","2017-11-09","2017-12-02",1,5,21,2,2),(NULL,"Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue,","2017-11-07","2017-12-10",2,6,79,2,1),(NULL,"In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas.","2017-11-30","2017-12-13",1,2,67,2,1),(NULL,"id nunc interdum feugiat. Sed nec metus facilisis lorem tristique","2017-11-19","2017-12-17",2,1,40,2,1),(NULL,"magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices.","2017-11-05","2017-12-01",1,1,93,1,1),(NULL,"Sed congue, elit sed consequat auctor, nunc nulla vulputate dui,","2017-11-06","2017-12-23",7,5,7,2,1),(NULL,"Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla","2017-11-02","2017-12-09",2,2,21,1,1);
INSERT INTO `Permisos` (`idPermisos`,`descrip_permiso`,`fecha_inicio`,`fecha_final`,`num_dias`,`idTipo_Permiso`,`idEmpleado`,`idResposable`,`estadoPermiso`) VALUES (NULL,"ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget","2017-11-25","2017-12-27",1,6,76,1,2),(NULL,"lorem, eget mollis lectus pede et risus. Quisque libero lacus,","2017-11-21","2017-12-19",1,5,8,2,2),(NULL,"mollis lectus pede et risus. Quisque libero lacus, varius et,","2017-11-20","2017-12-03",5,4,88,1,2),(NULL,"pretium neque. Morbi quis urna. Nunc quis arcu vel quam","2017-11-14","2017-12-14",2,6,75,1,2),(NULL,"varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla","2017-11-20","2017-12-07",7,3,27,2,2),(NULL,"est, vitae sodales nisi magna sed dui. Fusce aliquam, enim","2017-11-27","2017-12-07",1,2,63,2,1),(NULL,"dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer","2017-11-14","2017-12-25",4,6,87,2,2),(NULL,"augue ac ipsum. Phasellus vitae mauris sit amet lorem semper","2017-11-16","2017-12-21",2,1,42,2,2),(NULL,"magna a neque. Nullam ut nisi a odio semper cursus.","2017-11-06","2017-12-06",5,6,32,2,2),(NULL,"consequat, lectus sit amet luctus vulputate, nisi sem semper erat,","2017-11-09","2017-12-28",3,3,30,1,1);
INSERT INTO `Permisos` (`idPermisos`,`descrip_permiso`,`fecha_inicio`,`fecha_final`,`num_dias`,`idTipo_Permiso`,`idEmpleado`,`idResposable`,`estadoPermiso`) VALUES (NULL,"consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales","2017-11-03","2017-12-12",2,2,75,1,2),(NULL,"ac metus vitae velit egestas lacinia. Sed congue, elit sed","2017-11-30","2017-12-02",2,3,87,1,2),(NULL,"Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate,","2017-11-20","2017-12-22",4,3,76,1,1),(NULL,"risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non","2017-11-08","2017-12-16",4,1,11,2,2),(NULL,"adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem","2017-11-05","2017-12-27",5,1,84,1,1),(NULL,"id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque","2017-11-05","2017-12-22",3,3,14,1,2),(NULL,"tristique pellentesque, tellus sem mollis dui, in sodales elit erat","2017-11-18","2017-12-19",3,3,92,1,1),(NULL,"tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel,","2017-11-18","2017-12-26",2,6,2,1,2),(NULL,"semper, dui lectus rutrum urna, nec luctus felis purus ac","2017-11-28","2017-12-26",4,3,49,2,1),(NULL,"tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam","2017-11-11","2017-12-02",5,5,55,2,2);
INSERT INTO `Permisos` (`idPermisos`,`descrip_permiso`,`fecha_inicio`,`fecha_final`,`num_dias`,`idTipo_Permiso`,`idEmpleado`,`idResposable`,`estadoPermiso`) VALUES (NULL,"vitae risus. Duis a mi fringilla mi lacinia mattis. Integer","2017-11-06","2017-12-12",5,2,97,2,1),(NULL,"pharetra, felis eget varius ultrices, mauris ipsum porta elit, a","2017-11-08","2017-12-26",2,2,39,2,2),(NULL,"lectus ante dictum mi, ac mattis velit justo nec ante.","2017-11-19","2017-12-12",5,3,4,2,1),(NULL,"mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus","2017-11-08","2017-12-02",6,2,95,2,1),(NULL,"leo, in lobortis tellus justo sit amet nulla. Donec non","2017-11-11","2017-12-22",7,6,60,2,2),(NULL,"lorem, eget mollis lectus pede et risus. Quisque libero lacus,","2017-11-09","2017-12-07",5,2,43,2,1),(NULL,"sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum","2017-11-25","2017-12-12",3,3,68,1,1),(NULL,"leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in,","2017-11-05","2017-12-23",5,1,43,1,2),(NULL,"morbi tristique senectus et netus et malesuada fames ac turpis","2017-11-01","2017-12-29",2,3,75,1,2),(NULL,"vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue","2017-11-19","2017-12-26",1,3,95,1,1);
INSERT INTO `Permisos` (`idPermisos`,`descrip_permiso`,`fecha_inicio`,`fecha_final`,`num_dias`,`idTipo_Permiso`,`idEmpleado`,`idResposable`,`estadoPermiso`) VALUES (NULL,"feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam","2017-11-21","2017-12-06",3,6,40,1,1),(NULL,"elit erat vitae risus. Duis a mi fringilla mi lacinia","2017-11-18","2017-12-05",5,1,89,1,2),(NULL,"mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus.","2017-11-14","2017-12-08",1,5,22,1,1),(NULL,"non justo. Proin non massa non ante bibendum ullamcorper. Duis","2017-11-07","2017-12-21",6,2,89,2,2),(NULL,"Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet,","2017-11-22","2017-12-22",4,2,71,1,2),(NULL,"Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae","2017-11-10","2017-12-01",5,5,17,2,2),(NULL,"Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus,","2017-11-30","2017-12-23",7,4,22,2,1),(NULL,"metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh.","2017-11-19","2017-12-09",1,5,5,2,2),(NULL,"justo. Proin non massa non ante bibendum ullamcorper. Duis cursus,","2017-11-09","2017-12-27",4,5,32,1,1),(NULL,"quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam","2017-11-18","2017-12-29",6,2,99,1,2);
INSERT INTO `Permisos` (`idPermisos`,`descrip_permiso`,`fecha_inicio`,`fecha_final`,`num_dias`,`idTipo_Permiso`,`idEmpleado`,`idResposable`,`estadoPermiso`) VALUES (NULL,"feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare,","2017-11-21","2017-12-10",2,4,69,2,2),(NULL,"Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada","2017-11-16","2017-12-05",7,1,56,1,1),(NULL,"odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus.","2017-11-07","2017-12-12",3,1,53,1,1),(NULL,"ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu","2017-11-30","2017-12-20",4,2,10,2,2),(NULL,"sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet","2017-11-26","2017-12-15",2,2,24,2,1),(NULL,"ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget","2017-11-08","2017-12-04",4,5,100,1,2),(NULL,"Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo.","2017-11-27","2017-12-24",3,6,61,1,2),(NULL,"a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam","2017-11-03","2017-12-19",6,2,3,1,1),(NULL,"posuere, enim nisl elementum purus, accumsan interdum libero dui nec","2017-11-20","2017-12-28",4,2,63,1,2),(NULL,"augue porttitor interdum. Sed auctor odio a purus. Duis elementum,","2017-11-16","2017-12-14",2,6,1,2,2);

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
