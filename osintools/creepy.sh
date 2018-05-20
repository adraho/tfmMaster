#!/bin/bash
#Miguel Angel Arrate Gallego & Adrian Lopez Portomenhe
. menu.sh

creepy(){
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
	>> Creepy
	###################################################################\e[0m"
	echo ""
	echo -e "\e[1;30m
	[1] lanzar
	[2] instalar
	[0 Volver\e[0m"
	echo ""
	echo ""

	echo -n -e "\e[1;30m	[#] (Tu eleccion?): \e[0m"
	read selec
	
	if [ $selec = "0" ]; then
		clear
		menu
	elif [ $selec = "1" ]; then
		cd ~/Desktop/osintools/creepy/jkakavas-creepy-a861ee3/creepy/ && ./CreepyMain.py
		
	elif [ $selec = "2" ]; then
		echo ""
		cd ~/Desktop/osintools/
		mkdir creepy
		cd creepy/
		echo "Instalando CREEPY....."
		sudo apt-get install software-properties-common -y
		sudo apt-get install python-software-properties -y
		sudo apt-get install python-qt4 -y
		sudo pip install pytz python-qt flickrapi python-instagram yapsy tweepy google-api-python-client python-dateutil configobj dominate
		sudo apt-get update
		sudo apt install wget
		sudo wget https://github.com/jkakavas/creepy/tarball/master/jkakavas-creepy-show-2-ga861ee3.tar.gz
		sudo tar -zxvf jkakavas-creepy-show-2-ga861ee3.tar.gz
		cd jkakavas-creepy-a861ee3/creepy/
		sudo chmod +x CreepyMain.py
		echo ""
		echo "Instalado correctamente"
		sleep 5;
		creepy;
		
	else
		echo ""
		echo "Eso no esta en el menu"
		clear
		creepy;
fi
exit 0
}