# IPTV
 
**iPTV Free List**

 
```
* Canales de TV y Radios online
* Cambios: Update List IPTV
* Ultima actualizacion: 18 10 2020 

* Playlist: https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/IPTV/master/iPTV-Free-List

* Playlist: https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/IPTV/master/iPTV-Free-List.m3u

```

```
Para ver los logos en Kodi:

    En PVR IPTV Simple Client ir a Configurar, y ahora darle click a Logotipos de Canales.
    En Ubicacion elegir ruta remota.
    En URL de la Base Logotipos de Canales: http://i.imgur.com/

* Pueden usar esta lista en: PC, Mac, iPhone, Android, Linux, Raspberry Pi, Smart TV, etc.
```

-------------------------------------------------------------------------------

## XTREMECODES UI - r22F

![logo](https://github.com/AAAAAEXQOSyIpN2JZ0ehUQ/IPTV/blob/master/Imagenes/Xtreme-UI.png)

## :heavy_exclamation_mark: Requerimientos 

* Usar Ubuntu 18.04 Server x86_64
* Usar una distro nueva o formatiada

-------------------------------------------------------------------------------

## Ubuntu 18 Update Source List**

wget -O /etc/apt/sources.list https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/ADM-ULTIMATE-NEW-FREE/master/Install/Sources_list/18.04/sources.list

-------------------------------------------------------------------------------

## Installation

apt-get update -y && apt-get upgrade -y

apt-get update ; apt-get install libxslt1-dev libcurl3 libgeoip-dev python ; wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/IPTV/master/Install-Panel/install.py; sudo python install.py


/home/xtreamcodes/iptv_xtream_codes/start_services.sh

-------------------------------------------------------------------------------

apt-get install e2fsprogs -y && chattr -i /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb && wget https://archive.org/download/geolite2_201910/GeoLite2.mmdb -O /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb && chattr +i /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb


sudo apt-get install libcurl3 -y


/home/xtreamcodes/iptv_xtream_codes/start_services.sh


find /home/xtreamcodes/ -not -name "GeoLite2.mmdb" -print0 | xargs -0 chown xtreamcodes:xtreamcodes

-------------------------------------------------------------------------------

CREDITOS A: https://github.com/primercs/

CREDITOS A: https://bitbucket.org/primercs/xtreamui_mirror/downloads/

-------------------------------------------------------------------------------

**By: [  ⃘⃤꙰✰ ]**
