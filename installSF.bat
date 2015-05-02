@echo off
@echo "Instalando Symfony 2 .."
@echo php symfony %*
@php symfony %* 
@echo "Instalación Concluida Ahora Pasando Shorts Cuts a Directorio " %1
@copy console.bat %1\
