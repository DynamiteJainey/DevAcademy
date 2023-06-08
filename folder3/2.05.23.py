var1 = 1
var2 = 10
var3 = 10.3

# String Datatype
stringer = "Hello World"
print(stringer)
print(stringer[0])
print(stringer[2:5])
print(stringer * 3)
print(stringer + "TEST")

# List Datatype
a1 = ["abcd", 764, 2.54, "john", 70.2]
b1 = [123, "Mike"]

print(a1)
print(a1[0])
print(a1[1:3])
print(a1[2:])

print(a1 + b1)
b1.extend(a1)
print(b1)

# Tuple Datatype
tuple1 = ("abcd", 764, 2.54, "john", 70.2)

print(tuple1)

# Range()
for i in range(5):
    print(i)

for i in range(1, 5):
    print(i)

for i in range(1, 10, 2):
    print(i)

# Dictionary
diction1 = {}
diction1["one"] = "This is one"
diction1[2] = "This is two"

tiny_diction = {"name": "john", "code": 6734, "dept": "sales"}

print(diction1["one"])
print(diction1[2])
print(tiny_diction)
print(tiny_diction.values())
print(tiny_diction.keys())


# Boolean Datatype
a = True
b = False


# typeof keyword
print(type(a))
print(type(tiny_diction))
print(type(tuple1))
print(type(b1))
print(type(var3))
print(type(var2))
print(type(stringer))


# Comparison
c = 3
d = 4
print(bool(c == d))

# Data Conversion
e = float(1)
f = str(2.2)
g = int("3")

print(e)
print(f)
print(g)

# Python Operators
# Arithmetic Operators: - + / *

print(c ** d)  # c to the power d
