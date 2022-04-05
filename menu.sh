#!/bin/bash
yl='\e[031;1m'
bl='\e[36;1m'
gl='\e[32;1m'

clear 
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
MYIP=$(curl -s ipinfo.io/ip )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

	echo -e "   \e[036;1mTotal Amount Of RAM: $tram MB\e[m"
	echo -e "   \e[036;1mSystem Uptime: $up\e[m"
	echo -e "   \e[036;1mIsp Name: $ISP\e[m"
	echo -e "   \e[036;1mCity: $CITY\e[m"
	echo -e "   \e[036;1mTime: $WKT\e[m"
	echo -e "   \e[036;1mMYIP: $MYIP\e[m"
echo -e  ""
echo -e   "  \e[1;32m-------------------------MENU CFT---------------------------\e[m"
echo -e   "   \e[1;32m1) Running Clash\e[m"
echo -e   "   \e[1;32m2) Edit Config Vmess\e[m"
echo -e   "   \e[1;32m3) Edit Config Trojan\e[m"
echo -e   "   \e[1;32m4) Edit Config shadowsocks/R\e[m"
echo -e   "   \e[1;32m5) Edit Config Trojan-GO\e[m"
echo -e   "   \e[1;32m6) Edit Config.yaml\e[m"
echo -e   "   \e[1;32m7) Ganti Dasboard Pannel Clash Balck\e[m"
echo -e   "   \e[1;32m8) Ganti Dasboard Pannel Clash White\e[m"
echo -e   "   \e[1;32m9) Ganti Dasboard Pannel Clash Red\e[m"
echo -e   "  \e[1;32m10) Update Clash For Termux\e[m"
#echo -e   "   6\e[1;33m)\e[m 
#echo -e   "   7\e[1;33m)\e[m 
#echo -e   "   8\e[1;33m)\e[m 
echo -e   "  \e[1;32m----------------------Clash For Termux----------------------\e[m"
echo -e   "   x)   Exit" 
echo -e   "  \e[1;32m-------------------------BY TuanYZ--------------------------\e[m"
echo -e   ""
read -p     "      Select From Options [1-10 or x] :  " menu
echo -e   ""
case $menu in
1)
clear
clash -t
clear
clash
;;
2)
clear
micro .config/clash/vmess.yaml
clash -t
sleep 1
menu
;;
3)
clear
micro .config/clash/trojan.yaml
clash -t
sleep 1
menu
;;
4)
clear
micro .config/clash/shadowsocks.yaml
clash -t
sleep 1
menu
;;
5)
clear
micro .config/clash/trojan-go.yaml
clash -t
sleep 1
menu
;;
6)
clear
micro .config/clash/config.yaml
clash -t
menu
;;
7)
clear
cd .config/clash
rm -rf yacd-gh-pages
unzip yacd-gh-pages1.zip
mv yacd-gh-pages1 yacd-gh-pages
clear
sleep 2
echo -e   "   \e[1;33m1)HAPUS CACHE BROWSER\e[m"
echo -e   "   \e[1;33m2)BUKA KEMBALI BROWSER\e[m"
sleep 3
clear
cd
menu
;;
8)
clear
cd .config/clash
rm -rf yacd-gh-pages
unzip yacd-gh-pages2.zip
mv yacd-gh-pages2 yacd-gh-pages
clear
sleep 2
echo -e   "   \e[1;33m1)HAPUS CACHE BROWSER\e[m"
echo -e   "   \e[1;33m2)BUKA KEMBALI BROWSER\e[m"
sleep 3
clear
cd
menu
;;
9)
clear
cd .config/clash
rm -rf yacd-gh-pages
unzip yacd-gh-pages3.zip
mv yacd-gh-pages3 yacd-gh-pages
clear
sleep 2
echo -e   "   \e[1;33m1)HAPUS CACHE BROWSER\e[m"
echo -e   "   \e[1;33m2)BUKA KEMBALI BROWSER\e[m"
sleep 3
clear
cd
menu
;;
10)
cd
rm -rf .config
wget https://raw.githubusercontent.com/Alamyazid/yacd-gh-pages/master/yacd.sh && chmod +x yacd.sh && ./yacd.sh
clear
clash -t
menu
;;
x)
exit
;;
*)
echo  "Please enter an correct number"
;;
esac
