#!/bin/bash
#Miguel Angel Arrate Gallego & Adrian Lopez Portomenhe
. menu.sh

theHarvester(){
	clear
	echo ""
	echo -e "\e[1;30m
	###################################################################
	#  _                                                              #
	# | |                                                             #
	# | |__  _   _ _ __ ___  _ __                                     #
	# | '_ \| | | | '__/ _ \| '_ \                                    #
	# | | | | |_| | | | (_) | | | |                                   #
	# |_| |_|\__,_|_|  \___/|_| |_|                                   #
	#                                                                 #
	# Script de instalación {v1.0}                                    #
	# Coded by Miguel Angel Arrate Gallego & Adrian Lopez Portomenhe  #
	#                                                                 #
	###################################################################\e[0m"
	echo ""
	echo -e "\e[1;30m
	>> theHARVESTER
	###################################################################\e[0m"
	echo ""
	echo -e "\e[1;30m
	[1] lanzar
	[2] instalar
	[0] Volver\e[0m"
	echo ""
	echo ""

	echo -n -e "\e[1;30m	[#] (Tu eleccion?): \e[0m"
	read selec
	
	if [ $selec = "0" ]; then
		clear
		menu
	elif [ $selec = "1" ]; then
		clear
		echo ""
		cd ~/Desktop/osintools/theHarvester/
		./theHarvester.py
		exit 0;
	
	elif [ $selec = "2" ]; then
		echo ""
		cd ~/Desktop/osintools/
		echo "Instalando theHARVESTER....."
		sudo apt-get update
		sudo apt-get install software-properties-common -y
		sudo apt-get install python-software-properties -y
		sudo apt-get install git -y
		sudo git clone https://github.com/laramies/theHarvester.git
		sudo apt-get update
		cd theHarvester/
		sudo chmod +x theHarvester.py
		echo "Instalado correctamente"
		sleep 5;
		theHarvester;
		
	else
		echo ""
		echo "Eso no esta en el menu"
		clear
		theHarvester;
fi
exit 0
}