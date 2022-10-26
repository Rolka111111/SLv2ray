#!/bin/bash
#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y                   SYSTEM SETTING$wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$y        ❖ SMART LIFE VPS MANAGER     $wh"
echo -e "$y        ❖ Script Modified By LAKMAL SANDARU     $wh"
echo -e "$y-------------------------------------------------------------$wh"
echo -e "$yy 1$y.  Add Or Change Subdomain Host For VPS"
echo -e "$yy 2$y.  Change Port Of Some Service"
echo -e "$yy 3$y.  Check Usage of VPS Ram"
echo -e "$yy 4$y.  Reboot VPS"
echo -e "$yy 5$y.  Speedtest VPS"
echo -e "$yy 6$y.  Displaying System Information"
echo -e "$yy 7$y.  Info Script Auto Install"
echo -e "$yy 8$y.  Menu"
echo -e "$yy 9$y.  Exit"
echo -e "$y-------------------------------------------------------------$wh"
echo -e ""
read -p "Select From Options [ 1 - 9 ] : " menu
echo -e ""
case $menu in
1)
addhost
;;
2)
changeport
;;
3)
ram
;;
4)
reboot
;;
5)
speedtest
;;
6)
info
;;
7)
about
;;
8)
clear
menu
;;
9)
clear
exit
;;
*)
clear
menu
;;
esac
