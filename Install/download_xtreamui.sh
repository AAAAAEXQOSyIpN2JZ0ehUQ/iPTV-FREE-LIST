#!/bin/bash

# Definir directorio base
BASE_DIR=~/xtreamui_mirror
DOWNLOAD_DIR=${BASE_DIR}/Download_repository

# Crear directorios
mkdir -p ${BASE_DIR}
mkdir -p ${DOWNLOAD_DIR}

# Cambiar al directorio base
cd ${BASE_DIR}

# Descargar archivos principales
wget -q https://bitbucket.org/emre1393/xtreamui_mirror/raw/a86a37504b2f619201467fdd121a9786d7da1793/README.md
wget -q https://bitbucket.org/emre1393/xtreamui_mirror/raw/a86a37504b2f619201467fdd121a9786d7da1793/install.py

# Cambiar al directorio de descargas
cd ${DOWNLOAD_DIR}

# Descargar archivos de la carpeta Download_repository
FILES=(
    "https://bitbucket.org/emre1393/xtreamui_mirror/get/a86a37504b2f.zip"
    "https://bitbucket.org/emre1393/xtreamui_mirror/downloads/Geolite2_status.json"
    "https://bitbucket.org/emre1393/xtreamui_mirror/downloads/GeoLite2.mmdb"
    "https://bitbucket.org/emre1393/xtreamui_mirror/downloads/nginx_rtmp"
    "https://bitbucket.org/emre1393/xtreamui_mirror/downloads/nginx"
    "https://bitbucket.org/emre1393/xtreamui_mirror/downloads/balancer.py"
    "https://bitbucket.org/emre1393/xtreamui_mirror/downloads/install.py"
    "https://bitbucket.org/emre1393/xtreamui_mirror/downloads/newstuff.zip"
    "https://bitbucket.org/emre1393/xtreamui_mirror/downloads/xmltv.php"
    "https://bitbucket.org/emre1393/xtreamui_mirror/downloads/player_api.php"
    "https://bitbucket.org/emre1393/xtreamui_mirror/downloads/panel_api.php"
    "https://bitbucket.org/emre1393/xtreamui_mirror/downloads/release_22f.zip"
    "https://bitbucket.org/emre1393/xtreamui_mirror/downloads/xc_sorted_devices.sql"
    "https://bitbucket.org/emre1393/xtreamui_mirror/downloads/config.py"
    "https://bitbucket.org/emre1393/xtreamui_mirror/downloads/clearlogs.sh"
    "https://bitbucket.org/emre1393/xtreamui_mirror/downloads/pid_monitor.php"
    "https://bitbucket.org/emre1393/xtreamui_mirror/downloads/sub_xtreamcodes_reborn.tar.gz"
    "https://bitbucket.org/emre1393/xtreamui_mirror/downloads/main_xtreamcodes_reborn.tar.gz"
)

for FILE_URL in "${FILES[@]}"; do
    wget -q ${FILE_URL}
done

# Volver al directorio inicial
cd ~

# Fin del script
