import requests, re
from bs4 import BeautifulSoup

r = requests.get("https://leatherman.com/surge-3.html").content
soup = BeautifulSoup(r, 'html.parser')

tags = soup.findAll("a", {"href":re.compile('(#maincontent)')})
for a in tags:
    print(a.get("href"))

