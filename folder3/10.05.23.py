class Person:
    def __init__(self, f_name, l_name):
        self.firstname = f_name
        self.lastname = l_name

    def myfunc(self):
        print("Hello my name is " + self.firstname)


x = Person("John", "Doe")
# x.myfunc()
'''
class MyChild(Person):
'''
'''
my_tuple = ("Banana", "apple")
my_it = iter(my_tuple)

print(next(my_it))
print(next(my_it))

my_str = "Banana"

for a in my_str:
    print(a)
'''

# Assignment
items = (12, "Max", True, 12.34, "End")

for element in items:
    print(element)

print(" ")
print(" ")
print(" ")


# Create an iterator that returns numbers,
# starting from 1 and increment it in a sequential order
class MyIter:
    def __iter__(self):
        self.w = 0
        return self

    def __next__(self):
        self.w += 1
        ele = self.w
        return ele


yObject = MyIter()
display = iter(yObject)

print(next(display))
print(next(display))
print(next(display))
print(next(display))
print(next(display))


class MyNumbers:
    def __iter__(self):
        self.a = 0
        return self

    def __next__(self):
        if self.a <= 20:
            t = self.a
            self.a += 1
            return t
        else:
            raise StopIteration


my_class = MyNumbers()
my_var = iter(my_class)
for x in my_var:
    print(x)
