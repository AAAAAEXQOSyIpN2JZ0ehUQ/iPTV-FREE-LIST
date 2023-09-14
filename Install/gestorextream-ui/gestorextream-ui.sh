#!/bin/bash
x="ok"

#-----------------------------------------------------------------------------------
# apt-get update -y 
# apt-get upgrade -y 
# apt-get autoremove -y 
# apt-get autoclean -y 
# apt-get install iperf3 wget git curl nano bzip2 gzip zip unzip dos2unix iftop htop nload speedometer screen perl bc ca-certificate -y
# apt-get dpkg-reconfigure tzdata
# apt-get install software-properties-common build-essential -y
# apt-get install libxslt1-dev libcurl3 libgeoip-dev python -y
# 
# rm -rf install.py* 
# wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/install.py 
# python install.py 
# 
# chmod +x /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/sbin/nginx_rtmp 
# chmod +x /home/xtreamcodes/iptv_xtream_codes/nginx/sbin/nginx 
# /home/xtreamcodes/iptv_xtream_codes/start_services.sh
# 
# touch /home/xtreamcodes/iptv_xtream_codes/admin/.update 
# /home/xtreamcodes/iptv_xtream_codes/start_services.sh 
# /home/xtreamcodes/iptv_xtream_codes/start_services.sh 
#-----------------------------------------------------------------------------------

if [ "$EUID" -ne 0 ]; then
  echo -e "\n\033[1;31mPor favor, ejecuta este script como root o usando sudo\n\033[0m"
  exit
fi

fun_gestorinstall ()
{
install_libraries () {
echo -e "\n\033[1;36mAGUARDE...\n\033[1;32m"
apt-get update -y 
apt-get upgrade -y 
apt-get autoremove -y 
apt-get autoclean -y 
apt-get install iperf3 wget git curl nano bzip2 gzip zip unzip dos2unix iftop htop nload speedometer screen perl bc ca-certificate -y
apt-get dpkg-reconfigure tzdata 
apt-get install software-properties-common build-essential -y
apt-get install libxslt1-dev libcurl3 libgeoip-dev python -y
}

install_xtreamui () {
echo -e "\n\033[1;36mAGUARDE...\n\033[1;32m"
rm -rf $HOME/install.py* && wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/install.py && python install.py
}

permissions_nginx () {
echo -e "\n\033[1;36mAGUARDE...\n\033[1;32m"
chmod +x /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/sbin/nginx_rtmp
chmod +x /home/xtreamcodes/iptv_xtream_codes/nginx/sbin/nginx 
/home/xtreamcodes/iptv_xtream_codes/start_services.sh
}

tables_file () {
echo -e "\n\033[1;36mAGUARDE...\n\033[1;32m"
touch /home/xtreamcodes/iptv_xtream_codes/admin/.update 
/home/xtreamcodes/iptv_xtream_codes/start_services.sh 
/home/xtreamcodes/iptv_xtream_codes/start_services.sh
}

backups_file () {
echo -e "\n\033[1;36mAGUARDE...\n\033[1;32m"
cd
mkdir xtreamui_mirror
cd xtreamui_mirror
wget https://bitbucket.org/emre1393/xtreamui_mirror/raw/a86a37504b2f619201467fdd121a9786d7da1793/README.md
wget https://bitbucket.org/emre1393/xtreamui_mirror/raw/a86a37504b2f619201467fdd121a9786d7da1793/install.py
mkdir Download_repository
cd Download_repository
wget https://bitbucket.org/emre1393/xtreamui_mirror/get/a86a37504b2f.zip
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/Geolite2_status.json
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/GeoLite2.mmdb
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/nginx_rtmp
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/nginx
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/balancer.py
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/install.py
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/newstuff.zip
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/xmltv.php
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/player_api.php
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/panel_api.php
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/release_22f.zip
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/xc_sorted_devices.sql
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/config.py
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/clearlogs.sh
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/pid_monitor.php
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/sub_xtreamcodes_reborn.tar.gz
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/main_xtreamcodes_reborn.tar.gz
cd
}

while true $x != "ok"
do
clear
echo -e "\033[1;32m===============================================================\033[0m"
echo -e "\033[1;37m               GERENCIAR XTREAM-UI R22F\033[0m"
echo -e "\033[1;32m===============================================================\033[0m"
echo -e "\033[1;31mID\033[1;32m: \033[1;37m$USER\033[0m"
echo -e "\033[1;32m===============================================================\033[0m"
echo ""
echo -e "\033[1;31m[\033[1;32m01\033[1;31m] \033[1;37m> \033[1;32mINSTALL LIBRARIES\033[0m"
echo -e "\033[1;31m[\033[1;32m02\033[1;31m] \033[1;37m> \033[1;32mINSTALL XTREAM-UI R22F\033[0m"
echo -e "\033[1;31m[\033[1;32m03\033[1;31m] \033[1;37m> \033[1;32mNGINX PERMISSIONS\033[0m"
echo -e "\033[1;31m[\033[1;32m04\033[1;31m] \033[1;37m> \033[1;32mTABLES AND .UPDATE FILE\033[0m"
echo -e "\033[1;31m[\033[1;32m05\033[1;31m] \033[1;37m> \033[1;32mBACKUPS LIBRARIES AND FILES\033[0m"
echo -e "\033[1;31m[\033[1;32m00\033[1;31m] \033[1;37m> \033[1;37mEXIT \033[1;32m<\033[1;33m<\033[1;31m< \033[1;31m\033[0m"
echo ""
echo ""
echo -e "\033[1;32m┌─[\033[1;31mwhat do you want to do\033[1;32m]──[\033[1;37m~\033[1;32m]─[\033[1;37m$(pwd)\033[1;32m]"
echo -ne "\033[1;32m└─────► > "; read x

case "$x" in 
   1 | 01)
   clear
   install_libraries
   echo -ne "\n\033[1;31mENTER \033[1;33mto return to \033[1;32mMENU!\033[0m"; read
   ;;
   2 | 02)
   clear
   install_xtreamui
   exit;
   ;;
   3 | 03)
   clear
   permissions_nginx
   echo -ne "\n\033[1;31mENTER \033[1;33mto return to \033[1;32mMENU!\033[0m"; read
   ;;
   4 | 04)
   clear
   tables_file
   echo -ne "\n\033[1;31mENTER \033[1;33mto return to \033[1;32mMENU!\033[0m"; read
   ;;
   5 | 05)
   clear
   backups_file
   echo -ne "\n\033[1;31mENTER \033[1;33mto return to \033[1;32mMENU!\033[0m"; read
   ;;
   update)
   clear
   echo -e "\n\033[1;36mAGUARDE...\n\033[1;32m"
   wget https://raw.githubusercontent.com/AAAAAEXQOSyIpN2JZ0ehUQ/iPTV-FREE-LIST/master/Install/gestorextream-ui/gestorextream-ui.sh && chmod +x gestorextream-ui.sh*
   echo -ne "\n\033[1;31mENTER \033[1;33mto return to \033[1;32mMENU!\033[0m"; read
   ;;
   0 | 00)
   echo -e "\n\033[1;31mExit...\033[0m"
   sleep 1
   clear
   exit;
   ;;
   *)
   echo -e "\n\033[0;31mInvalid option !\033[0m"
   sleep 1
esac
done
}
fun_gestorinstall

# Fin del script