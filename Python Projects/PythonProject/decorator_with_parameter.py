def Number(func):
    def wrapper(*args,**kwargs):
        print("Function Start")
        result=func(*args,*kwargs)
        print("Function is End")
        return result
    return wrapper

@Number
def Add(a,b):
    return a+b
res=Add(5,8)
print(f"Summation is : {res}")
