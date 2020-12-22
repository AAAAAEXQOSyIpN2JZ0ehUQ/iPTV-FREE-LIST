# xtreamui_mirror
This is an installation mirror for xtream ui software.

# install main

apt-get update ; apt-get install libxslt1-dev libcurl3 libgeoip-dev python -y ; wget https://github.com/k1meister/xtreamui_mirror/blob/main/install.py ; sudo python install.py

# update the system to xtreamui v22f (it does includes the admin part, so it doesn’t required to install it separately)

apt-get install unzip e2fsprogs python-paramiko -y && chattr -i /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb && rm -rf /home/xtreamcodes/iptv_xtream_codes/admin && rm -rf /home/xtreamcodes/iptv_xtream_codes/pytools && wget "https://github.com/k1meister/xtreamui_mirror/blob/main/release_22f.zip" -O /tmp/update.zip -o /dev/null && unzip /tmp/update.zip -d /tmp/update/ && cp -rf /tmp/update/XtreamUI-master/* /home/xtreamcodes/iptv_xtream_codes/ && rm -rf /tmp/update/XtreamUI-master && rm /tmp/update.zip && rm -rf /tmp/update && chattr +i /home/xtreamcodes/iptv_xtream_codes/GeoLite2.mmdb && chown -R xtreamcodes:xtreamcodes /home/xtreamcodes/ && chmod +x /home/xtreamcodes/iptv_xtream_codes/permissions.sh && /home/xtreamcodes/iptv_xtream_codes/permissions.sh && /home/xtreamcodes/iptv_xtream_codes/start_services.sh

---

# autostart xtreamui after reboot

sudo echo "@reboot root /home/xtreamcodes/iptv_xtream_codes/start_services.sh" >> /etc/crontab

# permission fix for nginx_rtmp and nginx

chmod +x /home/xtreamcodes/iptv_xtream_codes/nginx_rtmp/sbin/nginx_rtmp <br>
chmod +x /home/xtreamcodes/iptv_xtream_codes/nginx/sbin/nginx <br>
sudo /home/xtreamcodes/iptv_xtream_codes/start_services.sh


Creditos: https://github.com/k1meister/xtreamui_mirror
