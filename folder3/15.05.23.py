# Regular Expression in Python Regex
import re
import camelcase
import json
json.dump("Aller")


txt = "The rain in Spain"
x = re.search("^The.*Spain$", txt)

if x:
    print("Yes we have a match")
else:
    print("No match")
print(x)
y = re.search("ai", txt)
print(y)

print(" ")

c = camelcase.CamelCase()
txt = "The genesis of rome was an interesting exodus!"
print(c.hump(txt))
