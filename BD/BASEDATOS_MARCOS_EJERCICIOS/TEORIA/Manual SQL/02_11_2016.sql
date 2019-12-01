CREATE TABLE PAIS (
CODIGO_PAIS NUMBER(4),
NOMBRE VARCHAR2(15),
CODIGO_PAIS_APORTA NUMBER(4),
PORCENTAJE NUMBER(3,2) DEFAULT 0.07,
CONSTRAINT PK_PAIS PRIMARY KEY (CODIGO_PAIS),
CONSTRAINT FK_PAIS_PAIS FOREIGN KEY (CODIGO_PAIS_APORTA)
    REFERENCES PAIS (CODIGO_PAIS));
    
    
ALTER TABLE PAIS DROP COLUMN CODIGO_PAIS_APORTA;


CREATE TABLE SEDE (
CODIGO_SEDE NUMBER(4),
CODIGO_PAIS NUMBER(4),
DIRECTOR VARCHAR2(15),
DIRECCION VARCHAR2(15),
TELEFONO VARCHAR2(15),
DESCRIPCION VARCHAR2(15));

ALTER TABLE SEDE MODIFY DIRECTOR VARCHAR2(20);
ALTER TABLE SEDE MODIFY DESCRIPCION VARCHAR2(15) DEFAULT 'AAAAAAAAAA';
ALTER TABLE SEDE ADD A�O NUMBER(4);
ALTER TABLE SEDE ADD CONSTRAINT PK_SEDE PRIMARY KEY(CODIGO_PAIS);
ALTER TABLE SEDE ADD CONSTRAINT FK_SEDE_PAIS FOREIGN KEY (CODIGO_PAIS) REFERENCES PAIS;
ALTER TABLE SEDE ADD CONSTRAINT UNIQUE_DIRECTOR UNIQUE (DIRECTOR);

ALTER TABLE SEDE DROP CONSTRAINT PK_SEDE;
ALTER TABLE SEDE ADD CONSTRAINT PK_SEDE PRIMARY KEY(CODIGO_SEDE);


ALTER TABLE SEDE ADD CONSTRAINT CHECK_TELEFONO CHECK (TELEFONO IS NOT NULL);
ALTER TABLE SEDE MODIFY DIRECCION VARCHAR2(15) CONSTRAINT NO_NULO_DIRECCION NOT NULL;


CREATE TABLE APORTA (
CODIGO_PAIS NUMBER(4),
CODIGO_PAIS_APORTA NUMBER(4) ,
PORCENTAJE_APORTA NUMBER(3,2) DEFAULT 0.07,
PRIMARY KEY (CODIGO_PAIS, CODIGO_PAIS_APORTA));

ALTER TABLE APORTA ADD CONSTRAINT FK_APORTA_PAIS FOREIGN KEY (CODIGO_PAIS) REFERENCES PAIS;
ALTER TABLE APORTA ADD CONSTRAINT FK_APORTA_APORTA_PAIS FOREIGN KEY (CODIGO_PAIS_APORTA) REFERENCES PAIS;


CREATE TABLE PROYECTO(
CODIGO_PROYECTO NUMBER(4) PRIMARY KEY,
FECHA_INICIO DATE DEFAULT SYSDATE,
PRESUPUESTO NUMBER(9) CHECK (PRESUPUESTO >0),
CODIGO_SEDE NUMBER(4) REFERENCES SEDE,
FECHA_FIN DATE,
RESPONSABLE VARCHAR2(15) NOT NULL,
TITULO VARCHAR2(15));

CREATE TABLE POBLACION (
CODIGO_POBLACION NUMBER(4) PRIMARY KEY,
NOMBRE VARCHAR2(15),
NOMBRE_PAIS VARCHAR2(15),
HABITANTES NUMBER(8));

CREATE TABLE PROYECTO_POBLACION(
CODIGO_PROYECTO NUMBER(4) REFERENCES PROYECTO,
CODIGO_POBLACION NUMBER(4) REFERENCES POBLACION,
ACTUACION VARCHAR2(15),
CANTIDAD NUMBER(8),
PRIMARY KEY (CODIGO_PROYECTO, CODIGO_POBLACION));









  
