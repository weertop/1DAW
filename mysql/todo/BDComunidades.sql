-- Alexis Calderon--
DROP DATABASE IF EXISTS BDComunidades;

CREATE DATABASE IF NOT EXISTS BDComunidades;

USE BDComunidades;

CREATE TABLE comunidades (cod_comunidad int NOT NULL, nombre varchar (30) NOT NULL UNIQUE, cod_capital int NOT NULL, primary key (cod_comunidad));

CREATE TABLE provincias (cod_provincia int NOT NULL, nombre varchar(30) NOT NULL UNIQUE, cod_capital int NOT NULL, superficie int NOT NULL, cod_comunidad int NOT NULL, foreign key (cod_comunidad) references comunidades (cod_comunidad) on delete cascade on update cascade, primary key(cod_provincia));

CREATE TABLE localidades (cod_localidad int NOT NULL, nombre varchar(30) NOT NULL UNIQUE, poblacion int NOT NULL, cod_provincia int NOT NULL, foreign key (cod_provincia) references provincias (cod_provincia) on delete cascade on update cascade, primary key (cod_localidad));

INSERT INTO comunidades VALUES (45,'MADRID',1);

INSERT INTO comunidades VALUES (54,'BARCELONA',2);

INSERT INTO provincias VALUES (34,'MADRID',1,234,45);

INSERT INTO provincias VALUES (43,'CATALUÑA',2,312,54);

INSERT INTO localidades VALUES (1,'TRES CANTOS',5000,34);

INSERT INTO localidades VALUES (2,'BIDIA DEL VALLES',3000,43);

ALTER TABLE comunidades
ADD foreign key (cod_capital) references localidades(cod_localidad);

ALTER TABLE provincias
ADD foreign key (cod_capital) references localidades (cod_localidad);

