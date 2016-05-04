# Consola de Comandos de Symfony 2 de manera Sencilla y corta.
## Esto NO es:


Agregados de Comandos ni cambios a los comandos Básicos de la consola de symfony la consola sigue estando exactamente igual y no se ha tocado su funcionalidad.

## Entonces ¿Qué es ESTO?
    

Esto es un Simple Script escrito para Shell Linux y para Batch de DOS para hacer mas llevadero las labores de escritura de la consola de comandos en symfony2. Normalmente tenemos que ejecutar **"php app/console comandos ...."** sea en linux o Windows pero en linux muchas veces tenemos adicionalmente que establecer permisos para los archivos de logs o los assets etc etc. por que no lo hacemos con el usuario correcto sobre todo si lo realizamos en servicios de servidores remotos con consolas remotas ssh. Estos scripts permiten que podamos simplificar esta escritura de la manera mas práctica.. usando solo **"console comando ...."**

## Como Usar Estos Archivos
    

Simple, **copiar los archivos console y/o console.bat en la carpeta raiz del proyecto symfony y listo** eso es todo luego si tienes, en windows o --nix instalado globalmente el php es todo mas sencillo simplemente teclea **console** Seguido del comando symfony normal, Ejemplo:

      console doctrine:schema:create --dump-sql
      
      console list doctrine
      
      console doctrine:mapping:import "MyCustomBundle" xml --force
      

Console Acepta todos los comandos y sus respectivos parametros de comandos 

## Actualizando a la Instalación actual de Symfony

He agregado 2 archivos adicionales que permiten realizar la instalación de symfony **ejecutar el instalador** y luego Copiar los archivos console y console.bat dependiendo del sistema operativo claro.. en la carpeta de instalación.

### Agregando instalador de Symfony    
Deben agregar el instalador como se describe en la página de [symfony.com](http://symfony.com/download) y luego ejecutar el archivo correspondiente a su sistema installSF. 
Utilizar el Instalador simplemente escribir: 
**Instalar symfony 3     
	  installSF NombreProyecto
**Instalar Symfony 2.8
      installSF NombreProyecto 2.8
	  
Donde el nombreProyecto puede ser demo para instalar la versión demo o bien el nombre de tu proyecto sf 

