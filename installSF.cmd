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
@echo Puedes Utiliar este Script de manera Directa Sin el Menu:
@echo .....Para iniciar un proyecto symfony 3 escribe: "installSF nombreProyecto"
@echo.
@echo .....Para iniciar un proyecto symfony 2.8 escribe: "installSF nombreProyecto 2.8"
@echo.
@echo .....Para Iniciar el proyecto demo  y clonar desde github escribe "installSF demogit" Necesitas git instalado o descarguelo de https://github.com/symfony/symfony-demo
@echo.
@echo ..Si deseas continuar con el Menu Interactivo Presione cualquier Tecla de lo Contrario presione Cltr + C
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
@echo            =   3. Iniciar Proyecto SF 3.X Demo Clone (Necesita Git)    =
@echo            =   q. Salir                                                =
@echo            =                                                           =
@echo            =============================================================
@echo. 
SET /p _opcion=
if %_opcion% ==1 goto capture
if %_opcion% ==2 goto capture
if %_opcion% ==3 goto demogit
if %_opcion% ==q goto fin2

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
if %1 == demogit goto demogit
SET _PROYECTO=%1
if %2.==. goto sf3
REM genera proyecto 2.8 por entrada directa sin Menu 
@php symfony new %_PROYECTO%
@set ver=
goto fin

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

:demogit
@SET _PROYECTO=symfony-demo
@echo Generando symfony para %_PROYECTO% 
@git clone https://github.com/symfony/symfony-demo.git
@echo Has Seleccionado Clonar del repositorio el DEMO de symfony 3
@set mensaje=Ejecuta el comando "console server:run" para Ejecutar la demo y empezar en http://localhost:8000 Empieza a aprender Symfony
@set ver=3
goto fin

:fin
@echo %mensaje%
@echo Instalacion Concluida Ahora Copiando Shorts Cuts a Directorio  %_PROYECTO% 
@copy console%ver%.cmd %_PROYECTO%\console.cmd
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