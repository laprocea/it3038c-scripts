

import random

theNum = random.randint(1,25)
print(theNum)

while True:

    select = int(input("pick a number between 1 and 25"))

    if select > theNum:
          print("try lower")

    elif select < theNum:
         print("try higher")

    elif select == theNum:
         print("correct")
         break
        
         
   
