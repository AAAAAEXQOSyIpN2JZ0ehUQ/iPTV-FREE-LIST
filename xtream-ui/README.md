![logo](https://github.com/AAAAAEXQOSyIpN2JZ0ehUQ/IPTV/blob/master/Imagenes/xtreamui-R22F.jpg)

## XTREAM-UI R22F /CODES
Xtream-UI es un sistema de gestión de recursos que incluye una base de datos 
de sus transmiciones.

## :book: Installation
```bash
sudo apt-get update -y;
sudo apt-get upgrade -y;
sudo apt-get autoremove -y;
sudo apt-get autoclean -y;
sudo apt-get iperf3 wget git curl nano bzip2 gzip zip unzip dos2unix iftop htop nload speedometer screen perl bc ca-certificate; 
sudo apt-get dpkg-reconfigure tzdata;
sudo apt-get install software-properties-common build-essential;
sudo apt-get apt-get install libxslt1-dev libcurl3 libgeoip-dev python -y;
```

```bash
sudo rm install.py*;
sudo wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/install.py; 
sudo python install.py
```

## :book: PERMISOS DE NGINX
NOTE 1: Si obtiene un error de denegación de permiso de nginx, vuelva a hacer que los binarios de nginx sean ejecutables.
```
sudo chmod +x /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/sbin/nginx_rtmp
sudo chmod +x /home/xtreamcodes/iptv_xtream_codes/nginx/sbin/nginx
sudo /home/xtreamcodes/iptv_xtream_codes/start_services.sh
```


## :book: TABLAS Y ARCHIVO .UPDATE
NOTE 2: Si no puede ver las nuevas tablas de la base de datos después de una nueva instalación, agregue un archivo llamado ".update" en la carpeta de administración.
```
sudo touch /home/xtreamcodes/iptv_xtream_codes/admin/.update
sudo /home/xtreamcodes/iptv_xtream_codes/start_services.sh
sudo /home/xtreamcodes/iptv_xtream_codes/start_services.sh
```

------------------------------------
**Criar Usurio**                  
* adduser USUARIO                 
* usermod -aG sudo USUARIO        
------------------------------------

## :heavy_exclamation_mark: Requirements
* Un sistema operativo Ubuntu 18.04 Server x86_64
* Se recomienda usar una distro nueva o formateada
* Tutoriales Emre1393 [Ver aqui](https://www.youtube.com/playlist?list=PLJB51brdC_w7dTDxi1MPqiuk3JH5U2ekn)
* Guia No Oficial [Website Ver aqui](https://xtream-ui.org/xtream-ui-r22f) | [Github Ver aqui](https://github.com/xtream-ui-org/xtream-ui-install)
* Instalcion Fuente [Lofertech Ver aqui](https://lofertech.com/xtream-ui-installation) | [Mexiqueando Ver aqui](https://mexiqueando.site/xtream-ui-r22f-instalacion-paso-a-paso/)

## :book: Utilities of the developer
**[Emre1393](https://bitbucket.org/emre1393/xtreamui_mirror/src/master)**
* https://bitbucket.org/emre1393/xtreamui_mirror/
* https://bitbucket.org/emre1393/xtreamui_mirror/downloads/

## :octocat: Credits
1. illuminati Dev Team - Contributor 
```
☆ https://t.me/AAAAAEXQOSyIpN2JZ0ehUQ [  ⃘⃤꙰✰ ] ☆
```
