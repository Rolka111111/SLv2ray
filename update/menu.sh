#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y-------------------------------------------------$wh"
echo -e "$y                  MAIN MENU $wh"
echo -e "$y-------------------------------------------------$wh"
echo -e "$yy 1$y.  MENU SSH & OpenVPN   $wh"
echo -e "$yy 2$y.  MENU L2TP $wh"
echo -e "$yy 3$y.  MENU PPTP $wh"
echo -e "$yy 4$y.  MENU SSTP $wh"
echo -e "$yy 5$y.  MENU WIREGUARD $wh"
echo -e "$yy 6$y.  MENU SHADOWSOCKS $wh"
echo -e "$yy 7$y.  MENU SHADOWSOCKSR $wh"
echo -e "$yy 8$y.  MENU VMESS $wh"
echo -e "$yy 9$y.  MENU VLESS $wh"
echo -e "$yy 10$y. MENU TROJAN GFW $wh"
echo -e "$yy 11$y. MENU TROJAN GO $wh"
echo -e "$yy 12$y. Settings$wh"
echo -e "$yy 13$y. Exit$wh"
echo -e "$y-------------------------------------------------$wh"
read -p "Select From Options [ 1 - 13 ] : " menu
case $menu in
1)
clear
sshovpnmenu
;;
2)
clear
l2tpmenu
;;
3)
clear
pptpmenu
;;
4)
clear
sstpmenu
;;
5)
clear
wgmenu
;;
6)
clear
ssmenu
;;
7)
clear
ssrmenu
;;
8)
clear
vmessmenu
;;
9)
clear
vlessmenu
;;
10)
clear
trmenu
;;
11)
clear
trgomenu
;;
12)
clear
setmenu
;;
13)
clear
exit
;;
*)
clear
menu
;;
esac
