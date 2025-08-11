for i in range(10):
    print(i)


def myrange(start, end):
    """A simple implementation of a range function."""
    while start < end:
        yield start
        start += 1
    return

for i in myrange(0, 10):
    print(i)

