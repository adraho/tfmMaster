#!/bin/bash
#Miguel Angel Arrate Gallego & Adrian Lopez Portomenhe
. menu.sh

menu(){
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
	[1] OSRFRAMEWORK >>
	[2] theHARVESTER >>
	[3] CREEPY >>
	[4] MALTEGO >>
	[q] Salir\e[0m"
	echo ""
	echo ""

	echo -n -e "\e[1;30m	[#] (Tu eleccion?): \e[0m"
	read selec
}