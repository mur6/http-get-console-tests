import requests

url = "https://api.exchangerate-api.com/v4/latest/JPY"

response = requests.get(url)
data = response.json()

rate = 1 / data["rates"]["USD"]
print(rate)
