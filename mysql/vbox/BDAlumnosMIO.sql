DROP DATABASE IF EXISTS BDAlumnos;

CREATE DATABASE IF NOT EXITS BDAlumnos;

USE BDAlumnos;

CREATE TABLE Alumnos (idAlumno int NOT NULL, NOMBRE varchar(20) not null, APELLIDOS varchar(20) not null, constraint pk_alumnos primary key (idAlumno) auto_increment) engine= 'innodb';

CREATE TABLE Ciclos (id_ciclo int NOT NULL, abreviatura varchar(5) unique, nombre varchar(100), constraint idCiclo primary key (id_ciclo) auto_increment)engine = 'innodb';

CREATE TABLE Modulos (id_modulo int NOT NULL, id_ciclo int NOT NULL, curso int NOT NULL, nombre varchar(100) NOT NULL, constraint pk_idModCi primary key (id_modulo,id_ciclo), constraint fk_ciclo_modulo foreign key(id_ciclo) references Ciclos id_ciclo on delete cascade on update cascade) engine = 'innodb';

CREATE TABLE alumnoModulo (idAlumno int NOT NULL, idModulo int NOT NULL, idCiclo int NOT NULL, notaFinal decimal(2,1), constraint pk_idAlmMod primary key (idAlumno, idModulo), constraint fk_almo_alumno foreign key(idAlumno) references Alumnos idAlumno on delete cascade on update cascade, constraint fk_almo_ciclo foreign key(idCiclo) references Ciclos id_ciclo on delete cascade on update cascade) engine = 'innodb';

CREATE TABLE profesor (id_profesor int NOT NULL, nombre varchar(30), apellidos varchar(50), constraint pk_idprofesor primary key (id_profesor) auto_increment) engine = 'innodb';

CREATE TABLE profesoresModulos (id_profesor int NOT NULL, id_modulo int NOT NULL, id_ciclo int NOT NULL, constraint pk_profemodci primary key(id_profesor,id_modulo,id_ciclo)) engine = 'innodb';

INSERT INTO Alumnos VALUES (1,'Pepe','Perez');

INSERT INTO Alumnos VALUES (2, 'Raul', 'Romero');

INSERT INTO Ciclos VALUES (1, 'RFP', 'Real Formacion Profesional');

INSERT INTO Ciclos VALUES (2, 'EDAT', 'Estructura De Datos');

INSERT INTO Modulos VALUES (1, 1, 'primero', 'ciclo inicial informatica');

INSERT INTO Modulos VALUES (2, 2, 'segundo', 'ciclo final informatica');

INSERT INTO alumnoModulo VALUES (1, 1, 1, 9);

INSERT INTO alumnoModulo VALUES (2, 2, 2, 9);

INSERT INTO profesor VALUES (1, 'Juan', 'Jeroma');

INSERT INTO profesor VALUES (2, 'Oriana', 'Ortega');

INSERT INTO profesoresModulos VALUES (1, 1, 1);

INSERT INTO profesoresModulos VALUES (2, 2, 2);