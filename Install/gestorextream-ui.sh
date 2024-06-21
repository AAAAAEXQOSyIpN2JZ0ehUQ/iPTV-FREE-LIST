#!/bin/bash

# Verificar si el script se ejecuta como root
if [ "$EUID" -ne 0 ]; then
  echo -e "\n\033[1;31mPor favor, ejecuta este script como root o usando sudo.\n\033[0m"
  exit
fi

# Función para instalar bibliotecas y dependencias
install_libraries () {
  echo -e "\n\033[1;36mInstalando bibliotecas y dependencias...\n\033[1;32m"
  apt-get update -y 
  apt-get upgrade -y 
  apt-get autoremove -y 
  apt-get autoclean -y 
  apt-get install -y iperf3 wget git curl nano bzip2 gzip zip unzip dos2unix iftop htop nload speedometer screen perl bc ca-certificates software-properties-common build-essential libxslt1-dev libcurl3 libgeoip-dev python tzdata
  dpkg-reconfigure tzdata 
}

# Función para instalar Xtream-UI
install_xtreamui () {
  echo -e "\n\033[1;36mInstalando Xtream-UI...\n\033[1;32m"
  rm -rf $HOME/install.py*
  wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/install.py
  python install.py
}

# Función para configurar permisos de Nginx
permissions_nginx () {
  echo -e "\n\033[1;36mConfigurando permisos de Nginx...\n\033[1;32m"
  chmod +x /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/sbin/nginx_rtmp
  chmod +x /home/xtreamcodes/iptv_xtream_codes/nginx/sbin/nginx 
  /home/xtreamcodes/iptv_xtream_codes/start_services.sh
}

# Función para agregar archivo .update y reiniciar servicios
tables_file () {
  echo -e "\n\033[1;36mAgregando archivo .update y reiniciando servicios...\n\033[1;32m"
  touch /home/xtreamcodes/iptv_xtream_codes/admin/.update 
  /home/xtreamcodes/iptv_xtream_codes/start_services.sh 
  /home/xtreamcodes/iptv_xtream_codes/start_services.sh
}

# Función para realizar backups de librerías y archivos
backups_file () {
  echo -e "\n\033[1;36mRealizando backups de librerías y archivos...\n\033[1;32m"
  local BASE_DIR=~/xtreamui_mirror
  local DOWNLOAD_DIR=${BASE_DIR}/Download_repository

  mkdir -p ${BASE_DIR}
  cd ${BASE_DIR}
  wget https://bitbucket.org/emre1393/xtreamui_mirror/raw/a86a37504b2f619201467fdd121a9786d7da1793/README.md
  wget https://bitbucket.org/emre1393/xtreamui_mirror/raw/a86a37504b2f619201467fdd121a9786d7da1793/install.py

  mkdir -p ${DOWNLOAD_DIR}
  cd ${DOWNLOAD_DIR}

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

  cd ~
}

# Bucle de menú
while true; do
  clear
  echo -e "\033[1;32m===============================================================\033[0m"
  echo -e "\033[1;37m               GESTIONAR XTREAM-UI R22F\033[0m"
  echo -e "\033[1;32m===============================================================\033[0m"
  echo -e "\033[1;31mID\033[1;32m: \033[1;37m$USER\033[0m"
  echo -e "\033[1;32m===============================================================\033[0m"
  echo ""
  echo -e "\033[1;31m[\033[1;32m01\033[1;31m] \033[1;37m> \033[1;32mINSTALAR BIBLIOTECAS Y DEPENDENCIAS\033[0m"
  echo -e "\033[1;31m[\033[1;32m02\033[1;31m] \033[1;37m> \033[1;32mINSTALAR XTREAM-UI R22F\033[0m"
  echo -e "\033[1;31m[\033[1;32m03\033[1;31m] \033[1;37m> \033[1;32mPERMISOS DE NGINX\033[0m"
  echo -e "\033[1;31m[\033[1;32m04\033[1;31m] \033[1;37m> \033[1;32mARCHIVOS DE TABLAS Y .UPDATE\033[0m"
  echo -e "\033[1;31m[\033[1;32m05\033[1;31m] \033[1;37m> \033[1;32mRESPALDO DE BIBLIOTECAS Y ARCHIVOS\033[0m"
  echo -e "\033[1;31m[\033[1;32m00\033[1;31m] \033[1;37m> \033[1;37mSALIR \033[1;32m<\033[1;33m<\033[1;31m< \033[0m"
  echo ""
  echo -e "\033[1;32mâ”Œâ”€[\033[1;31m¿Qué quieres hacer?\033[1;32m]â”€â”€[\033[1;37m~\033[1;32m]â”€[\033[1;37m$(pwd)\033[1;32m]"
  echo -ne "\033[1;32mâ””â”€â”€â”€â”€â”€â–º > "; read x

  case "$x" in 
    update)
      clear
      echo -e "\n\033[1;36mACTUALIZANDO...\n\033[1;32m"
      rm -rf $HOME/gestorextream-ui.sh* 
      wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/iPTV-FREE-LIST/master/Install/gestorextream-ui/gestorextream-ui.sh 
      chmod +x gestorextream-ui.sh*
      echo -ne "\n\033[1;31mPRESIONA ENTER \033[1;33mpara volver al \033[1;32mMENÚ!\033[0m"; read
      ;;
    1 | 01)
      clear
      install_libraries
      echo -ne "\n\033[1;31mPRESIONA ENTER \033[1;33mpara volver al \033[1;32mMENÚ!\033[0m"; read
      ;;
    2 | 02)
      clear
      install_xtreamui
      exit
      ;;
    3 | 03)
      clear
      permissions_nginx
      echo -ne "\n\033[1;31mPRESIONA ENTER \033[1;33mpara volver al \033[1;32mMENÚ!\033[0m"; read
      ;;
    4 | 04)
      clear
      tables_file
      echo -ne "\n\033[1;31mPRESIONA ENTER \033[1;33mpara volver al \033[1;32mMENÚ!\033[0m"; read
      ;;
    5 | 05)
      clear
      backups_file
      echo -ne "\n\033[1;31mPRESIONA ENTER \033[1;33mpara volver al \033[1;32mMENÚ!\033[0m"; read
      ;;
    0 | 00)
      echo -e "\n\033[1;31mSaliendo...\033[0m"
      sleep 1
      clear
      exit
      ;;
    *)
      echo -e "\n\033[0;31m¡Opción inválida!\033[0m"
      sleep 1
  esac
done
}

fun_gestorinstall

# Fin del script
