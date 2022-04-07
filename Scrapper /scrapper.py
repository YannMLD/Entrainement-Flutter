import requests
from bs4 import BeautifulSoup

def scrappe(lodging_id: str) :

    url = 'https://www.airbnb.fr/rooms/'+lodging_id

    response = requests.get(url)

    if response.ok:
        amenitieList = []
        soup = BeautifulSoup(response.text, "html.parser")
        amenities = soup.findAll("div", {"class": "iikjzje"})
        for amenitie in amenities:
            title = amenitie.findAll("div")
            first_child = next(amenitie.children, None)
            if first_child.string is not None:
                amenitieList.append(first_child.string.strip())

    return amenitieList

# with open('amenities.txt', 'w') as file:
#     for a in amenitieList:
#         file.write(a + '\n')

# with open('amenities.txt', 'r') as file:
#     for row in file:
#         print(row)