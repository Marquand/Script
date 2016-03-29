#!/bin/bash

# Author:Mediashare
# Site:Mediashare.fr

# remgit.sh
# Creates a remote git repository from the current local directory

# Configuration
# Replace SSH_USERNAME, SSH_HOST, SSH_GIT_PATH with your details

now="$(date +%Y-%m-%d)"
#printf "%s\n" "$now"
NOW=$(echo $now|sed s/' '/'\-'/g)
VERSION="1.7.3 - $(echo $now)"

echo ""
echo "----------------------------------------------------------------------------"
echo -e "------ Service Mise à Jour GitLab-Save de [\033[32mMediashare.fr\033[0m]"
echo -e "------ [\033[36mVersion : $VERSION\033[0m]"
echo "----------------------------------------------------------------------------"
echo ""
echo ""
echo ""

echo -e -n "Voulez-vous faire une mise à jour ? [\033[32mYes(y)/No(n)\033[0m] :"
read MAJ
MAJ=${MAJ:-y}

if [ "$MAJ" = "y" ]
then
    mkdir maj
	curl -o maj/MàJ.sh "http://vps241658.ovh.net/script/maj/MàJ.sh"
	chmod 777 maj/MàJ.sh
	echo ""
    bash maj/MàJ.sh
fi

echo -e -n "[\033[32mLancer GitLab-Save\033[0m] [\033[31mYes(y)/No(n)/Restart(r)\033[0m] :"
read START
if [ "$START" = "y" ]
then
	bash GitLab-Save.sh
fi
if [ "$START" = "r" ]
then
	bash GitLab-Start.sh 
fi
