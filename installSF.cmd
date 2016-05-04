@echo off
:: ## Script Realizado por Carlos A Salazar <csalazart33@gmail.com>
:: ## Si deseas Contribuir puedes hacer un FORK y contribuir al respecto
:: ## En Github https://github.com/csalazart/SF2ShortsCommands 
cls
color 2F
@echo "       =======:::::..  Script Batch por CAST<csalazart33@gmail.com>  ..:::::=======       
@echo.
@echo            =============================================================
@echo            =                                                           =
@echo            =              Iniciando Proyecto Symfony 2.x               =
@echo            =                                                           =
@echo            =============================================================
@echo. 
@echo Para instalar symfony 3 escriba:
@echo installSF nombreProyecto
@echo para instalar symfony 2.8 escriba:
@echo installSF nombreProyecto 2.8
@echo Si desea instalar el demo escriba "demo" como nombre de proyecto o descarguelo de https://github.com/symfony/symfony-demo
@echo Si es lo que desea Hacer Presione cualquier Tecla de lo Contrario presione Cltr + C
pause >null
if NOT EXIST symfony goto nosymfony

SET _PROYECTO=%1
:: @echo php symfony %*
@php symfony new %* 
 

if %_PROYECTO%==demo goto demo
set mensaje=
goto fin

:demo
@SET _PROYECTO=symfony_demo
@echo Has Seleccionado la instalacion del DEMO de symfony 2
@set mensaje=Ejecuta console server:run para Ejecutar la demo y empezar en http://localhost:8000 Empieza a aprender Symfony
goto fin 

:fin
@echo %mensaje%
@echo Instalacion Concluida Ahora Copiando Shorts Cuts a Directorio  %_PROYECTO% 
@copy console.bat %_PROYECTO%\
@cd %_PROYECTO%\
@echo Entrando al Directorio %_PROYECTO% 
color 07
pause

:nosymfony
if EXIST symfony goto fin2
@echo El Archivo de instalacion de symfony no se encuentra debes descargarlo desde la web de http://Symfony.com/donwloads
@echo Si lo has descargado pero no esta en el mismo directorio que este archivo debes copiarlo o declararlo como global en el PATH de windows
color 07

:fin2
@echo. 