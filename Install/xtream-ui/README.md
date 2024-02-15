![logo](https://github.com/AAAAAEXQOSyIpN2JZ0ehUQ/IPTV/blob/master/Imagenes/xtreamui-R22F.jpg)

## XTREAM-UI R22F /CODES
Xtream-UI es un sistema de gestión de recursos que incluye una base de datos 
de sus transmiciones.

## :book: Installation
```bash
apt-get update -y 
```
```bash
apt-get upgrade -y
```
```bash
apt-get autoremove -y
```
```bash
apt-get autoclean -y
```
```bash
apt-get install iperf3 wget git curl nano bzip2 gzip zip unzip dos2unix iftop htop nload speedometer screen perl bc ca-certificate -y
```
```bash
apt-get dpkg-reconfigure tzdata
```
```bash
apt-get install software-properties-common build-essential -y
```
```bash
apt-get apt-get install libxslt1-dev libcurl3 libgeoip-dev python -y
```
```bash
rm -rf install.py* 
```
```bash
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/install.py 
```
```bash
python install.py 
```

## :book: Nginx permissions
NOTE 1: Si obtiene un error de denegación de permiso de nginx, vuelva a hacer que los binarios de nginx sean ejecutables.
```bash
chmod +x /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/sbin/nginx_rtmp
```
```bash
chmod +x /home/xtreamcodes/iptv_xtream_codes/nginx/sbin/nginx
```
```bash
/home/xtreamcodes/iptv_xtream_codes/start_services.sh
```

## :book: Tables and .update Files
NOTE 2: Si no puede ver las nuevas tablas de la base de datos después de una nueva instalación, agregue un archivo llamado ".update" en la carpeta de administración.
```bash
touch /home/xtreamcodes/iptv_xtream_codes/admin/.update
```
```bash
/home/xtreamcodes/iptv_xtream_codes/start_services.sh
```
```bash
/home/xtreamcodes/iptv_xtream_codes/start_services.sh
```

## :heavy_exclamation_mark: Requirements
* Version recomendada: Ubuntu 18.04 Server x86_64
* Se sugiere utilizar una distribución reciente o recién formateada
* El idioma predeterminado es el ingles

## :book: Utilities of the developer
* Guia Oficial [Website Ver aqui](https://xtream-ui.org/xtream-ui-r22f) | [Github Ver aqui](https://github.com/xtream-ui-org/xtream-ui-install)
* Instalcion Fuente [Lofertech Ver aqui](https://lofertech.com/xtream-ui-installation) | [Mexiqueando Ver aqui](https://mexiqueando.site/xtream-ui-r22f-instalacion-paso-a-paso/)
* Tutoriales Emre1393 [Ver aqui](https://www.youtube.com/playlist?list=PLJB51brdC_w7dTDxi1MPqiuk3JH5U2ekn)
* Librerias del developer [Emre1393](https://bitbucket.org/emre1393/xtreamui_mirror/src/master)
* https://bitbucket.org/emre1393/xtreamui_mirror/downloads

## :octocat: Credits
1. [illuminati Dev Team](https://t.me/AAAAAEXQOSyIpN2JZ0ehUQ) - Contributor 
```
☆ https://t.me/AAAAAEXQOSyIpN2JZ0ehUQ [  ⃘⃤꙰✰ ] ☆
```
