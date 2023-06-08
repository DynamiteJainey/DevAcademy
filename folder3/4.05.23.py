buyItem = ["apple", "banana", "cherry", "pawpaw", "mango", "kiwi", "melon"]
print(buyItem)

# replace one list item
buyItem[1] = "lemon"
print(buyItem)

# replace multiple list items
buyItem[2:4] = ["blackberry", "watermelon"]
print(buyItem)

# insert item at particular list index
buyItem.insert(2, "Onion")
print(buyItem)

# insert item at end of list
buyItem.append("sugar")
print(buyItem)

# add lists and tuples  (lists can be altered but tuples cannot)
addItem = ("kele", "lime")  # the tuple
buyItem.extend(addItem)    # add tuple to list
print(buyItem)

# remove item from list
buyItem.remove("melon")  # remove method takes only one argument
print(buyItem)

# remove item based on index
buyItem.pop(5)
print(buyItem)

# delete list index
del buyItem[0]
print(buyItem)

# delete entire list
# del buyItem
# print(buyItem)

# display items using for...in loop
for x in range(len(buyItem)):
    print(buyItem[x])

# while loop
y = 0
while y < len(buyItem):
    print(buyItem[y])
    y += 1

# use loop and sorting to make new list
b = []
for x in buyItem:
    if "b" in x:
        b.append(x)
    if "a" in x:
        b.append(x)
    if "l" in x:
        b.append(x)
print(b)

print(" ")
print(" ")

# sort list
print(buyItem)
buyItem.sort()
print(buyItem)

print(" ")
print(" ")

t = [23, 289, 1022, 83, 3, 5, 80, 100]
t.sort()
print(t)
t.sort(reverse=True)
print(t)
