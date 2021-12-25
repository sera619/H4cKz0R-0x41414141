---
title: Lass knacken
layout: post
post-image: https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/knacken.png?raw=true
description: Heute geht es um die wichtigen Tools Nmap und MetaSploit.
tags:
- Nmap
- Netzwerke
- Metasploitable
- Metasploit
---

#### Los gehts der erste Hack steht vor der Tür! Dabei benutzen wir Nmap und MetaSploit um eine Backdoor zu installieren ####

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
<h1 id="green-text"><i class="fa-solid fa-gears"></i></h1>
<h3 id="green-text">Labor einrichten</h3>
</center>
<br>


>Hallo und Willkommen zur Lektion Nummer 4!
>Es geht nun mit schnellen Schritten Richtung des ersten 'richtigen' Hacks!
>Hierfür brauchen wir aber erst einmal ein wenig Vorbereitung und auch etwas Theorie. Wie Eingangs schon erwähnt möchte ich diese Fiebel so einfach und verständlich als möglich halten. Deßhalb werden wir nicht alles bis ins kleinste Detail durchgehen
>
>Ich denke man lernt am besten in dem man es einfach macht!
>
>Zunächst brauchen wir aber erst einmal ein Ziel welches wir hacken können. Hierfür haben findige Entwickler eine Linux version erstellt die ein 'paar'
>Sicherheitslücken hat! __MetaSploit__ ist für den Zweck gedacht alles drauf zu feuern was unser Arsenal hergibt.
>Es sei erwähnt das du diese VM __NIEMALS!__ als richtiges OS nutzt __und__ den Zugriff auf das __Internet beschränkst__!
>Keine Sorge wie das geht zeige ich dir natürlich.
>Besorge dir als Erstes das [__Metasploit-Image__](https://sourceforge.net/projects/metasploitable/files/Metasploitable2/).
>Wenn der Download abgeschlossen ist öffne __VMware__ und klicke auf __File > Open__ und öffne das MetasploitImage.
>
>*Wie du merkst werde ich, je weiter wir im Kurs voranschreiten desto weniger Hilfestellung und Codebeispiele werde ich geben geben. Die Basics sollten ja nach und nach verinnerlicht sein. Natürlich werde ich aber alle neuen Dinge und komplexere Sachen öfter erwähnen, keine Sorge!*
>
>MetaSploit wurde so konfiguriert, dass du keine Bedenken haben musst das dein System nun angreifbar ist! Auch ist sie per Standardeinstellung so mit dem Netzwerk verbunden, das sie nicht mit dem normalen Internet so agieren kann als das es Schaden anrichten könnte.
>
>Allerdings solltest du das System nicht unnötig laufen lassen! 
>Starten wir nun die MetaSploit VM.
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/4/meta_start.png?raw=true)
>
>
> Benutze __Username - msfadmin / passwort - msfadmin__, um dich anzumelden. Das System startet jetzt alle relevanten Anwendungen automatisch. Nachdem die Maschine fertig ist benutzen wir
>
```bash
    ifconfig
```
>
>um die __IP-Adresse__ der Metasploit-Maschine herauszufinden. Schreibe dir die IP hinter __inet addr:__ auf. Diese ist __wichtig!__ wir brauchen sie gleich noch.
>Als Nächstes starten wir __'Kali'__. Nach dem Kali gestartet ist, öffne ein neues Terminal(__STRG + ALT + T)__ und gebe dort
>
```bash
    ping <IP Adresse die du dir notiert hast ohne die "<>">
```
>
> In meinem Fall wäre das der Befehl
>
```bash
    ping 192.168.158.130
```
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/4/kali_ping.png?raw=true)
>
>__Mit STRG + C lässt sich der 'ping' abbrechen!__
>
>Der Befehl __'ping'__ lässt sich als eine Art __'Klingeln'__ verstehen. Wir klingeln also an der Haustür und schauen, ob jemand Zuhause ist. =) Wenn alles geklappt hat sollten wir also Antwort bekommen. Super! Das bedeutet wir sind verbunden und können nun mit dem __hacken anfangen!__


<hr class="green-line">
<br>
<br>
<center>
<h1 id="green-text"><i class="fas fa-search"></i></h1>
<h3 id="green-text">Nmap - der Portscanner</h3>
</center>
<br>


