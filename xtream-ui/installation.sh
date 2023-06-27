#!/bin/bash

apt-get update -y 
apt-get upgrade -y 
apt-get autoremove -y 
apt-get autoclean -y 
apt-get iperf3 wget git curl nano bzip2 gzip zip unzip dos2unix iftop htop nload speedometer screen perl bc ca-certificate 
apt-get dpkg-reconfigure tzdata
apt-get install software-properties-common build-essential 
apt-get apt-get install libxslt1-dev libcurl3 libgeoip-dev python -y 

rm -rf install.py* 
wget https://bitbucket.org/emre1393/xtreamui_mirror/downloads/install.py 
python install.py 

chmod +x /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/sbin/nginx_rtmp 
chmod +x /home/xtreamcodes/iptv_xtream_codes/nginx/sbin/nginx 
/home/xtreamcodes/iptv_xtream_codes/start_services.sh

touch /home/xtreamcodes/iptv_xtream_codes/admin/.update 
/home/xtreamcodes/iptv_xtream_codes/start_services.sh 
/home/xtreamcodes/iptv_xtream_codes/start_services.sh 

#fin scripts