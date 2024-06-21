# README #

This is an installation mirror for xtream ui software.

### How do I install? ###
Criar Usu rio

* adduser USUARIO
* usermod -aG sudo USUARIO

update your ubuntu first, then install panel  
  
* sudo apt-get update && sudo apt-get upgrade -y;
* sudo apt-get update && apt -y dist-upgrade && apt -y autoremove && apt update && apt -y install software-properties-common build-essential sudo iperf3 wget git curl nano bzip2 gzip zip unzip dos2unix iftop htop nload speedometer screen perl bc ca-certificates
* sudo dpkg-reconfigure tzdata
* sudo apt-get install libxslt1-dev libcurl3 libgeoip-dev python -y ; 
* rm install.py; wget https://bitbucket.org/primercs/xtreamui_mirror/downloads/install.py; 
* sudo python install.py
* rm install.py; cat /dev/null > ~/.bash_history && history -c;
* pkill -9 nginx; pkill -9 php; /home/xtreamcodes/iptv_xtream_codes/start_services.sh

If you want a whole NEW installation, choose MAIN.  

If you want to install load balance on additional servers, add a server to panel in manage servers page, then run script and proceed with LB option.  

If you want to update admin panel, select UPDATE, then paste download link of release_xyz.zip file.  

### tutorials are here;###

[Xtream-UI Tutorials](https://www.youtube.com/playlist?list=PLJB51brdC_w7dTDxi1MPqiuk3JH5U2ekn "Xtream-UI Tutorials")


### Files Hashes ###
* main_xtreamcodes_reborn.tar
* sha1: "532B63EA0FEA4E6433FC47C3B8E65D8A90D5A4E9"

* sub_xtreamcodes_reborn.tar
* sha1: "5F8A7643A9E7692108E8B40D0297A7A5E4423870"

* release_22f.zip
* sha-1: "95471A7EFEB49D7A1F52BAB683EA2BF849F79983"

### Alterar ID balances

* UPDATE `streaming_servers` SET `id` = '3' WHERE `streaming_servers`.`id` = 19;

### Zerar ID Balances

* ALTER TABLE streaming_servers AUTO_INCREMENT = 1

### note,
i forked this install.py is from https://xtream-ui.com/install/install.py  
btw, developer removed admin part from original install.py at begining of this year.  
you can compare my install.py with original one.

### note2,
edit pytools/balancer.py to use "auto lb installer" from this mirror. auto lb installer added to panel with update    
`sed -i 's|"https://xtream-ui.com/install/balancer.py"|"https://bitbucket.org/primercs/xtreamui_mirror/downloads/balancer.py"|g' /home/xtreamcodes/iptv_xtream_codes/pytools/balancer.py`  

### note3,  
developer made update releases open to public after r22c release, you can download them from https://xtream-ui.com.  
i added an "UPDATE" part to install.py, it will ask link of update zip file.