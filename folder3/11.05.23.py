"""
class Person:
    def __init__(self, f_name, l_name):
        self.firstname = f_name
        self.lastname = l_name

    def my_funct(self):
        print(self.firstname, self.lastname)


a = Person("Addi", "Kadir")
a.my_funct()


class Parent:
    def __init__(self, first, last, age, spouse, children):
        self.fullname = first + " " + last
        self.age = 10 + age
        self.family = "Spouse is: " + spouse + " " + last
        self.children = children

    def show_family(self):
        print("Hi. My name is: " + self.fullname)
        print("I am ", self.age, " years old")
        print("My " + self.family)
        print("I have ", self.children, "children")


firstHouse = Parent("James", "Bond", 15, "Ruth", 5)
firstHouse.show_family()

print(" ")


class Child(Parent):
    pass


secondGen = Child("Abel", "Bond", 5, "no one", 0)
secondGen.show_family()

# Python Polymorphism
dict = {
    "brand": "Ford",
    "model": "Mustang",
    "year": 2005
}

print(len(dict))
"""


class Car:
    def __init__(self, brand, model):
        self.brand = brand
        self.model = model

    def move(self):
        print("Drive")


class Plane:
    def __init__(self, brand, model):
        self.brand = brand
        self.model = model

    def move(self):
        print("Fly!")


class Boat:
    def __init__(self, brand, model):
        self.brand = brand
        self.model = model

    def move(self):
        print("Sail!")


car1 = Car("BMW", "latest")
plane1 = Plane("Boeing", "747")
boat1 = Boat("Titanic", "Sea Horse")

for x in (car1, plane1, boat1):
    x.move()


def outer():
    y = 200

    def inner():
        print(y)

    inner()


outer()

z = 500 # global scope

def fancy():
    global a # global scope
    b = 10 # function scope
    a = 100
    print (a + b)

fancy()
