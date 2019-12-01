drop DATABASE if exists EMPLEDEPART;
CREATE DATABASE if not exists EMPLEDEPART;
USE EMPLEDEPART;
DROP TABLE IF EXISTS empleados CASCADE;
DROP TABLE IF EXISTS departamentos CASCADE ;
CREATE TABLE departamentos
(id_departamento int not null primary key,
nombre varchar(30) not null unique
);
CREATE TABLE empleados
(
id_empleado int not null primary key auto_increment,
nombre varchar(30) not null,
apellidos varchar(30) not null,
sueldo numeric(8,2),
fecha_nac date,
id_departamento int,
foreign key(id_departamento) references departamentos(id_departamento) on delete set null on update cascade );
alter table empleados add puesto varchar(30) default "nuevo";
alter table empleados modify sueldo int(10);
DELETE FROM departamentos;
INSERT INTO departamentos (id_departamento,nombre) VALUES (1,"Ventas"),(2,"Publicidad"),(3,"Vending"),(4,"Gestión de activos"),(5,"Finanzas"),(6,"Recursos humanos"),(7,"Gestión de la calidad"),(8,"Atención al cliente");
DELETE FROM empleados;
INSERT INTO empleados (nombre,apellidos,sueldo,fecha_nac,id_departamento,puesto) VALUES ("Vielka","Oneill",30457,"1969-12-31",1,"DESARROLLADOR"),("Angela","Parks",17392,"1969-12-31",2,"TECNICO"),("Jocelyn","Ewing",20926,"1969-12-31",8,"JEFE SECCION"),("Breanna","Sweet",24249,"1969-12-31",4,"ANALISTA"),("Maris","Wise",35053,"1969-12-31",1,"ANALISTA"),("Kiona","Callahan",18786,"1969-12-31",1,"TECNICO"),("Hope","Cleveland",24269,"1969-12-31",5,"ADMINISTRATIVO"),("Cassady","Carr",16933,"1969-12-31",6,"JEFE"),("Jolie","Flores",25994,"1969-12-31",1,"ANALISTA"),("Winifred","Avery",38372,"1969-12-31",6,"ANALISTA");
INSERT INTO empleados (nombre,apellidos,sueldo,fecha_nac,id_departamento,puesto) VALUES ("Clare","Vega",22357,"1969-12-31",3,"JEFE"),("Emma","Briggs",17386,"1969-12-31",1,"TECNICO"),("Mallory","Merritt",37871,"1969-12-31",6,"DESARROLLADOR"),("Quail","Ewing",35787,"1969-12-31",8,"JEFE"),("Cheryl","Leach",38388,"1969-12-31",5,"JEFE"),("Kevyn","Walsh",11599,"1969-12-31",3,"ANALISTA"),("Kay","Cooper",25908,"1969-12-31",5,"ADMINISTRATIVO"),("Blossom","Sweet",10412,"1969-12-31",5,"JEFE SECCION"),("Rebecca","Woodward",10264,"1969-12-31",8,"JEFE"),("Ariana","Copeland",10788,"1969-12-31",2,"ANALISTA");
INSERT INTO empleados (nombre,apellidos,sueldo,fecha_nac,id_departamento,puesto) VALUES ("Kyra","Frank",27958,"1969-12-31",1,"JEFE"),("Nomlanga","Jefferson",11045,"1969-12-31",6,"TECNICO"),("Cameran","Wise",10819,"1969-12-31",2,"DESARROLLADOR"),("Maisie","Mccray",32935,"1969-12-31",4,"ANALISTA"),("Ainsley","Adams",20351,"1969-12-31",3,"ANALISTA"),("Montana","Carver",29686,"1969-12-31",3,"DESARROLLADOR"),("Wendy","Francis",13768,"1969-12-31",5,"JEFE SECCION"),("Neve","Dyer",34948,"1969-12-31",4,"JEFE"),("Colleen","Tyler",35595,"1969-12-31",2,"ANALISTA"),("Lacey","Brooks",35715,"1969-12-31",8,"DESARROLLADOR");
INSERT INTO empleados (nombre,apellidos,sueldo,fecha_nac,id_departamento,puesto) VALUES ("Chiquita","Maxwell",18369,"1969-12-31",3,"DESARROLLADOR"),("Hayley","Gilmore",20234,"1969-12-31",4,"ADMINISTRATIVO"),("April","Adams",28595,"1969-12-31",7,"TECNICO"),("Maia","Williamson",39471,"1969-12-31",1,"JEFE SECCION"),("Mariam","Mayer",26470,"1969-12-31",5,"DESARROLLADOR"),("Carla","Willis",33839,"1969-12-31",6,"ANALISTA"),("Xena","Carlson",16408,"1969-12-31",2,"ANALISTA"),("Rachel","Pope",35542,"1969-12-31",4,"JEFE"),("Maile","Chavez",25614,"1969-12-31",4,"JEFE SECCION"),("Kitra","Wilkins",26550,"1969-12-31",4,"JEFE");
INSERT INTO empleados (nombre,apellidos,sueldo,fecha_nac,id_departamento,puesto) VALUES ("Leah","Silva",29110,"1969-12-31",1,"ANALISTA"),("McKenzie","Hensley",10241,"1969-12-31",6,"TECNICO"),("Samantha","Pennington",32059,"1969-12-31",5,"JEFE"),("Briar","Hewitt",12759,"1969-12-31",3,"ANALISTA"),("Ariel","Castro",13957,"1969-12-31",6,"TECNICO"),("Joan","Holmes",23202,"1969-12-31",1,"ANALISTA"),("Kelly","Greer",29504,"1969-12-31",8,"ADMINISTRATIVO"),("Erin","Tran",33917,"1969-12-31",5,"JEFE"),("Olivia","Vazquez",35307,"1969-12-31",4,"JEFE"),("Desirae","Donaldson",29432,"1969-12-31",8,"TECNICO");
INSERT INTO empleados (nombre,apellidos,sueldo,fecha_nac,id_departamento,puesto) VALUES ("September","Ferguson",35578,"1969-12-31",3,"ADMINISTRATIVO"),("Quynn","Coffey",37786,"1969-12-31",4,"JEFE"),("Naida","Potts",14746,"1969-12-31",5,"DESARROLLADOR"),("Eden","Wiley",28069,"1969-12-31",5,"JEFE"),("Justine","Nguyen",10081,"1969-12-31",1,"ANALISTA"),("Mercedes","Acevedo",39656,"1969-12-31",2,"ADMINISTRATIVO"),("Jaquelyn","Kerr",22670,"1969-12-31",2,"DESARROLLADOR"),("Megan","Torres",19672,"1969-12-31",4,"ANALISTA"),("Nelle","Emerson",32971,"1969-12-31",5,"DESARROLLADOR"),("Dacey","Holden",28956,"1969-12-31",5,"DESARROLLADOR");
INSERT INTO empleados (nombre,apellidos,sueldo,fecha_nac,id_departamento,puesto) VALUES ("Janna","Buckley",18032,"1969-12-31",1,"JEFE"),("Belle","Montoya",28961,"1969-12-31",8,"TECNICO"),("Madonna","Finley",13716,"1969-12-31",6,"ANALISTA"),("Hedda","Dawson",29113,"1969-12-31",5,"ANALISTA"),("Juliet","Dillon",20905,"1969-12-31",2,"ADMINISTRATIVO"),("Xantha","Shepherd",34539,"1969-12-31",4,"JEFE"),("Aretha","Ford",14561,"1969-12-31",7,"ANALISTA"),("Quyn","Ward",26413,"1969-12-31",2,"ANALISTA"),("Quin","Cervantes",30882,"1969-12-31",6,"DESARROLLADOR"),("Cassady","Klein",25907,"1969-12-31",1,"TECNICO");
INSERT INTO empleados (nombre,apellidos,sueldo,fecha_nac,id_departamento,puesto) VALUES ("Colette","Hooper",18278,"1969-12-31",1,"ANALISTA"),("Heidi","Finch",18319,"1969-12-31",5,"ANALISTA"),("TaShya","Todd",38623,"1969-12-31",1,"ADMINISTRATIVO"),("Sydney","Pace",10599,"1969-12-31",6,"JEFE SECCION"),("Aspen","Roy",10363,"1969-12-31",8,"ADMINISTRATIVO"),("Constance","Cohen",37517,"1969-12-31",5,"ADMINISTRATIVO"),("Cynthia","Maynard",17510,"1969-12-31",2,"JEFE"),("Dara","Reeves",28636,"1969-12-31",2,"TECNICO"),("Emma","Miranda",20080,"1969-12-31",2,"ADMINISTRATIVO"),("Piper","Mccarty",24203,"1969-12-31",4,"JEFE SECCION");
INSERT INTO empleados (nombre,apellidos,sueldo,fecha_nac,id_departamento,puesto) VALUES ("Marcia","Torres",16200,"1969-12-31",2,"JEFE SECCION"),("Nichole","Chandler",17104,"1969-12-31",2,"JEFE SECCION"),("Ori","Mcdaniel",11141,"1969-12-31",5,"JEFE SECCION"),("Amber","Reyes",35996,"1969-12-31",4,"JEFE"),("Eugenia","Osborne",12474,"1969-12-31",6,"JEFE SECCION"),("Alice","Montgomery",15222,"1969-12-31",4,"JEFE SECCION"),("Lacota","Kirkland",25694,"1969-12-31",6,"ADMINISTRATIVO"),("Cassady","Weber",14131,"1969-12-31",7,"ANALISTA"),("Odette","Giles",18312,"1969-12-31",2,"TECNICO"),("Audrey","Barrera",14977,"1969-12-31",8,"TECNICO");
INSERT INTO empleados (nombre,apellidos,sueldo,fecha_nac,id_departamento,puesto) VALUES ("Vanna","Guthrie",24518,"1969-12-31",8,"JEFE SECCION"),("Clementine","Larsen",28368,"1969-12-31",1,"ADMINISTRATIVO"),("Kameko","Lott",24195,"1969-12-31",4,"TECNICO"),("Alyssa","Rose",23169,"1969-12-31",3,"DESARROLLADOR"),("Heather","Riddle",10860,"1969-12-31",4,"JEFE"),("Madeson","Miller",20071,"1969-12-31",3,"JEFE SECCION"),("Ora","Hunter",24934,"1969-12-31",3,"JEFE"),("Leigh","Rosales",38658,"1969-12-31",1,"JEFE SECCION"),("Stephanie","England",15253,"1969-12-31",1,"ADMINISTRATIVO"),("Maisie","Haney",24218,"1969-12-31",7,"ADMINISTRATIVO");
