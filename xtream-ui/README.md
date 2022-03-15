## :book: Installation XTREMECODES UI - r22F

![logo](https://github.com/AAAAAEXQOSyIpN2JZ0ehUQ/IPTV/blob/master/Imagenes/xtreamui-R22F.jpg)

## :heavy_exclamation_mark: Requerimientos 

* Usar Ubuntu 18.04 Server x86_64
* Usar una distro nueva o formatiada
* Guia Oficial https://xtream-ui.org/xtream-ui-r22f/
* Instalcion Fuente https://lofertech.com/xtream-ui-installation
* Tutoriales Emre1393 https://www.youtube.com/playlist?list=PLJB51brdC_w7dTDxi1MPqiuk3JH5U2ekn

## Installation

```
Criar Usurio

    adduser USUARIO
    usermod -aG sudo USUARIO
```
rm install.py && rm install.py.1;

sudo apt-get update && sudo apt-get upgrade -y;

sudo apt-get update && apt -y dist-upgrade && apt -y autoremove && apt update && apt -y install software-properties-common build-essential sudo iperf3 wget git curl nano bzip2 gzip zip unzip dos2unix iftop htop nload speedometer screen perl bc ca-certificate

sudo dpkg-reconfigure tzdata

sudo apt-get install libxslt1-dev libcurl3 libgeoip-dev python -y ;

wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/IPTV/master/xtream-ui/install.py; sudo python install.py

cat /dev/null > ~/.bash_history && history -c;

**not1: si obtiene un error de denegación de permiso de nginx, vuelva a hacer que los binarios de nginx sean ejecutables.**

sudo chmod +x /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/sbin/nginx_rtmp
sudo chmod +x /home/xtreamcodes/iptv_xtream_codes/nginx/sbin/nginx
sudo /home/xtreamcodes/iptv_xtream_codes/start_services.sh

**not2: Si no puede ver las nuevas tablas de la base de datos después de una nueva instalación, agregue un archivo llamado ".update" en la carpeta de administración.**

sudo touch /home/xtreamcodes/iptv_xtream_codes/admin/.update

sudo /home/xtreamcodes/iptv_xtream_codes/start_services.sh

/home/xtreamcodes/iptv_xtream_codes/start_services.sh

-------------------------------------------------------------------------------

## :book: Installation ALternas

https://bitbucket.org/emre1393/xtreamui_mirror/src/master/

https://bitbucket.org/primercs/xtreamui_mirror/src/master/

-------------------------------------------------------------------------------

## :octocat: Credits

* https://bitbucket.org/emre1393/xtreamui_mirror/
* https://bitbucket.org/emre1393/xtreamui_mirror/downloads/
* https://github.com/primercs/
* https://bitbucket.org/primercs/xtreamui_mirror/
* https://bitbucket.org/primercs/xtreamui_mirror/downloads/

