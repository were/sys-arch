import functools

def foo(a, b):
    return a + b

goo = functools.partial(foo, 5)  # goo(b) := foo(5, b)
hoo = functools.partial(goo, 10) # hoo()  := goo(10) := foo(5, 10)

print(hoo())
