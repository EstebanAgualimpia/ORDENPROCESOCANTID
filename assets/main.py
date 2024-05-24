import webbrowser
from time import sleep

print("Buy now: https://shoppy.gg/product/YVdsCk6 \n")

for x in [3,2,1]:
    print(f"Opening shop in {x} seconds", end="\r")
    sleep(1)
    
webbrowser.open("https://shoppy.gg/product/YVdsCk6")