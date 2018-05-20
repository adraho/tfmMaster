#!/bin/bash
#Miguel Ángel Arrate Gallego & Adrián López Portomeñe

clear
#----ficheros importados------
. menu.sh
. osrframework.sh
. theHarvester.sh
. creepy.sh


#===============INICIO===================
menu

while [ selec != '' ]
	do
	if [[ $selec = "q" ]]; then
		exit;
	else
		case $selec in
		#OSRFRAMEWORK
		1) echo ""
		osrframework;
		;;
		#theHARVESTER
		2) echo ""
		theHarvester;
		;;
		#CREEPY
		3) echo ""
		clear
		creepy;
		;;
		#
		4) echo ""
		clear
		menuxxxxxxx;
		;;
		
		x)exit;
		;;
		
		\n)exit;
		;;
		
		*) echo ""
		echo "Eso no está en el menú"
		clear
		menu;
		;;
	esac
fi
done;