#!/bin/bash
#Miguel Angel Arrate Gallego & Adrian Lopez Portomenhe
. menu.sh

maltego(){
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
	>> MALTEGO
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
		cd ~/Desktop/osintools/maltego/MaltegoCommunity_4.0.11CE/bin/
		./maltego
		exit 0;
	
	elif [ $selec = "2" ]; then
		echo ""
		cd ~/Desktop/osintools/
		mkdir maltego
		cd maltego/
		echo "Instalando MALTEGO....."
		sudo apt-get update
		sudo apt-get install software-properties-common -y
		sudo apt-get install python-software-properties -y
		sudo apt-get install default-jre -y
		sudo apt-get install default-jdk -y
		sudo add-apt-repository ppa:webupd8team/java
		sudo apt-get update
		sudo apt-get install oracle-java8-installer -y
		sudo apt install wget -y
		sudo wget https://www.paterva.com/malv4/community/MaltegoCE.v4.0.11.9358.zip
		unzip MaltegoCE.v4.0.11.9358.zip
		cd MaltegoCommunity_4.0.11CE/
		echo "Instalado correctamente"
		sleep 5;
		maltego;
		
	else
		echo ""
		echo "Eso no esta en el menu"
		clear
		maltego;
fi
exit 0
}