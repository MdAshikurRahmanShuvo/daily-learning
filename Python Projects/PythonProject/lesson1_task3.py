def log_decorator(func):
    def wrapper(*args,**kwargs):
        print(f"{func.__name__} is started")
        res =func(*args,**kwargs)
        print(f"{func.__name__} is Closed")
        return res
    return wrapper
@log_decorator
def area(length,width):
    a=length*width
    print(f"Area : {a}")
    return a
@log_decorator
def greet_user(a):
    print(f"Welcome , {a}")
    return a
@log_decorator
def Division(a,b):
    if b==0:
        return "Divide by Zero "
    return a/b
area(12,15)
greet_user("Ashik")
result=Division(120,30)
print(f"Result : {result}")