#!/bin/bash
clear
m="\033[0;1;36m"
y="\033[0;1;37m"
yy="\033[0;1;32m"
yl="\033[0;1;33m"
wh="\033[0m"
echo -e "$y-------------------------------------------------$wh" |lolcat
echo -e "$y                   TROJAN GFW $wh" |lolcat
echo -e "$y-------------------------------------------------$wh" |lolcat
echo -e "$yy 1$y. Create Account XRAYS Trojan"
echo -e "$yy 2$y. Delete Account XRAYS Trojan"
echo -e "$yy 3$y. Extending Account XRAYS Trojan Active Life"
echo -e "$yy 4$y. Check User Login XRAYS Trojan"
echo -e "$yy 5$y. Main Menu"
echo -e "$yy 6$y. Exit"
echo -e "$y-------------------------------------------------$wh" |lolcat
read -p "Select From Options [ 1 - 6 ] : " menu
echo -e ""
case $menu in
1)
addtrojan
;;
2)
deltrojan
;;
3)
renewtrojan
;;
4)
cektrojan
;;
5)
clear
menu
;;
6)
clear
exit
;;
*)
clear
menu
;;
esac