>Ein sehr __wichtiges__ und gleichzeitig __sehr mächtiges__ Tool ist __Nmap__.
>
>Hierfür hole ich einmal aus - Jeder Computer hat __'Ports'__. Von diesem Ports gibt es __65 535__. Das ist eine ganz schöne Menge. Nicht alle diese Ports sind geöffnet oder werden benutzt. Üblicherweiße sind __Port 80__ und __Port 25__ immer geöffnet, diese sind für den 'ping' zum Beispiel offen. Bei der großen Anzahl an Ports und der unterschiedlichen Nutzung dieser, ist es __essentiell__ Informationen über alle Ports zu bekommen, um dann daraus mögliche Angriffstaktiken abzuleiten. 
>
>__Generell ist die Informationsbeschaffung von sehr großer Bedeutung!__ 
>
>Je mehr du über dein Ziel weisst, desto besser kannst du aggieren! Nmap bietet nun die Möglichkeit unterschiedlichste __Port-Scans__ durchzuführen. Hierfür gibt es eine Reihe an __'Flagtags'__ (BSP: -c, -Vv, -sC, -A usw.). Du kannst im Terminal __nmap -h__ eingeben und du bekommst eine Liste mit allen möglichen Befehlen.
>
>
>Meisst einer der ersten Schritte ist das Scannen der Ports, mache dich also __mit Nmap vertraut__! Scannen wir jetzt unser Ziel-System mit
>
```bash
    nmap -T5 -p- -A <Deine notierte IP wieder ohne "<>">
```
>
>und warten bis der Scan beendet ist. Keine Sorge, das kann durchaus ein paar Minuten dauern, gedulde dich etwas.
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/4/nmap_scan.png?raw=true)
>
>Schauen wir uns nun das Scanergebnis also einmal im Detail an -
>
>Das Zielsystem hat, wie du sehen kannst, eine Vielzahl an Schwachstellen, daher ist das Ergebnis auch so lang =). Wir können uns also austoben!
>
>__Es sei hier gesagt, dass diese Schwachstellen auf aktuellen System nicht existieren. Du kannst also damit keine Systeme angreifen. Versuche dies auch nicht!__
>__Sich Zugriff auf einen Rechner zu verschaffen für dessen Zugriff man nicht das Einverständnis des Besitzers hat, steht in Deutschland unter Strafe!__
>
>Aber wir wollen ja auch lernen, wie es geht und nicht mit copy/paste das Terminal fluten.
>Jede Nummer steht hier für den jeweiligen Port. Dahinter findest du Informationen darüber welcher Service dort aktiv ist zum Beispiel: __SMB__ (*SMB - server message block*) oder __FTP__ (*FTP - File Transport Protocol*).
>Der Scan ist jetzt noch schwer zu lesen ändern wir das mit
>
```bash
    nmap -p- -sV <IP>
```
>
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/4/nmap_scan2.png?raw=true)
>
>
>Auf erster Position ist der __Port 21__ mit falsch konfigurierten __VSFTPD__ Service belegt. Das hört sich super an. Lernen wir also gleich unser nächstes Tool kennen, __Metasploit__.


<hr class="green-line">
<br>
<br>
<center>
<h1 id="green-text"><i class="fas fa-book"></i></h1>
<h3 id="green-text">MetaSploit - die Bibiolothek</h3>
</center>
<br>



