@echo off
@echo "Instalando Symfony 2 .."
@echo php symfony %*
@php symfony %* 
@echo "Instalaci�n Concluida Ahora Pasando Shorts Cuts a Directorio " %1
@copy console.bat %1\
