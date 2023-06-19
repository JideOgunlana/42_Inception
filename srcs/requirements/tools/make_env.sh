#!/bin/bash

if [ ! -f "/home/${USER}/srcs/.env" ]; then
	touch /home/${USER}/srcs/.env
	echo DOMAIN_NAME=bogunlan.42.fr >> /home/${USER}/srcs/.env
	echo CERT_=./requirements/srcs/bogunlan.42.fr.crt >> /home/${USER}/srcs/.env
	echo KEY_=./requirements/srcs/bogunlan.42.fr.key >> /home/${USER}/srcs/.env
	echo DB_NAME=wordpress >> /home/${USER}/srcs/.env
	echo DB_ROOT=Born2beroot >> /home/${USER}/srcs/.env
	echo DB_USER=wpuser >> /home/${USER}/srcs/.env
	echo DB_PASS=Born2beroot >> /home/${USER}/srcs/.env
fi

