#!/bin/bash
#Miguel Angel Arrate Gallego & Adrian Lopez Portomenhe

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
		echo "Eso no esta en el menu"
		clear
		menu;
		;;
	esac
fi
done;