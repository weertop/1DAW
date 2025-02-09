﻿/* TABLAS  DE EMPLEADOS2 PARA MYSQL:*/


drop database if exists empleados2;
create database if not exists empleados2;
use empleados2;
CREATE TABLE PROVINCIAS (
COD_PROV VARCHAR(2),
NOMBRE_PROV VARCHAR(20),
COD_POSTAL INTEGER(2)
);
INSERT INTO provincias (COD_PROV,NOMBRE_PROV,COD_POSTAL) VALUES  ('AB','ALBACETE',2);
 INSERT INTO provincias VALUES('AL','ALMERIA',4);
 INSERT INTO provincias VALUES('AV','AVILA',5);
 INSERT INTO provincias VALUES('B','BARCELONA',8);
 INSERT INTO provincias VALUES('BI','VIZCAYA',48);
 INSERT INTO provincias VALUES('BU','BURGOS',9);
 INSERT INTO provincias VALUES('C','LACORUÑA',15);
INSERT INTO provincias  VALUES('CA','CADIZ',11);
 INSERT INTO provincias VALUES('CO','CORDOBA',14);
 INSERT INTO provincias VALUES('CR','CIUDADREAL',13);
 INSERT INTO provincias VALUES('CS','CASTELLON',12);
INSERT INTO provincias  VALUES('CU','CUENCA',16);
 INSERT INTO provincias VALUES('GE','GERONA',17);
INSERT INTO provincias  VALUES('GR','GRANADA',18);
INSERT INTO provincias  VALUES('GU','GUADALAJARA',19);
INSERT INTO provincias  VALUES('H','HUELVA',21);
INSERT INTO provincias  VALUES('J','JAEN',23);
INSERT INTO provincias  VALUES('L','LERIDA',25);
INSERT INTO provincias  VALUES('LE','LEON',24);
INSERT INTO provincias  VALUES('LO','LOGROÑO',26);
INSERT INTO provincias  VALUES('M','MADRID',28);
INSERT INTO provincias  VALUES('MA','MALAGA',29);
INSERT INTO provincias  VALUES('MU','MURCIA',30);
INSERT INTO provincias  VALUES('NA','NAVARRA',31);
INSERT INTO provincias  VALUES('OR','ORENSE',32);
INSERT INTO provincias  VALUES('P','PALENCIA',34);
INSERT INTO provincias  VALUES('PM','BALEARES',7);
INSERT INTO provincias  VALUES('PO','PONTEVEDRA',36);
INSERT INTO provincias  VALUES('SA','SALAMANCA',37);
INSERT INTO provincias  VALUES('SE','SEVILLA',41);
INSERT INTO provincias  VALUES('SG','SEGOVIA',40);
INSERT INTO provincias  VALUES('SO','SORIA',42);
INSERT INTO provincias  VALUES('T','TARRAGONA',43);
INSERT INTO provincias  VALUES('TE','TERUEL',44);
INSERT INTO provincias  VALUES('TF','SANTACRUZ',38);
INSERT INTO provincias  VALUES('TO','TOLEDO',45);
INSERT INTO provincias  VALUES('VA','VALLADOLID',47);
INSERT INTO provincias  VALUES('VI','ALAVA',1);
INSERT INTO provincias  VALUES('Z','ZARAGOZA',50);
INSERT INTO provincias  VALUES('ZA','ZAMORA',49);
COMMIT;


CREATE TABLE Centros(
	NUMCE INTEGER(3),
	NOMCE VARCHAR(20),
	CALLE VARCHAR(30),
	CIUDAD VARCHAR(15),
	COD_PROV VARCHAR(2)
);

INSERT INTO CENTROS VALUES (1,'CENTRAL','CARRETERA DE LA CORUÑA KM 25', 'MAJADAHONDA','M');
INSERT INTO CENTROS VALUES(2,'SEDE_NORTE','CALLE DE LA ARMADA 5', 'ZARAGOZA','Z');
INSERT INTO CENTROS VALUES (3,'SEDE_SUR','PLAZA COLON S/N', 'SEVILLA','SE');
INSERT INTO CENTROS VALUES (4,'SEDE_CENTRO','CALLE ALCALA 120', 'MADRID','M');
COMMIT;


