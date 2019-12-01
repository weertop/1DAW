drop table partido_jugador;
drop table partido;
drop table jugador_posicion;
drop table jugador;
drop table seleccion;


create table seleccion (
seleccion_id varchar2(5) primary key,
sel_primer_color varchar2(10) not null,
sel_segundo_color varchar2(10) not null,
sel_pais varchar2(15),
sel_entrenador varchar2(20));

insert into seleccion values ('ESP', 'Rojo', 'Azul', 'España', 'Juan Antonio Orenga');
insert into seleccion values ('USA','Blanco', 'Azul', 'Estados Unidos', 'Mike Krzyzewski');
insert into seleccion values ('ARG', 'Blanco','Azul', 'Argentina', 'Julio César Lamas');
insert into seleccion values ('LTU','Verde', 'Amarillo', 'Lituania', 'Kestutis Kemzüra');
insert into seleccion values ('GRE','Blanco', 'Azul', 'Grecia', 'Andrea Trinchieri');
insert into seleccion values ('RUS', 'Blanco', 'Rojo', 'Rusia', 'Fotis Katsikaris');


create table jugador (
seleccion_id varchar2(5) references seleccion,
jug_numero number(2),
primary key (seleccion_id, jug_numero),
jug_nombre varchar2(35),
jug_altura number(3));

insert into jugador values ( 'ESP', 5, 'José Manuel Calderón Borrallo', 191);
insert into jugador values ( 'ESP', 6, 'Sergio Llull Melia', 190);
insert into jugador values ( 'ESP', 7, 'Marc Gasol Saez', 213);
insert into jugador values ( 'ESP', 8, 'Ricard Rubio Vives', 192);
insert into jugador values ( 'ESP', 9, 'Rodolfo Fernández Farres', 196);
insert into jugador values ( 'ESP', 10, 'Sergio Rodrí­guez Gómez', 192);
insert into jugador values ( 'ESP', 11, 'Víctor Claver Arocas', 206);
insert into jugador values ( 'ESP', 12, 'Alex Mumbrú Murcia', 202);
insert into jugador values ( 'ESP', 13, 'Xavier Rey Sanuy', 209);
insert into jugador values ( 'ESP', 14, 'Pablo Aguilar Bermúdez', 203);
insert into jugador values ( 'USA', 12, 'LeBron James', 203 );
insert into jugador values ( 'USA', 13, 'Bradley Beal', 191);
insert into jugador values ( 'USA', 14, 'Russell Westbrook', 191 );
insert into jugador values ( 'USA', 15, 'Kevin Durant', 206); 
insert into jugador values ( 'GRE', 4, 'Kostas Sloukas', 198);
insert into jugador values ( 'GRE', 5, 'Ioannis Bouroussis', 213);
insert into jugador values ( 'GRE', 6, 'Nikos Zisis', 196);
insert into jugador values ( 'GRE', 7, 'Vassilis Spanoulis', 192);
insert into jugador values ( 'RUS', 4, 'Sergey Karasev', 200);
insert into jugador values ( 'RUS', 5, 'Dmitry Sokolov', 214);
insert into jugador values ( 'RUS', 6, 'Evgeny Valiev', 205);
insert into jugador values ( 'RUS', 7, 'Vitaly Fridzon', 195);
insert into jugador values ( 'LTU', 4, 'Mantas Kalnietis', 196);
insert into jugador values ( 'LTU', 5, 'Martynas Pocius', 196);
insert into jugador values ( 'LTU', 6, 'Renaldas Seibutis',198);
insert into jugador values ( 'LTU', 7, 'Mindaugas Kuzminskas',205);

create table jugador_posicion (
seleccion_id varchar2(5),
jug_numero number(2),
foreign key (seleccion_id, jug_numero) references jugador,
jug_posicion varchar2(10) check (jug_posicion in ('Base', 'Escolta', 'Alero', 'Ala-Pívot', 'Pívot')),
jug_capacitacion number(2),
primary key (seleccion_id, jug_numero, jug_posicion));

