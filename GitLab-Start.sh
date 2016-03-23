#!/bin/bash

# Author:Mediashare
# Site:Mediashare.fr

# remgit.sh
# Creates a remote git repository from the current local directory

# Configuration
# Replace SSH_USERNAME, SSH_HOST, SSH_GIT_PATH with your details

now="$(date)"
#printf "%s\n" "$now"
NOW=$(echo $now|sed s/' '/'\-'/g)

echo ""
echo "----------------------------------------------------------------------------"
echo -e "------ Service Mise à Jour GitLab-Save de [\033[32mMediashare.fr\033[0m]"
echo "----------------------------------------------------------------------------"


rm GitLab-Save-Last.sh

echo -e -n "2 versions sont disponnibles : [\033[36mMac -> (mac)\033[0m] & [\033[32mWindows -> (win)\033[0m] :"
read TYPE
TYPE=${TYPE:-win}

if [ "$TYPE" = "win" ]
then
	ftp ftp.mediashare.fr 
	mediashask
	Timquand1
	cd /server/GitLab/
	get
	GitLab-Save.sh 
	GitLab-Save-Last.sh 
fi
if [ "$TYPE" = "mac" ]
then
	wget http://vps241658.ovh.net/script/GitLab-Save.sh
	mv GitLab-Save.sh GitLab-Save-Last.sh

fi

echo -e -n "[\033[32mLancer GitLab-Save\033[0m] [\033[31my/n\033[0m] :"
read START
if [ "$START" = "y" ]
then
	bash GitLab-Save-Last.sh
fi