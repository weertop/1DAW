CREATE DATABASE IF NOT EXISTS bdmultas;  

use bdmultas;

create table if not exists personas(dni varchar(10) not null, nombre varchar (30) not null unique, primary key (dni) engine=innodb); 

create table if not exists matriculas (matricula varchar(10) not null, dnimatricula varchar(10) not null, primary key (matricula), foreign key (dnimatricula) references personas (dni) on delete cascade on update cascade);  

create table if not exists multas (ref varchar(20) not null, matriculamultas varchar(10) not null, importe decimal(6,2) not null, lugar varchar(30) not null, primary key(ref), foreign key(matriculamultas) references matriculas (matricula) on delete cascade on update cascade);

alter table personas add direccion varchar(20) not null;

describe personas;

alter table personas modify direccion varchar(20) not null default 'calle direccion ';

alter table personas modify direccion varchar(40) not null default 'calle direccion ';

alter table personas add fnac date not null default '2000-01-01';

alter table personas change column fnac fecha_nac date not null default '2000-01-01';

alter table personas add unique(nombre);

alter table matriculas add colores enum('rojo','azul','blanco') not null;

create temporary table tempo(campo1 int not null, campo2 bool not null default false, campo3 int not null, check(campo3 >1), primary key (campo1));

describe temp;

rename table temp to auxiliar;
/*deberia usarse el copy de tabla*/
/*create temporary table auxiliar select * from tempo;*/

/*eliminamos la tabla temporales*/
drop temporary table if exists temp, auxiliar;

describe temp;

show tables;



