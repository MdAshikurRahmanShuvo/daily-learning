def decorator(func):
    def wrapper(*args,**kwargs):
        print("Function Start for Times Table : ")
        result=func(*args,**kwargs)
        print("Function End For Times Table ")
        return result
    return wrapper

@decorator
def Number(a):
    for i in range(1,11,1):
        print(f"{a} x {i} = {a * i}")
Number(5)