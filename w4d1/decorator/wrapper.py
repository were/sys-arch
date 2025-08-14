def wrapper(func):
    print('!!!')
    def inner(x):
        print("Before")
        result = func(x)
        print("After")
        return result
    return inner

@wrapper
def foo(x):
    print("Inside")
    return x

print(foo(10))
