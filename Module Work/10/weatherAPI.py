import json
import requests


print('Please enter your zip code.')
zip = input()

r = requests.get('http://api.openweathermap.org/data/2.5/weather?zip=%s,us&appid=53523b4052bab63e6fa6487a5938dd63' % zip)
data = r.json()
print(data['weather'][0]['description'])
