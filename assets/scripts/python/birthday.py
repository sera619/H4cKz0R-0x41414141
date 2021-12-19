from datetime import datetime
from datetime import date
import time
# Wir importieren wieder als Erstes ein paar stantard libarys die wir brauchen.


# wir nutzen die date-Klasse um das heutige Datum in der Variable 'today'
# zu speichern.
today = date.today()

# Hier haben wir eine Funktion. Funktionen kann man sich als Paket vorstellen
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
# wir lernen später noch wie genau das Funktioniert
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

# Und hier nun der eigentliche Programmablauf
# Geburtstag des Benutzers wird in 'bday' gespeichert durch Benutzen der Funktion
# 'user_birthday()'
bday = user_birthday()
# Hier übergeben wir den Geburtstag in die Funktion 'calculate_dates()'
t = calculate_dates(bday)
# abs ist etwas fortgeschritten. nur soviel wir formatieren das ganze
# und errechnen die Tage ab heute
time_to_birthday = abs(t-today)
# hier 'nehmen' wir uns also die berechneten Tage
# str() wird benutz um das in den klammern enthalte in einen String
# umzuwandeln.
days=str(time_to_birthday.days)
# Und zum Schluss geben wir das ganze in der Konsole per print() aus
print("\n\nNoch :" + days + " Tage bis zu deinem Geburtstag")
