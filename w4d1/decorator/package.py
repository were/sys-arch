from decorator import decorator

@decorator
def wrapper(func, *args, **kwargs):
    print("Before")
    result = func(*args, **kwargs)
    print("After")
    return result

@wrapper
def foo(x):
    print("In foo")
    return x

print(foo(10))
