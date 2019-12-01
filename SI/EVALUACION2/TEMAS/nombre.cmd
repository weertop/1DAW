
@echo off
:menu 
cls 
color b 
title BIENVENIDO 
echo. 
echo BIENVENIDO %USERNAME% 
ECHO. 
ECHO ELIJE UNA OPCION... 
ECHO. 
ECHO ======================================== === 
ECHO = 1. NOMBRE  == 
ECHO = 2. SUMAR  == 
ECHO = 3. SALIR == 
ECHO ======================================== === 
ECHO. 
SET /P ver= QUE DESEA HACER? 
if %ver%==1 goto nombre 
if %ver%==2 goto sumar 
if %ver%==3 goto salir 

:nombre 
SET NOMBRE=Pepe
echo HOLA %NOMBRE%
pause
exit

:sumar 
SET numero1=2
SET numero2=43
SET /A suma=%numero1% + %numero2%
echo %suma%
pause
exit

:salir 
echo voy a salir
pause
exit