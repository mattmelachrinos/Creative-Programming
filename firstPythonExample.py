'''
Matt Melachrinos | mattmelachrinos.com

Python Lecture 1
Creative Programming 1 with Jeff Thompson
'''

print "Hello World!"



# Control Structures

love_swimming = True
if love_swimming:
    print "Yeah I love swimming"
else:
    print "nah, swimming isn't for me"


weather_conditions = ['sunny','rainy','foggy','snowy']

for condition in weather_conditions:
    print condition

s = "it was the best of times, it was the worst of times"
words = s.split()
print words

names = []
with open('names.txt') as file:
    for line in file:
        names.append(line.strip())

print names[0:20]
names.sort()
print names[0:20]


# Saving text to a file
from random import choice

first_names = [ 'Bob', 'Linda', 'Tina', 'Gene', 'Louise', 'Teddy', 'Mort', 'Jimmy', 'Ollie', 'Andy', 'Phillip', 'Chuck', 'Pam', 'Edith', 'Harold', 'Calvin' ]
last_names = [ 'Belcher', 'Francisco', 'Pesto', 'Frond', 'Charles', 'Carwinkle', 'Fishoeder' ]


first_name = choice(first_names)
last_name = choice(last_names)
full_name = first_name + " " + last_name
print full_name

with open('generatedNames.txt','a') as file:
    file.write(full_name + '\n')
