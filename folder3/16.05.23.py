# try lets you test a block of code for error
# except block allows you to handle the error
# else executes code when there is no error;
# finally block executes codes regardless of the try and except blocks.

try:
    x = int(input("What is x?"))
except ValueError:
    print("Invalid Input")
else:
    print(f"x is {x}")

print(" ")

try:
    print(y)

except:
    print("An exception occurred")
finally:
    print("the try exception is unfinished")
