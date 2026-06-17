def log_decorator(func):
    def wrapper(*args,**kwargs):
        print(f"{func.__name__} is started")
        result=func(*args,**kwargs)
        print(f"Rectangular Area is : {result}")
        print(f"{func.__name__} is closed")
        return result
    return wrapper

@log_decorator
def RectangleArea(length,width):
    return length*width

res=RectangleArea(5,12)