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

_gen_birth()
{
  clear
  echo
  echo
  echo "${orange}Der Geburtstags-Rechner wird erstellt...${nc}"
  sleep 1.5
  echo
  cd && cd Desktop
  wget -L https://raw.githubusercontent.com/sera619/H4cKz0R-0x41414141/main/assets/scripts/python/birthday.py
  echo
  echo "..."
  sleep 1.5
  echo
  echo "${orange}Der 'Geburtstags-Rechner' wurde in${nc}${cyan}'/Desktop/birthday.py'${nc}${orange}gespeichert!${nc}"
}

_py_sheet()
{
  clear
  echo
  echo -e "${cyan}
  ██████╗ ██╗   ██╗████████╗██╗  ██╗ ██████╗ ███╗   ██╗
  ██╔══██╗╚██╗ ██╔╝╚══██╔══╝██║  ██║██╔═══██╗████╗  ██║
  ██████╔╝ ╚████╔╝    ██║   ███████║██║   ██║██╔██╗ ██║
  ██╔═══╝   ╚██╔╝     ██║   ██╔══██║██║   ██║██║╚██╗██║
  ██║        ██║      ██║   ██║  ██║╚██████╔╝██║ ╚████║
  ╚═╝        ╚═╝      ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝${nc}"
  echo
  echo
  echo "${orange}Der Python Spickzettel wird generiert! ...${nc}"
  echo
  sleep 1.5
  cd && cd Desktop
  wget -L https://media.cheatography.com/storage/thumb/the-one-and-only_python-basics.750.jpg
  echo
  sleep 1.5
  echo "${orange}... Spickzettel wurde unter:${cyan} '/Desktop/the-one-and-only_python-basics.750.jpg'${orange} gespeichert!${nc}"
}


_py_l5()
{
    clear
    echo
    echo -e "${cyan}
    ██████╗ ██╗   ██╗████████╗██╗  ██╗ ██████╗ ███╗   ██╗
    ██╔══██╗╚██╗ ██╔╝╚══██╔══╝██║  ██║██╔═══██╗████╗  ██║
    ██████╔╝ ╚████╔╝    ██║   ███████║██║   ██║██╔██╗ ██║
    ██╔═══╝   ╚██╔╝     ██║   ██╔══██║██║   ██║██║╚██╗██║
    ██║        ██║      ██║   ██║  ██║╚██████╔╝██║ ╚████║
    ╚═╝        ╚═╝      ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝${nc}"
    echo
    echo
    echo "${orange}Python Scripte für Lektion #5 werden heruntergeladen ..."
    echo
    sleep 1.5
    cd && cd Desktop
    mkdir H0x41-L5 && cd H0x41-L5   
    wget -L "https://raw.githubusercontent.com/sera619/H4cKz0R-0x41414141/main/assets/scripts/python/ImageInformation.py"
    wget -L "https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/scripts/python/ImageDownload.py"
    echo
    echo "${orange}... Scripte wurden im  unter:${cyan} '/Desktop/H0x41-L5'${orange} gespeichtert!"
    echo
    

}







declare -A pytab=(["Geburtstags-Rechner generieren"]=_gen_birth
                  ["Python Cheat-Sheet"]=_py_sheet
                  ["Lektion 5 - EXIF Materialien"]=_py_l5
                  ["Lektion 5 - Materialien installieren"]=_l5_module
                  )

declare -a helppy=("Geburtstags-Rechner generieren" "Python Cheat-Sheet" "Lektion 5 - Materialien installieren" "Lektion 5 - EXIF Materialien")
_python_help()
{
    clear
    echo
    echo -e "${cyan}
    ██████╗ ██╗   ██╗████████╗██╗  ██╗ ██████╗ ███╗   ██╗
    ██╔══██╗╚██╗ ██╔╝╚══██╔══╝██║  ██║██╔═══██╗████╗  ██║
    ██████╔╝ ╚████╔╝    ██║   ███████║██║   ██║██╔██╗ ██║
    ██╔═══╝   ╚██╔╝     ██║   ██╔══██║██║   ██║██║╚██╗██║
    ██║        ██║      ██║   ██║  ██║╚██████╔╝██║ ╚████║
    ╚═╝        ╚═╝      ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝

              ██╗  ██╗██╗██╗     ███████╗███████╗
              ██║  ██║██║██║     ██╔════╝██╔════╝
              ███████║██║██║     █████╗  █████╗
              ██╔══██║██║██║     ██╔══╝  ██╔══╝
              ██║  ██║██║███████╗██║     ███████╗
              ╚═╝  ╚═╝╚═╝╚══════╝╚═╝     ╚══════╝${nc}"
    echo
    echo "${orange} ${nc}"
    echo
    select opt in "${helppy[@]}" "ZURÜCK"
    do

        if [[ $opt == "ZURÜCK" ]]; then
            echo
            echo "${deeprot}Kehre zum 'Hilfe' Menü zurück!...${nc}"
            echo
            break
        fi

        if [[ -z $opt ]]; then
            echo "Ich konnte die letzte Eingabe: \"$REPLY\" " >$2
            REPLY=
        else
            if [[ -z "${pytab[$opt]}" ]]
            then
                echo "Diese Option ist ungültig, versuche eine andere!" >$2
            else
                eval ${pytab[$opt]}
            fi
        fi
    done
}

