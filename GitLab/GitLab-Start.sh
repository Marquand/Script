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


path=`echo "$0" | sed -e "s/[^\/]*$//"`
mkdir maj
curl -o $path/maj/maj_windows.sh "http://vps241658.ovh.net/script/maj_windows.sh"
curl -o $path/maj/maj_mac.sh "http://vps241658.ovh.net/script/maj_mac.sh"

rm GitLab-Save.sh

echo -e -n "2 versions sont disponnibles : [\033[36mMac -> (mac)\033[0m] & [\033[32mWindows -> (win)\033[0m] :"
read TYPE
TYPE=${TYPE:-win}

if [ "$TYPE" = "win" ]
then
	curl -o $path/maj_windows.sh "http://vps241658.ovh.net/script/maj_windows.sh"
	./maj_windows.sh
fi
if [ "$TYPE" = "mac" ]
then
	wget http://vps241658.ovh.net/script/GitLab-Save.sh
fi

echo -e -n "[\033[32mLancer GitLab-Save\033[0m] [\033[31my/n\033[0m] :"
read START
if [ "$START" = "y" ]
then
	bash GitLab-Save.sh
fi

rm maj_windows.sh
rm maj_mac.sh