import exifread as R


# öffnen des Bildes als 'file'
with open("./images/img-1.jpg", 'rb') as file:
    # in tags werden die Ergebnisse gespeichert die wir auslesen
    tags = R.process_file(file)
    # formatieren der Ausgabe in lesbare Tabelle
    for key, value in tags.items():
        # und als letztes das Ergebnis in der Konsole ausgeben
        print(str(key)+ ": " + str(value))
