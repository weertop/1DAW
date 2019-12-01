drop database if exists discos;
create database discos character set utf8;
use discos;

# Creacion de tablas:

create table discograficas
	(id_discografica int  primary key,
	nombre varchar(30) not null);

create table grupos
	(id_grupo int primary key,
	nombre varchar(30) not null);

create table generos
	(id_genero int  primary key,
	nombre varchar(30) not null);

create table discos
	(id_disco int  primary key,
        titulo varchar(30) not null,  
	anyo int not null,
	id_genero int not null,
        id_grupo int not null,
        id_discografica int not null);

create table canciones
	(id_cancion int primary key,
        id_disco int not null,
        titulo varchar(30) not null,
        duracion varchar(5) not null,
        posicion int not null);

create table ventas
	(fecha date not null,
        id_disco int not null,  
	unidades int not null);

# Claves ajenas y primarias:

alter table discos add constraint fk_id_genero foreign key(id_genero) references generos(id_genero);
alter table discos add constraint fk_id_grupo foreign key(id_grupo) references grupos(id_grupo);
alter table discos add constraint fk_id_discografica foreign key(id_discografica) references discograficas(id_discografica);
alter table canciones add constraint fk_id_disco foreign key(id_disco) references discos(id_disco);
alter table ventas add constraint fk_id_disco2 foreign key(id_disco) references discos(id_disco);
alter table ventas add constraint pk_ventas primary key(fecha,id_disco);

INSERT INTO discograficas VALUES (1,'Emir');
INSERT INTO discograficas VALUES (2,'Subterfuga');
INSERT INTO discograficas VALUES (3,'Radiola');
INSERT INTO discograficas VALUES (5,'Sonic');
INSERT INTO discograficas VALUES (6,'Piercing');
INSERT INTO discograficas VALUES (7,'Bon Vivant');
INSERT INTO discograficas VALUES (8,'Wagner');
INSERT INTO discograficas VALUES (9,'Pear');
INSERT INTO discograficas VALUES (4,'Mocity');

INSERT INTO grupos VALUES (1,'The Bottles');
INSERT INTO grupos VALUES (2,'David Worried');
INSERT INTO grupos VALUES (3,'Televisionhead');
INSERT INTO grupos VALUES (4,'Bruce Springsfield');
INSERT INTO grupos VALUES (5,'Mando Diario');
INSERT INTO grupos VALUES (6,'The Kings');
INSERT INTO grupos VALUES (7,'Queens');
INSERT INTO grupos VALUES (8,'List Bisquit');
INSERT INTO grupos VALUES (9,'Hamaral');
INSERT INTO grupos VALUES (10,'Ocean Colour Screen');
INSERT INTO grupos VALUES (11,'Red Hot Tiny Peppers');
INSERT INTO grupos VALUES (12,'Rob Dylan');
INSERT INTO grupos VALUES (13,'Michael Patson');

INSERT INTO generos VALUES (1,'Pop');
INSERT INTO generos VALUES (2,'Rock');
INSERT INTO generos VALUES (3,'Pop Alternativo');
INSERT INTO generos VALUES (4,'Rock Alternativo');
INSERT INTO generos VALUES (5,'Electrónica');

INSERT INTO discos VALUES (1,'Let It Beep',1969,3,1,9);
INSERT INTO discos VALUES (2,'Abbey Street',1968,3,1,9);
INSERT INTO discos VALUES (3,'Double Black',1967,3,1,9);
INSERT INTO discos VALUES (4,'A Hard Day''s Evening',1963,3,1,1);
INSERT INTO discos VALUES (5,'The Man Who Bought',1970,3,2,5);
INSERT INTO discos VALUES (6,'Eight Days',2004,3,2,1);
INSERT INTO discos VALUES (7,'Ok Radio',1997,4,3,5);
INSERT INTO discos VALUES (8,'Kid B',2000,5,3,5);
INSERT INTO discos VALUES (9,'Burnt In The USA',1990,2,4,8);
INSERT INTO discos VALUES (10,'Let Them out',2004,4,5,6);
INSERT INTO discos VALUES (11,'Race To Race',1965,2,6,1);
INSERT INTO discos VALUES (12,'State Of Difusion',1970,2,6,1);
INSERT INTO discos VALUES (13,'A Day At The Opera',1975,3,7,7);
INSERT INTO discos VALUES (14,'A Night At The Races',1976,3,7,7);
INSERT INTO discos VALUES (15,'Old New Songs',2001,4,8,3);
INSERT INTO discos VALUES (16,'Hamaral',1998,1,9,2);
INSERT INTO discos VALUES (17,'Two From The Modern',1999,3,10,8);
INSERT INTO discos VALUES (18,'Californiaction',2000,3,11,7);
INSERT INTO discos VALUES (19,'Blowing In Berlin',1962,3,12,1);
INSERT INTO discos VALUES (20,'Shiver',1982,1,13,5);

