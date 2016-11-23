-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.16-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para arquimedes
CREATE DATABASE IF NOT EXISTS `arquimedes` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `arquimedes`;

-- Volcando estructura para tabla arquimedes.cursos
CREATE TABLE IF NOT EXISTS `cursos` (
  `clave` varchar(30) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `carrera` varchar(50) DEFAULT NULL,
  `semestre` varchar(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla arquimedes.cursos: ~2 rows (aproximadamente)
DELETE FROM `cursos`;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` (`clave`, `nombre`, `carrera`, `semestre`, `status`) VALUES
	('DECO-101', 'PROGRAMACIÓN WEB', 'ING. EN SISTEMAS COMPUTACIONALES', 'SEPTIMO', 1),
	('MECD-201', 'LENGUAJES Y AUTÓMATAS', 'ING. EN SISTEMAS COMPUTACIONALES', 'OCTAVO', 0);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
