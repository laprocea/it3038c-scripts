import time

start_time = time.time()
start_time

time.time() - start_time
int(time.time() - start_time)

print('What is your name?')
myName = input()

print('Hello, ' + myName + '. That is a good name. How old are you?')
myAge = input()
programAge = int(time.time() - start_time)

print("%s? That's funny, I'm only %s seconds old." % (myAge, programAge))
      
print('I wish i was ' + str(int(myAge) * 2) +  'years old')

time.sleep(3)
print('I\'m tired. I go sleep now.')


