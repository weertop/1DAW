

-- ALEXIS CALDERON RECALDE 1DAW --


--BASE DE DATOS DISCOS (EJERCICIOS 1-20)--
--1.- Muestra todos los títulos de canciones formados por más de tres palabras.--

SELECT titulo FROM canciones WHERE titulo LIKE '% % %';

--2.-  Muestra los títulos de las canciones que comienzan con la misma letra que el grupo al que pertenecen. Muestra también el nombre del grupo.--

SELECT c.titulo, g.nombre FROM canciones c, grupos g, discos d WHERE c.id_disco = d.id_disco and d.id_grupo = g.id_grupo and c.titulo LIKE '_%'=g.nombre LIKE '_%';

--3.- ¿Cuántos discos tiene el grupo ‘The Bottles’?--

SELECT COUNT(d.id_disco) 'Numero de discos' FROM grupos g, discos d WHERE d.id_grupo = g.id_grupo and g.nombre = 'The Bottles';

--4.- ¿Cuántos discos ha vendido el grupo ‘The Bottles’?--

SELECT COUNT(d.id_disco) 'Numero de discos vendidos' FROM ventas v, grupos g, discos d WHERE d.id_grupo = g.id_grupo and d.id_disco = v.id_disco and g.nombre = 'The Bottles';

--5.- ¿Cuántas canciones tiene en total el grupo el grupo ‘The Bottles’?--

SELECT COUNT(c.id_cancion) 'Numero de canciones' FROM canciones c, grupos g, discos d WHERE c.id_disco = d.id_disco and d.id_grupo = g.id_grupo and g.nombre = 'The Bottles';

--6.- Muestra el número total de discos vendidos en el año 2007.--

SELECT COUNT(d.id_disco) 'Numero de discos' FROM ventas v, discos d WHERE v.id_disco = d.id_disco and v.fecha LIKE '2007-__-__';

--7.-  Muestra el número de grupos que han publicado disco en la discográfica 'Emir'.--

SELECT COUNT(g.id_grupo) 'Numero de grupos' FROM discograficas dis, discos d, grupos g WHERE g.id_grupo = d.id_grupo and d.id_discografica = dis.id_discografica and dis.nombre LIKE 'Emir';

--8.- ¿Cuántos discos de 'Electrónica' se publicaron en el año 2006?--

SELECT COUNT(d.id_disco) 'Numero de discos' FROM generos g, discos d WHERE d.id_genero = g.id_genero and g.nombre LIKE 'Electrónica';

--9.- Muestra los títulos de todos los discos vendidos el año pasado, ordenados alfabéticamente.--

SELECT d.titulo 'discos vendidos' FROM discos d, ventas v WHERE d.id_disco = v.id_disco AND v.fecha LIKE '2018-__-__';

--10.- Nombres de grupos que empiezan por la palabra 'The'.--

SELECT g.nombre 'nombre de grupo' FROM grupos g WHERE g.nombre LIKE 'The%';

--11.- Muestra las unidades de la venta en la que se han vendido más discos.--

SELECT v.unidades 'numero de unidades de la mayor venta' FROM discos d, ventas v WHERE v.id_disco = d.id_disco ORDER BY v.unidades DESC LIMIT 1;

--12.- Muestra los títulos de los discos de rock de la década de los 60 y de los 90, y su año de publicación, ordenados por año.--

SELECT d.titulo, d.anyo FROM discos d, generos g WHERE d.id_genero = g.id_genero AND g.nombre = 'Rock' AND d.anyo BETWEEN '1960' AND '1969' AND d.anyo BETWEEN '1990' AND '1999' ORDER BY d.anyo;

--13.- En el año 2012, todos los discos vendidos de la discográfica Pear costaban 12 euros. Calcula el importe total en ventas de esa discográfica.--

SELECT COUNT(v.id_disco)*12 'total ventas' FROM discos d, ventas v WHERE d.id_disco = v.id_disco AND v.fecha LIKE '2012-__-__';

--14.- Muestra todos los títulos de las canciones y su duración, cuando duren 5 minutos o más, pero sin llegar a 6.--

SELECT c.titulo, c.duracion FROM canciones c WHERE c.duracion BETWEEN '5:00' AND '5:59';

--15.- Muestra el valor medio de las unidades vendidas por venta, redondeado a un decimal.--

SELECT ROUND(AVG(v.unidades), 1) FROM ventas v;

--16.- Muestra los títulos de las canciones y su longitud en caracteres, espacios incluídos.--

SELECT c.titulo titulo, length(c.titulo) 'longitud titulo' FROM canciones c;

--17.- Muestra el año de publicación más antiguo.--

SELECT d.anyo 'anyo del disco mas antiguo' FROM discos d ORDER BY d.anyo ASC LIMIT 1;

--18.- Muestra los títulos de los discos, y el número de años que han pasado desde que fueron publicados, ordenado de manera descendente por los años.--

SELECT d.titulo, YEAR(NOW())-d.anyo 'tiempo pasado anyos' FROM discos d ORDER BY d.anyo DESC;

--19.- Muestra, si existen, los títulos de las canciones que siendo distintas, se titulan igual. Muestra además la duración de cada una de ellas.--



--20.- Muestra, eliminando la primera palabra, todos los nombres de grupos con más de una palabra.--

SELECT SUBSTR(g.nombre, INSTR(g.nombre, ' ')+1) 'grupos' FROM grupos g WHERE g.nombre LIKE '% %';











