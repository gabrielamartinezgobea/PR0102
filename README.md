# PR0102
Despliegue de Aplicaciones Web  Curso 2026/2027
## Introducción

En esta práctica se realiza la instalación y configuración de Webmin sobre un sistema Ubuntu Server instalado en una máquina virtual mediante Oracle VirtualBox.
El objetivo es instalar y configurar Webmin, comprobar su funcionamiento y documentar el proceso mediante Markdown, capturas de pantalla y scripts.

## 1. Instalación de Ubuntu

PASO INICIAL:
CREAR UNA MAQUINA VIRTUAL VM: para esto, descargo Virtual Box Oracle de esta pagina https://www.oracle.com/es/virtualization/technologies/vm/downloads/virtualbox-downloads.html?source=:ow:o:p:nav:mmddyyVirtualBoxHero_es&intcmp=:ow:o:p:nav:mmddyyVirtualBoxHero_es y el ISO de la VM Ubuntu Server 
Especificaciones importantes: Placa Base: 3072 MB – 2 discos duros / Red: Adaptador 1 NAT. Adaptador 2 Red solo anfitrión
IMPORTANTE: durante la instalación no olvidar activar (x) SSH para que la VM tenga el servicio SSH ![Versión de Ubuntu](images/VM creacion.png)

## 2. Entorno de trabajo

* Sistema operativo: Ubuntu Server
* Virtualización: Oracle VirtualBox
* Herramienta de administración: Webmin
* Repositorio usado: GitHub en modo público

## 3. Instalación y configuración de Ubuntu


### 3.1. Comprobación del sistema

*Para comprobar la instalacion del UBUNTU se hizo el comando lsb-release - a. Lo cual dio como resultado que el sistema utilizado en esta práctica es Ubuntu 26.04.1 LTS, versión 26.04, con nombre en clave resolute.![Versión de Ubuntu](images/01-version-ubuntu.png)

### 3.2. Actualización de los repositorios

Para que todos los paquetes esten disponibles se hizo un sudo apt update y para que estén actualizados se hizo un sudo apt upgrade 
![Versión de Ubuntu](images/03-actualizacion-repositorios.png)

### 3.3. Actualización del sistema

## 4. Configuración de SSH
 

### 4.1. Instalación de SSH
Se hizo un sudo apt install openss-server y dio como resultado que ya los paquetes estaban instalados (se debe a que en un inicio al instalar la VM pusimos manualmente (x) que instale el OpenSSH.

### 4.2. Comprobación del servicio SSH
así que después de este mensaje se coloca en comando: sudo systemctl status ssh para ver si realmente el servicio SSH está en Active: running 
![Versión de Ubuntu](images/03-ssh-status.png)


## 5. Instalación de Webmin

### 5.1. Preparación del sistema
se instala el curl con sudo apt install curl. Si ya lo tienes instalado se hacer por linea de comando: curl --version para saber la versión que tienes


### 5.2. Instalación de Webmin

hacemos curl -o webmin-setup-repo.sh https://raw.githubusercontent.com/webmin/webmin/master/webmin-setup-repo.sh por linea de comando para que pueda descargar el webmin.sh en la VM 
luego hacemos ls -l webmin-setup-repo.sh y si aparece es que realmente se descargó. ![InstalandoWebmin](images/05-descarga-repo.png)


### 5.3. Comprobación de la instalación
Hacemos ls -l webmin-setup-repo.sh y si aparece es que realmente se descargó y vemos sus permisos. Ahora deberemos hacer sudo chmod +x webmin... para darle permisos de ejecución y que podamos hacer scripts. ![InstalandoWebmin](images/05-webmin-script-permisos.png)

Luego poner en linea de comando sudo apt install webmin para que realmente ejecute el webmin que ya tiene los permisos ![InstalandoWebmin](images/05-webmin-repositorio.png)


## 6. Configuración del firewall

Ahora hemos hecho por comando sudo systemctl status webmin para comprobar que tenemos en Active running  ![InstalandoWebmin](images/06-webmin-status.png) 
.

### 6.1. Configuración de los puertos necesarios
para asegurarnos que webmin está escuchando el puerto que generalmente es el 10000 ponemos por linea de comando sudo ss  -tulpn | grep 10000 y tiene que arrojar los resultados como listen 0.0.0.10000.... ![InstalandoWebmin](images/07-puerto-10000.png) 


### 6.2. Comprobación del firewall

Hacemos en linea de comando ip a para ver nuestro ip de la VM: usaremos el de enpOs8 que nos da como inet 192.168.x.x/24... y eso lo colocamos en un navegador por ejemplo Chrome. 

## 7. Acceso a Webmin


### 7.1. Acceso mediante navegador
Para acceder al Webmin debemos poner el usuario y contraseña con la que accedemos como root desde la VM  ![InstalandoWebmin](images/07-webmin-acceso.png)
![InstalandoWebmin](images/08-panel-webmin.png) 


### 7.2. Comprobación del funcionamiento

## 8. Automatización mediante script

### 8.1. Creación del script

### 8.2. Funcionamiento del script

### 8.3. Ejecución y comprobación

## 9. Estructura del repositorio

```text
Practica-0102/
├── README.md
├── images/
└── scripts/
```

## 10. Conclusiones

En esta práctica se ha realizado la instalación y configuración de Webmin sobre Ubuntu Server y se ha documentado el procedimiento para facilitar su reproducción posterior.

### Comprobación de la versión