insert into jugador_posicion values ('ESP', 5, 'Base', 10);
insert into jugador_posicion values ('ESP', 5, 'Escolta', 8);
insert into jugador_posicion values ('ESP', 6, 'Escolta', 10);
insert into jugador_posicion values ('ESP', 6, 'Base', 7);
insert into jugador_posicion values ('ESP', 6, 'Alero', 7);
insert into jugador_posicion values ('ESP', 7, 'Pívot', 9);
insert into jugador_posicion values ('ESP', 7, 'Ala-Pívot', 10);
insert into jugador_posicion values ('ESP', 8, 'Base', 9);
insert into jugador_posicion values ('ESP', 8, 'Escolta', 8);
insert into jugador_posicion values ('ESP', 8, 'Alero', 7);
insert into jugador_posicion values ('ESP', 9, 'Escolta', 9);
insert into jugador_posicion values ('ESP', 9, 'Alero', 8);
insert into jugador_posicion values ('ESP', 10, 'Base', 9);
insert into jugador_posicion values ('ESP', 10, 'Escolta', 10);
insert into jugador_posicion values ('ESP', 11, 'Ala-Pívot', 9);
insert into jugador_posicion values ('ESP', 11, 'Pívot', 8);
insert into jugador_posicion values ('ESP', 12, 'Alero', 9);
insert into jugador_posicion values ('ESP', 12, 'Ala-Pívot', 7);
insert into jugador_posicion values ('ESP', 13, 'Pívot', 9);
insert into jugador_posicion values ('ESP', 13, 'Ala-Pívot', 7);
insert into jugador_posicion values ('ESP', 14, 'Ala-Pívot',9);
insert into jugador_posicion values ('ESP', 14, 'Pívot',8);
insert into jugador_posicion values ('USA', 12, 'Alero', 10);
insert into jugador_posicion values ('USA', 12, 'Base', 9);
insert into jugador_posicion values ('USA', 13, 'Base', 10);
insert into jugador_posicion values ('USA', 13, 'Ala-Pívot', 9);
insert into jugador_posicion values ('USA', 13, 'Alero', 8);
insert into jugador_posicion values ('USA', 13, 'Escolta', 9);
insert into jugador_posicion values ('USA', 14, 'Base', 9);
insert into jugador_posicion values ('USA', 14, 'Alero', 8);
insert into jugador_posicion values ('USA', 15, 'Alero', 9);
insert into jugador_posicion values ('USA', 15, 'Pívot', 7);
insert into jugador_posicion values ('GRE', 4, 'Base', 8);
insert into jugador_posicion values ('GRE', 4, 'Alero', 7);
insert into jugador_posicion values ('GRE', 5, 'Pívot', 8);
insert into jugador_posicion values ('GRE', 5, 'Ala-Pívot', 7);
insert into jugador_posicion values ('GRE', 6, 'Base', 9);
insert into jugador_posicion values ('GRE', 6, 'Escolta', 10);
insert into jugador_posicion values ('GRE', 7, 'Escolta', 10);
insert into jugador_posicion values ('GRE', 7, 'Base', 9);
insert into jugador_posicion values ('RUS', 4, 'Escolta', 9);
insert into jugador_posicion values ('RUS', 4, 'Ala-Pívot', 10);
insert into jugador_posicion values ('RUS', 5, 'Pívot', 10);
insert into jugador_posicion values ('RUS', 5, 'Ala-Pívot', 9);
insert into jugador_posicion values ('RUS', 6, 'Ala-Pívot', 9);
insert into jugador_posicion values ('RUS', 6, 'Alero', 7);
insert into jugador_posicion values ('RUS', 7, 'Escolta', 8);
insert into jugador_posicion values ('RUS', 7, 'Base', 9);
insert into jugador_posicion values ('LTU', 4, 'Base', 9);
insert into jugador_posicion values ('LTU', 4, 'Escolta', 8);
insert into jugador_posicion values ('LTU', 5, 'Escolta', 9);
insert into jugador_posicion values ('LTU', 5, 'Alero', 8);
insert into jugador_posicion values ('LTU', 6, 'Escolta', 8);
insert into jugador_posicion values ('LTU', 7, 'Alero', 9);
insert into jugador_posicion values ('LTU', 7, 'Ala-Pívot', 7);



create table partido (
partido_id number(2) primary key,
par_fecha date,
par_fase varchar2(10) check (par_fase in ('1ª fase', '2ª fase', 'semifinal', 'final')),
par_sel_local varchar2(5) references seleccion,
par_sel_visitante varchar2(5) references seleccion,
par_ptos_local number(3),
par_ptos_visitante number(3));

