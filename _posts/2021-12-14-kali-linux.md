---
title: Kali Linux-Der erste Start
layout: post
post-image: https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/kali.png?raw=true
description: Lektion 2 - wir schauen uns Kali/Linux nun mal etwas genauer an.
tags:
- Kali Linux
- Linux
- Lektion 2
---


#### Schauen wir uns in dieser Lektion einmal Kali und Linux etwas genauer an und schreiben unser erstes Script ####

<hr class="green-line">

<br>
<br>
<center>
<h1 id="green-text"><i class="fa-solid fa-info"></i></h1>
<h3 id="green-text">Kure Info</h3>
</center>
<br>


>Ich habe ein Formular erstellt dort kannst du direkt deine Frage stellen und ggf. ein Screenshot hochladen. Ich werde so schnell als möglich antworten! Hab also __keine Angst__ blöde Fragen zu stellen, die gibts nicht!


<center>
<a id="contact-button" href="{{site.helpformular}}"
    class="button is-rounded is-uppercase has-text-weight-normal is-white is-outlined has-text-weight-semibold column is-two-fifths"
    target="_blank"><i class="fas fa-envelope"></i>HILFE
</a>
<br>


<hr class="green-line">

<br>
<br>
<h1 id="green-text"><i class="fa-solid fa-database"></i></h1>
<h3 id="green-text">Basics</h3>
</center>
<br>


>Nach dem wir in Lektion 1 jetzt Kali installiert und gestartet haben geht es nun daran uns erst einmal einen Überblick zu machen. Wer Windows kennt, wird einige Ähnlichkeiten feststellen. Jedoch ist die Bedienung eine andere.
>Zunächst stellen wir die Tastatur und die Uhrzeit um. So dass wir das Ganze etwas europäischer haben. _(in dem folgenden Bilden nutze ich mein Kali lass dich nicht von Hintergrundbildern oder visuellen Effekten irritieren alle Schritte sind __exakt__ gleich)_
>
>Klicke __oben Rechts__ mit der __rechten Maustaste__ auf die __Uhrzeit__ und klicke mit Links-Klick auf __Properties__.
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/2/basic_1.png?raw=true)
>
>Jetzt kannst du oben __MET__ _(middle european timezone - mitteleuropäische Zeitzone)_ eintragen. Darunter kannst du das Anzeigeformat einstellen. Wähle dort etwas aus, was dir gefällt. Und klicke im Anschluss auf den Button __close__ unten.
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/2/basic_2.png?raw=true)
>
>Als nächsten stellen wir das Tastaturlayout auf Deutsch. Hierzu klicke __oben links__ auf das blau-weise __Kali-Icon__ und gebe in der Suchleiste __keyboard__ ein.
>Klicke auf Keyboard und im soeben geöffneten Fenster auf den Button __Add__.
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/2/basic_3.png?raw=true)
>
>Jetzt kanst du bei __1 - German suchen__ und danach das ganze mit dem __2 - OK Button__ bestätigen. Gehe sicher, dass du __3 - German ausgewählt__ hast und klicke den __4 - close Button__.
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/2/basic_4.png?raw=true)
>
>Als Nächstes starten wir das System einmal neu. Und lernen gleich einen wichtigen Befehl kennen. Öffne das Terminal __oben in der Taskleiste__. Gib den Befehl 
>
>```
>reboot
>``` 
>in dein Terminal ein und drücke __Enter__. Das System wird nun neu gestartet. Nach dem Neustart kannst du dich direkt wieder mit __kali / kali__ anmelden.
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/2/basic_5.png?raw=true)
>

<br>
<hr class="green-line">

<br>
<br>
<center>
<h1 id="green-text"><i class="fa-solid fa-person-swimming"></i></h1>
<h4 id="green-text">Trockenübung</h4>
</center>
<br>