CREATE TABLE depart (
  DEPT_NO INTEGER(2),
  DNOMBRE VARCHAR(14) ,
  NUMCE INTEGER(3),
  DIREC INTEGER(4),
  TDIR VARCHAR(1),
  PRESU FLOAT(10,5),
  DEPDE INTEGER(2)
);



INSERT INTO depart VALUES  (10,'CONTABILIDAD',2,7782,'F',-1233.8,30);
INSERT INTO depart VALUES (20,'INVESTIGACION',1,7566,'P',12346.897,NULL);
INSERT INTO depart VALUES  (30,'VENTAS',2,7698,'P',30000,40);
INSERT INTO depart VALUES  (40,'PRODUCCION',3,NULL,NULL,NULL,NULL);


CREATE  TABLE EMPLE(
	EMP_NO INTEGER(4),
	NOMBRE 	  VARCHAR(10),
	APELLIDO  VARCHAR(10),
	OFICIO    VARCHAR(20),
	FECHA_ALT DATE,
	SALARIO   INTEGER(7),
	COMISION  INTEGER(7),
	DEPT_NO   INTEGER(2),
	EXTEL VARCHAR(4),
	FECNA DATE,
	NUMHI INTEGER(2)
);
INSERT INTO emple VALUES (7369,'PEDRO','SANCHEZ','PROGRAMADOR','1990/12/17',1040,NULL,20,247,'1985/12/1',0);
INSERT INTO emple VALUES  (7499,'LUISA','ARROYO','VENDEDOR','1999/2/20',1500,390,30,377,'1970/11/12',3);
INSERT INTO emple VALUES  (7521,'LARAZO','SALA','VENDEDOR','2000/5/22',1625,650,30,375,'1971/09/11',2);
INSERT INTO emple VALUES  (7566,'JESUS','JIMENEZ','DIRECTOR','1991/7/3',2900,NULL,20,256,'1973/10/17',1);
INSERT INTO emple VALUES  (7654,'FRANCISCO','MARTIN','VENDEDOR','1998/11/12',1600,1020,30,388,'1980/10/10',0);
INSERT INTO emple VALUES  (7698,'MANUEL','GARCIA','DIRECTOR','2005/10/7',3005,NULL,30,389,'1969/11/8',0);
INSERT INTO emple VALUES  (7782,'OLIVIA','CEREZO','ANALISTA','2007/12/8',2885,NULL,10,120,'1975/12/10',1);
INSERT INTO emple VALUES  (7788,'PILAR','GIL','ANALISTA','2008/1/1',3000,NULL,20,223,'1978/10/12',0);
INSERT INTO emple VALUES  (7839,'GERARDO','REY','PRESIDENTE','1990/10/12',4100,NULL,10,100,'1945/10/12',7);
 

CREATE TABLE agenda (
  NUM_EMP INTEGER(5) ,
  DOMICILIO VARCHAR(40) ,
  TELEFONO VARCHAR(15) ,
  COD_PROV VARCHAR(2) 
) ;

INSERT INTO agenda VALUES  (7369,'suiza 1','913453432','M');
INSERT INTO agenda VALUES  (7499,'Maestro alonso 8',null,'Z');
INSERT INTO agenda VALUES  (7521,'Colon 56','9345432','SE');
INSERT INTO agenda VALUES  (7566,'Virgen de Lourdes 40','914034523','M');
INSERT INTO agenda VALUES  (7654,'Gran Via 2','9432211','Z');
INSERT INTO agenda VALUES  (7698,'Lodo 45',null,'SA');
INSERT INTO agenda VALUES  (7782,'San Genaro 7','91786654','M');
INSERT INTO agenda VALUES  (7788,'Virgen Macarena 45',null,'SE');

