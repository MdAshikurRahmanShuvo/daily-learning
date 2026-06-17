def log_decorator(func):
    def wrapper(*args,**kwargs):
        print(f"{func.__name__} is started")
        res=func(*args,**kwargs)
        print(f"Result : {res}")
        print(f"{func.__name__} is Ended")
        return res
    return wrapper
@log_decorator
def Division(a,b):
    if b==0:
        return "Division by Zero"
    return a/b
Division(450,0)