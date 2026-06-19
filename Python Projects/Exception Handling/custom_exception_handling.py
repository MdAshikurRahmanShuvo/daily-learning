def check_age(age):
    if age<0:
        raise ValueError("age could not be negative")
    if age>150:
        raise ValueError("age could not be 150 or greater than 150")
    else:
        return age

try:
    a=int(input("Enter your age : "))
    res=check_age(a)
    print(f"your age is : {res}")
except ValueError as v:
    print(f"Error : {v}")