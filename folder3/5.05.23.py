# Working with Dictionaries
from turtle import clear

car = {
    "brand": "FORD",
    "model": "Mustang",
    "year": 1996
}
print(car)
print(car["model"])

# display length
print(len(car))

# display all keys
x = car.keys()
print(x)

# display all values
y = car.values()
print(y)

# adding new dictionary item
car["color"] = "RED"
print(x)
print(y)

# display items in dictionary
z = car.items()
print(z)

# check if key exists
if "model" in car:
    print("yes, MODEL FOUND")

# change dictionary items
car["year"] = 2023  # will add if key doesn't exist
print(car)

# update dictionary
car.update({"year": 2022})
print(car)

# delete items
car.__delitem__("year")
print(car)

car.pop("model")
print(car)

car.popitem()  # remove last item
print(car)

# delete dictionary
# del car

# clear dictionary
# car.clear()
# print(car)

# show all keys
for x in car:
    print(x)

# show all values
for a in car.values():
    print(a)

# copy dictionary
deck = car.copy()
print(deck)

# nested dictionary
myFamily = {
    "child1": {
        "name": "James",
        "year": 2004
    },
    "child2": {
        "name": "Amanda",
        "year": 8004
    },
    "child3": "Gilbert",
    "year": 2011
}

print(myFamily)

child1 = {
        "name": "James",
        "year": 2004
},
child2 = {
        "name": "Willie",
        "year": 1879
}

Family = {
    "child2": child2,
    "child1": child1
}
print(Family)

# access particular property
print(myFamily["child1"]["name"])

a = 33
b = 200
if a > b:
    print("yes")
else:
    print("no")

if not a > b:
    print("ya")

if a > 10:
    print("Above ten")
    if a > 20:
        print("Above 20")
    else:
        print("Nay")

if b > a:
    pass  # nothing happens


# while loop
k = 1
while k < 8:
    if k == 3:
        break
    print(k)
    k += 1

t = 0
while t < 6:
    if t == 3:
        pass
    print(t)
    t += 1

clear()
print(t)
