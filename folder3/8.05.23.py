a = 20
b = 33
c = 500

# OR operator
if a > b or c > a:
    print("a is greater than b")

# NOT operator
if not a > b:
    print("a is less than b")

# Range outputs numbers in a sequential order
# (starting from zero if no start point is given) up to the one less than limit specified
for x in range(5):
    print(x)

print(" ")

# with start point
for x in range(2, 6):
    print(x)

print(" ")

# with start point and increment value
for x in range(0, 12, 3):
    print(x)

print(" ")

# the else statement and range
for x in range(3):
    print(x)
else:
    print("The END")

print(" ")

# Nested Loops
adj = ["red", "big", "tasty"]
fruits = ["apple", "chery"]
for x in adj:
    for y in fruits:
        print(x, y)

print(" ")


# Functions
def my_function():
    print("Hello from My Function")
    print("What is your name")
    name = input()
    print("Nice to meet you, " + name)


my_function()

print(" ")


# Function with arguments
def names(fname):
    print(fname + " is here")


names("Carlos")
names("James")

print(" ")


# Assessment
def my_name(name):
    print("Hello, " + name)
    print("Let's take the register.")
    fname = input("What is your first name?\n")
    print("Your name is " + fname)
    surname = input("Alright! What is your surname?\n")
    print(fname + " " + surname + " is present")


my_name("Jainey")

print(" ")


# Arbitrary Functions
def function(*kids):
    print("the youngest child is " + kids[2])


function("Jane", "Judy", "Solo")

print(" ")


def my_func(**kid):
    print("His last name is " + kid["lname"])


my_func(fname="Bruce", lname="Lee")

print(" ")


def functioning(food):
    for t in food:
        print(t)


fruit = ["Mango", "Watermelon", "Starfruit"]
functioning(fruit)
