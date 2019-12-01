drop database if exists  veterinario;
create database if not exists  veterinario;
use veterinario;
CREATE TABLE if not exists`mascotas` (
  `idMascota` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `especie` varchar(20) NOT NULL DEFAULT 'canina',
  `raza` varchar(20) DEFAULT NULL,
  `pedigree` tinyint(1) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `propietario` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idMascota`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=latin1;

INSERT INTO `mascotas` VALUES (null,'kira','canina','dalmata',1,'1970-01-01','h','111111111A'),(null,'terry','canina','pastor aleman',1,'1973-01-01','m','111111111A'),(null,'lorato','ave','loro',1,'1973-01-01','m','111111111B'),(null,'donna','canina','fox terrier',0,'1980-01-01','h','111111111e'),(null,'dante','canina','cairn terrier',0,'1980-01-01','m','111111111B'),(null,'boris','canina',' bichon maltes',0,'1998-01-01','m','111111111C'),(null,'laica','canina','boxer',0,null,'h',NULL),(null,'don','canina','dogo',0,'1998-09-08','m','222333444a'),(null,'fox','canina','basset hound',1,'2002-09-07','m','222333444a');

CREATE TABLE `propietarios` (
  `DNI` varchar(10) NOT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`DNI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `propietarios` VALUES ('111111111A','Pepe Rodriguez'),('111111111B','Luis Rodriguez'),('111111111C','Ana Rodriguez');
