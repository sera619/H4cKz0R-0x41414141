#!/bin/bash
# ********************************** ATTENTION **************************************
# This Script is for usage only! It is part of a learningpath! Please dont modify it!
# U can use this baseline for your own script!
#************************************************************************************
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

_script()
{
    clear
    echo
    echo "${orange}Hast du dein altes Script verlegt? Kein Problem! =)${nc}"
    echo
    sleep 2
    echo "${orange}... generiere neue StartRoutine..."
    echo
    cd && cd Desktop
    touch StartRoutine_new.sh
    echo '#!/bin/bash4
    rot=`tput setaf 1`
    green=`tput setaf 2`
    nc=`tput sgr0`
    clear
    echo
    echo
    echo "${rot}Dein erstes Bash-Script funktioniert!${nc}"
    echo
    echo
    sleep 2
    echo "${rot}Bitte gib einen Namen ein!${nc}"
    echo
    read b
    echo
    echo "${rot}Hallo Hacker-$b!${nc}"
    echo
    echo "${rot}Na - $b ... Wie geht es dir?${nc}"
    sleep 2
    echo
    echo "${rot}Updates werden gesucht ...${nc}"
    sudo apt update -y && sudo apt upgrade -y
    echo
    sleep 3
    echo "${rot}Updates wurden geladen und installiert!${nc}"
    echo
    clear
    echo
    echo "${rot}Beende Programm... Bye!${nc}"
    sleep 2
    clear
    done' > StartRoutine_new.sh
    chmod +x StartRoutine_new.sh
    cd
    echo
    sleep 2
    echo "${orange}Neues Script wurde unter ${nc}${blue}\"/Desktop/StartRoutine_new.sh\"${nc}${orange} erstellt.${nc}"
    echo
    sleep 1.5
    echo "${deeprot}Ich habe mir die Freiheit genommen und den 'chmod +x' Befehl bereits augeführt!${nc}"
    echo "${deeprot}Du kannst das Script also direkt starten! =)"
    sleep 1.5
    echo
    echo "${orange}Viel Spaß damit!${nc}"
    echo
}

declare -A functab=(["Atom installieren"]=_atom_installer
                    ["Auf Updates überprüfen"]=_updater
                    ["neues Startscript erstellen"]=_script)


title="${deeprot}  Der H4ckz0r - Manager  ${nc}"
description="${orange}Dieses Tool wurde für die deutsche Hackfiebel entwickelt.${nc}"
des2="${orange}Du kannst damit den 'Atom'-Editor installieren,${nc}"
des3="${orange}ein neues StartScript erstellen oder aber dein${nc}"
des4="${orange}System auf Updates überprüfen.${nc}"
des5="${cyan}Gebe eine Nummer ein! (1 - 4)${nc}"
att2="${deeprot}noch ohne ausdrückliche Genehmigung weiter gegeben werden !!!${nc}"
prompt="${cyan}Wähle eine Option: ${nc}"

declare -a options=("Atom installieren" "Auf Updates überprüfen" "neues Startscript erstellen")

clear
echo
echo
echo "${deeprot}*************************************************************${nc}"
echo -e "${deeprot}* ██╗  ██╗██╗  ██╗ ██████╗██╗  ██╗███████╗ ██████╗ ██████╗  *
* ██║  ██║██║  ██║██╔════╝██║ ██╔╝╚══███╔╝██╔═████╗██╔══██╗ *
* ███████║███████║██║     █████╔╝   ███╔╝ ██║██╔██║██████╔╝ *
* ██╔══██║╚════██║██║     ██╔═██╗  ███╔╝  ████╔╝██║██╔══██╗ *
* ██║  ██║     ██║╚██████╗██║  ██╗███████╗╚██████╔╝██║  ██║ *
* ╚═╝  ╚═╝     ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═╝  ╚═╝ *${nc}"
echo "${deeprot}*************************************************************${nc}"
echo "${deeprot}*    $title ${deeprot}copyright 2021 © S3R43o3     *${nc}"
echo "${deeprot}*************************************************************${nc}"
echo "${deeprot}*        Diese Software darf weder modifiziert, noch        *${nc}"
echo "${deeprot}*             ohne ausdrückliche Genehmigung                *${nc}"
echo "${deeprot}*                  weiter gegeben werden                    *${nc}"
echo "${deeprot}*************************************************************${nc}"
echo
echo "$description"
echo "$des2"
echo "$des3"
echo "$des4"
echo
echo "$des5"
echo
echo
PS3="$prompt"
select opt in "${options[@]}" "Beenden"
do

    if [[ $opt == "Beenden" ]]; then
        echo
        echo
        echo "${deeprot}Okay ... beende laufende Prozesse...${nc}"
        echo
        sleep 2
        echo "${deeprot}*************************************************************${nc}"
        echo "${deeprot}*                        Machs Gut!                         *${nc}"
        echo "${deeprot}*************************************************************${nc}"
        sleep 2.5
        clear
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
