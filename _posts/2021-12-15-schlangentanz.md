---
title: Schlangentanz
layout: post
post-image: https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/schlangentanz.png?raw=true
description: In dieser Lektion brauchen wir keine Flöte keine Sorge! Python
tags:
- Python
- Lektion 3
- Schlange
---


#### Keine Sorge in dieser Lektion brauchen wir keine Flöte! Wir schauen uns Python an! ####

<hr class="green-line">

<br>
<br>
<center>
<h1 id="green-text"><i class="fa-solid fa-info"></i></h1>
<h3 id="green-text">Kure Info</h3>
</center>
<br>

>Solltest du zu irgendeinem Zeitpunkt Probleme oder Fragen haben, so kannst du mich jederzeit über den __Kontakt Button in der Navbar oben__ erreichen. Ich versuche so schnell, als mir möglich zu helfen! Hab also __keine Angst__ blöde Fragen zu stellen, die gibts nicht!

<br>


<hr class="green-line">
<br>
<br>
<center>
<h1 id="green-text"><i class="fa-brands fa-python"></i></h1>
<h3 id="green-text">Python</h3>
</center>
<br>



>In der letzten Lektion haben wir nun unser erstes Bashscript geschrieben. Nun dies sollte nur einmal zeigen wie __einfach ein Script__ sein kann. Bash als solches eignet sich aber nur bedingt um in das Programmieren einzusteigen. Daher schauen wir uns __jetzt einmal 'Pyhton'__ an. Python hat einer __einfachen Syntax__ und ist auch __sehr einfach zu lesen__.
>
>Top Eigenschaften also. Zudem ist es bei Hackern sehr beliebt.
>
>__Starten__ wir also erst einmal __'Kali Linux'__.
>


<br>
<br>
<center>
<h1 id="green-text"><i class="fa-solid fa-chalkboard-user"></i></h1>
<h3 id="green-text">Der H4cKz0R Manager</h3>
</center>
<br>


>Da der __'Mousepad' Editor__ von Kali nun nicht das Wahre ist werden wir heute einen anderen Editor installieren und benutzen, der uns bei Code schreiben hilft.
>Für diesen Zweck habe ich __ein kleines Programm__ geschrieben welches du mit 
>
```Bash
cd && cd Downloads
wget -L https://raw.githubusercontent.com/sera619/H4cKz0R-0x41414141/main/assets/scripts/H4ckz0r-Manager.sh
```
>downloaden kannst.
>__Der 'H4ckz0r-Manager'__ wird uns beide durch die Lektionen begleiten. Ich werde es immer weiter ausbauen sodass du, sollte mal __etwas schiefgehen__ nach schauen kannst und wenn nötig __bestimmte Daten wiederherstellen__ kannst. 
>
>
>Jetzt das Script wieder berechtigen ausgeführt zu werden und das Script starten.
>
```bash
chmod +x H4ckz0r-Manager.sh && ./H4ckz0r-Manager.sh
```
>
>Jetzt sollte das Programm bei dir gestartet sein. Installiere mit dem Tool den __'Atom' Editor__.
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/3/manager_showcast.png?raw=true)
>

<br>
<br>
<center>
<h1 id="green-text"><i class="fa-solid fa-atom"></i></h1>
<h3 id="green-text">Der 'Atom' Editor</h3>
</center>
<br>


