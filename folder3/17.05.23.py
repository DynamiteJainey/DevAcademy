"""
# Recursive Function => tri_recursion()
def tri_recursion(k):
    if k > 0:
        result = k + tri_recursion(k - 1)
        print(result)
    else:
        result = 0
    return result


print("\nRecursion Example Results")
tri_recursion(3)

print(" ")


def tri_recursion(k):
    if k > 0:
        print('\t' * k, 'start loop k', k)
        holder = tri_recursion(k - 1)
        result = k + holder
        print('\t' * k, 'i am k(', k, ')+previous result(', holder, ')=', result)
    else:
        result = 0
        print('i reached when k =', k)
    print('\t' * k, 'end loop', k)
    return result


print("\n\nRecursion Example Results")
tri_recursion(6)

print(" ")

Animals = {
    'Tommy': {'Type of animal': 'cat', 'color': 'orange', 'Age': 8},
    'Ollie': {'Type of animal': 'cat', 'color': 'black/white', 'Age': 14},
    'Gippy': {'Type of animal': 'dog', 'color': 'Brown', 'Age': 7},
}


def display_dict(thedict):
    for key, value in thedict.items():
        if isinstance(value, dict):
            print(f'{key}:')
            display_dict(value)
        else:
            print(f'    {key}: {value}')


display_dict(Animals)
"""

"""
# Fibonacci Sequence
def fibonacci(n):
    if n == 0:  # Base case: fibonacci(0) = 0
        return 0
    if n == 1:  # Base case: fibonacci(1) = 1
        return 1
    else:
        return fibonacci(n - 1) + fibonacci(n - 2)


n = 10
fib_number = fibonacci(n)
print(f"The {n}th Fibonacci number is: {fib_number}")
"""


# Exponentiation
def power(base, exponent):
    if exponent == 0:  # Base case: any number raised to the power 0 is 1
        return 1
    else:
        return base * power(base, exponent - 1)


output = power(2, 3)
print(output)

print(" ")


# Binary Search
def binary_search(arr, target, low, high):
    if low > high:  # Base case: target not found in the array
        return -1
    else:
        mid = (low + high) // 2
        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            return binary_search(arr, target, mid + 1, high)
        else:
            return binary_search(arr, target, low, mid - 1)


arr = [1, 2, 3, 4, 6, 7]

binary = binary_search(arr, 2, 2, 8)
print(binary)

print(" ")


# Recursive Call
def countdown(n):
    print(n)
    if n == 0:
        return  # terminates recursion
    else:
        countdown(n - 2)  # recursive call


countdown(10)

print(" ")


# non recursive implementation for comparison
def counter(n):
    while n >= 0:
        print(n)
        n -= 1


counter(3)
