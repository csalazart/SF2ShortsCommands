# Command Console Symfony 2 Simple and short way.
## This is not:


Command changes or additions to the Basic Command Console console symfony remains exactly the same and has not touched its functionality.

## Then what is this?

This is a Simple Shell Script written for Linux and DOS Batch to make more bearable the work of writing the command console in Symfony2. We usually have to run **"php app / console commands ...."** is on Linux or Windows but on Linux often have further to set permissions for the log files or assets etc etc. why not do it with the correct user especially if services performed in remote servers with ssh remote consoles. These scripts allow us to simplify the writing of the most practical manner .. using only **"console command ...."**


## How to use these files

Simple, **copy files console and / or console.bat in the root folder symfony project and done** that's it then if you have, in windows or --nix globally installed php is all easier simply type **console** Following the symfony console command standard, Example:

      console doctrine:schema:create --dump-sql

      console list doctrine

      console doctrine:mapping:import "MyCustomBundle" xml --force


Console supports all the commands and their command parameters

##Updating to the current Installing Symfony

I have added two additional files that allow the installation of symfony **run the installer** and then copy the files and console.bat console depending on the operating system of course, in the installation folder.


### Adding installer Symfony

Must add the installer as described on page [symfony.com] (http://symfony.com/download) and then run the system for your installSF file.