>Wenn alles geklappt hat, kannst du mit
>
```bash
atom
```
>
>den Editor öffnen. 
>
>Als Nächstes brauchen wir __ein Package__ das uns beim coden helfen soll, die __'Python IDE'__. Gehe hier zu auf __Edit > Preferences > Install__
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/3/atom1.png?raw=true)
>
>Gebe nun in der __Suchleiste 'Python'__ ein und installiere das erste Paket. Im Anschluss __starte 'Atom'__ einmal __neu__.
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/3/atom2.png?raw=true)
>
>Mit dem installierten Package wird jetzt __der Code mit einem Highlight__ versehen. Das soll uns helfen den Code besser lesen zu können und im Zweifel __Bugs schneller ausfindig__ machen zu können.
>Python ist wie schon gesagt relativ simpel und sehr geeignet gerade für den Einstieg also auf gehts! 
>Im __geöffneten 'Atom'__ Editor __STRG + N__ um eine neue Datei zu erstellen. Im Anschluss __STRG + S__ um die Datei einmal zu speichern.
>
>Wähle hierzu __Desktop > MeineScripts > Python > Basics.py__
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/3/atom_py_basic.png?raw=true)
>
>Starten wir also mit ein paar basics:
>
>Um in Python eine Textausgabe zu erstellen brauchen wir die __'Funktion' 'print()'__
>Möchten wir also nun einmal Hallo ausgeben so machen wir das mit 
>
```python
print("Hallo")
```
>
>Hallo wird hierbei in " gesetzt und dies nennt man __'String'__. Die Zeichen zwischen den " können beliebig sein.
>So geht zum Beispiel auch: print("12 dashudh23kdoa231") - ergibt für uns Mensch keinen Sinn aber der Maschine ist das ohnehin egal.
>
>In Python gibt es sogenannte __'libarys'__ diese sind Code-Stücke welche andere Entwickler geschrieben haben. 
>
>__Wir müssen und SOLLTEN das Rad nicht immer wieder neu erfinden! Dein Code sollte immer gleich strukturiert sein.__ 
>
>Du kannst beispielsweise einen String auch mit ' statt" deklarieren. Wichtig hierbei: __Entscheide dich für eines!__
>Möchtest du zum Beispiel in einem String etwas in" setzten dann funktioniert das ohne Probleme, wenn du im String das ' als Anführungszeichen benutzt. Hier mal beide Beispiele damit du es dir besser vorstellen kannst.
>
>
>Beispiel 1
>
```python
    print("Hallo mein Name ist 'Sera'. Wie geht es dir?")
```
>
>Beispiel 2
>
```python
    print('Hallo mein Name ist "Sera". Wie geht es dir?')
```
>
>Du siehst, man kann bei vielen Zeilen Code schnell den Überblick verlieren -
>
>__Deßhalb gewöhne dir eine Schreibweise an!__
>
>Das ist ja schon alles kompliziert genug. =)
>Du wirst dich jetzt sicher fragen, __woher weiß man__ eigentlich was man da eingeben muss? Die Frage wird dir [__die 'Documentation'__](https://docs.python.org/3/) von Python beantworten. Jede Art von Software, besonders bei dem Umfang einer Computersprache, findet man so gut wie immer eine 'Documentation'. Dort erklären die Entwickler, wie ihre Software funktioniert und wie man sie benutzt. 
>Hier wären wir auch wieder bei dem Thema aus Lektion 1: __'Be always updated'__. Lesen, lesen und nochmal lesen. 
>Oftmals schreibt man einen __ganzen Tag lang keine Zeile code__ weil man sich in etwas einarbeiten muss. Als Nun Hacker wirst du viele Scripte schreiben, also programmieren. So ist es ratsam dich mit dem __Benutzen von Google__, wenn nicht ohnehin schon, besser auseinander zu setzen.


<br>
<br>
<center>
<h1 id="green-text"><i class="fa-solid fa-scroll"></i></h1>
<h3 id="green-text">Geburtstage mit Python</h3>
</center>
<br>


>Gut, nun aber zurück zum Code. Als Einstieg wollen, wir also ein Programm schreiben, welches uns sagt __wie viele Tage__ es noch dauert bis du Geburtstag hast. 
>Schauen wir uns also erst einmal an wie wir herausfinden __welcher Tag heute ist__.
>Dazu schreiben wir folgenden Code.
>
```python
# hier importieren wir eine stantard libary 'datetime' und daraus die 'Klasse' 'date' 
from datetime import date
# Dies ist eine 'Variable' eine Variable kennen wir schon aus Bash(Lektion 2). In Python kann sie ebenfalls alles sein!
# Eine Zahl oder ein String oder auch anderes, was das genau ist schauen wir uns später noch an.
# Schritt für Schritt.
heute = date.now()
print(heute)
```
>
>Speicher das Python-Script mit __STRG + S__! Öffne nun ein Terminal(__STRG + ALT + T__) und gebe
>
```bash
python3 Desktop/MeineScripts/Python/Basics.py
```
>
>ein. Wenn du keinen Fehler gemacht hast sollte dir nun das __heutige Datum__ angezeigt Werden
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/3/atom_py_date.png?raw=true)
>
>Jetzt wird es __etwas komplexer__. Da wir jetzt wissen welches Datum heute ist. Müssen wir jetzt noch wissen, wann unser Benutzer Geburtstag hat. __Den Benutzer 'fragen'__ kann man in Python mit __input()__.
>
>Ich habe hier also unseren __Geburtstags-Rechner__ einmal __vorbereitet__.
>
>Wie immer kannst du das ganze einfach kopieren oder aber, __das empfehle ich, selbst schreiben__.
>
>
>__Beachte beim selbst schreiben das du meine Kommentare, die Zeilen die hinter einer # sind, weglassen kannst!__
>
>__Wie auch schon in Bash, unbedingt penibel auf Komma, Punkt, Sonderzeichen, Leerzeichen und Absätze achten!__
>
```python
from datetime import datetime
from datetime import date
import time
# Wir importieren wieder als Erstes ein paar stantard libarys die wir brauchen.
# wir nutzen die date-Klasse um das heutige Datum in der Variable 'today'
# zu speichern.
today = date.today()
# Hier haben wir eine Funktion. Funktionen kann man sich als Paket mit vorstellen
# In diesem Paket befinden sich nun Aktionen. Eine oder auch mehrere
# In der 'user_birthday()' Funktion erfragen wir also nun das Geburtsdatum
# des Benutzers.
def user_birthday():
    # die input() Funktion lässt eine Zeile für Eingaben
    # des Benutzers erscheinen. Diese Eingabe wird dann in der
    # Variable 'year', 'month' und 'day' gespeichert
    year = int(input('In welchem Jahr hast du Geburtstag? [Y][Y] :'))
    month = int(input('In welchem Monat hast du Geburtstag? [M][M] :'))
    day = int(input('An welchem Tag hast du Geburtstag? [D][D] :'))
    # das ganze datum wird hier in die Variable 'birthday' gespeichert
    birthday = datetime(year,month,day)
    # und wir geben das datum formatiert zurück
    return birthday
    # in dieser Funktion berechnen wir nun die Tage
    # die Funktion ist etwas komplexer hier siehst du eine 'If Funktion'
    # Das heisst, wenn a passiert soll b eintreten vereinfacht gesagt.
    # ich umreiße das hier mal kurz
    # wir lernen später noch wie genau das funktioniert
    def calculate_dates(birthday):
        today == date.fromtimestamp(time.time())
        birthday = date(today.year, birthday.month, birthday.day)
        # wenn A passiert
        if birthday < today:
            # soll B passieren
            birthday = birthday.replace(year=today.year + 1)
            return birthday
        # wenn A nicht passiert oder zutrifft
        else:
            # soll auch b passieren
            return birthday
    # Und hier jetzt der eigentliche Programmablauf
    # Geburtstag des Benutzers wird in 'bday' gespeichert durch Benutzen der Funktion
    # 'user_birthday()'
    bday = user_birthday()
    # Hier übergeben wir den Geburtstag in die Funktion 'calculate_dates()'
    t = calculate_dates(bday)
    # Abs ist etwas fortgeschritten. nur soviel wir formatieren das ganze
    # und ziehen errechnen die Tage ab heute
    time_to_birthday = abs(t-today)
    # hier 'nehmen' wir uns also die berechneten Tage
    # str() wird benutz um das in den klammern enthalte in einen String
    # umzuwandeln.
    days=str(time_to_birthday.days)
    # Und zum Schluss geben wir das Ganze in der Konsole per print() aus
    print("\n\nNoch :" + days + " Tage bis zu deinem Geburtstag")
```
>
>
>Speichere das Script wieder und Probiere es gleich mal aus!
>
```bash
python3 /Desktop/MeineScripts/Python/Basics.py
```
>
>
>   - ![](https://github.com/sera619/H4cKz0R-0x41414141/blob/main/assets/images/3/geburtstag_py.png?raw=true)
>
>aus. Ich hoffe es hat alles geklappt ansonsten versuche deinen Fehler zu finden. Oder vielleicht auch meinen ?! =D
>
>So! Ich habe in dieser Lektion eine __Hausaufgabe__ für dich! 
>
>__Diese Aufgabe ist wichtig! Die Antwort wirst du brauchen, um die nächste Lektion beenden zu können!__
>
>__Daher mache sie sorgfältig aber keine Angst es wird nicht allzu schwer. Ich möchte nur eine Frage beantwortet haben -__
>
>
>
>
>__*Wie lautet die libary um in Python 'mit der Zeit zu jonglieren'?*__
>
>
>
>
>Ich bin mir sicher, du findest die Antwort sehr schnell! Suche doch einfach mal bei __Google__?! Schreibe dir die Antwort auf oder merke sie dir einfach.
>Dies war also Lektion 3, ich fasse nochmal zusammen, was wir heute gemacht haben:
>
> - [x] - Das neue Tool 'H4ckz0r Manager'
> - [x] - Python basics kennegelernt
> - [x] - Atom editor installiert
> - [x] - Atom Package - Python IDE installiert
> - [x] - Was sind Documentationen
> - [x] - Einen Geburtstags-Rechner programmiert
>
>Ich würde sagen wir nähern uns mit großen Schritten =). Du darfst dich freuen in der Nächsten Lektion werden wir dann das erste Mal das __Tool 'NMap'__ benutzen und __Netzwerke__ etwas besser kennenlernen. Ich bin schon gespannt! Ich muss aber noch __eine schlechte Nachricht__ verbreiten. Die nächste Lektion wird auf Grund meines Arbeitsumfangs etwa erst __in einer Woche erscheinen__. Durch die Feiertage und andere Projekte bin ich etwas eingespannt. Dir steht es jedoch frei gerne auch __ohne mich weiter zu lernen!__
>
>Eine weiter Lektion näher dran am __Hacker__ sein! Ich hoffe du konntest einiges lernen und ich verweise noch einmal darauf wenn du Fragen oder Probleme hast, melde dich!
>Ich bedanke mich wie immer für deine Aufmerksamkeit und freue mich dich in der nächsten Lektion wieder begrüßen zu können!
>
>
>Bis dahin, __ALLES GUTE!__ und __KEEP YOUR SYSTEM SAFE!__
>