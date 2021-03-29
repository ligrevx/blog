---
title: Python Tricks
description: Python Tricks from Dan Bader of realpython.com
---

#### Python 3.5+ supports 'type annotations' that can be used with tools like Mypy to write statically typed Python:

```python
def my_add(a: int, b: int) -> int:
    return a + b
```

#### Python has a HTTP server built into the standard library. This is super handy for previewing websites.

##### Python 3.x
`$ python3 -m http.server`

##### Python 2.x
`$ python -m SimpleHTTPServer 8000`

##### (This will serve the current directory at
#####  http://localhost:8000)


#### Python's list comprehensions are awesome.

vals = [expression 
        for value in collection 
        if condition]

##### This is equivalent to:
```python
vals = []
for value in collection:
    if condition:
        vals.append(expression)
```
##### Example:
```python
>>> even_squares = [x * x for x in range(10) if not x % 2]
>>> even_squares
[0, 4, 16, 36, 64]
```

#### How to merge two dictionaries in Python 3.5+
```
>>> x = {'a': 1, 'b': 2}
>>> y = {'b': 3, 'c': 4}

>>> z = {**x, **y}

>>> z
{'c': 4, 'a': 1, 'b': 3}

# In Python 2.x you could
# use this:
>>> z = dict(x, **y)
>>> z
{'a': 1, 'c': 4, 'b': 3}
```

In these examples, Python merges dictionary keys in the order listed in the expression, overwriting duplicates from left to right.
See: https://www.youtube.com/watch?v=Duexw08KaC8


#### Different ways to test multiple flags at once in Python
```python
x, y, z = 0, 1, 0

if x == 1 or y == 1 or z == 1:
    print('passed')

if 1 in (x, y, z):
    print('passed')

# These only test for truthiness:
if x or y or z:
    print('passed')

if any((x, y, z)):
    print('passed')
```

#### How to sort a Python dict by value(== get a representation sorted by value)
```
>>> xs = {'a': 4, 'b': 3, 'c': 2, 'd': 1}

>>> sorted(xs.items(), key=lambda x: x[1])
[('d', 1), ('c', 2), ('b', 3), ('a', 4)]

# Or:

>>> import operator
>>> sorted(xs.items(), key=operator.itemgetter(1))
[('d', 1), ('c', 2), ('b', 3), ('a', 4)]
```

#### The get() method on dicts and its "default" argument
```python
name_for_userid = {
    382: "Alice",
    590: "Bob",
    951: "Dilbert",
}

def greeting(userid):
    return "Hi %s!" % name_for_userid.get(userid, "there")

>>> greeting(382)
"Hi Alice!"

>>> greeting(333333)
"Hi there!"
```

When "get()" is called it checks if the given key exists in the dict.
If it does exist, the value for that key is returned.
If it does not exist then the value of the default argument is returned instead.
