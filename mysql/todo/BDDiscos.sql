-- Alexis Calderon --
DROP DATABASE IF EXISTS BDDiscos;

CREATE DATABASE IF NOT EXISTS BDDiscos;

USE BDDiscos;

CREATE TABLE discograficas (id_discografica int NOT NULL, nombre varchar(30) NOT NULL, constraint pk_id_discografica primary key (id_discografica)) engine = 'innodb';

CREATE TABLE grupos (id_grupo int NOT NULL, nombre varchar(30) NOT NULL, primary key (id_grupo))engine = 'innodb';

CREATE TABLE generos (id_genero int NOT NULL, nombre varchar(30) NOT NULL, primary key (id_genero)) engine = 'innodb';

CREATE TABLE discos (id_disco int NOT NULL, titulo varchar(30) NOT NULL, anyo int NOT NULL, id_genero int NOT NULL, id_grupo int NOT NULL, id_discografica int NOT NULL, primary key(id_disco), foreign key(id_genero) references generos (id_genero) ON DELETE cascade ON UPDATE cascade, foreign key(id_grupo) references grupos (id_grupo) ON DELETE cascade ON UPDATE cascade, foreign key (id_discografica) references discograficas (id_discografica) ON DELETE cascade ON UPDATE cascade) engine = 'innodb';

CREATE TABLE canciones (id_cancion int NOT NULL, id_disco int NOT NULL, titulo varchar(30) NOT NULL, duracion varchar(5) NOT NULL, posicion int NOT NULL, primary key (id_cancion), foreign key (id_disco) references discos (id_disco) ON DELETE cascade ON UPDATE cascade) engine = 'innodb';

CREATE TABLE ventas (fecha date NOT NULL, id_disco int NOT NULL, unidades int NOT NULL, primary key (fecha, id_disco)) engine = 'innodb';

INSERT INTO discograficas VALUES (1,'MOTOWN');

INSERT INTO discograficas VALUES (2,'TCRECORDS');

INSERT INTO grupos VALUES (1,'ROLLING STONES');

INSERT INTO grupos VALUES (2,'THE BEATLES');

INSERT INTO generos VALUES (1, 'ROCK&ROLL');

INSERT INTO generos VALUES (2, 'POP-ROCK');

INSERT INTO discos VALUES (1, 'ROLL LIKE ROLLING STONE', 1983, 1,1,1);

INSERT INTO discos VALUES (2, 'YELLOW SUBMARINE', 1985,2,2,2);

INSERT INTO canciones VALUES (1, 1, 'HIGHWAY TO THE HELL', '02:30', 3);

INSERT INTO canciones VALUES (2, 2, 'GET BACK', '02:45', 5);
