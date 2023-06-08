# from self import self

b = "Hello World"

print(b[:5])

# lowercase method
print(b.lower())

c = "Good bye! Tomorrow"
print(c[-5:-2])

# UPPERCASE method
print(c.upper())

# replace() method
print(c.replace("b", "t"))

# strip() method
# print(c.strip(self, str))      ----- check for correct syntax

# split() method
print(c.split(","))

# format() method
age = 21
txt = "My name is John, and I am {}"
print(txt.format(age))

quantity = 3
itemNo = 567
price = 49.85

# way 1
order = "I want {} pieces of item {} for ${}"
print(order.format(quantity, itemNo, price))

# way 2
order = f"I want {quantity} pieces of item {itemNo} for ${price}"
print(order.format())

# way 3
order = "I want to pay {2} dollars for {0} pieces of item {1}"
print(order.format(quantity, itemNo, price))

print(" ")
print(" ")

# Class Assessment
a = "Hello World!"
print(len(a))

# Conditional Statement
this_List = ["apple", "banana", "cherry"]
if "apple" in this_List:
    print("Yes, 'apple' is in the fruit list")
else:
    print("There's no 'apple' in this list")

print(" ")

# Class Assessment (MY SUBMISSION)
WeatherList = ["It's hot day", "It's cold day", "normal day", "day"]
if "It's hot day" in WeatherList:
    print("It's a hot day \nDrink plenty of water")
else:
    if "It's cold day" in WeatherList:
        print("It's a cold day \nWear a jacket")
    else:
        print("What a nice day!")

print(" ")

# Class Assessment (JOEL'S VERSION)
is_hot = False
is_cold = True
if is_hot:
    print("It's a hot day \nDrink plenty of water")
    print(" ")
elif is_cold:
    print("It's a cold day \nWear a jacket")
    print(" ")
else:
    print("What a nice day!")


price2 = input("Enter the price")
good_credit = True
if good_credit:
    downPayment = 0.1 * float(price2)
else:
    downPayment = 0.2 * float(price2)

print(f"Down payment: ${downPayment}")
