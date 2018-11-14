# Consola de Comandos de Symfony 2 de manera Sencilla y corta.
## Esto NO es:

Agregados de Comandos ni cambios a los comandos Básicos de la consola de symfony la consola sigue estando exactamente igual y no se ha tocado su funcionalidad.

## Entonces ¿Qué es ESTO?
    

Esto es un Simple Script escrito para Shell Linux y para Batch de DOS/Windows para hacer mas llevadero las labores de escritura de la consola de comandos en symfony2. Normalmente tenemos que ejecutar **"php app/console comandos ...."** sea en linux o Windows pero en linux muchas veces tenemos adicionalmente que establecer permisos para los archivos de logs o los assets etc etc. por que no lo hacemos con el usuario correcto sobre todo si lo realizamos en servicios de servidores remotos con consolas remotas ssh. Estos scripts permiten que podamos simplificar esta escritura de la manera mas práctica.. usando solo **"console comando ...."**

Todo lo que se hace con la consola de symfony se puede realizar con el script console, solo que te ahorras tener que escribir **"php app/console"** (en sf2) o **"php bin/console"** (en sf3), una manera corta de hacerlo. Adicionalmente un script para inicializar o instalar un proyecto sf3 o sf2.8 y copiar directamente el fichero de console para sf3 o sf2 que corresponda sin tener que hacerlo manualmente.

## Como Usar Estos Archivos

### **Si deseas hacerlo Manual**  

Simple, **copiar los archivos console y/o console.cmd en la carpeta raiz del proyecto symfony y listo** eso es todo luego si tienes, en windows o linux instalado globalmente el php es todo mas sencillo simplemente teclea **console** Seguido del comando symfony normal, Ejemplo:

      console doctrine:schema:create --dump-sql
      
      console list doctrine
      
      console doctrine:mapping:import "MyCustomBundle" xml --force

Console Acepta todos los comandos y sus respectivos parametros de comandos 

## Actualizando a la Instalación actual de Symfony

He agregado 2 archivos adicionales que permiten realizar la instalación de symfony **ejecutar el instalador** y luego Copiar los archivos console y console.cmd dependiendo del sistema operativo y versión de symfony, en la carpeta de instalación.

## Versión 1.2 [Descargar](https://github.com/csalazart/SF2ShortsCommands/releases/tag/1.2)
### Agregando instalador de Symfony "installSF" Para Windows y Linux
En la versión 1.2 se ha agregado el instalador de symofony de la web [symfony.com](http://symfony.com/download) para facilitar el trabajo, este se actualiza cada vez que se lanza el script.  

### Utilizar el script Instalador: 

**Instalación asistida con Menú:**
Inicia la Instalación Asistida por menú donde despliega un menu en la consola del sistema

     installSF 

### Instalación con opciones directas por comando:
Inicia la instalación o inicialización de los proyectos directo sin necesidad de utilizar el menú contextual de ayuda.

**Iniciar proyecto symfony 3.x**:
      
      installSF NombreProyecto  

**Iniciar proyecto Symfony 2.8** 

      installSF NombreProyecto 2.8 

**Instalar Demo de Symfony 2.8**:

     installSF demo

**Instalar demo Symfony 2 Clone de git** (Necesita tener git):

     installSF demogit

Donde el **nombreProyecto** será la carpeta donde se instalará la versión de symfony elegida 

***
### Actual Versión : [Versión 1.2](https://github.com/csalazart/SF2ShortsCommands/releases/tag/1.2)

### Fuente : [https://github.com/csalazart/SF2ShortsCommands](https://github.com/csalazart/SF2ShortsCommands) 

### Author:
- [Carlos A Salazar](https://github.com/csalazart) <csalazart>