insert into partido values (1, to_date('30/08/2014'),'1ª fase','LTU', 'RUS', 62, 70);
insert into partido values (2, to_date('30/08/2014'),'1ª fase','ARG', 'USA', 89, 104);
insert into partido values (3, to_date('31/08/2014'),'1ª fase','ESP', 'LTU', 68, 72);
insert into partido values (4, to_date('01/09/2014'),'1ª fase','LTU','ARG', 67, 72);
insert into partido values (5, to_date('01/09/2014'),'2ª fase','ESP', 'ARG', 68,30);
insert into partido values (6, to_date('03/09/2014'),'2ª fase','RUS','GRE',90,65);
insert into partido values (7, to_date('03/09/2014'),'semifinal','ESP', 'RUS', 84,82);
insert into partido values (8, to_date('08/09/2014'),'final','ESP', 'USA', 102,99);

create table partido_jugador (
partido_id number(2),
seleccion_id varchar2(5),
jug_numero number(2),
foreign key (seleccion_id, jug_numero) references jugador,
puntos number(3),
minutos number(2),
primary key (partido_id, seleccion_id, jug_numero));

insert into partido_jugador values (3, 'ESP', 5, 14, 30);
insert into partido_jugador values (3, 'ESP', 6, 10, 20);
insert into partido_jugador values (3, 'ESP', 7, 14, 22);
insert into partido_jugador values (3, 'ESP', 8, 8, 15);
insert into partido_jugador values (3, 'ESP', 9, 0, 2);
insert into partido_jugador values (3, 'ESP', 10, 3, 5);
insert into partido_jugador values (3, 'ESP', 11, 20, 10);
insert into partido_jugador values (3, 'ESP', 12, 9, 9);
insert into partido_jugador values (3, 'ESP', 13, 14, 12);
insert into partido_jugador values (3, 'ESP', 14, 8, 20);
insert into partido_jugador values (5, 'ESP', 5, 12, 20);
insert into partido_jugador values (5, 'ESP', 6, 10, 21);
insert into partido_jugador values (5, 'ESP', 7, 11, 12);
insert into partido_jugador values (5, 'ESP', 8, 18, 15);
insert into partido_jugador values (5, 'ESP', 9, 30, 10);
insert into partido_jugador values (5, 'ESP', 10, 32, 15);
insert into partido_jugador values (5, 'ESP', 11, 25, 8);
insert into partido_jugador values (5, 'ESP', 12, 19, 9);
insert into partido_jugador values (5, 'ESP', 13, 19, 10);
insert into partido_jugador values (5, 'ESP', 14, 18, 12);
insert into partido_jugador values (7, 'ESP', 5, 8, 28);
insert into partido_jugador values (7, 'ESP', 6, 12, 25);
insert into partido_jugador values (7, 'ESP', 7, 10, 12);
insert into partido_jugador values (7, 'ESP', 8, 18, 15);
insert into partido_jugador values (7, 'ESP', 9, 5, 15);
insert into partido_jugador values (7, 'ESP', 10, 3, 15);
insert into partido_jugador values (7, 'ESP', 11, 20, 30);
insert into partido_jugador values (7, 'ESP', 12, 9, 19);
insert into partido_jugador values (7, 'ESP', 13, 14, 14);
insert into partido_jugador values (7, 'ESP', 14, 8, 25);
insert into partido_jugador values (8, 'ESP', 5, 10, 35);
insert into partido_jugador values (8, 'ESP', 6, 12, 22);
insert into partido_jugador values (8, 'ESP', 7, 10, 22);
insert into partido_jugador values (8, 'ESP', 8, 18, 17);
insert into partido_jugador values (8, 'ESP', 9, 10, 20);
insert into partido_jugador values (8, 'ESP', 10, 13, 15);
insert into partido_jugador values (8, 'ESP', 11, 23, 10);
insert into partido_jugador values (8, 'ESP', 12, 19, 19);
insert into partido_jugador values (8, 'ESP', 13, 16, 12);
insert into partido_jugador values (8, 'ESP', 14, 8, 21);
insert into partido_jugador values (2, 'USA', 12, 23, 25);
insert into partido_jugador values (2, 'USA', 13, 22, 21);
insert into partido_jugador values (2, 'USA', 14, 12, 19);
insert into partido_jugador values (2, 'USA', 15, 10, 15);
insert into partido_jugador values (8, 'USA', 12, 13, 20);
insert into partido_jugador values (8, 'USA', 13, 18, 21);
insert into partido_jugador values (8, 'USA', 14, 9, 17);
insert into partido_jugador values (8, 'USA', 15, 27, 25);








