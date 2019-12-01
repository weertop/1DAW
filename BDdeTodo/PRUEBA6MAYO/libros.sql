CREATE TABLE  AUTORES (idAutor integer PRIMARY KEY, nombre VARCHAR(50) not null unique);
CREATE TABLE  LIBROS (IDLibro integer PRIMARY key, 
     titulo VARCHAR2(70) not null unique, numPaginas integer not null,
     fechaPub date, precio number(6,2) default 10,
     idAutor integer not null);	 
ALTER TABLE LIBROS ADD FOREIGN KEY (idAutor) REFERENCES AUTORES(idAutor);
INSERT INTO AUTORES VALUES (3,'Miguel de Cervantes');
INSERT INTO AUTORES VALUES (2,'Agustin García Calvo');
INSERT INTO AUTORES VALUES (1,'José Luis Sampedro');
INSERT INTO AUTORES VALUES (4,'CAMUS');
INSERT INTO AUTORES VALUES (5,'Julio Llamazares');
INSERT INTO AUTORES VALUES (6,'Quevedo');
INSERT INTO LIBROS  (IDLIBRO,titulo,NUMPAGINAS,FECHAPUB,IDAUTOR) VALUES (1,'Don Quijote de la Mancha',1300,'01/01/1605',3);
INSERT INTO LIBROS VALUES (2,'Actualidades',400,'01/01/1980',10.8,2);
INSERT INTO LIBROS VALUES (3,'Escribir es vivir',290,'01/01/2006',20.5,1);
INSERT INTO LIBROS (IDLIBRO,titulo,NUMPAGINAS,FECHAPUB,IDAUTOR) VALUES (4,'EL Hombre Revelde',350,'01/01/1982',4);
INSERT INTO LIBROS VALUES (5,'EL Cielo de Madrid',250,'01/01/2005',12.9,5);
INSERT INTO LIBROS VALUES (6,'La vida del Buscón',200,'01/01/1640',10.9,6);
INSERT INTO LIBROS VALUES (7,'Novelas Ejemplares',250,'01/01/1616',20,3);

