#!/bin/bash

#Author:Mediashare
#Site:Mediashare.fr

# remgit.sh
# Creates a remote git repository from the current local directory

# Configuration
# Replace SSH_USERNAME, SSH_HOST, SSH_GIT_PATH with your details


echo "----------------------------------------------------------------------------"
echo -e "------ Service BackUp GitLab [\033[32mMediashare.fr\033[0m]"
echo -e "------ Création de dossier de sauvegarge sur [\033[36mVPS\033[0m]/[\033[35mGithub\033[0m]"
echo "----------------------------------------------------------------------------"

now="$(date)"
#printf "%s\n" "$now"
NOW=$(echo $now|sed s/' '/'\-'/g)

echo -e -n "Entrer la [\033[35mFonction\033[0m] voulu {Push}/Init/Clone/Steal :"
read FUNCTION
FUNCTION=${FUNCTION:-Push}

if [ "$FUNCTION" = "Push" ]
then
	echo "---------------------------------------------------------"
	echo -e "------ Sauvegarde sur [\033[35mGitLab\033[0m]"
	echo "---------------------------------------------------------"

	echo -e -n "Entrer le nom de votre compte [\033[35mGitLab\033[0m] {Marquand}:"
	read COMPTE
	COMPTE=${COMPTE:-Marquand}
	echo -e -n "Entrer le nom du Repository du compte [\033[35m'$COMPTE'\033[0m] dans le qu'elle vous souhaitez faire une sauvegarge :"
	read PROJET
	ADDRESS="https://gitlab.com/"$COMPTE"/"$PROJET".git"

	echo -e "Vous serez connecté avec -> Compte: [\033[35m'$COMPTE'\033[0m] -> Repository: [\033[35m'$PROJET'\033[0m] "

	# Configure local repo

	echo "--"
	echo -e "-- Récupération des fichiers + Envoi vers => [\033[37m' $ADDRESS '\033[0m]"
	echo "--"

	echo -e -n "Ajouté un [\033[37m'commentaire'\033[0m] au commit :"
	read COMMENTAIRE
	echo -e "Ok [\033[37m'$COMMENTAIRE'\033[0m]"

	git add .
	git add -u
	git add -A
	git commit -m "'$COMMENTAIRE' - '$now' "
	git push $ADDRESS master --force
	git merge master


	echo "--"
	echo "-- Your new git repo '$REPO' is ready and initialized at:"
	echo "-- $USER@$HOST/$GIT_PATH/$PROJET/$NOW"
	echo "--"
	echo -e "[\033[32mok\033[0m]"
	read
fi


if [ "$FUNCTION" = "Init" ]
then
	echo "---------------------------------------------------------"
	echo -e "------ Initialisation sur [\033[35mGitLab\033[0m]"
	echo "---------------------------------------------------------"

	echo -e -n "Entrer le nom de votre compte [\033[35mGitLab\033[0m] {Marquand}:"
	read COMPTE
	COMPTE=${COMPTE:-Marquand}
	echo -e -n "Entrer le nom du Repository du compte [\033[35m'$COMPTE'\033[0m] dans le qu'elle vous souhaitez faire une sauvegarge :"
	read PROJET
	ADDRESS="https://gitlab.com/"$COMPTE"/"$PROJET".git"

	echo -e "Vous serez connecté avec -> Compte: [\033[35m'$COMPTE'\033[0m] -> Repository: [\033[35m'$PROJET'\033[0m] "

	# Configure local repo

	echo "--"
	echo -e "-- Récupération des fichiers + Envoi vers => [\033[37m' $ADDRESS '\033[0m]"
	echo "--"


	    git init


	echo "--"
	echo "-- Your new git repo '$REPO' is ready and initialized at:"
	echo "-- $USER@$HOST/$GIT_PATH/$PROJET/$NOW"
	echo "--"
	echo -e "[\033[32mok\033[0m]"
	read
fi


if [ "$FUNCTION" = "Clone" ]
then
	echo "---------------------------------------------------------"
	echo -e "------ Sauvegarde sur [\033[35mGitLab\033[0m]"
	echo "---------------------------------------------------------"

	echo -e -n "Entrer le nom de votre compte [\033[35mGitLab\033[0m] {Marquand}:"
	read COMPTE
	COMPTE=${COMPTE:-Marquand}
	echo -e -n "Entrer le nom du Repository du compte [\033[35m'$COMPTE'\033[0m] dans le qu'elle vous souhaitez faire une sauvegarge :"
	read PROJET
	ADDRESS="https://gitlab.com/"$COMPTE"/"$PROJET".git"

	echo -e "Vous serez connecté avec -> Compte: [\033[35m'$COMPTE'\033[0m] -> Repository: [\033[35m'$PROJET'\033[0m] "

	# Configure local repo

	echo "--"
	echo -e "-- Récupération des fichiers + Envoi vers => [\033[37m' $ADDRESS '\033[0m]"
	echo "--"


		git clone $ADDRESS 

	echo "--"
	echo "-- Your new git repo '$REPO' is ready and initialized at:"
	echo "-- $USER@$HOST/$GIT_PATH/$PROJET/$NOW"
	echo "--"
	echo -e "[\033[32mok\033[0m]"
	read
fi
read