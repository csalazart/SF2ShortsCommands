@echo off
REM :: ## Script Realizado por Carlos A Salazar <csalazart33@gmail.com>
REM :: ## Si deseas Contribuir puedes hacer un FORK y contribuir al respecto
REM :: ## En Github https://github.com/csalazart/SF2ShortsCommands 
cls
color 2F
@echo. 
@echo "      =======:::::..  Script Batch por CAST<csalazart33@gmail.com>  ..:::::=======   
@echo.
@echo                  Versión 1.2  https://github.com/csalazart/SF2ShortsCommands     
@echo.
@echo            =============================================================
@echo            =                                                           =
@echo            =              Iniciando Proyecto Symfony                   =
@echo            =                                                           =
@echo            =============================================================
@echo. 
@echo Para instalar symfony 3 escriba:
@echo installSF nombreProyecto
@echo para instalar symfony 2.8 escriba:
@echo installSF nombreProyecto 2.8
@echo Si desea instalar el demo escriba "demo" como nombre de proyecto o descarguelo de https://github.com/symfony/symfony-demo
@echo Si es lo que desea Hacer Presione cualquier Tecla de lo Contrario presione Cltr + C
if NOT EXIST symfony goto nosymfony
@echo Actualizando Dependencias de symfony
@php symfony self-update
pause.

IF NOT %1.==. GOTO generar

:menu
@echo.
@echo            =============================================================
@echo            =                   Que desea Hacer ?                       =
@echo            =                      Opciones                             =
@echo            =                                                           =
@echo            =   1. Iniciar Proyecto SF 2.8.X LST                        =
@echo            =   2. Iniciar Proyecto SF 3.X Last Release                 =
@echo            =   3. Iniciar Proyecto SF 3.X Demo                         =
@echo            =   4. Clonar Proyecto SF 3.X Demo (Necesita Git)           =
@echo            =   5. Salir                                                =
@echo            =                                                           =
@echo            =============================================================
@echo. 
SET /p _opcion=
if %_opcion% ==1 goto capture
if %_opcion% ==2 goto capture
if %_opcion% ==3 goto demo
if %_opcion% ==4 goto demogit
if %_opcion% ==5 goto fin2

:capture
@echo Ingresa el Nombre del Proyecto y presiona enter
SET /p _entrada_=
SET _PROYECTO=%_entrada_%
@echo Generando symfony para %_PROYECTO% 
@echo ..::Esto puede tardar un poco::..
@set mensaje=Ejecuta el comando "console server:run" para Ejecutar el servidor en http://localhost:8000
if %_opcion% ==1 goto sf28
if %_opcion% ==2 goto sf3 

:generar
SET _PROYECTO=%1


:sf28
REM ::if %_PROYECTO%==demo goto demo
@php symfony new %_PROYECTO% 2.8
@set ver=
goto fin

:sf3
REM ::if %_PROYECTO%==demo goto demo
@php symfony new %_PROYECTO%
@set ver=3
goto fin

:demo
@SET _PROYECTO=symfony_demo
@echo Generando symfony para %_PROYECTO% 
@php symfony new demo
@echo Has Seleccionado la instalacion del DEMO de symfony 2
@set mensaje=Ejecuta el comando "console server:run" para Ejecutar la demo y empezar en http://localhost:8000 Empieza a aprender Symfony
@set ver=3
goto fin

:demogit
@SET _PROYECTO=symfony-demo
@echo Generando symfony para %_PROYECTO% 
@git clone https://github.com/symfony/symfony-demo.git
@echo Has Seleccionado Clonar del repositorio el DEMO de symfony 3
@set mensaje=Ejecuta el comando "console server:run" para Ejecutar la demo y empezar en http://localhost:8000 Empieza a aprender Symfony
goto fin

:fin
@echo %mensaje%
@echo Instalacion Concluida Ahora Copiando Shorts Cuts a Directorio  %_PROYECTO% 
@copy console%ver%.cmd %_PROYECTO%\
@cd %_PROYECTO%\
@echo Entrando al Directorio %_PROYECTO% 
color 07
pause
goto fin2

:nosymfony
if EXIST symfony goto fin2
@echo El Archivo de instalacion de symfony no se encuentra debes descargarlo desde la web de http://Symfony.com/donwloads
@echo Si lo has descargado pero no esta en el mismo directorio que este archivo debes copiarlo o declararlo como global en el PATH de windows
color 07

:fin2
color 07
@echo Finalizado Instalación de Symfony
@echo ..::Si tienes Comentarios Por Favor Escribelos al email csalazart33@gmail.com::..
@echo ..::Vista https://github.com/csalazart/SF2ShortsCommands::..
@echo ..::Gracias por utilizar esta Herramienta::..
@echo. 