_start_bash()
{
    clear
    echo
    echo -e "${vio}
    ██████╗  █████╗ ███████╗██╗  ██╗
    ██╔══██╗██╔══██╗██╔════╝██║  ██║
    ██████╔╝███████║███████╗███████║
    ██╔══██╗██╔══██║╚════██║██╔══██║
    ██████╔╝██║  ██║███████║██║  ██║
    ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝${nc}"
    echo
    echo "${orange}Erstelle neues Start Routine Script...${nc}"
    echo
    cd && cd Desktop
    wget -L https://raw.githubusercontent.com/sera619/H4cKz0R-0x41414141/main/assets/scripts/bash/StartRoutine.sh
    chmod +x StartRoutine.sh
    echo
    sleep 1.5
    echo "${orange}Neues Script wurde in${nc}${cyan}'/Desktop/Startroutine.sh'${nc} ${orange}gespeichert!${nc}"
    echo "${orange}Ich habe mir die Freiheit genommen und den Befehl ${cyan}'chmod +x StartRoutine.sh' ${orange} bereits ausgeführt.${nc}"
    echo "${orange}Du kannst das Script also gleich benutzen!${nc}"
    echo

}

declare -A bashtab=(["StartRoutine.sh erstellen"]=_start_bash)


declare -a helpbash=("StartRoutine.sh erstellen")

_bash_help()
{
    clear
    echo
    echo -e "${vio}
    ██████╗  █████╗ ███████╗██╗  ██╗
    ██╔══██╗██╔══██╗██╔════╝██║  ██║
    ██████╔╝███████║███████╗███████║
    ██╔══██╗██╔══██║╚════██║██╔══██║
    ██████╔╝██║  ██║███████║██║  ██║
    ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝

    ██╗  ██╗██╗██╗     ███████╗███████╗
    ██║  ██║██║██║     ██╔════╝██╔════╝
    ███████║██║██║     █████╗  █████╗
    ██╔══██║██║██║     ██╔══╝  ██╔══╝
    ██║  ██║██║███████╗██║     ███████╗
    ╚═╝  ╚═╝╚═╝╚══════╝╚═╝     ╚══════╝${nc}"
    echo
    echo
    select opt in "${helpbash[@]}" "ZURÜCK"
    do

        if [[ $opt == "ZURÜCK" ]]; then
            echo
            echo "${deeprot}Kehre zum 'Hilfe' Menü zurück!...${nc}"
            echo
            break
        fi

        if [[ -z $opt ]]; then
            echo "Ich konnte die letzte Eingabe: \"$REPLY\" " >$2
            REPLY=
        else
            if [[ -z "${bashtab[$opt]}" ]]
            then
                echo "Diese Option ist ungültig, versuche eine andere!" >$2
            else
                eval ${bashtab[$opt]}
            fi
        fi
    done
}

declare -A helptab=(["Hilfe: Bash"]=_bash_help
                    ["Hilfe: Python"]=_python_help)


declare -a helpopt=("Hilfe: Python" "Hilfe: Bash")


_help()
{
    clear
    echo
    echo
    echo -e "${cyan}
    ██╗  ██╗██╗██╗     ███████╗███████╗
    ██║  ██║██║██║     ██╔════╝██╔════╝
    ███████║██║██║     █████╗  █████╗
    ██╔══██║██║██║     ██╔══╝  ██╔══╝
    ██║  ██║██║███████╗██║     ███████╗
    ╚═╝  ╚═╝╚═╝╚══════╝╚═╝     ╚══════╝${nc}"
    echo
    select opt in "${helpopt[@]}" "ZURÜCK"
    do

        if [[ $opt == "ZURÜCK" ]]; then
            echo
            echo
            echo "${deeprot}Kehre zum 'Haupt' Menü zurück!...${nc}"
            echo
            break
        fi

        if [[ -z $opt ]]; then
            echo "Ich konnte die letzte Eingabe: \"$REPLY\" " >$2
            REPLY=
        else
            if [[ -z "${helptab[$opt]}" ]]
            then
                echo "Diese Option ist ungültig, versuche eine andere!" >$2
            else
                eval ${helptab[$opt]}
            fi
        fi
    done
}

