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
# -> Ende
#
# hier habe ich für den visuellen Effekt einfach mal ein paar Farbcodes als Variablen gespeichert. 
# eine Variable kann alles sein!
# Eine Zahl 1
# Ein Buchstabe "A"
# Eine Dezimalzahl 2.345
#
# Es kann aber auch ganze Funktionen behinhalten. Dazu aber später mehr. Mache dich mit den Basics vertraut!
rot=`tput setaf 1`
green=`tput setaf 2`
nc=`tput sgr0`
#
#
# Wenn du lust hast kannst du einfach eigene Variablen erstellen oder wie wir Programmierer sagen deklarieren.
deinevariable="Hallo"
clear
echo
echo
echo "${rot}Dein erstes Bash-Script funktioniert!${nc}"
echo
echo
# echo ist in BASH der Kontext um etwas im Terminal anzeigen zu lassen -> wichtig ist das man es in einen sogenannten 'String' setzt also in ""
sleep 2
echo "${rot}Bitte gib einen Namen ein!${nc}"
echo
read b
echo
#
# ${rot} ist ein Variablenaufruf mit dem Dollar-Zeichen signalisieren wir das das folgende in der Variable 'rot' ist
# die {} sind als Start und endmakierung zu verstehen
# aber Erfüllen auch noch einen zweiten Zweck 
# in einem String "$rot" zu benutzen ginge theoretisch auch jedoch ist es dann erforderlich das die Variable die sich dahinter
# 'verbirgt' auch wirklich ein String ist ("hallo") und Beispielsweise keine Zahl (1)
#
echo "${rot}Hallo Hacker-$b!${nc}"
echo
echo "${rot}Na - $b ... Wie geht es dir?${nc}"
sleep 2
echo
echo "${rot}Updates werden gesucht ...${nc}"
sudo apt update -y && sudo apt upgrade -y
echo
# Die zusätzlichen 'echo' zwischen drin nutzen ich der Übersicht wegen =) es bedeutet einfach nur das eine neue Zeile leer ausgegeben werden soll -> "Absatz"
# Das 'sleep 3' sagt dem Computer das er jetzt 3 sekunden warten soll bis er mit dem Script weiter macht.
# Übrigens Scripts werden immer von oben nach unten verarbeitet. Das sollte man beim programmieren, und ja dieses Script ist letzlich ein Programm, immer 
# im Hinterkopf behalten.
sleep 3
echo "${rot}Updates wurden geladen und installiert!${nc}"
echo
# der 'clear' Befehl soll einmal das Terminal 'reinigen'
clear
echo
echo "${rot}Beende Programm... Bye!${nc}"
sleep 2
clear
done
# -> Hier ENDET das Script  <-