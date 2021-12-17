#!/bin/bash
rot=`tput setaf 1`
green=`tput setaf 2`
orange=`tput setaf 3`
blue=`tput setaf 4`
vio=`tput setaf 5`
cyan=`tput setaf 6`
t=`tput setaf 7`
deeprot=`tput setaf 9`

nc=`tput sgr0`
_atom_installer()
{
    clear
    echo
    echo "${rot}Atom Installationsprozess gestartet..${nc}"
    sleep 2
    echo "${rot}Füge Atom-Repository zum System-Pfad hinzu...${nc}"
    sleep 3
    wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
    sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
    sudo apt-get update
    clear
    echo
    echo "${rot}... System-Pfad wurde aktualisiert!${nc}"
    sleep 2
    echo "${rot}... installiere 'Atom' Editor ...${nc}"
    echo
    sudo apt-get install atom
    clear
    echo
    echo "${rot}... 'Atom' wurde erfolgreich installiert!${nc}"
    sleep 2
}

_figtoi_install()
{
  clear
  echo "${rot}"
  echo
}
_updater()
{
    clear
    echo
    echo "${rot}Überprüfe das System auf Updates...${nc}"
    sleep 4
    echo
    sudo apt update -y
    clear
    echo
    echo "${rot}... neue Updates gefunden, Updates werden installiert...${nc}"
    sleep 3
    echo
    sudo apt upgrade -y
    clear
    echo
    echo "${rot}Updates wurden erfolgreich installiert.${nc}"
    sleep 2
}

declare -A functab=(["Atom installieren"]=_atom_installer ["Auf Updates überprüfen"]=_updater)


title="${deeprot}Atom Install-Manager${nc}"
description="${orange}Dieses Tool wird dir den Atom-Editor installieren${nc}"
des2="${orange}oder aber dein System auf Updates überprüfen${nc}"
prompt="${vio}Wähle eine Option: ${nc}"

declare -a options=("Atom installieren" "Auf Updates überprüfen" "Funktioniert nicht")

clear
echo
echo "$title"
echo
echo "${green}copyright 2021 © S3R43o3${nc}"
echo
echo "$description"
echo "$des2"
echo
PS3="$prompt"
select opt in "${options[@]}" "Beenden"
do

    if [[ $opt == "Beenden" ]]; then
        echo "${rot}Okay ... beende laufende Prozesse...${nc}"
        echo
        sleep 2
        echo "${rot}Machs Gut${nc}!"
        break
    fi

    if [[ -z $opt ]]; then
        echo "Ich konnte die letzte Eingabe: \"$REPLY\" " >$2
        REPLY=
    else
        if [[ -z "${functab[$opt]}" ]]
        then
            echo "Diese Option ist ungültig, versuche eine andere!" >$2
        else
            eval ${functab[$opt]}
        fi
    fi
done