INSERT INTO canciones VALUES (1,1,'Take It Off','3:45',1);
INSERT INTO canciones VALUES (2,1,'Bring It To Me','3:55',2);
INSERT INTO canciones VALUES (3,1,'Miss A Class','2:45',3);
INSERT INTO canciones VALUES (4,1,'Clear Up Your Mind','3:57',4);
INSERT INTO canciones VALUES (5,1,'Survival','4:58',5);
INSERT INTO canciones VALUES (6,1,'Ok Ok','4:34',6);
INSERT INTO canciones VALUES (7,1,'The Best','4:33',7);
INSERT INTO canciones VALUES (8,1,'Into The Water','4:10',8);
INSERT INTO canciones VALUES (9,1,'The Secret Is Inside You','2:55',9);
INSERT INTO canciones VALUES (10,1,'The Cathedral','6:05',10);
INSERT INTO canciones VALUES (11,1,'Proud','1:55',11);
INSERT INTO canciones VALUES (12,1,'Natural Born Cinic','4:23',12);
INSERT INTO canciones VALUES (13,1,'Replace Me','2:46',13);
INSERT INTO canciones VALUES (14,2,'If I Were Rich','4:44',1);
INSERT INTO canciones VALUES (15,2,'Outside','3:12',2);
INSERT INTO canciones VALUES (16,2,'Come On','3:10',3);
INSERT INTO canciones VALUES (17,2,'Support Us','3:00',4);
INSERT INTO canciones VALUES (18,2,'Living In Spain','4:03',5);
INSERT INTO canciones VALUES (19,2,'Political Problems','3:01',6);
INSERT INTO canciones VALUES (20,2,'First Aid Kit','3:33',7);
INSERT INTO canciones VALUES (21,2,'Big Minds','4:44',8);
INSERT INTO canciones VALUES (22,2,'Translate','10:07',9);
INSERT INTO canciones VALUES (23,2,'The Brain','2:22',10);
INSERT INTO canciones VALUES (24,2,'This House','0:54',11);
INSERT INTO canciones VALUES (25,2,'Grateful','2:58',12);
INSERT INTO canciones VALUES (26,3,'Look At Me','3:20',1);
INSERT INTO canciones VALUES (27,3,'Weird Shop','6:02',2);
INSERT INTO canciones VALUES (28,3,'There Is No Reason','3:54',3);
INSERT INTO canciones VALUES (29,3,'Please','2:22',4);
INSERT INTO canciones VALUES (30,3,'Hard Worker','3:28',5);
INSERT INTO canciones VALUES (31,3,'Dark Spirit','2:42',6);
INSERT INTO canciones VALUES (32,3,'Blue Ocean','4:20',7);
INSERT INTO canciones VALUES (33,3,'Never Before','3:00',8);
INSERT INTO canciones VALUES (34,3,'Latin Lover','2:05',9);
INSERT INTO canciones VALUES (35,3,'Bye Bye','3:06',10);
INSERT INTO canciones VALUES (36,4,'Love Me Do','2:12',1);
INSERT INTO canciones VALUES (37,4,'Crazy Girl','2:30',2);
INSERT INTO canciones VALUES (38,4,'Drive My Truck','3:01',3);
INSERT INTO canciones VALUES (39,4,'Absolutely','2:01',4);
INSERT INTO canciones VALUES (40,4,'Pay For It','2:21',5);
INSERT INTO canciones VALUES (41,4,'Thank God','3:30',6);
INSERT INTO canciones VALUES (42,4,'Pain','2:55',7);
INSERT INTO canciones VALUES (43,4,'Mr. Hat','3:45',8);
INSERT INTO canciones VALUES (44,4,'I Wouldn''t Do It','2:55',9);
INSERT INTO canciones VALUES (45,4,'Crowd','3:57',10);
INSERT INTO canciones VALUES (46,4,'By The Window','4:05',11);
INSERT INTO canciones VALUES (47,4,'Second To Last','3:43',12);
INSERT INTO canciones VALUES (48,5,'Spiderman','4:00',1);
INSERT INTO canciones VALUES (49,5,'2010 Odyssey','5:03',2);
INSERT INTO canciones VALUES (50,5,'Ashes To Ashes','4:02',3);
INSERT INTO canciones VALUES (51,5,'Out Of Contex','3:08',4);
INSERT INTO canciones VALUES (52,5,'Trust Me','2:59',5);
INSERT INTO canciones VALUES (53,5,'Dead End Street','3:47',6);
INSERT INTO canciones VALUES (54,5,'Ronald Reagan','4:03',7);
INSERT INTO canciones VALUES (55,5,'A Bullet In My Head','4:55',8);
INSERT INTO canciones VALUES (56,5,'Turn Me Off','3:56',9);
INSERT INTO canciones VALUES (57,5,'Press Me','3:07',10);
INSERT INTO canciones VALUES (58,6,'No Clothes','4:48',1);
INSERT INTO canciones VALUES (59,6,'Golden Ring','2:33',2);
INSERT INTO canciones VALUES (60,6,'Patas De Gallo','4:09',3);
INSERT INTO canciones VALUES (61,6,'Talkshow','3:58',4);
INSERT INTO canciones VALUES (62,6,'Black Woman','2:45',5);
INSERT INTO canciones VALUES (63,6,'Give In','5:09',6);
INSERT INTO canciones VALUES (64,6,'Marrie Me','4:08',7);
INSERT INTO canciones VALUES (65,6,'I''m Game','3:07',8);
INSERT INTO canciones VALUES (66,6,'She Went Crazy','4:07',9);
INSERT INTO canciones VALUES (67,6,'Handle Fame','3:02',10);
INSERT INTO canciones VALUES (68,6,'Last Week','4:49',11);
INSERT INTO canciones VALUES (69,6,'Thank You','5:08',12);
INSERT INTO canciones VALUES (70,6,'Go On','3:41',13);
INSERT INTO canciones VALUES (71,6,'High Level','4:08',14);
INSERT INTO canciones VALUES (72,6,'Poor Thing','2:11',15);
INSERT INTO canciones VALUES (73,7,'Paranoid Android','4:09',1);
INSERT INTO canciones VALUES (74,7,'Karma Police','3:44',2);
INSERT INTO canciones VALUES (75,7,'No Surprises','4:01',3);
INSERT INTO canciones VALUES (78,7,'Cut Your Head Off','3:09',4);
INSERT INTO canciones VALUES (79,7,'Museum','4:44',5);
INSERT INTO canciones VALUES (80,7,'Understanding Me','3:30',6);
INSERT INTO canciones VALUES (81,7,'Let''s Go','3:11',7);
INSERT INTO canciones VALUES (82,7,'Almóndigas','4:23',8);
INSERT INTO canciones VALUES (83,7,'Destroy Japan','1:20',9);
INSERT INTO canciones VALUES (84,7,'Broken Toy','3:33',10);
INSERT INTO canciones VALUES (85,7,'My Retirement','4:05',11);
INSERT INTO canciones VALUES (86,7,'Queen Size','3:56',12);
INSERT INTO canciones VALUES (87,8,'The Rope Broke','0:55',1);
INSERT INTO canciones VALUES (88,8,'The Former','6:04',2);
INSERT INTO canciones VALUES (89,8,'Blue Wizard','3:36',3);
INSERT INTO canciones VALUES (90,8,'Don''t Be Cruel','3:09',4);
INSERT INTO canciones VALUES (91,8,'I Used To Cry','5:09',5);
INSERT INTO canciones VALUES (92,8,'Creep','3:45',6);
INSERT INTO canciones VALUES (93,8,'High And Dry','4:09',7);
INSERT INTO canciones VALUES (94,8,'Stairway To The Moon','2:55',8);
INSERT INTO canciones VALUES (95,8,'David''s Palace','4:23',9);
INSERT INTO canciones VALUES (96,8,'Take a Break','3:27',10);
INSERT INTO canciones VALUES (97,9,'All My Savings','4:45',1);
INSERT INTO canciones VALUES (98,9,'Big Impact','3:01',2);
INSERT INTO canciones VALUES (99,9,'The World','7:33',3);
INSERT INTO canciones VALUES (100,9,'June','2:52',4);
INSERT INTO canciones VALUES (101,9,'Fireman','5:00',5);
INSERT INTO canciones VALUES (102,9,'Happy Hour','4:44',6);
INSERT INTO canciones VALUES (103,9,'20 Bucks','2:58',7);
INSERT INTO canciones VALUES (104,9,'Big Party','4:09',8);
INSERT INTO canciones VALUES (105,9,'29 Channels And Nothing On','3:08',9);
INSERT INTO canciones VALUES (106,9,'The Black Suit','4:59',10);
INSERT INTO canciones VALUES (107,9,'War','4:00',11);
INSERT INTO canciones VALUES (108,10,'Hide Your Feelings From Me','2:08',1);
INSERT INTO canciones VALUES (109,10,'Mad About A Spirit','3:46',2);
INSERT INTO canciones VALUES (110,10,'Witty Old Man','4:06',3);
INSERT INTO canciones VALUES (111,10,'Depending On The Weather','4:52',4);
INSERT INTO canciones VALUES (112,10,'The Matter','4:04',5);
INSERT INTO canciones VALUES (113,10,'Invisible King','2:53',6);
INSERT INTO canciones VALUES (114,10,'Dark Affair','4:02',7);
INSERT INTO canciones VALUES (115,10,'Businessman','3:04',8);
INSERT INTO canciones VALUES (116,11,'I Love You','4:14',1);
INSERT INTO canciones VALUES (117,11,'So Many Years','3:39',2);
INSERT INTO canciones VALUES (118,11,'The Killer','4:56',3);
INSERT INTO canciones VALUES (119,11,'She Became Blind','3:36',4);
INSERT INTO canciones VALUES (120,11,'The Only Way','4:58',5);
INSERT INTO canciones VALUES (121,11,'Take Me To The Movies','3:08',6);
INSERT INTO canciones VALUES (122,11,'Single','2:50',7);
INSERT INTO canciones VALUES (123,11,'Around You','4:01',8);
INSERT INTO canciones VALUES (124,11,'Sharp Remark','3:09',9);
INSERT INTO canciones VALUES (125,11,'Yes','6:09',10);
INSERT INTO canciones VALUES (126,11,'No','4:59',11);
INSERT INTO canciones VALUES (127,11,'We Don''t Need Any Job','4:50',12);
INSERT INTO canciones VALUES (128,12,'Birds','3:36',1);
INSERT INTO canciones VALUES (129,12,'Talk To Me','4:55',2);
INSERT INTO canciones VALUES (130,12,'Jealous','2:52',3);
INSERT INTO canciones VALUES (131,12,'The Last Supper','4:50',4);
INSERT INTO canciones VALUES (132,12,'Several Years','3:33',5);
INSERT INTO canciones VALUES (133,12,'Poison Me','2:18',6);
INSERT INTO canciones VALUES (134,12,'Maybe Not','4:05',7);
INSERT INTO canciones VALUES (135,12,'Tremendous Mistake','3:28',8);
INSERT INTO canciones VALUES (136,12,'Remember Me','5:03',9);
INSERT INTO canciones VALUES (137,12,'Leave A Tip','3:00',10);
INSERT INTO canciones VALUES (138,12,'Make Out','4:04',11);
INSERT INTO canciones VALUES (139,12,'Rent A Soul','2:11',12);
INSERT INTO canciones VALUES (140,13,'Devil Is Dead','3:46',1);
INSERT INTO canciones VALUES (141,13,'Black Vulture','3:45',2);
INSERT INTO canciones VALUES (142,13,'Sugar Mountains','4:06',3);
INSERT INTO canciones VALUES (143,13,'Two Words','3:02',4);
INSERT INTO canciones VALUES (144,13,'Red Office','4:44',5);
INSERT INTO canciones VALUES (145,13,'Jim','3:02',6);
INSERT INTO canciones VALUES (146,13,'The Time Is Up','4:03',7);
INSERT INTO canciones VALUES (148,13,'Holy Book','3:31',8);
INSERT INTO canciones VALUES (149,14,'Nonsense','7:09',1);
INSERT INTO canciones VALUES (150,14,'Messing Around','4:55',2);
INSERT INTO canciones VALUES (151,14,'Wellcome To Nowhere','2:20',3);
INSERT INTO canciones VALUES (152,14,'Today''s Light','3:34',4);
INSERT INTO canciones VALUES (153,14,'Rock Star','2:12',5);
INSERT INTO canciones VALUES (154,14,'Respect','4:17',6);
INSERT INTO canciones VALUES (155,14,'England Vs. Ireland','5:03',7);
INSERT INTO canciones VALUES (156,14,'The Chase','3:32',8);
INSERT INTO canciones VALUES (157,14,'Make A Killing','4:06',9);
INSERT INTO canciones VALUES (158,14,'Special Moment','6:07',10);
INSERT INTO canciones VALUES (159,15,'The Last Time','4:35',1);
INSERT INTO canciones VALUES (160,15,'Rain','3:53',2);
INSERT INTO canciones VALUES (161,15,'Not At All','5:31',3);
INSERT INTO canciones VALUES (162,15,'Expired Food','4:40',4);
INSERT INTO canciones VALUES (163,15,'January','2:06',5);
INSERT INTO canciones VALUES (164,15,'Take It Out','4:51',6);
INSERT INTO canciones VALUES (165,15,'In The Spotlight','3:49',7);
INSERT INTO canciones VALUES (166,15,'Up To You','4:33',8);
INSERT INTO canciones VALUES (167,15,'The Spider','3:50',9);
INSERT INTO canciones VALUES (168,15,'Lemon Pie','2:05',10);
INSERT INTO canciones VALUES (169,15,'We Are In Trouble','3:41',11);
INSERT INTO canciones VALUES (170,15,'Even Today','2:22',12);
INSERT INTO canciones VALUES (180,15,'Surprise Me','3:43',13);
INSERT INTO canciones VALUES (181,15,'I Hate You','4:55',14);
INSERT INTO canciones VALUES (182,16,'The Best Man In The World','4:03',1);
INSERT INTO canciones VALUES (183,16,'Here We Go','3:44',2);
INSERT INTO canciones VALUES (184,16,'Insane People','5:09',3);
INSERT INTO canciones VALUES (185,16,'Blowing Up','3:37',4);
INSERT INTO canciones VALUES (186,16,'Skeleton','5:06',5);
INSERT INTO canciones VALUES (187,16,'Money Talks','4:48',6);
INSERT INTO canciones VALUES (188,16,'Red Milk','1:49',7);
INSERT INTO canciones VALUES (189,16,'Spending My Cash','2:59',8);
INSERT INTO canciones VALUES (190,16,'Once In A Lifetime','4:42',9);
INSERT INTO canciones VALUES (191,16,'Hot Dog','3:53',10);
INSERT INTO canciones VALUES (192,16,'Illinois','3:35',11);
INSERT INTO canciones VALUES (193,17,'Watering The Plants','4:54',1);
INSERT INTO canciones VALUES (194,17,'Kick Ass Song','3:00',2);
INSERT INTO canciones VALUES (195,17,'Fake Plastic Girls','4:48',3);
INSERT INTO canciones VALUES (196,17,'The Visitors','2:55',4);
INSERT INTO canciones VALUES (198,17,'Radio Song','3:33',5);
INSERT INTO canciones VALUES (199,17,'Silver Coins','4:43',6);
INSERT INTO canciones VALUES (200,17,'Skip The Rope','3:06',7);
INSERT INTO canciones VALUES (201,17,'We''ll Be Back','4:27',8);
INSERT INTO canciones VALUES (202,17,'I''ll Do My Best','3:05',9);
INSERT INTO canciones VALUES (203,17,'We Failed','2:22',10);
INSERT INTO canciones VALUES (204,17,'Superhuman','5:58',11);
INSERT INTO canciones VALUES (205,17,'The Magic Carpet','3:07',12);
INSERT INTO canciones VALUES (206,18,'On Second Thought','4:54',1);
INSERT INTO canciones VALUES (207,18,'I''m Sorry','3:00',2);
INSERT INTO canciones VALUES (208,18,'Like The Rest','3:40',3);
INSERT INTO canciones VALUES (209,18,'Are You Serious?','3:59',4);
INSERT INTO canciones VALUES (210,18,'Let''s Talk About Me','2:53',5);
INSERT INTO canciones VALUES (211,18,'The Last September','4:58',6);
INSERT INTO canciones VALUES (212,18,'Plastic Face','3:37',7);
INSERT INTO canciones VALUES (213,18,'Dark Voices','2:25',8);
INSERT INTO canciones VALUES (214,18,'And The Doctor Came','4:57',9);
INSERT INTO canciones VALUES (215,18,'Years Ago','3:33',10);
INSERT INTO canciones VALUES (216,18,'Oldies And Goldies','4:46',11);
INSERT INTO canciones VALUES (217,18,'Stinking Of Gin','4:19',12);
INSERT INTO canciones VALUES (218,18,'The Jail','3:08',13);
INSERT INTO canciones VALUES (219,18,'It''s Funny','3:59',14);
INSERT INTO canciones VALUES (220,19,'The Portrait Of Susan','2:21',1);
INSERT INTO canciones VALUES (221,19,'Before I Die','4:56',2);
INSERT INTO canciones VALUES (222,19,'Something Different','4:57',3);
INSERT INTO canciones VALUES (223,19,'A Particular Detail','3:52',4);
INSERT INTO canciones VALUES (224,19,'Pink Turtle','4:56',5);
INSERT INTO canciones VALUES (225,19,'Thing Have Changed','3:45',6);
INSERT INTO canciones VALUES (226,19,'Big Mouth','5:08',7);
INSERT INTO canciones VALUES (227,19,'My Anniversary','1:06',8);
INSERT INTO canciones VALUES (228,19,'Rescue Her','3:54',9);
INSERT INTO canciones VALUES (229,19,'Enough Is Enough','5:46',10);
INSERT INTO canciones VALUES (230,19,'Pretty Boring','3:57',11);
INSERT INTO canciones VALUES (231,19,'Against The Wind','2:55',12);
INSERT INTO canciones VALUES (232,20,'Heaven','4:03',1);
INSERT INTO canciones VALUES (233,20,'Rough People','2:38',2);
INSERT INTO canciones VALUES (234,20,'Let''s Get Out Of Here','4:50',3);
INSERT INTO canciones VALUES (235,20,'Evolution','2:05',4);
INSERT INTO canciones VALUES (236,20,'Magic Shoes','4:36',5);
INSERT INTO canciones VALUES (237,20,'Cold War','3:28',6);
INSERT INTO canciones VALUES (238,20,'Changing The Names','5:02',7);
INSERT INTO canciones VALUES (239,20,'Cup Of Tea','2:07',8);
INSERT INTO canciones VALUES (240,20,'Rain','3:46',9);
INSERT INTO canciones VALUES (241,20,'Moonwalker','4:09',10);
INSERT INTO canciones VALUES (242,20,'Horrible White Socks','3:59',11);
INSERT INTO canciones VALUES (243,20,'Call Me Back','3:53',12);