_updater()
{
    clear
    echo
    echo -e "${deeprot}
    ██╗   ██╗██████╗ ██████╗  █████╗ ████████╗███████╗██████╗
    ██║   ██║██╔══██╗██╔══██╗██╔══██╗╚══██╔══╝██╔════╝██╔══██╗
    ██║   ██║██████╔╝██║  ██║███████║   ██║   █████╗  ██████╔╝
    ██║   ██║██╔═══╝ ██║  ██║██╔══██║   ██║   ██╔══╝  ██╔══██╗
    ╚██████╔╝██║     ██████╔╝██║  ██║   ██║   ███████╗██║  ██║
     ╚═════╝ ╚═╝     ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝${nc}"
    echo
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
    echo '#!/bin/bash
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



_l5_module()
{
    clear
    echo
    echo -e "${cyan}
  ██████╗ ██╗   ██╗████████╗██╗  ██╗ ██████╗ ███╗   ██╗
  ██╔══██╗╚██╗ ██╔╝╚══██╔══╝██║  ██║██╔═══██╗████╗  ██║
  ██████╔╝ ╚████╔╝    ██║   ███████║██║   ██║██╔██╗ ██║
  ██╔═══╝   ╚██╔╝     ██║   ██╔══██║██║   ██║██║╚██╗██║
  ██║        ██║      ██║   ██║  ██║╚██████╔╝██║ ╚████║
  ╚═╝        ╚═╝      ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝${nc}"
    echo
    echo "${orange}Python Module für Lektion 5 werden installiert...${nc}"
    echo "${orange}... bitte halte dein Passwort bereit!${nc}"
    echo
    sleep 2
    sudo apt-get update
    sudo apt-get install python3-exif python3-requests python3-bs4 python3-pip
    echo
    echo
    clear
    echo
    echo "${orange} ... lade Beispiel Bilder herunter..."
    sleep 2
    echo 
    echo
    echo
    echo
    cd && cd Desktop && mkdir L5img && cd L5img
    wget -L "https://github.com/sera619/h2/blob/master/fiebel/static/images/5/tracking/img-1.jpg?raw=true"
    wget -L "https://github.com/sera619/h2/blob/master/fiebel/static/images/5/tracking/img-2.jpg?raw=true"
    wget -L "https://github.com/sera619/h2/blob/master/fiebel/static/images/5/tracking/img-3.jpg?raw=true"
    wget -L "https://github.com/sera619/h2/blob/master/fiebel/static/images/5/tracking/img-4.jpg?raw=true"
    echo
    clear
    echo
    echo
    echo "${orange}... Module wurden vollständig installiert." 
    echo "${orange}Bilder für die Lektion wurden unter ${blue}\"/Dekstop/L5img\"${orange} gespeichter!${nc}"
    echo "${orange}Viel Spaß mit Lektion 5!${nc}"
    echo

}

_terminal_tools()
{
    clear
    echo
    echo -e "${vio}
    ██████╗  █████╗ ███████╗██╗  ██╗
    ██╔══██╗██╔══██╗██╔════╝██║  ██║
    ██████╔╝███████║███████╗███████║
    ██╔══██╗██╔══██║╚════██║██╔══██║
    ██████╔╝██║  ██║███████║██║  ██║
    ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝${nc}"
    echo
    echo
    echo "${orange}Tools zum individualisieren des Terminals werden installiert..."
    echo "${orange}Bitte halte dein Passwort bereit."
    sleep 2.0
    echo
    sudo apt install lolcat
    sudo apt install neofetch
    sudo apt install toilet
    echo
    echo "${orange}Die Tools: ${deeprot}LolCat |  NeoFetch | Toilet ${orange}wurden installiert"
    echo "${orange}Gebe im terminal ${deeprot}\"man <Toolname>\" ${orange}ein um die Beschreibung zu sehen."
    echo 
}






declare -A functab=(["Atom installieren"]=_atom_installer
                    ["Terminal Custom Tools"]=_terminal_tools
                    ["Auf Updates überprüfen"]=_updater
                    ["neues Startscript erstellen"]=_script
                    ["Hilfe"]=_help)



title="${deeprot}  Der H4ckz0r - Manager  ${nc}"
description="${orange}Dieses Tool wurde für die deutsche Hackfiebel entwickelt.${nc}"
des2="${orange}Du kannst damit den 'Atom'-Editor installieren,${nc}"
des3="${orange}ein neues StartScript erstellen oder aber dein${nc}"
des4="${orange}System auf Updates überprüfen.${nc}"
des5="${cyan}Gebe eine Nummer ein! (1 - 5)${nc}"
att2="${deeprot}noch ohne ausdrückliche Genehmigung weiter gegeben werden !!!${nc}"
prompt="${cyan}Wähle eine Option: ${nc}"

declare -a options=("Atom installieren" "Terminal Custom Tools" "Auf Updates überprüfen" "neues Startscript erstellen" "Hilfe")

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
echo
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
