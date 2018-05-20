#!/bin/bash
#Miguel Angel Arrate Gallego & Adrian Lopez Portomenhe
. menu.sh

osrframework(){
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
	>> OSRFramework
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
		echo ""
		cd ~/Desktop/osintools/osrframework/
		sudo usufy.py -h
		exit 0;
		
	elif [ $selec = "2" ]; then
		echo ""
		cd ~/Desktop/osintools/
		mkdir osrframework
		cd osrframework/
		echo "Instalando OSRFRAMEWORK....."
		sudo apt-get install python-software-properties -y
		sudo apt-get install software-properties-common -y
		sudo apt-get update
		sudo python -m pip install --upgrade pip setuptools wheel -y
		sudo apt install wget
		sudo wget https://bootstrap.pypa.io/get-pip.py
		sudo python get-pip.py
		sudo apt-get update
		sudo pip install osrframework --upgrade
		echo ""
		sudo usufy.py -h
		echo "Instalado correctamente"
		sleep 5;
		osrframework;
	else
		echo ""
		echo "Eso no esta en el menu"
		clear
		osrframework
fi
exit 0
}