# 1. overload the `+` operator for a custom class
# 2. overload the formatting of the class
# 3. overlead the context manager methods `__enter__` and `__exit__`


class Obj:
    def __init__(self, a):
        self.a = a

    def __add__(self, other):
        assert isinstance(other, Obj), "Can only add Obj instances"
        return Obj(self.a + other.a)

    def __repr__(self):
        return f"Obj({self.a})"

    def __enter__(self):
        print("Entering context of "+ repr(self) + ' ' + hex(id(self)))
        return self

    def __exit__(self, exc_type, exc_value, traceback):
        print("Exiting context of " + repr(self) + ' ' + hex(id(self)))
        if exc_type is not None:
            print(f"An exception occurred: {exc_value}")
        return True


a = Obj(1)
b = Obj(2)
print((a + b).a)
print((a + b))

with Obj(3) as obj:
    print("Inside context with ", obj)

