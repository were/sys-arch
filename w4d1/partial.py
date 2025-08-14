import functools

def foo(a, b):
    return a + b

goo = functools.partial(foo, 5)
hoo = functools.partial(goo, 10)

print(hoo())
