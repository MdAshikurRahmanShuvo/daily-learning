def my_decorator(func):
    def blueprint():
        print("The Function is Start from Here and this is a my_decorator Function ")
        func()
        print("The Function is End and this is also my_decorator function")
    return blueprint


@my_decorator
def info():
    print("Name : Ashik")
    print("ID: 5633")
info()