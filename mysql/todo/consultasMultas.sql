--Alexis calderon --
-- 1) Muestra el DNI y campo nombre de todas las personas --
SELECT DNI,NOMBRE FROM PERSONAS;

-- 2) Muestra el campo nombre de todas las personas cuyo primer apellido es 'GOMEZ' --
SELECT NOMBRE FROM PERSONAS WHERE NOMBRE LIKE 'GOMEZ%';

-- 3) Muestra el campo nombre de todas las personas cuyo nombre sin contar el apellido comienza por 'J’.--
SELECT NOMBRE FROM PERSONAS WHERE NOMBRE LIKE '%, J%';

-- 4) Muestra todos los nombres, sin contar el apellido. --
SELECT SUBSTR(NOMBRE, INSTR(NOMBRE, ',')+2) FROM PERSONAS;

-- 5) Muestra todos los nombres, sin contar el apellido, cuando comiencen por 'M'. --
SELECT SUBSTR(NOMBRE, INSTR(NOMBRE, ',')+2) FROM PERSONAS WHERE NOMBRE LIKE '% M%';

-- 6) Muestra la suma del total de importes en multas. --
SELECT SUM(IMPORTE) "SUMA DE MULTAS TOTAL" FROM MULTAS;

-- 7) Muestra el valor medio del importe de las multas, el importe máximo y el mínimo. --
SELECT AVG(IMPORTE) MEDIA, MIN(IMPORTE) MINIMO, MAX(IMPORTE) MAXIMO FROM MULTAS;

-- 8) Muestra el valor medio del importe de las multas, redondeado a 2 decimales al alza.--
SELECT ROUND(AVG(CAST(IMPORTE AS FLOAT)), 2) FROM MULTAS;

-- 9) Muestra el DNI de las personas cuyo nombre (no apellido), empieza por 'A'. --
SELECT SUBSTR(DNI, INSTR(NOMBRE, ',')+2) FROM PERSONAS WHERE NOMBRE LIKE '% A%';

-- 10) Muestra el número de multas que hay. --
SELECT COUNT(REF) "NUMERO DE MULTAS" FROM MULTAS;

-- 11) Muestra la referencia (ref), e importe de las multas a las que tras aplicarles el 15% de recargo no superen los 100 €. --

-- 12) Muestra todos los importes de las multas, ordenados de mayor a menor, y sin repetir. --
SELECT COUNT(DISTINCT IMPORTE) FROM MULTAS ORDER BY DESC;

-- 13) Muestra todas las matrículas modernas --
SELECT MATRICULA FROM MATRICULAS WHERE MATRICULA LIKE '%-___';

-- 14)Muestra el número de vehículos que han sido multados alguna vez. --
SELECT COUNT(MATRICULA) "NUMERO DE VEHICULOS MULTADOS" FROM MATRICULAS WHERE MATRICULAS.MATRICULA = MULTAS.MATRICULA;