>MetaSploit ist eine große Datenbank mit einer Sammlung an __Exploits__ (*exploit - die Art wie man in das System eindringen kann, Schwachstellenausnutzung*), diese erlaubt uns nach Exploits zu suchen und diese zu versenden. Ein __all-in-one tool__ also, überaus mächtig.
>Mit dem Befehl
>
```bash
    msfconsole
```
>
>starten wir Metasploit, dies dauert ein paar Sekunden. Danach solltes du ein ähnliches Bild haben. (*Hab keine Sorge wenn eine komische Meldung im Terminal erscheint, die Entwickler von dem Tool haben einen kleinen Schalk im Nacken*)
>
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/4/msf1.png?raw=true)
>
>Da wir wissen das ein __VSFTPD__ Service aktiv ist suchen wir doch einfach mal danach. Mit dem Befehl
>
```bash
    search vsftpd
```
>
>kannst du nach Einträgen suchen und siehe da wir finden auch etwas! Interessant. Wir können also eine __Backdoor__ auf dem Angriffsziel installieren. Eine Backdoor ist wie der Name vermuten lässt eine 'Hintertür' in das System. Wir umgehen also den normalen Anmeldeprocess im System und benötigen __kein Passwort oder Benutzername__. Hier sieht man gleichzeitig wie wichtig es ist sein __System aktuell zu halten!__
>Keine Software, solange sie von Menschen entwickelt wird, kann jemals ohne Fehler sein. Auch Microsoft oder Apple machen solche Fehler. Daher wird es immer irgend eine Schwachstelle geben.
>
>Oder wie ich zu sagen pflege __NO SYSTEM IS SAFE!__ Aber man kann es dem Angreifer um ein vielfaches schwerer machen.
>
>Die letzte große Sicherheitslücke hat die Programmiersprache JAVA betroffen. Ein Fehler in einem Modul das Log schreibt, also Tagebuch.
>
>Solche Module nutzen Entwickler sehr oft. Der Fehler in diesem Modul hatte so gewaltige Ausmaße das sogut wie __alle großen IT-Konzerne betroffen__ waren!
>Weitere Beispiele wären auch __MIRAJI__  der beinahe __das komplette Internet lahmgelegt__ hätte. Eine unvorstellbare Anzahl an __Bot-Systemen__, also Zombie-Systeme, die alle zentral gesteuert wurden. Ohne die __Server-Power von Amazon, Google und Elon Musk__ hätte man diesen Angriff __nicht abwehren__ können. Die Folgen hierbei wären nicht absehbar gewesen.
>
>Das als kleiner Exkurs und __nice to know__, jetzt aber weiter mit deinem eigenen Hack!


<hr class="green-line">
<br>
<br>
<center>
<h1 id="green-text"><i class="fas fa-user-secret"></i></h1>
<h3 id="green-text">ZUGRIFF!</h3>
</center>
<br>


>Mit den beiden Befehlen
>
```bash
    use 0
```
>
```bash
    options
```
>
>wählst du den Exploit aus und kannnst dir die Optionen anschauen.
>
>  - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/4/msf2.png?raw=true)
>
>Wir sehen also als einziges Feld was wir belegen können den __RHOST__  (*Remote-HOST - die IP des Angriffziels*). Da wir die IP kennen tragen wir diese mit
>
```bash
    set rhost <GEMERKTE IP>
```
>
>ein und starten im Anschluss den exploit. Im Hintergrund wird nun ein Script mit dem Exploit geladen und auf das Angriffsziel übertragen und ausgeführt.
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/4/jackpot.png?raw=true)
>
>Glückwunsch! Du hast deinen ersten Hack erfolgreich ausgeführt! Wenn du jetzt
>
```bash
    whoami
```
>
>eingibst kannst du sehen das __root__ erscheint. Root steht hierbei für __Administrator__ wir können also ab jetzt __ALLES__ mit dem System machen, was wir möchten!
>Mit __STRG + C__ lässt sich die Konsole wieder schließen. Ebenfalls lässt sich damit so gut wie jedes Programm im Terminal abbrechen/beenden.
>
>Das war jetzt auch schon die 4. Lektion. Ich hoffe bei dir und deinem Versuch hat alles reibungslos funktioniert. Falls nicht, kontaktiere mich bitte, ich helfe gerne weiter!
>Ich fasse wie immer noch einmal kurz zusammen:
>
> - [x] - Ein Angriffssystem installiert und konfiguriert
> - [x] - Nmap und MetaSploit kennengelernt und benutzt
> - [x] - Eine Backdoor mit Metasploit installiert
> - [x] - Ersten Hack abgeschlossen!
>
>Als kleines Weihnachtsgeschenk habe ich unseren __H4CKZ0R Manager__ ein Update verpasst. Probier ihn ruhig mal aus!
>
```bash
    cd && cd /Desktop/MeineScripts/bash
    wget -L https://raw.githubusercontent.com/sera619/H4cKz0R-0x41414141/main/assets/scripts/bash/H4ckz0r-Manager.sh
```
>
> Ich hoffe diese Lektion war spannend für dich. Ich bedanke mich für deine Aufmerksamkeit und wünsche vorab schon einmal frohe Weihnachten und einen guten Rutsch ins neue Jahr!
>
>Bis dahin, __ALLES GUTE__ und __KEEP YOUR SYSTEM SAFE!__