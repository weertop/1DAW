DROP DATABASE IF EXISTS BDMULTAS;
CREATE DATABASE IF NOT EXISTS BDMULTAS;
USE BDMULTAS;

CREATE TABLE PERSONAS
(
  DNI VARCHAR(10) PRIMARY KEY,
  NOMBRE VARCHAR(30) NOT NULL
 )ENGINE='INNODB';
CREATE TABLE MATRICULAS
(
  MATRICULA	VARCHAR(10) PRIMARY KEY,
  DNI VARCHAR(30) NOT NULL,
  FOREIGN KEY (DNI)  REFERENCES PERSONAS(DNI) 
)ENGINE='INNODB';
CREATE TABLE  MULTAS
(
  REF VARCHAR(20) PRIMARY KEY,
  MATRICULA VARCHAR(10) NOT NULL,
  IMPORTE DECIMAL(6,2) NOT NULL,
  LUGAR VARCHAR(30) NOT NULL,
  FOREIGN KEY (MATRICULA)REFERENCES MATRICULAS(MATRICULA)
)ENGINE='INNODB';
INSERT INTO PERSONAS VALUES('547965367Y','ANDRES, CARLOS');
INSERT INTO PERSONAS VALUES('476549892Q','CALDERON, ALVARO');
INSERT INTO PERSONAS VALUES('016598892K','CLAROS, GUILLERMO');
INSERT INTO PERSONAS VALUES('222549765B','LEZCANO, SANTIAGO');
INSERT INTO PERSONAS VALUES('001987654D','GALARZA, RICARDO');
INSERT INTO PERSONAS VALUES('098709287M','GUZMAN, VICTOR');
INSERT INTO PERSONAS VALUES('771819287Z','OUMER, ADEL');
INSERT INTO PERSONAS VALUES('578951136U','CALDERON, ABEL');
INSERT INTO PERSONAS VALUES('452133998I','BLAZQUEZ, ANA');
INSERT INTO PERSONAS VALUES('679854221Y','VAZQUEZ, CARLOS');
INSERT INTO PERSONAS VALUES('412238796K','GARCIA, FEDERICO');
INSERT INTO PERSONAS VALUES('6512377853','FERREIRO, IVAN');
INSERT INTO PERSONAS VALUES('457633219G','ROCA, IVAN');
INSERT INTO PERSONAS VALUES('479632001A','FIGUEROA, CELIA');
INSERT INTO PERSONAS VALUES('547933215D','CANO, RUBEN');
INSERT INTO PERSONAS VALUES('147956320S','HERRERO, JOSE');
INSERT INTO PERSONAS VALUES('514479632V','DE LA ROSA, JULIAN');
INSERT INTO PERSONAS VALUES('120368794W','GARCIA, ROSA');
INSERT INTO PERSONAS VALUES('452103687F','SAMPOL, ENRIQUE');
INSERT INTO PERSONAS VALUES('201365789N','RODRIGUEZ, ESTEBAN');
INSERT INTO PERSONAS VALUES('023547896Z','GARCIA, VALERIA');
INSERT INTO PERSONAS VALUES('003652145R','VILLANUEVA, RUTH');
INSERT INTO PERSONAS VALUES('230012556D','VAZQUEZ, IRENE');
INSERT INTO PERSONAS VALUES('336699854P','LOPEZ, GUILLERMO');
INSERT INTO PERSONAS VALUES('210365796J','LUENGO, SARA');
INSERT INTO PERSONAS VALUES('239984562Y','FERNANDEZ, JUAN');
INSERT INTO PERSONAS VALUES('379865214V','ROJAS, MANUEL');
INSERT INTO PERSONAS VALUES('210365877X','VALIENTE, INES');
INSERT INTO PERSONAS VALUES('356987514A','DORAE, MIGUEL');
INSERT INTO PERSONAS VALUES('120365879U','DORIS, MICHAEL');
INSERT INTO PERSONAS VALUES('665320124U','CINATTI, ADRIAN');
INSERT INTO PERSONAS VALUES('332565478Q','GARCIA, ELENA');
INSERT INTO PERSONAS VALUES('451256522T','COMINO, ELOISA');
INSERT INTO PERSONAS VALUES('120365778R','SALAS, VICTORIA');
INSERT INTO PERSONAS VALUES('236589745P','LOPEZ, XOEL');
INSERT INTO PERSONAS VALUES('230654789G','JIMENEZ, TERESA');
INSERT INTO PERSONAS VALUES('203254778N','HOYOS, MARIA');
INSERT INTO PERSONAS VALUES('203654789M','RETUERTO, ISABEL');
INSERT INTO PERSONAS VALUES('230365478Z','CONTRERAS, ALONSO');
INSERT INTO PERSONAS VALUES('203654789T','GOMEZ, RICARDO');
INSERT INTO PERSONAS VALUES('302156879L','SANCHEZ, CLAUDIA');
INSERT INTO PERSONAS VALUES('210365478H','DELGADO, LORENA');
INSERT INTO PERSONAS VALUES('120365478S','SOLANO, MARTA');
INSERT INTO PERSONAS VALUES('120326547E','GOMEZ, ALBERTO');
INSERT INTO PERSONAS VALUES('336512478P','MOTOS, JUAN');
INSERT INTO PERSONAS VALUES('998654223F','ARNAZ, JOSE ANTONIO');
INSERT INTO PERSONAS VALUES('336659874O','ARRANZ, PABLO');
INSERT INTO MATRICULAS VALUES('M-8081-MZ','547965367Y');
INSERT INTO MATRICULAS VALUES('9478-BCD','222549765B');
INSERT INTO MATRICULAS VALUES('9376-BMZ','098709287M');
INSERT INTO MATRICULAS VALUES('2244-CBX','547965367Y');
INSERT INTO MATRICULAS VALUES('M-7535-IF','001987654D');
INSERT INTO MATRICULAS VALUES('5439-DDK','336659874O');
INSERT INTO MATRICULAS VALUES('3256-BHK','120326547E');
INSERT INTO MATRICULAS VALUES('2256-DRT','210365478H');
INSERT INTO MATRICULAS VALUES('3368-CCC','302156879L');
INSERT INTO MATRICULAS VALUES('5598-DSF','203654789T');
INSERT INTO MATRICULAS VALUES('9987-DDD','230365478Z');
INSERT INTO MATRICULAS VALUES('7896-BCV','203654789M');
INSERT INTO MATRICULAS VALUES('7892-BJY','203254778N');
INSERT INTO MATRICULAS VALUES('7319-CYK','230654789G');
INSERT INTO MATRICULAS VALUES('3369-FBB','236589745P');
INSERT INTO MATRICULAS VALUES('6981-BMN','120365778R');
INSERT INTO MATRICULAS VALUES('6578-BJS','451256522T');
INSERT INTO MATRICULAS VALUES('7810-BFK','332565478Q');
INSERT INTO MATRICULAS VALUES('5591-CDF','665320124U');
INSERT INTO MATRICULAS VALUES('1206-DBN','120365879U');
INSERT INTO MATRICULAS VALUES('5566-DLY','356987514A');
INSERT INTO MATRICULAS VALUES('7789-CHK','210365877X');
INSERT INTO MATRICULAS VALUES('6631-DJR','379865214V');
INSERT INTO MATRICULAS VALUES('1098-BWZ','239984562Y');
INSERT INTO MATRICULAS VALUES('3549-BMT','210365796J');
INSERT INTO MATRICULAS VALUES('5541-BMP','336699854P');
INSERT INTO MATRICULAS VALUES('4587-DVQ','230012556D');
INSERT INTO MATRICULAS VALUES('3649-DDD','003652145R');
INSERT INTO MATRICULAS VALUES('3466-CML','547965367Y');
INSERT INTO MATRICULAS VALUES('9991-BDN','476549892Q');
INSERT INTO MATRICULAS VALUES('4593-CTX','016598892K');
INSERT INTO MATRICULAS VALUES('3378-CTM','222549765B');
INSERT INTO MATRICULAS VALUES('4478-CNY','001987654D');
INSERT INTO MATRICULAS VALUES('7751-CVB','098709287M');
INSERT INTO MATRICULAS VALUES('5537-DHN','771819287Z');
INSERT INTO MATRICULAS VALUES('6972-BRT','578951136U');
INSERT INTO MATRICULAS VALUES('6973-BRT','578951136U');
INSERT INTO MATRICULAS VALUES('6974-BRT','578951136U');
INSERT INTO MATRICULAS VALUES('6975-BRT','578951136U');
INSERT INTO MATRICULAS VALUES('6976-BRT','578951136U');
INSERT INTO MATRICULAS VALUES('6977-BRT','578951136U');
INSERT INTO MATRICULAS VALUES('M-5673-HH','356987514A');
INSERT INTO MATRICULAS VALUES('M-0095-OT','203254778N');
INSERT INTO MATRICULAS VALUES('A-5782-BK','451256522T');
INSERT INTO MULTAS VALUES('5721369855','M-8081-MZ',120,'LEGANITOS 20');
INSERT INTO MULTAS VALUES('8652126792','9376-BMZ',50,'ALCALA 200');
INSERT INTO MULTAS VALUES('4688971235','2244-CBX',70,'ATOCHA 50');
INSERT INTO MULTAS VALUES('7789653211','M-7535-IF',2,'PEZ 1');
INSERT INTO MULTAS VALUES('9851236547','5439-DDK',80,'ALCALA 10');
INSERT INTO MULTAS VALUES('5233651247','3256-BHK',45,'JORGE JUAN 5');
INSERT INTO MULTAS VALUES('1123577961','2256-DRT',30,'JUAN BRAVO 70');
INSERT INTO MULTAS VALUES('0012365478','3368-CCC',1500,'CONDE DE PEALVER 48');
INSERT INTO MULTAS VALUES('5789653214','5598-DSF',90,'PADILLA 5');
INSERT INTO MULTAS VALUES('7789653217','9987-DDD',67,'DOCTOR CASTELO 12');
INSERT INTO MULTAS VALUES('2245786639','7896-BCV',200,'CASTELLANA 120');
INSERT INTO MULTAS VALUES('4457896320','7892-BJY',150,'CASTELLANA 112');
INSERT INTO MULTAS VALUES('3678956410','7319-CYK',150,'CASTELLANA 45');
INSERT INTO MULTAS VALUES('3695478541','3369-FBB',58,'ALCALA 3');
INSERT INTO MULTAS VALUES('3356854698','6981-BMN',96,'JARDINES 3');
INSERT INTO MULTAS VALUES('3320124578','6578-BJS',30,'LUNA 20');
INSERT INTO MULTAS VALUES('7854698651','7810-BFK',26,'MADERA 80');
INSERT INTO MULTAS VALUES('6521459653','5591-CDF',70,'SAN ROMUALDO 8');
INSERT INTO MULTAS VALUES('7546321038','1206-DBN',380,'MOTILLA DEL PALANCAR 41');
INSERT INTO MULTAS VALUES('5463201257','5566-DLY',159,'PEZ 7');
INSERT INTO MULTAS VALUES('3256789614','7789-CHK',350,'JOHN LENNON 6');
INSERT INTO MULTAS VALUES('4456987530','6631-DJR',69,'PRINCIPE DE VERGARA 70');
INSERT INTO MULTAS VALUES('6413975486','1098-BWZ',70,'EMIGRANTES 1');
INSERT INTO MULTAS VALUES('3320014578','3549-BMT',100,'PASEO DE LA HABANA 30');
INSERT INTO MULTAS VALUES('7319847395','5541-BMP',210,'IBIZA 23');
INSERT INTO MULTAS VALUES('3719845962','4587-DVQ',468,'GREGORIO MARAON 27');
INSERT INTO MULTAS VALUES('1975658453','3649-DDD',369,'GOYA 53');
INSERT INTO MULTAS VALUES('5452536958','3466-CML',100,'VELAZQUEZ 134');
INSERT INTO MULTAS VALUES('6547965312','9991-BDN',70,'VELAZQUEZ 138');
INSERT INTO MULTAS VALUES('2487965322','4593-CTX',42,'LIVERPOOL 40');
INSERT INTO MULTAS VALUES('3254789619','3378-CTM',40,'AC/DC 4');
INSERT INTO MULTAS VALUES('3320124555','6578-BJS',30,'LUNA 20');
INSERT INTO MULTAS VALUES('4455669982','3256-BHK',1507,'ALEGRIA 45');
INSERT INTO MULTAS VALUES('1365789655','6981-BMN',80,'PRECIADOS 39');
INSERT INTO MULTAS VALUES('6678546788','5541-BMP',90,'NUEVOS MINISTERIOS 22');