>Hier also der etwas trockene Teil. Wichtiger Schritt bei Linux oder generell __allen Systemen__  ist es, das __System aktuell zu halten__. Hierzu müssen wir Linux sagen, dass wir gerne hätten das es nach Updates suchen soll. Es gibt noch eine Vielzahl weiterer Befehle, die unsere __shell__ verarbeiten kann. Hier nur ein __kleiner Ausschnitt__ den wir aber für die __nächsten Lektionen brauchen__ werden!  
>
>|Befehl|Aktion|
>|------:|:-------|
>| __reboot__ | startet das System neu|
>| __shutdown__ -h now | das System herunterfahren |
>| __cd__ *pfad* | wechsel in das angebene Verzeichnis |
>| __cd__| wechsel in das Home-Verzeichnis|
>| __cd__ *..* | wechsel eine Ebene unter das aktuelle Verzeichnis ( ../.. = 2 Ebenen zurück etc.)|
>| __mkdir__ *Ordner Name* | erstellt einen neuen Ordner im aktuellen Pfad|
>| __touch__ *Datei Name*| erstellt eine neue Datei im aktuellen Pfad|
>| __rm -r__ *Datei/Ordner Name*| löscht unwiderruflich die/den Datei/Ordner|
>| __sudo apt update -y__ | das System überprüft mögliche Updates|
>| __sudo apt upgrade -y__| das System installiert die Updates|
>| __ls__| zeigt alle sichtbaren Ordner und Datein im aktuellen Pfad|
>|__clear__| leert die Terminal-History|


<br>
<hr class="green-line">

<br>
<br>
<center>
<h1 id="green-text"><i class="fa-solid fa-code"></i></h1>
<h4 id="green-text">Das erste Script</h4>
</center>
<br>


>Ui ui ui, jetzt sind wir doch schon ein ganzes Stück weiter hin zum __Hacker__ sein. Linux hat nun verschiedene Kommandokonsolen, Befehle und da die meisten Tools auch kein GUI besitzen gewöhnen wir uns gleich ans Handling mit dem Terminal. Der __Shortcut STRG + ALT + T__ ist der Shortcut um ein neues Terminal zu öffnen. Wie schon erwähnt benutzt Linux eine andere Verzeichnis-Struktur als Windows zum Beispiel. Wenn du jetzt bei __1__ mal schaust, siehst du dort ein __~__ Zeichen. Dies bedeutet, dass wir uns aktuell im __Home Verzeichnis__ befinden. Sozusagen das __Start-Verzeichnis__ unseres derzeitigen Linux-Benutzers. 
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/2/basic_6.png?raw=true)
>
>Viele Kali-User haben eine Art Startroutine - vielleicht direkt eine proxychain starten oder man möchte sich Gewisse Dinge anzeigen lassen. Das lässt sich in Linux alles ohne weitere Probleme lösen. Das Terminal welches wir nutzen ist __BASH__ _(bourne again shell)_. Wir können mit dieser __shell__ _(shell - Terminal, Kommandoconsole(Powerpoint - Windows ))_ __ALLES__ in Linux steuern und die Eingabe-Sprache ist __Skriptfähig__! Also nun an wir schreiben ein Script welches automatisch das System auf Updates prüft und wenn gewünscht diese Updates installiert. Na bist du schon gespannt? Los gehts!  
>
>Bauen wir uns also erst einmal ein Ordner. Hierfür bewegen wir uns mittels
>
```bash
cd Desktop
```
>
>zum Desktop und erstellen mit dem Befehl
>
```bash
mkdir MeineScripts &&  cd MeineScripts &&  mkdir Bash &&  cd Bash
```
>
>2 neue Ordner und wechseln direkt in den __Bash__ Ordner.
>Wie du gemerkt hast, haben wir gerade ganze komisch __2x - &__ verwendet. Warum? Dies nennt man __logischen Operator__. Wir wollen also das erst das eine und dann das andere gemacht wird. Man könnte aber mit nur __einem - &__ sagen das man gerne 2 Variablen(z.B. - Zahlen) __addiert__ haben möchte, also - __+__. 
>
>_Ein weiterer FunFact ist also_ - __Kein Weg in der Programmierung oder beim Hacken ist final. Es gibt immer 1000 Wege nach Rom, so auch hier.__
>
> Das als kleiner Exkurs. Keine Sorge je weiter wir hier voran schreiten, desto mehr wirst du verstehen. Es ist völlig normal, dass dir viele Dinge unlogisch oder komisch vorkommen. Du wirst mit der Zeit lernen, wenn man so möchte, zu denken wie ein Computer. Zumindest im weitesten Sinne.
>
> Mit dem Befehl
>
```bash
touch StartRoutine.sh
```
>
>erstellen wir nun eine neue Datei mit dem __Namen StartRoutine__. Das __.sh__ am Ende gibt dem System zu erkennen, dass es sich dabei um ein __BASH-Script__ handelt.
>Wie du bestimmt gemerkt hast, befindet sich da wo vorher das __~-Symbol__ war, jetzt der __komplette Pfad__ wo genau du dich im System befindest.
>
>Auch auf deinem Desktop befindet sich jetzt ein __neuer Ordner__. Den haben wir gerade erstellt! Glückwunsch!
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/2/basic_7.png?raw=true)
>
> Tippe jetzt den Befehl
>
```bash
mousepad StartRoutine.sh
```
>
>ein und es öffnet sich ein Editor, mit dem wir jetzt unser Script bearbeiten können.
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/2/basic_8.png?raw=true)
>
>Ich habe hierfür mal ein einfaches Script geschrieben mit dem wir also jetzt nach Updates suchen und wenn vorhanden installieren werden. Du kannst das Ganze hier einfach kopieren, aber __ich empfehle dir selbst__ die Tastatur zu bemühen, damit bekommst du gleich etwas Übung im coden!
>Den Code als solchen __zerlegen wir gleich__ noch keine Sorge, das bleibt nicht kryptisch für dich =).
>
>__Wichtige INFO - beachte unbedingt penibel Leerzeichen und Absätze sowie alle richtigen Sonder-Zeichen dies ist bei BASH besonders wichtig!__
>
```bash
#!/bin/bash
rot=`tput setaf 1`
green=`tput setaf 2`
nc=`tput sgr0`
a="padawan"
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
done
```


