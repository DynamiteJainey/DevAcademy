# declare a variable x and assign a value to it...

# Global variables .... declared outside of a function

if 5 > 2:
    print("five is greater than 2")

z = 5
c = "Hello World"
print(z)
print(c)

# Global Variable
a = 5
b = 12


def summer(x1, y1):
    submit = x1 + y1 + a  # This is a local variable
    return submit


print(summer(5, 10))

p = str(3)
q = int(3)
r = float(3)
print(type(p))
print(type(q))
print(type(r))

# many values to multiple variables
x, y, z = "Benz", "Toyota", "Kia"
print(x)
print(y)
print(z)


# this is a single line comment
"""
This a multi line comment
"""

x = dict(name="John", age=36, height=12.67)

print(x)
print(type(x))

a1 = float(1)
b1 = int(2.89)
z = complex(12)

print(a1)
print(b1)
print(z)
print(type(a1))
print(type(b1))
print(type(z))


stringer = "Hello World"
print(stringer)
print(stringer[0])
print(stringer[2:5])
print(stringer[2:])
print(stringer * 2)
print(stringer + "Test")


t = ["abc", 786, 2.83, "ojo", 70.2]
tinyList = [123, "willy"]

print(type(t))
print(t[0])
print(t[1:3])
print(t + tinyList)

year = int(input("What year were you born?"))

calcAge = 2023 - year
print(calcAge)
