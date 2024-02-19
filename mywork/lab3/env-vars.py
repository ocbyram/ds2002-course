#!/c/Users/Student/AppData/Local/Microsoft/WindowsApps/python3

import os

os.environ["FAV_ANIMAL"]=input('What is your favorite animal? ')
os.environ["HOMETOWN"]=input('Where were you born? ')
os.environ["COLOR_SOCKS"]=input('What color socks are you wearing? ')


print(os.getenv("FAV_ANIMAL"))
print(os.getenv("HOMETOWN"))
print(os.getenv("COLOR_SOCKS"))


