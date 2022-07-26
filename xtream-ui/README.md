![logo](https://github.com/AAAAAEXQOSyIpN2JZ0ehUQ/IPTV/blob/master/Imagenes/xtreamui-R22F.jpg)

## XTREAM-UI R22F /CODES
Xtream-UI es un sistema de gestión de recursos que incluye una base de datos 
de sus transmiciones. El xtream-ui es compatible con todos los formatos de ubuntu 
server como 16 ,18,y 20 la recomendacion de instalacion es en ubunto 18.4 

## :book: Installation
```
rm install.py* && 
```
```
sudo apt-get update && sudo apt-get upgrade -y
```
```
sudo apt-get update && apt -y dist-upgrade && apt -y autoremove && apt update && apt -y install software-properties-common build-essential sudo iperf3 wget git curl nano bzip2 gzip zip unzip dos2unix iftop htop nload speedometer screen perl bc ca-certificate
```
```
sudo dpkg-reconfigure tzdata
```
```
sudo apt-get install libxslt1-dev libcurl3 libgeoip-dev python -y
```
```
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/install.py; sudo python install.py
```


NOTE 1: si obtiene un error de denegación de permiso de nginx, vuelva a hacer que los binarios de nginx sean ejecutables.
```
sudo chmod +x /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/sbin/nginx_rtmp
sudo chmod +x /home/xtreamcodes/iptv_xtream_codes/nginx/sbin/nginx
sudo /home/xtreamcodes/iptv_xtream_codes/start_services.sh
```


NOTE 2: Si no puede ver las nuevas tablas de la base de datos después de una nueva instalación, agregue un archivo llamado ".update" en la carpeta de administración.
```
sudo touch /home/xtreamcodes/iptv_xtream_codes/admin/.update
sudo /home/xtreamcodes/iptv_xtream_codes/start_services.sh
/home/xtreamcodes/iptv_xtream_codes/start_services.sh
```

**Criar Usurio**
*adduser USUARIO
*usermod -aG sudo USUARIO

## :heavy_exclamation_mark: Requirements
* Un sistema operativo Ubuntu 18.04 Server x86_64
* Se recomienda usar una distro nueva o formateada
* Guia No Oficial [Ver aqui](https://xtream-ui.org/xtream-ui-r22f)
* Instalcion Fuente [Ver aqui](https://lofertech.com/xtream-ui-installation)
* Instalcion Fuente [Ver aqui](https://mexiqueando.site/xtream-ui-r22f-instalacion-paso-a-paso/)
* Tutoriales Emre1393 [Ver aqui](https://www.youtube.com/playlist?list=PLJB51brdC_w7dTDxi1MPqiuk3JH5U2ekn)

## :book: Optional Utilities
1. [xtream-ui.org](https://github.com/xtream-ui-org/xtream-ui-install)
* https://xtream-ui.org/xtream-ui-r22f/
2. [Emre1393](https://bitbucket.org/emre1393/xtreamui_mirror/src/master)
* https://bitbucket.org/emre1393/xtreamui_mirror/
* https://bitbucket.org/emre1393/xtreamui_mirror/downloads/

## :octocat: Credits
1. illuminati Dev Team - Contributor 
```
☆ https://t.me/AAAAAEXQOSyIpN2JZ0ehUQ [  ⃘⃤꙰✰ ] ☆
```
