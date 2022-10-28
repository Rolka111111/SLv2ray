#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                  MAIN MENU  $wh"
echo -e "$y-------------------------------------------------$wh"
echo -e "$y        ❖ SMART LIFE VPS MANAGER     $wh"
echo -e "$y        ❖ Script Modified By LAKMAL SANDARU     $wh"
echo -e "$y-------------------------------------------------$wh"
echo -e "$yy 1$y.  SSH & OpenVPN MENU  $wh"
echo -e "$yy 2$y.  VMESS MENU$wh"
echo -e "$yy 3$y.  VLESS MENU$wh"
echo -e "$yy 4$y.  TROJAN GFW MENU$wh"
echo -e "$yy 5$y.  Settings$wh"
echo -e "$yy 6$y.  Exit$wh"
echo -e "$yy 7$y.  Xray Menu$wh"
echo -e "$y-------------------------------------------------$wh"
read -p "Select From Options [ 1 - 6 ] : " menu
case $menu in
1)
clear
sshovpnmenu
;;
2)
clear
vmessmenu
;;
3)
clear
vlessmenu
;;
4)
clear
trmenu
;;
5)
clear
setmenu
;;
6)
clear
exit
;;
7)
clear
addxray
*)
clear
menu
;;
esac
