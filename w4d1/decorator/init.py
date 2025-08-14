def wrapper(func, *args, **kwargs):
    print('000')
    def inner(*args, **kwargs):
        return func(*args, **kwargs)
    return inner

@wrapper
def foo(a, b):
    return a + b

# even w/o a main, 000 is still printed
