#!/bin/bash

echo -e -n "2 versions sont disponnibles : [\033[36mMac/Linux -> (m)\033[0m] & [\033[32mWindows -> (w)\033[0m] :"
read TYPE
TYPE=${TYPE:-win}

if [ "$TYPE" = "w" ]
then
	mv MediaDev-Start.sh maj/MediaDev-Start-OLD.sh
	rm MediaDev-Start.sh
	path=`echo "$0" | sed -e "s/[^\/]*$//"`
	curl.exe -o MediaDev-Start.sh "http://vps241658.ovh.net/script/MediaDev-Start.sh"
	chmod 777 MediaDev-Start.sh
	echo "----------------------------------------------------------------------------"
	echo -e "------ Launcher : [\033[36mOK\033[0m]"
	echo ""
	echo ""

	curl.exe -o maj/maj_windows.sh "http://vps241658.ovh.net/script/maj/maj_windows.sh"
	curl.exe -o maj/maj_mac.sh "http://vps241658.ovh.net/script/maj/maj_mac.sh"
	echo "----------------------------------------------------------------------------"
	echo -e "------ Config : [\033[36mOK\033[0m]"
	echo ""
	echo ""

	mv GitLab-Save.sh maj/GitLab-Save-OLD.sh
	rm GitLab-Save.sh
	curl.exe -o GitLab-Save.sh "http://vps241658.ovh.net/script/GitLab-Save.sh"
	chmod 777 GitLab-Save.sh
	echo "----------------------------------------------------------------------------"
	echo -e "------ Core : [\033[36mOK\033[0m]"
	echo ""
	echo ""
fi
if [ "$TYPE" = "m" ]
then
	mv MediaDev-Start.sh maj/MediaDev-Start-OLD.sh
	rm MediaDev-Start.sh
	curl -o MediaDev-Start.sh "http://vps241658.ovh.net/script/MediaDev-Start.sh"
	chmod 777 MediaDev-Start.sh
	echo "----------------------------------------------------------------------------"
	echo -e "------ Launcher : [\033[36mOK\033[0m]"
	echo ""
	echo ""

	curl -o maj/maj_windows.sh "http://vps241658.ovh.net/script/maj/maj_windows.sh"
	curl -o maj/maj_mac.sh "http://vps241658.ovh.net/script/maj/maj_mac.sh"
	echo "----------------------------------------------------------------------------"
	echo -e "------ Config : [\033[36mOK\033[0m]"
	echo ""
	echo ""

	mv GitLab-Save.sh maj/GitLab-Save-OLD.sh
	rm GitLab-Save.sh
	curl -o GitLab-Save.sh "http://vps241658.ovh.net/script/GitLab-Save.sh"
	chmod 777 GitLab-Save.sh
	echo "----------------------------------------------------------------------------"
	echo -e "------ Core : [\033[36mOK\033[0m]"
	echo ""
	echo ""
fi