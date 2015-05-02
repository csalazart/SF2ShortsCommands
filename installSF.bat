REM ## Script Realizado por Carlos A Salazar <csalazart33@gmail.com>
REM ## Si deseas Contribuir puedes hacer un FORK y contribuir al respecto
REM ## En Github https://github.com/csalazart/SF2ShortsCommands 

@echo off
@echo =======> Script Batch por CAST<csalazart33@gmail.com> <=======
@echo 
@echo  =============================================================
@echo  =                                                           =
@echo  =              Iniciando Proyecto Symfony 2.x               =
@echo  =                                                           =
@echo  =============================================================
@SET _PROYECTO=%1
@echo php symfony %*
@php symfony %* 

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
@echo Instalación Concluida Ahora Copiando Shorts Cuts a Directorio  %_PROYECTO% 
@copy console.bat %_PROYECTO%\
@cd %_PROYECTO%\
@echo Entrando al Directorio %_PROYECTO% 
goto:eof
REM Script 
pause
exit