INSERT INTO ventas VALUES ('1969-01-30',1,960);
INSERT INTO ventas VALUES ('2012-07-23',1,20);
INSERT INTO ventas VALUES ('2010-05-14',1,6);
INSERT INTO ventas VALUES ('2003-09-30',1,230);
INSERT INTO ventas VALUES ('1996-06-20',1,120);
INSERT INTO ventas VALUES ('1998-05-12',1,40);
INSERT INTO ventas VALUES ('2011-08-13',1,26);
INSERT INTO ventas VALUES ('2012-07-11',2,105);
INSERT INTO ventas VALUES ('2012-06-15',2,200);
INSERT INTO ventas VALUES ('2012-05-21',2,150);
INSERT INTO ventas VALUES ('1968-02-22',2,1000);
INSERT INTO ventas VALUES ('1967-11-23',2,830);
INSERT INTO ventas VALUES ('2003-07-17',2,150);
INSERT INTO ventas VALUES ('2011-12-18',2,160);
INSERT INTO ventas VALUES ('1999-10-13',2,166);
INSERT INTO ventas VALUES ('2012-09-14',3,10);
INSERT INTO ventas VALUES ('1967-02-15',3,600);
INSERT INTO ventas VALUES ('1963-03-16',4,650);
INSERT INTO ventas VALUES ('2000-06-20',4,185);
INSERT INTO ventas VALUES ('2004-10-21',4,90);
INSERT INTO ventas VALUES ('1970-11-01',5,800);
INSERT INTO ventas VALUES ('1980-11-03',5,150);
INSERT INTO ventas VALUES ('1994-05-06',5,50);
INSERT INTO ventas VALUES ('2004-06-12',6,500);
INSERT INTO ventas VALUES ('2011-07-13',6,100);
INSERT INTO ventas VALUES ('2012-08-17',6,50);
INSERT INTO ventas VALUES ('2012-09-20',6,30);
INSERT INTO ventas VALUES ('1997-05-20',7,400);
INSERT INTO ventas VALUES ('2014-01-04',7,50);
INSERT INTO ventas VALUES ('2000-03-24',7,35);
INSERT INTO ventas VALUES ('2001-02-28',7,40);
INSERT INTO ventas VALUES ('2002-01-27',7,100);
INSERT INTO ventas VALUES ('2000-11-26',8,500);
INSERT INTO ventas VALUES ('2003-01-24',8,40);
INSERT INTO ventas VALUES ('2002-03-22',8,30);
INSERT INTO ventas VALUES ('2003-07-12',8,45);
INSERT INTO ventas VALUES ('1990-08-13',9,920);
INSERT INTO ventas VALUES ('1995-09-16',9,350);
INSERT INTO ventas VALUES ('1999-11-18',9,150);
INSERT INTO ventas VALUES ('2004-12-30',10,200);
INSERT INTO ventas VALUES ('2013-05-01',10,190);
INSERT INTO ventas VALUES ('2014-01-05',10,90);
INSERT INTO ventas VALUES ('1965-03-05',11,560);
INSERT INTO ventas VALUES ('1970-02-06',12,250);
INSERT INTO ventas VALUES ('1971-10-16',12,200);
INSERT INTO ventas VALUES ('2000-12-08',12,30);
INSERT INTO ventas VALUES ('1975-01-07',13,450);
INSERT INTO ventas VALUES ('1992-11-11',13,10);
INSERT INTO ventas VALUES ('1976-05-12',14,385);
INSERT INTO ventas VALUES ('1985-06-13',14,400);
INSERT INTO ventas VALUES ('1999-06-14',14,360);
INSERT INTO ventas VALUES ('2000-06-25',14,230);
INSERT INTO ventas VALUES ('2001-07-25',14,20);
INSERT INTO ventas VALUES ('2001-08-12',15,235);
INSERT INTO ventas VALUES ('2013-09-10',15,150);
INSERT INTO ventas VALUES ('2010-03-09',15,10);
INSERT INTO ventas VALUES ('1998-02-08',16,500);
INSERT INTO ventas VALUES ('1999-06-06',16,300);
INSERT INTO ventas VALUES ('2000-07-14',16,100);
INSERT INTO ventas VALUES ('2001-06-15',16,150);
INSERT INTO ventas VALUES ('2002-07-16',16,100);
INSERT INTO ventas VALUES ('2003-04-21',16,100);
INSERT INTO ventas VALUES ('2004-10-22',16,80);
INSERT INTO ventas VALUES ('2011-10-24',16,85);
INSERT INTO ventas VALUES ('2010-12-18',16,95);
INSERT INTO ventas VALUES ('1999-11-19',17,350);
INSERT INTO ventas VALUES ('2000-04-20',18,400);
INSERT INTO ventas VALUES ('2001-05-21',18,50);
INSERT INTO ventas VALUES ('2002-01-22',18,30);
INSERT INTO ventas VALUES ('1962-10-23',19,580);
INSERT INTO ventas VALUES ('1986-11-15',19,200);
INSERT INTO ventas VALUES ('2010-12-15',19,5);
INSERT INTO ventas VALUES ('1982-01-11',20,890);
INSERT INTO ventas VALUES ('1983-01-10',20,550);
INSERT INTO ventas VALUES ('1984-02-24',20,380);
INSERT INTO ventas VALUES ('1985-03-25',20,350);
INSERT INTO ventas VALUES ('1986-04-30',20,300);
INSERT INTO ventas VALUES ('1986-05-14',20,150);
INSERT INTO ventas VALUES ('1988-06-12',20,200);
INSERT INTO ventas VALUES ('1990-07-13',20,100);
INSERT INTO ventas VALUES ('1995-10-13',20,50);
INSERT INTO ventas VALUES ('1999-11-11',20,150);
INSERT INTO ventas VALUES ('2000-12-11',20,85);
INSERT INTO ventas VALUES ('2001-09-21',20,50);
INSERT INTO ventas VALUES ('2011-09-11',20,250);
INSERT INTO ventas VALUES ('2014-08-18',20,30);

