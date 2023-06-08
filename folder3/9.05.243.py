"""
class Person:
    def __init__(self, name,age):
        self.name = name
        self.age = age
p1 = Person("John",24)
print(p1.name)
print(p1.age)
"""
"""  
class Person:
    def __int__(self,name,age):
        self.name = name
        self.age  = age
    def myfunc(self):
        print("Hello my name is " + self.name)
p2 = Person("John", 20)
p2.age = 40
print(p2.age)
"""


class Person:
    def __init__(self, fname, lname):
        self.firstname = fname
        self.lastname = lname

    def something(self):
        print(self.firstname, self.lastname)


x = Person("John", "Doe")
x.something()
