import requests
from bs4 import BeautifulSoup as BS
import os
# importieren der benötigten Module für das Script




# eine leere liste [] statt () um die URL aus dem Scan zu speichern
found_images = []
# url der Seite von der wir die Bilder ziehen wollen
url = "https://sera619.github.io/H4cKz0R-0x41414141/blog/lass-knacken" 
# Senden einer Anfrage an die url - ist die URL erreichbar
response = requests.get(url, stream=True)
# Wenn sie erreichbar ist  (Status Code 200 bedeutet = Alles OKAY)
if response.status_code == 200:

    # document ist hier die jetzt der response.text (also der text der anfrage) und wird and das Modul 
    # BeautifulSoup(BS) gegeben um den text mit dem HTML parser neu zu strukturieren
    document = BS(response.text, "html.parser")
    # Scan des document nach <img> html tags; also nach Bildern
    images = document.find_all("img")
    # nun eine for-Schleife die jeden Eintrag durchgeht und "nummeriert"
    for img in images:
        # print Ausgabe aller gefunden tags mit dem Schlüsselwort "src" (source = die URL zum Bild)
        print(img.attrs["src"])
        # speichern in der (noch) leeren liste aller Bild URL's 

        found_images.append(img.attrs["src"])
        #print(img)


# Abfrage ob eine Datei mit dem Name schon unter den angebenen Pfad existiert
# Falls nicht wird der Ordner im Verzeichnis des Scripts erstellt
    if not os.path.exists("./images"):
        os.mkdir("./images")


    # eine for-schleife die nun alle Einträge der List mit den
    #  gefundenen Bilder "nummeriert" und nach und nach für python
    # formatiert und anschließen alle bilder herunterlädt und in das verzeichnis "images" speichert
    for found_image in found_images:
        # der Dateiname wird nach den original Namen auf dem Server benannt
        # dafür splitten wir unsere url und entfernen alles bis auf das 
        # nach dem letzen / 
        filename = found_image.split("/",)[-1]
        # entfernt die letzen zeichen des strings sodass wir '?raw=true' weglassen 
        filename = filename[:-9]
        # starten der anfragen and den HTTP  
        response = requests.get(found_image)

        # erstellt/speichert nun das Bild und bennent es entsprechend 
        with open("./images/" + filename, "wb") as file:
            file.write(response.content)        