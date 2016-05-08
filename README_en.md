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

## Updating to the current Installing Symfony

Cluster 2 additional files that allow the installation of Symfony **run the installer** and then copy the files from the console and console.cmd depending on the operating system and version of Symfony in the installation folder.

## Version 1.2  [Download](https://github.com/csalazart/SF2ShortsCommands/releases/tag/1.2)
### Adding installer Symfony and practical script for windows and linux OS console command 

In version 1.2 has been added installer symofony from the web [symfony.com] (http://symfony.com/download) to make easy the work of installing, this is updated each time the script is launched. You cand download the script your self if you want.

### How to use the new Script Shell file
Exist 2 way to launch the script, just no parameters, with is show a menu shell to help you to create and guide on the instalations and initialize the folders of your project; and the direct way script, where you can put parameters and create directy your project without menu display.

**Menu assistance way:** 
Starts assisted installation menu that displays a menu on the system console 
    
    installSF

### Installer with commands options:
Starts instalation or initialize the projects folders without show helped menu shell 

**Create new symfony 3.x Project**:
      
      installSF ProjectName  

**Create new Symfony 2.8 Project** 

      installSF PrjectName 2.8 

**Install Symfony 2.8 Demo**:

     installSF demo

**Install Symfony 2.8 demo from git** (this way need installed git):

     installSF demogit

Where **ProjectName** is the name and folder where the symfony installation will take place.

***

### Source: [https://github.com/csalazart/SF2ShortsCommands](https://github.com/csalazart/SF2ShortsCommands)

### Author:
- Carlos A Salazar <csalazart>
- "[GitHub]"(https://github.com/csalazart)
