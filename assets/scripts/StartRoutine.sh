#!/bin/bash
# <- eine Route wird als Kommentar benutzt 
# alles was hinter einer Route steht ignoriert der Computer beim lesen. 
# Die Route ist dabei aber nicht das einzige Kommentarzeichen. Je nach Sprache unterscheiden sich
# diese.
#
# In Zeile 1 #!/bin/bash nutzen wir 'Shebang' -> wir sagen dem Terminal das dies ein Bash
# Script ist. So wie mit Datei-Endungen .exe .txt .jpg u.v.m.
#
# Macht doch alles Sinn bis hier her oder ?
#
# Nun aber zu unserem bzw. DEINEM ersten Script!
# Wir wollen also das unser Script das System auf updates prüft. 
# In Linux machen wir das mit 
#
# sudo apt update -y 
#
# sudo = der superuser 
# apt = der interne 'Package'- Manager
# update = sollte klar sein
# -y = eine 'Flag'-Variable -> damit sagen wir das wir die nächste 
# Abfrage mit y oder JA beantworten wollen
#
# -> Hier startet das eigentliche Script <-
# Script Variablen -> Start
rot=`tput setaf 1`
green=`tput setaf 2`
nc=`tput sgr0`
a="padawan"
# -> Ende
# Wilkommen - Funktion -> Start
clear
echo
echo
echo "${rot}Dein erstes Bash-Script funktioniert!${nc}"
echo
echo
sleep 2
echo "${rot}Bitte gib einen Namen ein${nc}"
echo
read b
echo
echo "${rot}Hallo Hacker-$b.${nc}"
echo
echo "${rot}Wie geht es dir?${nc}"
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
# -> Hier ENDET das Script  <-