<br>
<hr class="green-line">

<br>
<br>
<center>
<h1 id="green-text"><i class="fa-solid fa-spell-check"></i></h1>
<h4 id="green-text">Testen</h4>
</center>
<br>


>
> Nach deiner Arbeit kannst du mit __STRG + S__ deine Arbeit __speichern__ und den Editor schließen. Das erste Skript ist fertig, cool oder? Und gar nicht so schwer, oder?
> Probieren wir das ganze also einmal aus, zunächst müssen wir aber wie so oft in Linux, das Script dazu berechtigen vom System ausgeführt zu werden.
>Das machen wir mit
>
```bash
chmod +x StartRoutine.sh
```
>
> Der Befehl wird, wenn alles richtig funktioniert hat, ohne weiteres Kommentar ausgeführt.
> und jetzt kannst du das Script mit
>
```bash
./StartRoutine.sh
```
>
>starten. 
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/2/basic_9.png?raw=true)
>
>Wenn alles funktioniert wirst du nach einem Namen gefragt und im Anschluss werden alle Updates installiert. Großartig!
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/2/basic_10.png?raw=true)
>
> Wenn du nun verstehen möchtest wie das Script funktioniert und was die einzelnen zeilen bedeuten, lad dir diese [Datei](https://drive.google.com/file/d/1HBL_QEutx5IETthxwla5wo1-9yHRQy_5/view?usp=sharing) herunter. Das ist das gleiche Script nur habe ich dort ein paar Kommentare hinzugefügt die den ganzen Zauber erklären.
>Nicht, weil ich dich hier zum Downloaden zwingen möchte, sondern weil es lern-strategisch einfach besser ist.
>
>Das war Lektion 2! Ich fasse also einmal zusammen, was wir bis hier hin gelernt haben.
>- [x] Wie stelle ich Kali auf Deutsch
>- [x] Wie stelle ich die Zeit auf deutsches Format
>- [x] Wie benutze ich das Terminal, um einen Ordner/File zu erstellen
>- [x] Was ist Bash.
>- [x] Mein erstes Bash-Script
>- [x] Wie kann ich einer Datei Rechte zum Ausführen erteilen.
>- [x] erste Startroutine kennengelernt
>
>Na das ist doch schon eine ganze Menge! Wieder einen kleinen Schritt näher am _Hacker_ sein! Ich hoffe, du konntest hier einiges lernen und hattest keine Probleme einen Schritt zu verstehen. Falls doch, ist das gar kein Problem! Scrolle __ganz nach oben__ und stelle deine Fragen! Ich helfe, sobald ich kann und ich verate es auch keinem! Versprochen!
>
>Vergiss nicht dir das heruntergeladene Script anzuschauen! Dort gibt es noch mehr Infos!
>
>Ich bedanke mich für dein Interesse und deine Aufmerksamkeit und freue mich dich in der __nächsten Lektion__ wieder begrüßen zu können.
>
>Bis dahin. __ALLES GUTE!__ und __KEEP YOUR SYSTEM SAFE!__