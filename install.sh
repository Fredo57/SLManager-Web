#!/bin/bash

##############
## Frederic ##
## 26/05/15 ##
##############

echo 'Installation ...'

if [[ -e /home/www/SLManager_Web ]]; then
	echo 'SLManger_Web has been found.'
	echo  -n 'Do you want to replace it with the new one ? (Y/N): '

	read -e replace_directory

	case $replace_directory in 	
			"" | "Y" | "y" | "Yes" | "yes" | "O" | "o" | "oui" | "Oui")
						echo 'Purging previous files ...'
						sudo rm -r /home/www/SLManager_Web/*
						echo 'Copying news files ...'
						sudo cp /home/www/Projet/* /home/www/SLManager_Web
						sudo chmod 777 /home/www/SLManager_Web/*

						;;
	esac
else
	echo 'Creating /home/www/SLManger_Web directory ...'
	sudo mkdir /home/www/SLManager_Web
	echo 'Copying files ...'
	sudo cp /home/www/Projet/* /home/www/SLManager_Web

fi
